object CSU_FM_C_CLI_FIN_ITE: TCSU_FM_C_CLI_FIN_ITE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 467
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 41
    Width = 813
    Height = 426
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlDados: TPanel
      Left = 10
      Top = 5
      Width = 781
      Height = 396
      BevelOuter = bvNone
      TabOrder = 0
      object lblNomeCliente: TLabel
        Left = 50
        Top = 7
        Width = 42
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNumNota: TLabel
        Left = 24
        Top = 27
        Width = 68
        Height = 14
        Caption = 'Num. Nota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtNumNota: TLabel
        Left = 98
        Top = 27
        Width = 75
        Height = 14
        Caption = 'txtNumNota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtNomeCliente: TLabel
        Left = 98
        Top = 8
        Width = 88
        Height = 13
        Caption = 'txtNomeCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblVlrLiquido: TLabel
        Left = 626
        Top = 312
        Width = 59
        Height = 13
        Caption = 'Vlr. L'#237'quido :'
      end
      object lblVlrDesc: TLabel
        Left = 448
        Top = 312
        Width = 71
        Height = 13
        Caption = 'Vlr. Desconto :'
      end
      object lblVlrMercadoria: TLabel
        Left = 251
        Top = 312
        Width = 79
        Height = 13
        Caption = 'Vlr. Mercadoria :'
      end
      object grdItens: TwwDBGrid
        Left = 0
        Top = 47
        Width = 777
        Height = 246
        Selected.Strings = (
          'id_item'#9'10'#9'C'#243'digo'#9'T'
          'int_desc_item'#9'29'#9'Descri'#231#227'o'#9'F'
          'int_nometam'#9'7'#9'Tamanho'#9'F'
          'int_nomecor'#9'15'#9'Cor'#9'F'
          'qtde'#9'5'#9'Qtde'#9'F'#9
          'vlr_unitario'#9'12'#9'Vlr. Unit'#225'rio'#9'T'
          'vlr_mercadoria'#9'13'#9'Vlr. Mercadoria'#9'T'
          'vlr_desconto'#9'12'#9'Vlr. Desconto'#9'T'
          'vlr_liquido'#9'12'#9'Vlr. L'#237'quido'#9'T')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dso
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
      end
      object btnSair: TcxButton
        Left = 656
        Top = 353
        Width = 121
        Height = 25
        Caption = 'Sair'
        OptionsImage.Glyph.Data = {
          46030000424D460300000000000036000000280000000E0000000E0000000100
          2000000000001003000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208252525BC17171774060606210000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E981313135F2F2F2FEF323232FF2F2F2FF2222222AE101010530000
          0000000000000000000000000000000000000000000000000000323232FF1E1E
          1E9B2B2B2BDD323232FF323232FF323232FF303030F700000000000000000000
          000000000000000000000000000000000000323232FD1D1D1D932C2C2CDE3232
          32FF323232FF323232FF2F2F2FF1000000000000000000000000000000000000
          00000000000000000000323232FD1D1D1D932C2C2CDE323232FF323232FF3232
          32FF2F2F2FF00000000000000000000000000000000000000000000000000000
          0000323232FD1D1D1D922D2D2DE7323232FF323232FF323232FF2F2F2FF00000
          0000000000000000000000000000000000000000000000000000323232FD1F1F
          1F9C1D1D1D94242424B8323232FF323232FF2F2F2FF000000000000000000000
          000000000000000000000000000000000000323232FD1F1F1F9C1D1D1D942424
          24B8323232FF323232FF2F2F2FF0000000000000000000000000000000000000
          00000000000000000000323232FD1D1D1D922D2D2DE7323232FF323232FF3232
          32FF2F2F2FF00000000000000000000000000000000000000000000000000000
          0000323232FD1D1D1D932C2C2CDE323232FF323232FF323232FF2F2F2FF00000
          0000000000000000000000000000000000000000000000000000323232FD1D1D
          1D932C2C2CDE323232FF323232FF323232FF2F2F2FF000000000000000000000
          000000000000000000000000000000000000323232FF1E1E1E9B2B2B2BDD3232
          32FF323232FF323232FF313131FB000000000000000000000000000000000000
          000000000000000000001E1E1E981212125E2F2F2FEE323232FF323232FF2E2E
          2EED222222AC0000000000000000000000000000000000000000000000000000
          00000000000001010107272727C51D1D1D961010105105050517000000000000
          00000000000000000000}
        TabOrder = 1
        OnClick = btnSairClick
      end
      object txtVlrLiquido: TEdit
        Left = 688
        Top = 309
        Width = 90
        Height = 21
        Alignment = taRightJustify
        Color = 14342874
        TabOrder = 2
        Text = 'txtVlrLiquido'
      end
      object txtVlrDesc: TEdit
        Left = 521
        Top = 309
        Width = 90
        Height = 21
        Alignment = taRightJustify
        Color = 14342874
        ReadOnly = True
        TabOrder = 3
        Text = 'txtVlrDesc'
      end
      object txtVlrMercadoria: TEdit
        Left = 336
        Top = 309
        Width = 90
        Height = 21
        Alignment = taRightJustify
        Color = 14342874
        ReadOnly = True
        TabOrder = 4
        Text = 'txtVlrMercadoria'
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 813
    Height = 41
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 1
    object lblTitulo: TLabel
      Left = 1
      Top = 10
      Width = 811
      Height = 30
      Align = alBottom
      Alignment = taCenter
      Caption = 'Itens da Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExplicitWidth = 130
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE
    Left = 552
    Top = 47
  end
end
