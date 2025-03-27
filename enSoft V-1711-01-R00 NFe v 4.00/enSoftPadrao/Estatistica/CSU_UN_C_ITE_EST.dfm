object CSU_FM_C_ITE_EST: TCSU_FM_C_ITE_EST
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 629
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 30
    Width = 994
    Height = 599
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlCentral: TPanel
      Left = 0
      Top = 6
      Width = 825
      Height = 492
      BevelOuter = bvNone
      TabOrder = 0
    end
    object pnlDados: TPanel
      Left = 0
      Top = 5
      Width = 989
      Height = 587
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 13
        Top = 10
        Width = 37
        Height = 13
        Caption = 'Item : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Und: TLabel
        Left = 408
        Top = 10
        Width = 28
        Height = 13
        Caption = 'Und :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 11
        Top = 429
        Width = 286
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = ' S'#233'rie Hist'#243'rica '
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label6: TLabel
        Left = 305
        Top = 429
        Width = 319
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = ' Posi'#231#227'o F'#237'sico / Financeira '
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label7: TLabel
        Left = 632
        Top = 429
        Width = 352
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = ' Mapa comparativo de vendas '
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label8: TLabel
        Left = 12
        Top = 223
        Width = 96
        Height = 13
        Caption = 'Per'#237'odo de Vendas :'
      end
      object Label9: TLabel
        Left = 219
        Top = 223
        Width = 6
        Height = 13
        Caption = #224
      end
      object btnSair: TcxButton
        Left = 879
        Top = 560
        Width = 105
        Height = 24
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
        TabOrder = 0
        OnClick = btnSairClick
      end
      object txtItem: TwwDBEdit
        Left = 128
        Top = 6
        Width = 274
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'descricao'
        DataSource = CSU_FM_C_ITE.dso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object txtUnd: TwwDBEdit
        Left = 439
        Top = 6
        Width = 43
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'id_und_venda'
        DataSource = CSU_FM_C_ITE.dso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object pnMovimentacoesAno: TPanel
        Left = 11
        Top = 29
        Width = 973
        Height = 180
        BevelOuter = bvNone
        Caption = 'pnMovimentacoesAno'
        TabOrder = 3
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 973
          Height = 17
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = ' Movimenta'#231#245'es por Ano '
          Color = 16568785
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitTop = -1
        end
        object dbItens: TwwDBGrid
          AlignWithMargins = True
          Left = 1
          Top = 20
          Width = 973
          Height = 160
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabStop = False
          Selected.Strings = (
            'id_empresa'#9'10'#9'C'#243'digo'#9'T'
            'int_nomeemp'#9'20'#9'Empresa'#9'T'
            'int_nometme'#9'30'#9'Tipo Mov. Estoque'#9'T'
            'ano'#9'10'#9'Ano'#9'T'
            'valor'#9'10'#9'Total'#9'T'
            'mes_01'#9'10'#9'Jan'#9'T'#9'M'#234's'
            'mes_02'#9'10'#9'Fev'#9'T'#9'M'#234's'
            'mes_03'#9'10'#9'Mar'#9'T'#9'M'#234's'
            'mes_04'#9'10'#9'Abr'#9'T'#9'M'#234's'
            'mes_05'#9'10'#9'Mai'#9'T'#9'M'#234's'
            'mes_06'#9'10'#9'Jun'#9'T'#9'M'#234's'
            'mes_07'#9'10'#9'Jul'#9'T'#9'M'#234's'
            'mes_08'#9'10'#9'Ago'#9'T'#9'M'#234's'
            'mes_09'#9'10'#9'Set'#9'T'#9'M'#234's'
            'mes_10'#9'10'#9'Out'#9'T'#9'M'#234's'
            'mes_11'#9'10'#9'Nov'#9'T'#9'M'#234's'
            'mes_12'#9'10'#9'Dez'#9'T'#9'M'#234's')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsoMPA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
        end
      end
      object pnVendaCliente: TPanel
        Left = 11
        Top = 247
        Width = 484
        Height = 176
        BevelOuter = bvNone
        Caption = 'pnVendaCliente'
        TabOrder = 4
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 484
          Height = 17
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = ' Venda a cliente '
          Color = 11522042
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitTop = 8
          ExplicitWidth = 381
        end
        object grdEstVcm: TwwDBGrid
          AlignWithMargins = True
          Left = 0
          Top = 17
          Width = 484
          Height = 159
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabStop = False
          Selected.Strings = (
            'id_empresa'#9'5'#9'C'#243'd.'#9'T'
            'int_nomeemp'#9'17'#9'Empresa'#9'T'
            'int_nomecli'#9'32'#9'Cliente'#9'T'
            'valor'#9'10'#9'Total'#9'T'
            'mes_1'#9'10'#9'1'#186#9'T'#9'M'#234's'
            'mes_2'#9'10'#9'2'#186#9'T'#9'M'#234's'
            'mes_3'#9'10'#9'3'#186#9'T'#9'M'#234's'
            'mes_4'#9'10'#9'4'#186#9'T'#9'M'#234's'
            'mes_5'#9'10'#9'5'#186#9'T'#9'M'#234's'
            'mes_6'#9'10'#9'6'#186#9'T'#9'M'#234's'
            'mes_7'#9'10'#9'7'#186#9'T'#9'M'#234's'
            'mes_8'#9'10'#9'8'#186#9'T'#9'M'#234's'
            'mes_9'#9'10'#9'9'#186#9'T'#9'M'#234's'
            'mes_10'#9'10'#9'10'#186#9'T'#9'M'#234's'
            'mes_11'#9'10'#9'11'#186#9'T'#9'M'#234's'
            'mes_12'#9'10'#9'12'#186#9'T'#9'M'#234's')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsoVCM
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
        end
      end
      object pnVendaVendedor: TPanel
        Left = 497
        Top = 247
        Width = 487
        Height = 176
        BevelOuter = bvNone
        Caption = 'pnVendaVendedor'
        TabOrder = 5
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 487
          Height = 17
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Venda por vendedor'
          Color = 11522042
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitTop = 8
          ExplicitWidth = 185
        end
        object grdEstVVM: TwwDBGrid
          AlignWithMargins = True
          Left = 0
          Top = 17
          Width = 487
          Height = 159
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabStop = False
          Selected.Strings = (
            'id_empresa'#9'7'#9'C'#243'd.'#9'T'
            'int_nomeemp'#9'20'#9'Empresa'#9'T'
            'int_nomevnd'#9'24'#9'Vendedor'#9'T'
            'valor'#9'10'#9'Total'#9'T'
            'mes_1'#9'10'#9'1'#186#9'T'#9'M'#234's'
            'mes_2'#9'10'#9'2'#186#9'T'#9'M'#234's'
            'mes_3'#9'10'#9'3'#186#9'T'#9'M'#234's'
            'mes_4'#9'10'#9'4'#186#9'T'#9'M'#234's'
            'mes_5'#9'10'#9'5'#186#9'T'#9'M'#234's'
            'mes_6'#9'10'#9'6'#186#9'T'#9'M'#234's'
            'mes_7'#9'10'#9'7'#186#9'T'#9'M'#234's'
            'mes_8'#9'10'#9'8'#186#9'T'#9'M'#234's'
            'mes_9'#9'10'#9'9'#186#9'T'#9'M'#234's'
            'mes_10'#9'10'#9'10'#186#9'T'#9'M'#234's'
            'mes_11'#9'10'#9'11'#186#9'T'#9'M'#234's'
            'mes_12'#9'10'#9'12'#186#9'T'#9'M'#234's')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsoVVM
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
        end
      end
      object dgFes: TwwDBGrid
        AlignWithMargins = True
        Left = 11
        Top = 447
        Width = 286
        Height = 108
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        Selected.Strings = (
          'id_empresa'#9'6'#9'C'#243'd.'#9'T'
          'int_nomeemp'#9'23'#9'Empresa'#9'T'
          'ano'#9'7'#9'Ano'#9'T'
          'valor'#9'11'#9'Total'#9'T')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoSRH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
      end
      object wwDBGrid5: TwwDBGrid
        AlignWithMargins = True
        Left = 305
        Top = 446
        Width = 319
        Height = 108
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        Selected.Strings = (
          'id_empresa'#9'7'#9'Cod.'#9'T'
          'int_nomeemp'#9'23'#9'Empresa'#9'T'
          'saldo_fisico'#9'11'#9'Qtde F'#237'sico'#9'T'
          'valor'#9'11'#9'Total Custo'#9'T')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoPFC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
      end
      object wwDBGrid3: TwwDBGrid
        AlignWithMargins = True
        Left = 632
        Top = 446
        Width = 352
        Height = 108
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        Selected.Strings = (
          'id_empresa'#9'7'#9'C'#243'd.'#9'T'
          'int_nomeemp'#9'20'#9'Empresa'#9'T'
          'mes_ano_anterior'#9'4'#9'M'#234's'#9'T'#9'Anterior'
          'ano_anterior'#9'8'#9'Ano'#9'T'#9'Anterior'
          'mes_atual'#9'10'#9'M'#234's Atual'#9'T'
          'percentual'#9'10'#9'%'#9'T')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoMCV
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
      end
      object txtCodItem: TwwDBEdit
        Left = 53
        Top = 6
        Width = 69
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'id_item'
        DataSource = CSU_FM_C_ITE.dso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object txtDtaInicial: TJvDateEdit
        Left = 114
        Top = 220
        Width = 100
        Height = 21
        ShowNullDate = False
        TabOrder = 10
      end
      object txtDtaFinal: TJvDateEdit
        Left = 232
        Top = 220
        Width = 103
        Height = 21
        ShowNullDate = False
        TabOrder = 11
      end
      object btnFiltrar: TButton
        Left = 341
        Top = 219
        Width = 70
        Height = 23
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = btnFiltrarClick
      end
      object btnImprimir: TcxButton
        Left = 760
        Top = 560
        Width = 113
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 13
        OnClick = btnImprimirClick
      end
    end
  end
  object pnlTop: TJvPanel
    Tag = 1
    Left = 0
    Top = 0
    Width = 994
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 1
    object pnlCima: TJvPanel
      Tag = 1
      Left = 0
      Top = 0
      Width = 994
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblCodificacaoLMestre: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 4
        Width = 989
        Height = 25
        Margins.Left = 0
        Margins.Top = 4
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Lista Mestre'
        Color = 3355443
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 1145
      end
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 994
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Estat'#237'sticas'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ExplicitTop = -4
        ExplicitWidth = 1200
      end
      object pnlBaixo: TPanel
        Left = 0
        Top = 29
        Width = 994
        Height = 0
        Align = alTop
        BevelOuter = bvNone
        Color = 3355443
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
  object dsoMPA: TwwDataSource
    DataSet = CSU_CD_C_ITE_EST_MPA
    Left = 552
    Top = 123
  end
  object CSU_CD_C_ITE_EST_MPA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_ITE_EST_MPA'
    RemoteServer = dmGeral.pcConecao
    Left = 444
    Top = 116
  end
  object CSU_CD_C_ITE_EST_SRH: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_ITE_EST_SRH'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = CSU_CD_C_ITE_EST_SRHBeforeOpen
    Left = 76
    Top = 526
    object CSU_CD_C_ITE_EST_SRHid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CSU_CD_C_ITE_EST_SRHint_nomeemp: TWideStringField
      FieldName = 'int_nomeemp'
      Size = 50
    end
    object CSU_CD_C_ITE_EST_SRHano: TFloatField
      FieldName = 'ano'
    end
    object CSU_CD_C_ITE_EST_SRHvalor: TFloatField
      FieldName = 'valor'
    end
  end
  object CSU_CD_C_ITE_EST_VCM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_ITE_EST_VCM'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = CSU_CD_C_ITE_EST_VCMBeforeOpen
    Left = 195
    Top = 358
    object CSU_CD_C_ITE_EST_VCMid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CSU_CD_C_ITE_EST_VCMint_nomeemp: TWideStringField
      FieldName = 'int_nomeemp'
      Size = 50
    end
    object CSU_CD_C_ITE_EST_VCMint_cod_cli: TIntegerField
      FieldName = 'int_cod_cli'
    end
    object CSU_CD_C_ITE_EST_VCMint_nomecli: TWideStringField
      FieldName = 'int_nomecli'
      Size = 50
    end
    object CSU_CD_C_ITE_EST_VCMvalor: TFloatField
      FieldName = 'valor'
    end
    object CSU_CD_C_ITE_EST_VCMmes_1: TFloatField
      FieldName = 'mes_1'
    end
    object CSU_CD_C_ITE_EST_VCMmes_2: TFloatField
      FieldName = 'mes_2'
    end
    object CSU_CD_C_ITE_EST_VCMmes_3: TFloatField
      FieldName = 'mes_3'
    end
    object CSU_CD_C_ITE_EST_VCMmes_4: TFloatField
      FieldName = 'mes_4'
    end
    object CSU_CD_C_ITE_EST_VCMmes_5: TFloatField
      FieldName = 'mes_5'
    end
    object CSU_CD_C_ITE_EST_VCMmes_6: TFloatField
      FieldName = 'mes_6'
    end
    object CSU_CD_C_ITE_EST_VCMmes_7: TFloatField
      FieldName = 'mes_7'
    end
    object CSU_CD_C_ITE_EST_VCMmes_8: TFloatField
      FieldName = 'mes_8'
    end
    object CSU_CD_C_ITE_EST_VCMmes_9: TFloatField
      FieldName = 'mes_9'
    end
    object CSU_CD_C_ITE_EST_VCMmes_10: TFloatField
      FieldName = 'mes_10'
    end
    object CSU_CD_C_ITE_EST_VCMmes_11: TFloatField
      FieldName = 'mes_11'
    end
    object CSU_CD_C_ITE_EST_VCMmes_12: TFloatField
      FieldName = 'mes_12'
    end
    object CSU_CD_C_ITE_EST_VCMmes_13: TFloatField
      FieldName = 'mes_13'
    end
  end
  object CSU_CD_C_ITE_EST_VVM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_ITE_EST_VVM'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = CSU_CD_C_ITE_EST_VVMBeforeOpen
    Left = 794
    Top = 350
    object CSU_CD_C_ITE_EST_VVMid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CSU_CD_C_ITE_EST_VVMint_nomeemp: TWideStringField
      FieldName = 'int_nomeemp'
      Size = 50
    end
    object CSU_CD_C_ITE_EST_VVMint_cod_vnd: TIntegerField
      FieldName = 'int_cod_vnd'
    end
    object CSU_CD_C_ITE_EST_VVMint_nomevnd: TWideStringField
      FieldName = 'int_nomevnd'
      Size = 100
    end
    object CSU_CD_C_ITE_EST_VVMvalor: TFloatField
      FieldName = 'valor'
    end
    object CSU_CD_C_ITE_EST_VVMmes_1: TFloatField
      FieldName = 'mes_1'
    end
    object CSU_CD_C_ITE_EST_VVMmes_2: TFloatField
      FieldName = 'mes_2'
    end
    object CSU_CD_C_ITE_EST_VVMmes_3: TFloatField
      FieldName = 'mes_3'
    end
    object CSU_CD_C_ITE_EST_VVMmes_4: TFloatField
      FieldName = 'mes_4'
    end
    object CSU_CD_C_ITE_EST_VVMmes_5: TFloatField
      FieldName = 'mes_5'
    end
    object CSU_CD_C_ITE_EST_VVMmes_6: TFloatField
      FieldName = 'mes_6'
    end
    object CSU_CD_C_ITE_EST_VVMmes_7: TFloatField
      FieldName = 'mes_7'
    end
    object CSU_CD_C_ITE_EST_VVMmes_8: TFloatField
      FieldName = 'mes_8'
    end
    object CSU_CD_C_ITE_EST_VVMmes_9: TFloatField
      FieldName = 'mes_9'
    end
    object CSU_CD_C_ITE_EST_VVMmes_10: TFloatField
      FieldName = 'mes_10'
    end
    object CSU_CD_C_ITE_EST_VVMmes_11: TFloatField
      FieldName = 'mes_11'
    end
    object CSU_CD_C_ITE_EST_VVMmes_12: TFloatField
      FieldName = 'mes_12'
    end
    object CSU_CD_C_ITE_EST_VVMmes_13: TFloatField
      FieldName = 'mes_13'
    end
  end
  object CSU_CD_C_ITE_EST_PFC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_ITE_EST_PFC'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = CSU_CD_C_ITE_EST_PFCBeforeOpen
    Left = 507
    Top = 546
    object CSU_CD_C_ITE_EST_PFCid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CSU_CD_C_ITE_EST_PFCint_nomeemp: TWideStringField
      FieldName = 'int_nomeemp'
      Size = 50
    end
    object CSU_CD_C_ITE_EST_PFCsaldo_fisico: TFloatField
      FieldName = 'saldo_fisico'
    end
    object CSU_CD_C_ITE_EST_PFCvalor: TFloatField
      FieldName = 'valor'
    end
  end
  object CSU_CD_C_ITE_EST_MCV: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_ITE_EST_MCV'
    RemoteServer = dmGeral.pcConecao
    Left = 858
    Top = 506
    object CSU_CD_C_ITE_EST_MCVid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CSU_CD_C_ITE_EST_MCVint_nomeemp: TWideStringField
      FieldName = 'int_nomeemp'
      Size = 50
    end
    object CSU_CD_C_ITE_EST_MCVano_anterior: TFloatField
      FieldName = 'ano_anterior'
    end
    object CSU_CD_C_ITE_EST_MCVmes_ano_anterior: TFloatField
      FieldName = 'mes_ano_anterior'
    end
    object CSU_CD_C_ITE_EST_MCVmes_atual: TFloatField
      FieldName = 'mes_atual'
    end
    object CSU_CD_C_ITE_EST_MCVpercentual: TFloatField
      FieldName = 'percentual'
    end
  end
  object dsoVCM: TwwDataSource
    DataSet = CSU_CD_C_ITE_EST_VCM
    Left = 324
    Top = 358
  end
  object dsoVVM: TwwDataSource
    DataSet = CSU_CD_C_ITE_EST_VVM
    Left = 611
    Top = 350
  end
  object dsoSRH: TwwDataSource
    DataSet = CSU_CD_C_ITE_EST_SRH
    Left = 196
    Top = 554
  end
  object dsoPFC: TwwDataSource
    DataSet = CSU_CD_C_ITE_EST_PFC
    Left = 379
    Top = 522
  end
  object dsoMCV: TwwDataSource
    DataSet = CSU_CD_C_ITE_EST_MCV
    Left = 730
    Top = 506
  end
  object CSU_FR_R_ITE_EST: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42318.351359942100000000
    ReportOptions.LastChange = 42318.351359942100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 438
    Top = 344
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = CSU_DB_C_ITE_EST_MCV
        DataSetName = 'CSU_DB_C_ITE_EST_MCV'
      end
      item
        DataSet = CSU_DB_C_ITE_EST_MPA
        DataSetName = 'CSU_DB_C_ITE_EST_MPA'
      end
      item
        DataSet = CSU_DB_C_ITE_EST_PFC
        DataSetName = 'CSU_DB_C_ITE_EST_PFC'
      end
      item
        DataSet = CSU_DB_C_ITE_EST_SRH
        DataSetName = 'CSU_DB_C_ITE_EST_SRH'
      end
      item
        DataSet = CSU_DB_C_ITE_EST_VCM
        DataSetName = 'CSU_DB_C_ITE_EST_VCM'
      end
      item
        DataSet = CSU_DB_C_ITE_EST_VVM
        DataSetName = 'CSU_DB_C_ITE_EST_VVM'
      end>
    Variables = <
      item
        Name = ' Externo'
        Value = Null
      end
      item
        Name = 'ft_codlme'
        Value = ''
      end
      item
        Name = 'Assin_enorth'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 260.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 907.087200000000000000
          Color = clBlack
          ArrowSolid = True
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 385.512060000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estat'#237'stica de Itens')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 914.827150000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 52.913420000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CAD_DB_C_PARemp_fantasia: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 385.512060000000000000
          Height = 26.456710000000000000
          DataField = 'emp_fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_fantasia"]')
          ParentFont = False
        end
        object ft_codlme: TfrxMemoView
          Left = 770.000000000000000000
          Top = 4.102350000000000000
          Width = 141.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ft_codlme]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 38.677180000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Shape1: TfrxShapeView
          Width = 1046.929810000000000000
          Height = 38.118120000000000000
          Fill.BackColor = 15395562
          Frame.Color = 15395562
        end
        object Memo3: TfrxMemoView
          Top = 21.000000000000000000
          Width = 22.677165350000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 23.055118110000000000
          Top = 21.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 86.173228350000000000
          Top = 21.000000000000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 119.055118110000000000
          Top = 21.039270000000000000
          Width = 128.503937010000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Tipo Mov. Est.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 249.000000000000000000
          Top = 21.039270000000000000
          Width = 34.015748030000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 283.086614170000000000
          Top = 21.039270000000000000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 352.629921260000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Jan')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 410.078740160000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fev')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 467.905511810000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Mar')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 527.000000000000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Abr')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 585.826771650000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Mai')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 644.031496060000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Jun')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 701.858267720000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Jul')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 760.062992130000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ago')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 816.000000000000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Set')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 873.826771650000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Out')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 932.031496060000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nov')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 989.858267720000000000
          Top = 21.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dez')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Top = 3.039270000000000000
          Width = 1047.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'MOVIMENTA'#199#213'ES POR ANO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.362080240000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        DataSet = CSU_DB_C_ITE_EST_MPA
        DataSetName = 'CSU_DB_C_ITE_EST_MPA'
        RowCount = 0
        object CSU_DB_C_ITE_EST_MPAid_empresa: TfrxMemoView
          Top = 0.243970000000000000
          Width = 22.677165350000000000
          Height = 15.118110240000000000
          DataField = 'id_empresa'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."id_empresa"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_06: TfrxMemoView
          Left = 642.520100000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'mes_06'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_06"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_05: TfrxMemoView
          Left = 585.827150000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'mes_05'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_05"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_04: TfrxMemoView
          Left = 525.354670000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'mes_04'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_04"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_03: TfrxMemoView
          Left = 468.661720000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'mes_03'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_03"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_02: TfrxMemoView
          Left = 408.189240000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'mes_02'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_02"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_01: TfrxMemoView
          Left = 352.496290000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'mes_01'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_01"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAint_nomeemp: TfrxMemoView
          Left = 23.000000000000000000
          Top = 0.243970000000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DataField = 'int_nomeemp'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."int_nomeemp"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAid_tipo_mov_estoque: TfrxMemoView
          Left = 86.000000000000000000
          Top = 0.243970000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          DataField = 'id_tipo_mov_estoque'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."id_tipo_mov_estoque"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAint_nometme1: TfrxMemoView
          Left = 119.000000000000000000
          Top = 0.243970000000000000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          DataField = 'int_nometme'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."int_nometme"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAano: TfrxMemoView
          Left = 248.000000000000000000
          Top = 0.243970000000000000
          Width = 34.031540000000000000
          Height = 15.118110240000000000
          DataField = 'ano'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."ano"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAvalor: TfrxMemoView
          Left = 283.464750000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'valor'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."valor"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_08: TfrxMemoView
          Left = 760.000000000000000000
          Top = 0.007730000000000015
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataField = 'mes_08'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_08"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_09: TfrxMemoView
          Left = 816.000000000000000000
          Top = 0.007730000000000015
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataField = 'mes_09'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_09"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_10: TfrxMemoView
          Left = 874.000000000000000000
          Top = 0.007730000000000015
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataField = 'mes_10'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_10"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_11: TfrxMemoView
          Left = 932.000000000000000000
          Top = 0.007730000000000015
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataField = 'mes_11'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_11"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_12: TfrxMemoView
          Left = 990.000000000000000000
          Top = 0.007730000000000015
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataField = 'mes_12'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_12"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MPAmes_07: TfrxMemoView
          Left = 702.000000000000000000
          Top = 0.007730000000000015
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataField = 'mes_07'
          DataSet = CSU_DB_C_ITE_EST_MPA
          DataSetName = 'CSU_DB_C_ITE_EST_MPA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MPA."mes_07"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 725.669760000000000000
        Width = 1046.929810000000000000
        object Memo25: TfrxMemoView
          Left = 264.567100000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Assin_enorth: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.000000000000039635
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Assin_enorth]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 627.401980000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object txtOpcoesRelGer: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[Opcoes]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 6.322820000000000000
        Top = 253.228510000000000000
        Width = 1046.929810000000000000
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 46.157390000000000000
        Top = 283.464750000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Shape2: TfrxShapeView
          Width = 1046.929810000000000000
          Height = 45.677180000000000000
          Fill.BackColor = 15395562
          Frame.Color = 15395562
        end
        object Memo20: TfrxMemoView
          Top = 31.000000000000000000
          Width = 22.677165350000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 23.055118110000000000
          Top = 31.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 86.173228350000000000
          Top = 31.000000000000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 119.055118110000000000
          Top = 31.039270000000000000
          Width = 162.519707010000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 283.086614170000000000
          Top = 31.039270000000000000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 352.629921260000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '1'#186)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 410.078740160000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '2'#186)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 467.905511810000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '3'#186)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 527.000000000000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '4'#186)
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 585.826771650000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '5'#186)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 644.031496060000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '6'#186)
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 701.858267720000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '7'#186)
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 760.062992130000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '8'#186)
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 816.000000000000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '9'#186)
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 873.826771650000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '10'#186)
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 932.031496060000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '11'#186)
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 989.858267720000000000
          Top = 31.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '12'#186)
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 1.000000000000000000
          Top = 2.417130000000000000
          Width = 1045.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENDA A CLIENTE')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 352.000000000000000000
          Top = 16.417130000000000000
          Width = 694.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#202'S')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 16.677180000000000000
        Top = 351.496290000000000000
        Width = 1046.929810000000000000
        DataSet = CSU_DB_C_ITE_EST_VCM
        DataSetName = 'CSU_DB_C_ITE_EST_VCM'
        RowCount = 0
        object CSU_DB_C_ITE_EST_VCMid_empresa: TfrxMemoView
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'id_empresa'
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."id_empresa"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMint_nomeemp: TfrxMemoView
          Left = 22.677180000000000000
          Top = 0.000000000000017819
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'int_nomeemp'
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."int_nomeemp"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMint_cod_cli: TfrxMemoView
          Left = 86.929190000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'int_cod_cli'
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."int_cod_cli"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMint_nomecli: TfrxMemoView
          Left = 120.944960000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'int_nomecli'
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."int_nomecli"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMvalor: TfrxMemoView
          Left = 283.464750000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."valor"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_1: TfrxMemoView
          Left = 352.496290000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_1"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_2: TfrxMemoView
          Left = 408.189240000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_2"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_3: TfrxMemoView
          Left = 468.661720000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_3"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_4: TfrxMemoView
          Left = 525.354670000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_4"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_5: TfrxMemoView
          Left = 585.827150000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_5"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_6: TfrxMemoView
          Left = 642.520100000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_6"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_7: TfrxMemoView
          Left = 702.992580000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_7"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_8: TfrxMemoView
          Left = 759.685530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_8"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_9: TfrxMemoView
          Left = 816.378480000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_9"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_10: TfrxMemoView
          Left = 873.071430000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_10"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_11: TfrxMemoView
          Left = 933.543910000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_11"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VCMmes_12: TfrxMemoView
          Left = 990.236860000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VCM
          DataSetName = 'CSU_DB_C_ITE_EST_VCM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VCM."mes_12"]')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        FillType = ftBrush
        Height = 5.677180000000000000
        Top = 389.291590000000000000
        Width = 1046.929810000000000000
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 50.252010000000000000
        Top = 419.527830000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Shape3: TfrxShapeView
          Width = 1046.929810000000000000
          Height = 49.456710000000000000
          Fill.BackColor = 15395562
          Frame.Color = 15395562
        end
        object Memo24: TfrxMemoView
          Top = 33.000000000000000000
          Width = 22.677165350000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 23.055118110000000000
          Top = 33.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 86.173228350000000000
          Top = 33.000000000000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 119.055118110000000000
          Top = 33.039270000000000000
          Width = 162.519707010000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 283.086614170000000000
          Top = 33.039270000000000000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 352.629921260000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '1'#186)
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 410.078740160000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '2'#186)
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 467.905511810000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '3'#186)
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 527.000000000000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '4'#186)
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 585.826771650000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '5'#186)
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 644.031496060000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '6'#186)
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 701.858267720000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '7'#186)
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 760.062992130000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '8'#186)
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 816.000000000000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '9'#186)
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 873.826771650000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '10'#186)
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 932.031496060000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '11'#186)
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 989.858267720000000000
          Top = 33.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '12'#186)
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 2.000000000000000000
          Top = 2.456400000000000000
          Width = 1044.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENDA POR VENDEDOR')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 353.000000000000000000
          Top = 17.456400000000000000
          Width = 693.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#202'S')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 16.677180000000000000
        Top = 491.338900000000000000
        Width = 1046.929810000000000000
        DataSet = CSU_DB_C_ITE_EST_VVM
        DataSetName = 'CSU_DB_C_ITE_EST_VVM'
        RowCount = 0
        object CSU_DB_C_ITE_EST_VVMid_empresa: TfrxMemoView
          Left = 1.000000000000000000
          Top = 0.235930000000000000
          Width = 22.677165350000000000
          Height = 15.118110240000000000
          DataField = 'id_empresa'
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."id_empresa"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMint_nomeemp: TfrxMemoView
          Left = 23.055118110000000000
          Top = 0.235930000000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DataField = 'int_nomeemp'
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."int_nomeemp"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMint_cod_vnd: TfrxMemoView
          Left = 86.173228350000000000
          Top = 0.235930000000000000
          Width = 34.015748030000000000
          Height = 15.118110240000000000
          DataField = 'int_cod_vnd'
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."int_cod_vnd"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMint_nomevnd: TfrxMemoView
          Left = 119.000000000000000000
          Top = 0.235930000000000000
          Width = 162.519685040000000000
          Height = 15.118110240000000000
          DataField = 'int_nomevnd'
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."int_nomevnd"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMvalor: TfrxMemoView
          Left = 283.464750000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."valor"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_1: TfrxMemoView
          Left = 351.496290000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_1"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_2: TfrxMemoView
          Left = 410.078740160000000000
          Top = 0.235930000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_2"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_3: TfrxMemoView
          Left = 467.905511810000000000
          Top = 0.235930000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_3"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_4: TfrxMemoView
          Left = 526.866141730000000000
          Top = 1.235930000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_4"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_5: TfrxMemoView
          Left = 585.826771650000000000
          Top = 1.235930000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_5"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_6: TfrxMemoView
          Left = 644.000000000000000000
          Top = 1.235930000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_6"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_7: TfrxMemoView
          Left = 702.992580000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_7"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_8: TfrxMemoView
          Left = 759.685530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_8"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_9: TfrxMemoView
          Left = 816.378480000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_9"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_10: TfrxMemoView
          Left = 873.071430000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_10"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_11: TfrxMemoView
          Left = 932.031496060000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_11"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_VVMmes_12: TfrxMemoView
          Left = 990.236860000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_VVM
          DataSetName = 'CSU_DB_C_ITE_EST_VVM'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_VVM."mes_12"]')
          ParentFont = False
        end
      end
      object Footer4: TfrxFooter
        FillType = ftBrush
        Height = 3.677180000000000000
        Top = 529.134200000000000000
        Width = 1046.929810000000000000
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 2.322820000000000000
        Top = 555.590910000000000000
        Width = 1046.929810000000000000
        Child = CSU_FR_R_ITE_EST.Child1
        RowCount = 1
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 582.047620000000000000
        Width = 1046.929810000000000000
        object Subreport1: TfrxSubreport
          Left = 4.000000000000000000
          Top = 0.731910000000000000
          Width = 302.362204720000000000
          Height = 18.897650000000000000
          Page = CSU_FR_R_ITE_EST.Page2
        end
        object Subreport2: TfrxSubreport
          Left = 329.314960630000000000
          Top = 0.731910000000000000
          Width = 302.362204720000000000
          Height = 18.897650000000000000
          Page = CSU_FR_R_ITE_EST.Page3
        end
        object Subreport3: TfrxSubreport
          Left = 656.000000000000000000
          Top = 0.731910000000000000
          Width = 302.362204720000000000
          Height = 18.897650000000000000
          Page = CSU_FR_R_ITE_EST.Page4
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header4: TfrxHeader
        FillType = ftBrush
        Height = 38.220470000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Shape4: TfrxShapeView
          Left = 2.000000000000000000
          Top = 2.102350000000000000
          Width = 283.464566930000000000
          Height = 34.338590000000000000
          Fill.BackColor = 15395562
          Frame.Color = 15395562
        end
        object Memo56: TfrxMemoView
          Left = 4.000000000000000000
          Top = 23.102350000000000000
          Width = 22.677180000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 28.000000000000000000
          Top = 23.102350000000000000
          Width = 168.196970000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 199.000000000000000000
          Top = 23.102350000000000000
          Width = 26.456710000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 227.000000000000000000
          Top = 23.102350000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 4.000000000000000000
          Top = 4.102350000000000000
          Width = 280.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'S'#201'RIE HIST'#211'RICA')
          ParentFont = False
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 17.677180000000000000
        Top = 79.370130000000000000
        Width = 1046.929810000000000000
        DataSet = CSU_DB_C_ITE_EST_SRH
        DataSetName = 'CSU_DB_C_ITE_EST_SRH'
        RowCount = 0
        object CSU_DB_C_ITE_EST_SRHid_empresa: TfrxMemoView
          Left = 4.157480310000000000
          Top = 0.188930000000000000
          Width = 22.677165350000000000
          Height = 15.118110240000000000
          DataField = 'id_empresa'
          DataSet = CSU_DB_C_ITE_EST_SRH
          DataSetName = 'CSU_DB_C_ITE_EST_SRH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_SRH."id_empresa"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_SRHint_nomeemp: TfrxMemoView
          Left = 26.834645670000000000
          Top = 0.188930000000000000
          Width = 170.078740160000000000
          Height = 15.118110240000000000
          DataField = 'int_nomeemp'
          DataSet = CSU_DB_C_ITE_EST_SRH
          DataSetName = 'CSU_DB_C_ITE_EST_SRH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_SRH."int_nomeemp"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_SRHano: TfrxMemoView
          Left = 199.181102360000000000
          Top = 0.188930000000000000
          Width = 26.456692910000000000
          Height = 15.118110240000000000
          DataField = 'ano'
          DataSet = CSU_DB_C_ITE_EST_SRH
          DataSetName = 'CSU_DB_C_ITE_EST_SRH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_SRH."ano"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_SRHvalor: TfrxMemoView
          Left = 227.149606300000000000
          Top = 0.188930000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_C_ITE_EST_SRH
          DataSetName = 'CSU_DB_C_ITE_EST_SRH'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_SRH."valor"]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header5: TfrxHeader
        FillType = ftBrush
        Height = 37.220460240000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Shape5: TfrxShapeView
          Left = 1.314960630000000000
          Top = 3.102350000000000000
          Width = 302.362204720000000000
          Height = 34.015760240000000000
          Fill.BackColor = 15395562
          Frame.Color = 15395562
        end
        object Memo60: TfrxMemoView
          Left = 4.000000000000000000
          Top = 22.102350000000000000
          Width = 22.677180000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 28.000000000000000000
          Top = 22.102350000000000000
          Width = 151.181200000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 179.000000000000000000
          Top = 22.102350000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo F'#237'sico')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 239.000000000000000000
          Top = 22.102350000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Top = 4.102350000000000000
          Width = 303.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'POSI'#199#195'O F'#205'SICO/FINANCEIRA')
          ParentFont = False
        end
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 15.677180000000000000
        Top = 79.370130000000000000
        Width = 1046.929810000000000000
        DataSet = CSU_DB_C_ITE_EST_PFC
        DataSetName = 'CSU_DB_C_ITE_EST_PFC'
        RowCount = 0
        object CSU_DB_C_ITE_EST_PFCid_empresa: TfrxMemoView
          Left = 3.779530000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'id_empresa'
          DataSet = CSU_DB_C_ITE_EST_PFC
          DataSetName = 'CSU_DB_C_ITE_EST_PFC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_PFC."id_empresa"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_PFCint_nomeemp: TfrxMemoView
          Left = 26.456710000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          DataField = 'int_nomeemp'
          DataSet = CSU_DB_C_ITE_EST_PFC
          DataSetName = 'CSU_DB_C_ITE_EST_PFC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_PFC."int_nomeemp"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_PFCsaldo_fisico: TfrxMemoView
          Left = 177.637910000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'saldo_fisico'
          DataSet = CSU_DB_C_ITE_EST_PFC
          DataSetName = 'CSU_DB_C_ITE_EST_PFC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_PFC."saldo_fisico"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_PFCvalor: TfrxMemoView
          Left = 238.110390000000000000
          Top = 0.000000000000004406
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_C_ITE_EST_PFC
          DataSetName = 'CSU_DB_C_ITE_EST_PFC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_PFC."valor"]')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header6: TfrxHeader
        FillType = ftBrush
        Height = 42.220460240000000000
        Top = 16.000000000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Shape6: TfrxShapeView
          Left = 2.000000000000000000
          Top = 1.102350000000000000
          Width = 319.464566930000000000
          Height = 38.118120000000000000
          Fill.BackColor = 15395562
          Frame.Color = 15395562
        end
        object Memo64: TfrxMemoView
          Left = 4.000000000000000000
          Top = 23.102350000000000000
          Width = 22.677180000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 27.000000000000000000
          Top = 23.102350000000000000
          Width = 117.165430000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 144.000000000000000000
          Top = 23.102350000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Ano Ant.')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 184.000000000000000000
          Top = 23.102350000000000000
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'M'#234's Ant.')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 224.000000000000000000
          Top = 23.102350000000000000
          Width = 45.354360000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'M'#234's Atual')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 271.000000000000000000
          Top = 23.102350000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '%')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 3.000000000000000000
          Top = 3.102350000000000000
          Width = 317.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'MAPA COMPARATIVO DE VENDAS')
          ParentFont = False
        end
      end
      object MasterData7: TfrxMasterData
        FillType = ftBrush
        Height = 16.677180000000000000
        Top = 80.000000000000000000
        Width = 1046.929810000000000000
        DataSet = CSU_DB_C_ITE_EST_MCV
        DataSetName = 'CSU_DB_C_ITE_EST_MCV'
        RowCount = 0
        object CSU_DB_C_ITE_EST_MCVid_empresa: TfrxMemoView
          Left = 3.779530000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'id_empresa'
          DataSet = CSU_DB_C_ITE_EST_MCV
          DataSetName = 'CSU_DB_C_ITE_EST_MCV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MCV."id_empresa"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MCVint_nomeemp: TfrxMemoView
          Left = 26.456710000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'int_nomeemp'
          DataSet = CSU_DB_C_ITE_EST_MCV
          DataSetName = 'CSU_DB_C_ITE_EST_MCV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MCV."int_nomeemp"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MCVano_anterior: TfrxMemoView
          Left = 143.622140000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'ano_anterior'
          DataSet = CSU_DB_C_ITE_EST_MCV
          DataSetName = 'CSU_DB_C_ITE_EST_MCV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MCV."ano_anterior"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MCVmes_ano_anterior: TfrxMemoView
          Left = 181.417440000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'mes_ano_anterior'
          DataSet = CSU_DB_C_ITE_EST_MCV
          DataSetName = 'CSU_DB_C_ITE_EST_MCV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MCV."mes_ano_anterior"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MCVmes_atual: TfrxMemoView
          Left = 222.992270000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'mes_atual'
          DataSet = CSU_DB_C_ITE_EST_MCV
          DataSetName = 'CSU_DB_C_ITE_EST_MCV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MCV."mes_atual"]')
          ParentFont = False
        end
        object CSU_DB_C_ITE_EST_MCVpercentual: TfrxMemoView
          Left = 270.992125980000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'percentual'
          DataSet = CSU_DB_C_ITE_EST_MCV
          DataSetName = 'CSU_DB_C_ITE_EST_MCV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_C_ITE_EST_MCV."percentual"]')
          ParentFont = False
        end
      end
    end
  end
  object CSU_DB_C_ITE_EST_MPA: TfrxDBDataset
    UserName = 'CSU_DB_C_ITE_EST_MPA'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'int_nomeemp=int_nomeemp'
      'id_tipo_mov_estoque=id_tipo_mov_estoque'
      'int_nometme=int_nometme'
      'ano=ano'
      'valor=valor'
      'mes_01=mes_01'
      'mes_02=mes_02'
      'mes_03=mes_03'
      'mes_04=mes_04'
      'mes_05=mes_05'
      'mes_06=mes_06'
      'mes_07=mes_07'
      'mes_08=mes_08'
      'mes_09=mes_09'
      'mes_10=mes_10'
      'mes_11=mes_11'
      'mes_12=mes_12')
    DataSet = CSU_CD_C_ITE_EST_MPA
    BCDToCurrency = False
    Left = 698
    Top = 145
  end
  object CSU_DB_C_ITE_EST_VCM: TfrxDBDataset
    UserName = 'CSU_DB_C_ITE_EST_VCM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'int_nomeemp=int_nomeemp'
      'int_cod_cli=int_cod_cli'
      'int_nomecli=int_nomecli'
      'valor=valor'
      'mes_1=mes_1'
      'mes_2=mes_2'
      'mes_3=mes_3'
      'mes_4=mes_4'
      'mes_5=mes_5'
      'mes_6=mes_6'
      'mes_7=mes_7'
      'mes_8=mes_8'
      'mes_9=mes_9'
      'mes_10=mes_10'
      'mes_11=mes_11'
      'mes_12=mes_12'
      'mes_13=mes_13')
    DataSet = CSU_CD_C_ITE_EST_VCM
    BCDToCurrency = False
    Left = 394
    Top = 395
  end
  object CSU_DB_C_ITE_EST_VVM: TfrxDBDataset
    UserName = 'CSU_DB_C_ITE_EST_VVM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'int_nomeemp=int_nomeemp'
      'int_cod_vnd=int_cod_vnd'
      'int_nomevnd=int_nomevnd'
      'valor=valor'
      'mes_1=mes_1'
      'mes_2=mes_2'
      'mes_3=mes_3'
      'mes_4=mes_4'
      'mes_5=mes_5'
      'mes_6=mes_6'
      'mes_7=mes_7'
      'mes_8=mes_8'
      'mes_9=mes_9'
      'mes_10=mes_10'
      'mes_11=mes_11'
      'mes_12=mes_12'
      'mes_13=mes_13')
    DataSet = CSU_CD_C_ITE_EST_VVM
    BCDToCurrency = False
    Left = 680
    Top = 387
  end
  object CSU_DB_C_ITE_EST_SRH: TfrxDBDataset
    UserName = 'CSU_DB_C_ITE_EST_SRH'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'int_nomeemp=int_nomeemp'
      'ano=ano'
      'valor=valor')
    DataSet = CSU_CD_C_ITE_EST_SRH
    BCDToCurrency = False
    Left = 199
    Top = 492
  end
  object CSU_DB_C_ITE_EST_PFC: TfrxDBDataset
    UserName = 'CSU_DB_C_ITE_EST_PFC'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'int_nomeemp=int_nomeemp'
      'saldo_fisico=saldo_fisico'
      'valor=valor')
    DataSet = CSU_CD_C_ITE_EST_PFC
    BCDToCurrency = False
    Left = 503
    Top = 500
  end
  object CSU_DB_C_ITE_EST_MCV: TfrxDBDataset
    UserName = 'CSU_DB_C_ITE_EST_MCV'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'int_nomeemp=int_nomeemp'
      'ano_anterior=ano_anterior'
      'mes_ano_anterior=mes_ano_anterior'
      'mes_atual=mes_atual'
      'percentual=percentual')
    DataSet = CSU_CD_C_ITE_EST_MCV
    BCDToCurrency = False
    Left = 687
    Top = 548
  end
end
