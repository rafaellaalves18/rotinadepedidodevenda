object FrmPedidoVenda: TFrmPedidoVenda
  Left = 0
  Top = 0
  Caption = 'Pedido de Venda'
  ClientHeight = 541
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tab: TPageControl
    Left = 0
    Top = 41
    Width = 701
    Height = 392
    ActivePage = TabDet
    Align = alClient
    MultiLine = True
    TabOrder = 0
    ExplicitWidth = 715
    ExplicitHeight = 391
    object TabDet: TTabSheet
      Caption = 'Dados do Pedido/Cliente'
      ImageIndex = 1
      ExplicitWidth = 707
      ExplicitHeight = 363
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 693
        Height = 364
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15841406
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 707
        ExplicitHeight = 363
        object Label12: TLabel
          Left = 32
          Top = 21
          Width = 102
          Height = 13
          Caption = 'N'#250'mero do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15841406
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edtcodigopedido: TEdit
          Left = 32
          Top = 40
          Width = 121
          Height = 21
          Color = cl3DLight
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Localizar: TBitBtn
          Left = 168
          Top = 38
          Width = 75
          Height = 25
          Caption = 'Localizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = LocalizarClick
        end
        object pnlpedido: TPanel
          Left = 3
          Top = 67
          Width = 823
          Height = 232
          BevelOuter = bvNone
          Color = clWindow
          Enabled = False
          ParentBackground = False
          TabOrder = 2
          object Label13: TLabel
            Left = 28
            Top = 6
            Width = 27
            Height = 13
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15841406
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 92
            Top = 57
            Width = 91
            Height = 13
            Caption = 'Nome do Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15841406
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 28
            Top = 57
            Width = 38
            Height = 13
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15841406
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 29
            Top = 100
            Width = 38
            Height = 13
            Caption = 'Cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15841406
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 381
            Top = 100
            Width = 14
            Height = 13
            Caption = 'UF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15841406
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object data_pedido: TDBDateEdit
            Left = 28
            Top = 24
            Width = 121
            Height = 21
            DataField = 'data'
            DataSource = dsPedido
            DefaultToday = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 0
          end
          object btnpesquisa: TBitBtn
            Left = 441
            Top = 66
            Width = 129
            Height = 33
            Caption = 'Pesquisa Cliente - F2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btnpesquisaClick
          end
          object dbcod_cli: TDBEdit
            Left = 28
            Top = 73
            Width = 58
            Height = 21
            Color = clWhite
            DataField = 'codigo_cliente'
            DataSource = dsPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnExit = dbcod_cliExit
          end
          object dbNome: TDBEdit
            Left = 92
            Top = 73
            Width = 343
            Height = 21
            Color = clWhite
            DataField = 'nome_cliente'
            DataSource = dsPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dbCidade: TDBEdit
            Left = 28
            Top = 119
            Width = 327
            Height = 21
            Color = clWhite
            DataField = 'cidade'
            DataSource = dsPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object dbUF: TDBEdit
            Left = 381
            Top = 119
            Width = 58
            Height = 21
            Color = clWhite
            DataField = 'uf'
            DataSource = dsPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
        end
      end
    end
    object TabItens: TTabSheet
      Caption = 'Itens do Pedido'
      Enabled = False
      ImageIndex = 2
      ExplicitWidth = 707
      ExplicitHeight = 363
      object Label14: TLabel
        Left = 16
        Top = 16
        Width = 86
        Height = 13
        Caption = 'C'#243'digo produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15841406
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 107
        Top = 16
        Width = 97
        Height = 13
        Caption = 'Nome do produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15841406
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 16
        Top = 64
        Width = 65
        Height = 13
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15841406
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 104
        Top = 64
        Width = 76
        Height = 13
        Caption = 'Valor unitario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15841406
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 197
        Top = 64
        Width = 59
        Height = 13
        Caption = 'Valor total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15841406
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 451
        Top = 327
        Width = 86
        Height = 16
        Caption = 'Valor Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15841406
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnpesqprod: TBitBtn
        Left = 536
        Top = 28
        Width = 136
        Height = 35
        Caption = 'Pesquisa de Produtos - F3'
        TabOrder = 4
        OnClick = btnpesqprodClick
      end
      object griditenspedido: TDBGrid
        Left = 16
        Top = 112
        Width = 647
        Height = 209
        DataSource = dsPedidoProduto
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyDown = griditenspedidoKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo_produto'
            Title.Caption = 'C'#243'd. Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao_produto'
            Title.Caption = 'Descri'#231#227'o'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_unitario'
            Title.Caption = 'Valor Unit'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_total'
            Title.Caption = 'Valor Total'
            Visible = True
          end>
      end
      object btnsalvaprod: TBitBtn
        Left = 18
        Top = 327
        Width = 84
        Height = 25
        Caption = 'Salvar Produto'
        TabOrder = 3
        OnClick = btnsalvaprodClick
      end
      object btnexcluiprod: TBitBtn
        Left = 199
        Top = 327
        Width = 85
        Height = 25
        Caption = 'Exclui Produto'
        TabOrder = 5
        OnClick = btnexcluiprodClick
      end
      object Edtotal: TDBEdit
        Left = 542
        Top = 326
        Width = 121
        Height = 21
        DataField = 'valor_total'
        DataSource = dsPedido
        Enabled = False
        TabOrder = 7
      end
      object edtqtdade: TDBEdit
        Left = 16
        Top = 83
        Width = 75
        Height = 21
        Hint = 'Informe a Quantidade do Produto'
        Color = clWhite
        DataField = 'QUANTIDADE'
        DataSource = dsPedidoProduto
        TabOrder = 1
        OnExit = edtqtdadeExit
      end
      object rxvlrunt: TDBEdit
        Left = 104
        Top = 83
        Width = 75
        Height = 21
        Color = clWhite
        DataField = 'valor_unitario'
        DataSource = dsPedidoProduto
        TabOrder = 2
      end
      object rxvlrtat: TDBEdit
        Left = 197
        Top = 83
        Width = 75
        Height = 21
        Color = clWhite
        DataField = 'valor_total'
        DataSource = dsPedidoProduto
        ReadOnly = True
        TabOrder = 8
      end
      object txtcod_prod: TDBEdit
        Left = 16
        Top = 35
        Width = 86
        Height = 21
        Color = clWhite
        DataField = 'codigo_produto'
        DataSource = dsPedidoProduto
        TabOrder = 0
        OnExit = txtcod_prodExit
      end
      object txtnome_prod: TDBEdit
        Left = 107
        Top = 35
        Width = 420
        Height = 21
        Color = clWhite
        DataField = 'descricao_produto'
        DataSource = dsPedidoProduto
        ReadOnly = True
        TabOrder = 9
      end
      object btnalterarprod: TBitBtn
        Left = 108
        Top = 327
        Width = 85
        Height = 25
        Caption = 'Alterar'
        TabOrder = 10
        OnClick = btnalterarprodClick
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 433
    Width = 701
    Height = 89
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 432
    ExplicitWidth = 715
    object BtnNovo: TBitBtn
      Left = 36
      Top = 18
      Width = 102
      Height = 41
      Hint = 'Inserir novo registro'
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000F8F8F8C6C6C6
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5CACACAFAFAFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC6C6C6F7F7F6F9F9F9FBFBFBFBFBFBFCFCFCFDFDFDFF
        FFFFEAE9E99D9D9AF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C5F7F7F6
        F8F8F8FAFAFAFBFBFBFCFCFCFDFDFDFEFEFEF4F4F4CCCCCC979793EDEDEDFFFF
        FFFFFFFFFFFFFFFFFFFFC5C5C5F6F6F6F8F8F8FAFAFAFBFBFBFCFCFCFDFDFDFE
        FEFEFBFBFBC4C4C4FDFDFD999995F5F5F5FFFFFFFFFFFFFFFFFFC5C5C5F6F6F5
        F7F7F7FAFAFAFBFBFBFCFCFCFDFDFDFEFEFEFEFEFEE0E0E0C6C6C6CFCFCEA2A1
        9FFAFAFAFFFFFFFFFFFFC5C5C5F5F5F4F6F6F6F9F9F9FAFAFAFBFBFBFCFCFCFD
        FDFDFEFEFEFEFEFEFCFCFCFAFAFAF0EFEFCACACAFFFFFFFFFFFFC5C5C5F4F4F4
        F5F5F5F7F7F7FAFAFAFAFAFAFBFBFBFCFCFCFDFDFDFDFDFDFEFEFEFEFEFEFEFE
        FEC5C5C5FFFFFFFFFFFFC5C5C5F4F4F3F4F4F3F6F6F6F8F8F8FAFAFAFBFBFBFB
        FBFBFCFCFCFCFCFCFDFDFDFDFDFDFDFDFDC5C5C5FFFFFFFFFFFFC5C5C5F2F2F2
        F2F2F2F4F4F4F6F6F6F8F8F8FAFAFAFAFAFAFBFBFBFBFBFBFCFCFCFCFCFCFCFC
        FCC5C5C5FFFFFFFFFFFFC5C5C5F1F1F0F1F1F0F3F3F2F5F5F4F6F6F6F8F8F8F9
        F9F9FAFAFAFAFAFA95DF9523C4230AAF0A1CBB1C99E399FFFFFFC5C5C5EFEFEE
        EFEFEEF1F1F0F3F3F2F4F4F4F6F6F6F7F7F7F8F8F895DD9502AD0200A31AFFFF
        FF00B03602AE0599E099C5C5C5EEEEEDEDEDEDEFEFEEF1F1F0F2F2F2F4F4F3F5
        F5F5F6F6F621B42100A00300A034FFFFFF00B06400AF3223B423C5C5C5ECECEB
        ECECEBEDEDECEFEFEEF0F0EFF1F1F1F2F2F2F3F3F3099509FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF099709C5C5C5EAE9E8E9E9E8EBEBEAEDEDECEEEEEDEFEFEEF0
        F0EFF1F1F021A6211DB61D29B43FFFFFFF29BC5A1DBC3323A923C5C5C5EAEAEA
        E9E9E8EBEBEAEDEDECEEEEEDEFEFEEF0F0EFF1F1F08FCF8F36BF3678D578FFFF
        FF78D57A37C03798D798EFEFEFC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C577B5773DB03D5FC45F42B44297D897FFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnNovoClick
    end
    object BtnSalvar: TBitBtn
      Left = 144
      Top = 18
      Width = 102
      Height = 41
      Hint = 'Salvar dados'
      Caption = 'Salvar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000D8AB8ECD9570
        BD7342B76835B56835B46734B26634B06533AE6433AC6332AA6232A96132A860
        31A76132AB693CBC8661C37D4FEBC6ADEAC5ADFEFBF8FEFBF8FEFBF8FEFBF8FE
        FBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8C89A7CC79879AD6B40BA6C38EDCAB3
        E0A27AFEFAF762C08862C08862C08862C08862C08862C08862C08862C088FDF9
        F6CA8D65C99B7CA76132BB6C38EECCB6E1A27AFEFAF7BFDCC2BFDCC2BFDCC2BF
        DCC2BFDCC2BFDCC2BFDCC2BFDCC2FDF9F6CD9068CC9E81A86132BB6B38EFCEB8
        E1A279FEFAF762C08862C08862C08862C08862C08862C08862C08862C088FDF9
        F6CF936ACEA384AA6132BA6A36EFD0BBE2A27AFEFBF8FEFBF8FEFBF8FEFBF8FE
        FBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8D3966DD2A78AAB6232BB6A36F0D2BE
        E2A37AE2A37AE1A37AE2A37BE1A37BE0A178DE9F77DD9F76DC9D74D99B72D899
        71D69970D5AB8EAD6333BB6A36F2D5C2E3A37AE3A37AE2A37BE2A37BE2A47BE1
        A279E0A178DEA077DE9E75DC9D74DA9B73D99B73DAB095AF6433BB6A36F2D8C5
        E3A47BE3A37AE3A47AE2A47BE2A37BE1A37BE1A279DFA077DE9F76DD9E74DB9C
        72DC9D74DDB59AB16534BB6B36F4D9C7E6A67DC88C64C98D65C98E67CB926CCB
        926DCA9069C88C65C88C64C88C64C88C64DA9C74E1BA9FB36634BB6C37F4DCC9
        E7A77DF9ECE1F9ECE1F9EDE3FCF4EEFDFAF7FDF7F3FAEDE5F7E7DBF7E5D9F6E5
        D8DEA077E4BEA4B46734BD6E3AF5DDCCE7A87EFAF0E8FAF0E8C98D66FAF0E9FD
        F8F3FEFAF8FCF4EFF9E9DFF7E7DBF7E5D9E0A278E7C2A9B66835C07442F6DFD0
        E8A87EFCF6F1FCF6F1C88C64FAF1E9FBF4EEFDFAF7FDF9F6FAF0E8F8E8DDF7E6
        DBE1A37AEFD5C3B76A36C68255F6DFD1E9AA80FEFAF6FDFAF6C88C64FBF3EEFB
        F1EAFCF6F2FEFBF8FCF6F1F9ECE2F8E7DBEED0BAECD0BDBD7443D6A585F6E0D1
        F7E0D1FEFBF8FEFBF7FDF9F6FCF5F0FAF0EAFBF2EDFDF9F6FDFAF7FBF1EBF8E9
        DFECD1BECD926AE2C5B1E1BDA6D9AB8DC9895EC07543BD6E3ABB6C37BB6B36BB
        6A36BB6A36BC6C39BD6E3BBB6D3ABF7444C98D65E7CEBCFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TBitBtn
      Left = 254
      Top = 18
      Width = 102
      Height = 41
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFF1F1FA9B9BDB6363C65555C15555C06464C59C9CDAF1F1FAFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9ADB2626B00F0FAC0F0FB612
        12BF1818C61D1DC71E1EC02C2CB39C9CD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7070CC1616AC0707B21717C15050D25F5FD36666D66363DF3F3FE02D2DE22424
        BD7373C9FFFFFFFFFFFFFFFFFF9A9ADC3A3ABF1212B82222BF4B4BC38282D1B8
        B8E5B8B8E58383D06767D84040EC3B3BF22424BD9C9CD9FFFFFFF1F1FA3434BB
        3030C20909B44C4CC0D4D4F0FFFFFFFFFFFFFFFFFFACACF02A2ADE3131E64B4B
        ED2E2EE32C2CB2F1F1FAA8A8E14949C60C0CB51414B0D4D4F0FFFFFFFFFFFFFF
        FFFFA8A8EC1F1FD22424D82A2ADE7070DC4242E11E1EBDAAAADF6F6FCE6060CF
        1111B57070CCFFFFFFFFFFFFFFFFFFA5A5E81515C81A1ACD1F1FD2ACACF08383
        D06767E01D1DC57272CB5252C46E6ED53737BFA3A3DFFFFFFFFFFFFFA3A3E60E
        0EBF1111C31515C8A8A8ECFFFFFF9F9FDC7C7CDE1717C45555C05252C47171D6
        4040C2A2A2DFFFFFFFA1A1E40808B90B0BBC0E0EBFA5A5E8FFFFFFFFFFFF9F9F
        DC6F6FD91212BD5555C16E6ECE6969D24444C67373CEAAAAE62F2FC22323C013
        13BCA3A3E6FFFFFFFFFFFFFFFFFF8282D15050D11010B47171CBA8A8E25C5CCE
        4E4EC93232BE3838C43939C43232C3AAAAE6FFFFFFFFFFFFFFFFFFD4D4F05E5E
        C93535C91D1DB0A9A9E0F0F0FA3535BC7070D54444C74040C63838C4AAAAE6FF
        FFFFFFFFFFFFFFFFD4D4F04747BF4747CA2727BC2828B1F1F1FAFFFFFF9999DD
        4747C56A6AD34444C73737BF7373CE9D9DDD9D9DDE7373CE2D2DB83737C33939
        C41F1FB09A9ADBFFFFFFFFFFFFFFFFFF6E6ECE4747C57878D94F4FC94444C63D
        3DC13B3BC03E3EC43D3DC55F5FD23B3BBF7070CCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9999DD3535BC6464D27373D67373D77070D76A6AD46060CF3636BC9A9A
        DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0FA9999DD6060C952
        52C45252C46060C99A9ADCF1F1FAFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnCancelarClick
    end
    object BtnAlterar: TBitBtn
      Left = 362
      Top = 18
      Width = 102
      Height = 41
      Caption = 'Alterar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFE2E2E2
        CBCBCBC9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9
        C9CCCCCCE2E2E2FFFFFFFFFFFFCBCBCBF9F9F9FCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF9F9F9CCCCCCFFFFFFFEFEFEC9C9C9
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCC9C9C9FFFFFFFEFEFEC9C9C9FCFCFCFCFCFC18435A2B61894C8ABE6F
        A8CBE0E9F1FBFBFBFBFBFBFBFBFBFBFBFBFCFCFCC9C9C9FEFEFEFEFEFEC9C9C9
        FCFCFCFCFCFC2E678594C7F991C9F94185C9266BAED4E2EEFAFAFAFAFAFAFAFA
        FAFCFCFCC9C9C9FEFEFEFEFEFEC9C9C9FCFCFCFCFCFC4389AAE0F2FF549AD81A
        7ABE4998C5488EC7D8E6F3F8F8F8F8F8F8FCFCFCC9C9C9FEFEFEFEFEFEC9C9C9
        FCFCFCFCFCFCA5C3D77AB6D590B7D155C9E45BDFF578D0ED519DDDDFEBF5F8F8
        F8FCFCFCC9C9C9FEFEFEFEFEFEC9C9C9FCFCFCFCFCFCFCFCFCB2D5E576BAD7C2
        F6FD63DFF75DE2F879D3F04998DCDEE9F2FCFCFCC9C9C9FEFEFEFEFEFEC9C9C9
        FCFCFCFCFCFCFCFCFCFCFCFCAFD4E577CBE7C7F7FD5EDCF55AE1F77BD4F14B9A
        DDD4E5F5C9C9C9FEFEFEFEFEFEC9C9C9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCBD
        E5F279D3EEC7F7FD5FDCF55BE2F77AD6F251A2E2B0BECAFEFEFEFEFEFEC9C9C9
        FCFCFCFBFBFBFCFCFCFCFCFCFBFBFBF8F8F8BAE3F07DD4EEC4F6FD6CDDF66DCA
        ED63A3D7669FD2E4EEF6FEFEFEC9C9C9FCFCFCF9F9F9F9F9F9F9F9F9F7F7F7F6
        F6F6F2F2F2A8D9E881D6EEB2E3F98BC0E7AED3F6C4E0FC6BA2D4FEFEFEC9C9C9
        FCFCFCF7F7F7F9F9F9F7F7F7F7F7F7F3F3F3F0F0F0EAEAEAAFE4F377BEE7B4D2
        F0E5F3FFACD2EF5996CCFFFFFFC9C9C9FBFBFBF4F4F4F5F5F5F5F5F5F5F5F5F1
        F1F1EFEFEFE9E9E9FCFCFCACD5E458A5D885B1DB469DD0B1D8EEFFFFFFCCCCCC
        F8F8F8FBFBFBFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF8F8F8C2C2C2DFDF
        DFFDFDFDFFFFFFFFFFFFFFFFFFE3E3E3CCCCCCC9C9C9C9C9C9C9C9C9C9C9C9C9
        C9C9C9C9C9C9C9C9C9C9C9DFDFDFFDFDFDFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BtnAlterarClick
    end
    object BtnExcluir: TBitBtn
      Left = 468
      Top = 18
      Width = 102
      Height = 41
      Caption = 'Excluir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFC8C8EB6868C92828B20707A60707A62828B26868C9C8C8EBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6868C90404AB1515CC2121E127
        27EC2727EC2121E11515CC0404AB6868C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        4848BE1010C12727EC1616D80808C80101BE0101BD0808C51616D52727EC1010
        C14848BEFFFFFFFFFFFFFFFFFF6868C91010C12424E90808CC0000C20000C100
        00BF0000BE0000BC0000BB0808C42424E81010C16868C9FFFFFFC8C8EB0505AC
        2B2BEC0808CF0000C50000C40000C30000C20000C00000C00000BE0000BC0808
        C62727EC0404ABC8C8EB6868C92020CC1E1EDF0000CA0000C80000C70000C600
        00C50000C30000C20000C10000BF0000BE1616D81515CC6868C92828B23B3BE3
        0E0ED30000CC0000CB0000CA0000C90000C80000C60000C40000C40000C30000
        C10808C92121E12828B20707A65152EF0303CD0000CCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C40101C42727EC0707A60707A65C5DF0
        0303CD0000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        C70101C62727EC0707A62828B25857E51515D40000CC0000CC0000CC0000CC00
        00CC0000CC0000CC0000CC0000CB0000C90B0BD02828E22828B26868C94040CF
        3E3EE20000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000
        CC2323DF2020CD6868C9C8C8EB0D0DAC7A79F21919D40000CC0000CC0000CC00
        00CC0000CC0000CC0000CC0000CC1111D44A4AEF0707ACC8C8EBFFFFFF6868C9
        3636C47576F01B1BD40000CC0000CC0000CC0000CC0000CC0000CC1414D45152
        ED2222C26868C9FFFFFFFFFFFFFFFFFF4848BE3939C48888F44A4AE21B1BD405
        05CD0404CD1818D43E3EE16A69F12929C34848BEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF6868C91010AC4E4ED07676E78786F38282F36B6BE74343CF0C0CAC6868
        C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8EB6868C92828B207
        07A60707A62828B26868C9C8C8EBFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BtnExcluirClick
    end
    object BtnSair: TBitBtn
      Left = 575
      Top = 18
      Width = 102
      Height = 41
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000CBCCD3787DB2
        676CAE686BA76768A06769A06769A36769A5686BA7686CA9696DAB696EAE676E
        B17076AFB4B5C1FFFFFF5B66E28587FF8788FF8687FF8686FF8686FF8687FF86
        87FF8687FF8687FF8687FF8787FF8789FF888BFF5460E4B9BAC57173FF706EF1
        6C6CF26D6DF36C6CF46D6DF46D6DF26D6DF26D6DF26D6CF36C6CF46D6DF36C6C
        F2716FF26F72FF7378AF5A5BEF5353E65454E75050E84949DF4B4BE25353E954
        54E75353E84848E14646D94F4FE75454E85454E65557F8696FAE4142E23B3BDB
        3838DC3D3DCFFFFFFF5151B32F2FD43E3EE22B2BD47373D4FFFFFF3232BF3838
        DD3D3CDB3B3DED686DAD292AD72222D11B1BD0FFFFFFFFFFFFFFFFFF3C3CAA09
        09BF5C5CCAFFFFFFFFFFFFFFFFFF1515C72121D12224E2666AAA1819CE1010C7
        0909C64A4AC3FFFFFFFFFFFFFFFFFF5E5EA6FFFFFFFFFFFFFFFFFF4242C30606
        C21010C51013D76468A91415C20B0BBB0A0ABB0000BA4343BCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF3737B90000B50C0CBC0B0BB90C0DCB6366A71012B90707AE
        0707AF0605B10000A56D6DB2FFFFFFFFFFFFFFFFFF4C4E9A0000A00808B30707
        AF0707AD0709BF6265A50C0DAE0302A20303A40000984A4AABFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF2C2D8E00009A0302A50302A10404B36264A30A0EB10105A6
        0000A25152B0FFFFFFFFFFFFFFFFFF6263AFFFFFFFFFFFFFFFFFFF3132910000
        A10104A50206B66164A30913BF0004B20000AEFFFFFFFFFFFFFFFFFF3032B100
        00AA3C3FB8FFFFFFFFFFFFFFFFFF0000AE0005B20007C26163A3525FDD2430C8
        1825C62A34C8FFFFFF525AC70B17BF1B28C90F1BC55962C7FFFFFF1926BF1624
        C71826C52938D9686BA68F9CF28691E7838FE77E89E6737FE27582E47C88E57B
        87E57884E46F7BE46C79E3707DE4717EE3717EE2727FF16B6DA99FAAFEACB2EB
        A2AAECA1A9EBA0A9EC9EA7EA9DA5EB9BA4EB99A2EA97A1EA96A0EA949EE9929C
        E99AA4EA8791FA8384AC747FCFB5BEFCC0C8FCBCC3FCBBC2FCBAC0FCB8BFFBB7
        BDFBB5BBFAB4BBFAB3B9F9B1B7F8B2B9F9A7AEFC6669C3DBDBE1}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BtnSairClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Pedido de Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14449176
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 715
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 522
    Width = 701
    Height = 19
    Panels = <>
    ExplicitLeft = 4
    ExplicitTop = 529
    ExplicitWidth = 1296
  end
  object qrypedidos: TFDQuery
    Connection = DmBancodeDados.FDConnection
    SQL.Strings = (
      
        'INSERT INTO PEDIDOS (DATA, ID_CLIENTE, VALOR_TOTAL) VALUES (:DAT' +
        'A, :CODIGO_CLIENTE, :VALOR_TOTAL)')
    Left = 920
    Top = 208
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end
      item
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end>
  end
  object dsPedidos: TDataSource
    DataSet = qrypedidos
    Left = 944
    Top = 280
  end
  object qryconsulta: TFDQuery
    Connection = DmBancodeDados.FDConnection
    SQL.Strings = (
      'select * from clientes')
    Left = 1008
    Top = 216
    object qryconsultaid_cli: TFDAutoIncField
      FieldName = 'id_cli'
      Origin = 'id_cli'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryconsultanome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object qryconsultacidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 100
    end
    object qryconsultauf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
  end
  object cdsPedidoTemp: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo_cliente'
        DataType = ftFloat
      end
      item
        Name = 'numero_pedido'
        DataType = ftInteger
      end
      item
        Name = 'valor_total'
        DataType = ftFloat
      end
      item
        Name = 'nome_cliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cidade'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'uf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATA'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 824
    Top = 104
    object cdsPedidoTempcodigo_cliente: TFloatField
      FieldName = 'codigo_cliente'
    end
    object cdsPedidoTempnumero_pedido: TIntegerField
      FieldName = 'numero_pedido'
    end
    object cdsPedidoTempvalor_total: TFloatField
      FieldName = 'valor_total'
      DisplayFormat = '###,###,###,###,###,##0.00'
    end
    object cdsPedidoTempnome_cliente: TStringField
      FieldName = 'nome_cliente'
    end
    object cdsPedidoTempcidade: TStringField
      FieldName = 'cidade'
    end
    object cdsPedidoTempuf: TStringField
      FieldName = 'uf'
    end
    object cdsPedidoTempdata: TDateField
      FieldName = 'data'
    end
  end
  object qryconsulta_prod: TFDQuery
    Connection = DmBancodeDados.FDConnection
    SQL.Strings = (
      'select * from produtos')
    Left = 944
    Top = 344
    object qryconsulta_prodid_produto: TFDAutoIncField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryconsulta_prodnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object qryconsulta_prodpreco_venda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'preco_venda'
      Origin = 'preco_venda'
    end
  end
  object cdsPedidoProdutoTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 808
    Top = 24
    object cdsPedidoProdutoTempnumero_pedido: TIntegerField
      FieldName = 'numero_pedido'
    end
    object cdsPedidoProdutoTempcodigo_produto: TIntegerField
      FieldName = 'codigo_produto'
    end
    object cdsPedidoProdutoTempquantidade: TFloatField
      FieldName = 'quantidade'
      DisplayFormat = '###,###,###,###,###,##0.00'
    end
    object cdsPedidoProdutoTempvalor_unitario: TFloatField
      FieldName = 'valor_unitario'
    end
    object cdsPedidoProdutoTempvalor_total: TFloatField
      FieldName = 'valor_total'
      DisplayFormat = '###,###,###,###,###,##0.00'
    end
    object cdsPedidoProdutoTempdescricao_produto: TStringField
      FieldName = 'descricao_produto'
    end
  end
  object dsPedidoProduto: TDataSource
    DataSet = cdsPedidoProdutoTemp
    Left = 1016
    Top = 8
  end
  object dsPedido: TDataSource
    DataSet = cdsPedidoTemp
    Left = 1000
    Top = 72
  end
  object qryAddprodpedidos: TFDQuery
    Connection = DmBancodeDados.FDConnection
    SQL.Strings = (
      
        'INSERT INTO PEDIDOS_PRODUTOS (ID_PED, COD_PRODUTO, QUANTIDADE, V' +
        'ALOR_UNITARIO, VALOR_TOTAL) '
      
        'VALUES  ( :NUMERO_PED  , :COD_PRODUTO, :QUANTIDADE, :VALOR_UNITA' +
        'RIO, :VALOR_TOTAL)')
    Left = 936
    Top = 152
    ParamData = <
      item
        Name = 'NUMERO_PED'
        ParamType = ptInput
      end
      item
        Name = 'COD_PRODUTO'
        ParamType = ptInput
      end
      item
        Name = 'QUANTIDADE'
        ParamType = ptInput
      end
      item
        Name = 'VALOR_UNITARIO'
        ParamType = ptInput
      end
      item
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end>
  end
  object qyconsultaPedidos: TFDQuery
    Connection = DmBancodeDados.FDConnection
    SQL.Strings = (
      'select p.numero_ped, p.data, p.id_cliente, pp.cod_produto,'
      
        'pp.quantidade, pp.valor_unitario, pp.valor_total, c.cidade, c.uf' +
        ', C.NOME , pr.nome as produto'
      ' from pedidos p, pedidos_produtos pp, clientes c ,  produtos pr'
      'where pp.id_ped = p.numero_ped'
      'and c.ID_CLI = p.id_cliente'
      'and pr.id_produto = pp.cod_produto')
    Left = 864
    Top = 272
    object qyconsultaPedidosnumero_ped: TFDAutoIncField
      FieldName = 'numero_ped'
      Origin = 'numero_ped'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qyconsultaPedidosdata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = '`data`'
    end
    object qyconsultaPedidosid_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object qyconsultaPedidoscod_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_produto'
      Origin = 'cod_produto'
      ProviderFlags = []
      ReadOnly = True
    end
    object qyconsultaPedidosquantidade: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'quantidade'
      Origin = 'quantidade'
      ProviderFlags = []
      ReadOnly = True
    end
    object qyconsultaPedidosvalor_unitario: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_unitario'
      Origin = 'valor_unitario'
      ProviderFlags = []
      ReadOnly = True
    end
    object qyconsultaPedidosvalor_total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_total'
      Origin = 'valor_total'
      ProviderFlags = []
      ReadOnly = True
    end
    object qyconsultaPedidoscidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qyconsultaPedidosuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object qyconsultaPedidosNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qyconsultaPedidosproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object qryexcluir: TFDQuery
    Connection = DmBancodeDados.FDConnection
    Left = 736
    Top = 232
  end
  object qryAtualizaPedido: TFDQuery
    Connection = DmBancodeDados.FDConnection
    Left = 768
    Top = 344
  end
  object qryaux: TFDQuery
    Connection = DmBancodeDados.FDConnection
    Left = 816
    Top = 192
  end
end
