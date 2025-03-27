object CSU_FM_C_CLI_STA: TCSU_FM_C_CLI_STA
  Left = 0
  Top = 0
  ClientHeight = 612
  ClientWidth = 984
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
    Top = 43
    Width = 984
    Height = 569
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlDados: TPanel
      Left = 24
      Top = 15
      Width = 905
      Height = 506
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 857
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'Movimenta'#231#245'es por Ano'
        Color = 16568785
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label2: TLabel
        Left = 24
        Top = 160
        Width = 857
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'Venda de Produto nos '#218'ltimos 12 meses'
        Color = 11522042
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object btnSair: TSpeedButton
        Left = 776
        Top = 456
        Width = 105
        Height = 33
        Caption = 'Sair'
        Glyph.Data = {
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
        OnClick = btnSairClick
      end
      object Label3: TLabel
        Left = 25
        Top = 371
        Width = 384
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'S'#233'rie Hist'#243'rica'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object wwDBGrid1: TwwDBGrid
        Left = 24
        Top = 29
        Width = 857
        Height = 120
        Selected.Strings = (
          'id_empresa'#9'10'#9'C'#243'digo'#9'F'
          'int_nomeemp'#9'20'#9'Empresa'#9'F'
          'int_nometme'#9'30'#9'Tipo Mov. Estoque'#9'F'
          'ano'#9'10'#9'Ano'#9'F'
          'valor'#9'10'#9'Total'#9'F'
          'mes_01'#9'10'#9'Jan'#9'F'#9'M'#234's'
          'mes_02'#9'10'#9'Fev'#9'F'#9'M'#234's'
          'mes_03'#9'10'#9'Mar'#9'F'#9'M'#234's'
          'mes_04'#9'10'#9'Abr'#9'F'#9'M'#234's'
          'mes_05'#9'10'#9'Mai'#9'F'#9'M'#234's'
          'mes_06'#9'10'#9'Jun'#9'F'#9'M'#234's'
          'mes_07'#9'10'#9'Jul'#9'F'#9'M'#234's'
          'mes_08'#9'10'#9'Ago'#9'F'#9'M'#234's'
          'mes_09'#9'10'#9'Set'#9'F'#9'M'#234's'
          'mes_10'#9'10'#9'Out'#9'F'#9'M'#234's'
          'mes_11'#9'10'#9'Nov'#9'F'#9'M'#234's'
          'mes_12'#9'10'#9'Dez'#9'F'#9'M'#234's')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoMPA
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
      end
      object wwDBGrid2: TwwDBGrid
        Left = 25
        Top = 183
        Width = 856
        Height = 181
        Selected.Strings = (
          'id_empresa'#9'5'#9'C'#243'd.'#9'F'
          'int_nomeemp'#9'20'#9'Empresa'
          'int_cod_ite'#9'10'#9'C'#243'd.'#9'F'
          'int_nomeite'#9'30'#9'Item'#9'F'
          'valor'#9'10'#9'Total'#9'F'
          'mes_1'#9'10'#9'1'#186#9'F'#9'M'#234's'
          'mes_2'#9'10'#9'2'#186#9'F'#9'M'#234's'
          'mes_3'#9'10'#9'3'#186#9'F'#9'M'#234's'
          'mes_4'#9'10'#9'4'#186#9'F'#9'M'#234's'
          'mes_5'#9'10'#9'5'#186#9'F'#9'M'#234's'
          'mes_6'#9'10'#9'6'#186#9'F'#9'M'#234's'
          'mes_7'#9'10'#9'7'#186#9'F'#9'M'#234's'
          'mes_8'#9'10'#9'8'#186#9'F'#9'M'#234's'
          'mes_9'#9'10'#9'9'#186#9'F'#9'M'#234's'
          'mes_10'#9'10'#9'10'#186#9'F'#9'M'#234's'
          'mes_11'#9'10'#9'11'#186#9'F'#9'M'#234's'
          'mes_12'#9'10'#9'12'#186#9'F'#9'M'#234's')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoVNP
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
      end
      object wwDBGrid3: TwwDBGrid
        Left = 25
        Top = 390
        Width = 384
        Height = 91
        Selected.Strings = (
          'id_empresa'#9'7'#9'C'#243'd.'#9'F'
          'int_nomeemp'#9'23'#9'Empresa'#9'F'
          'ano'#9'10'#9'Ano'#9'F'
          'valor'#9'13'#9'Total'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoSHR
        TabOrder = 2
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
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object pnlCima: TPanel
      Left = 0
      Top = 0
      Width = 984
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = -5
        Width = 984
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Estat'#237'sticas do Cliente'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -13
        ExplicitWidth = 500
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 25
      Width = 984
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
    end
  end
  object dsoMPA: TwwDataSource
    DataSet = CSU_CD_C_CLI_EST_MPA
    Left = 416
    Top = 139
  end
  object dsoVNP: TwwDataSource
    DataSet = CSU_CD_C_CLI_EST_VNP
    Left = 384
    Top = 299
  end
  object dsoSHR: TwwDataSource
    DataSet = CSU_CD_C_CLI_EST_SHR
    Left = 384
    Top = 427
  end
  object CSU_CD_C_CLI_EST_MPA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_CLI_EST_MPA'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = CSU_CD_C_CLI_EST_MPABeforeOpen
    Left = 304
    Top = 139
    object CSU_CD_C_CLI_EST_MPAid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CSU_CD_C_CLI_EST_MPAint_nomeemp: TWideStringField
      FieldName = 'int_nomeemp'
      Size = 50
    end
    object CSU_CD_C_CLI_EST_MPAid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
    end
    object CSU_CD_C_CLI_EST_MPAint_nometme: TWideStringField
      FieldName = 'int_nometme'
      Size = 30
    end
    object CSU_CD_C_CLI_EST_MPAano: TFloatField
      FieldName = 'ano'
    end
    object CSU_CD_C_CLI_EST_MPAvalor: TFMTBCDField
      FieldName = 'valor'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_01: TFMTBCDField
      FieldName = 'mes_01'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_02: TFMTBCDField
      FieldName = 'mes_02'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_03: TFMTBCDField
      FieldName = 'mes_03'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_04: TFMTBCDField
      FieldName = 'mes_04'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_05: TFMTBCDField
      FieldName = 'mes_05'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_06: TFMTBCDField
      FieldName = 'mes_06'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_07: TFMTBCDField
      FieldName = 'mes_07'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_08: TFMTBCDField
      FieldName = 'mes_08'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_09: TFMTBCDField
      FieldName = 'mes_09'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_10: TFMTBCDField
      FieldName = 'mes_10'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_11: TFMTBCDField
      FieldName = 'mes_11'
      Precision = 32
    end
    object CSU_CD_C_CLI_EST_MPAmes_12: TFMTBCDField
      FieldName = 'mes_12'
      Precision = 32
    end
  end
  object CSU_CD_C_CLI_EST_VNP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_CLI_EST_VNP'
    RemoteServer = dmGeral.pcConecao
    Left = 240
    Top = 299
  end
  object CSU_CD_C_CLI_EST_SHR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_C_CLI_EST_SRH'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = CSU_CD_C_CLI_EST_SHRBeforeOpen
    Left = 232
    Top = 459
    object CSU_CD_C_CLI_EST_SHRid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CSU_CD_C_CLI_EST_SHRint_nomeemp: TWideStringField
      FieldName = 'int_nomeemp'
      Size = 50
    end
    object CSU_CD_C_CLI_EST_SHRano: TFloatField
      FieldName = 'ano'
    end
    object CSU_CD_C_CLI_EST_SHRvalor: TFloatField
      FieldName = 'valor'
    end
  end
end
