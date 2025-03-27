object CSU_FM_M_NPO_ORV: TCSU_FM_M_NPO_ORV
  Left = 0
  Top = 0
  ClientHeight = 270
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 30
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 518
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 524
      Height = 30
      Align = alTop
      Alignment = taCenter
      Caption = 'Ordem de Servi'#231'o'
      Color = 3355443
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitWidth = 172
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 526
    Height = 240
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 518
    ExplicitHeight = 228
    object dbOrdemServico: TwwDBGrid
      Left = 0
      Top = 0
      Width = 526
      Height = 192
      Selected.Strings = (
        'id_ordem'#9'13'#9'N'#186' OS'#9'T'
        'dta_entrega'#9'10'#9'Entrega'#9'T'
        'int_placa'#9'10'#9'Placa'#9'T'
        'int_nomecli'#9'44'#9'Cliente'#9'T')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alTop
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
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 516
    end
    object btnSair: TcxButton
      Left = 420
      Top = 204
      Width = 101
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
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_ORV
    Left = 448
    Top = 118
  end
end
