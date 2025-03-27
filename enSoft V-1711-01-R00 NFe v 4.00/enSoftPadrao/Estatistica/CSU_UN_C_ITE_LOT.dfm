object CSU_FM_C_ITE_LOT: TCSU_FM_C_ITE_LOT
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 262
  ClientWidth = 468
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
    Width = 468
    Height = 30
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 466
      Height = 28
      Align = alClient
      Alignment = taCenter
      Caption = 'Lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 42
      ExplicitHeight = 30
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 468
    Height = 232
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object wwDBGrid1: TwwDBGrid
      Left = 24
      Top = 6
      Width = 401
      Height = 203
      Selected.Strings = (
        'num_lote'#9'15'#9'N'#186' Lote'#9'T'
        'dta_vencimento'#9'10'#9'Vencimento'#9'T'
        'qtde_entrada'#9'10'#9'Entrada'#9'T'
        'qtde_saida'#9'10'#9'Sa'#237'da'#9'T'
        'qtde_atual'#9'10'#9'Saldo'#9'T')
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
  end
  object dso: TwwDataSource
    DataSet = dmGeral.EST_CD_M_LOT
    Left = 312
    Top = 54
  end
end
