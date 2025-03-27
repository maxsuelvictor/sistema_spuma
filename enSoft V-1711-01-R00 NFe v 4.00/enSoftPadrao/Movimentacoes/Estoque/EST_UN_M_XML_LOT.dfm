object EST_FM_M_XML_LOT: TEST_FM_M_XML_LOT
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 261
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 376
    Height = 33
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 374
      Height = 31
      Align = alClient
      Alignment = taCenter
      Caption = 'Lote'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 39
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 376
    Height = 228
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object dgGridLote: TwwDBGrid
      Left = 39
      Top = 64
      Width = 283
      Height = 121
      Selected.Strings = (
        'num_lote'#9'15'#9'N'#186' Lote'#9'T'
        'dta_vencimento'#9'10'#9'Vencimento'#9'F'
        'qtde'#9'10'#9'Qtde'#9'T')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsoIteLot
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      OnMouseUp = dgGridLoteMouseUp
      object dgGridLoteIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 23
        Height = 23
        AllowAllUp = True
        Glyph.Data = {
          9E020000424D9E0200000000000036000000280000000E0000000E0000000100
          18000000000068020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF33333333333333
          3333333333333333333333333333333333333333333333333333333333FFFFFF
          0000FFFFFF333333333333333333333333333333333333333333333333333333
          333333333333333333FFFFFF0000FFFFFF333333333333333333333333333333
          333333333333333333333333333333333333333333FFFFFF0000FFFFFF333333
          3333333333333333333333333333333333333333333333333333333333333333
          33FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000}
        OnClick = dgGridLoteIButtonClick
      end
    end
    object pnlLote: TPanel
      Left = 66
      Top = 23
      Width = 256
      Height = 41
      BevelOuter = bvNone
      TabOrder = 2
      OnExit = pnlLoteExit
      object Label2: TLabel
        Left = 182
        Top = 1
        Width = 24
        Height = 13
        Caption = 'Qtde'
      end
      object Label3: TLabel
        Left = 4
        Top = 1
        Width = 36
        Height = 13
        Caption = 'N'#186' Lote'
      end
      object Label4: TLabel
        Left = 87
        Top = 1
        Width = 55
        Height = 13
        Caption = 'Vencimento'
      end
      object txtQtde: TwwDBEdit
        Left = 182
        Top = 16
        Width = 71
        Height = 21
        DataField = 'qtde'
        DataSource = dsoIteLot
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = txtQtdeExit
      end
      object txtLote: TwwDBEdit
        Left = 4
        Top = 16
        Width = 80
        Height = 21
        DataField = 'num_lote'
        DataSource = dsoIteLot
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = txtLoteExit
      end
      object txtDtaVencimento: TJvDBDateEdit
        Left = 87
        Top = 16
        Width = 92
        Height = 21
        DataField = 'dta_vencimento'
        DataSource = dsoIteLot
        ShowNullDate = False
        TabOrder = 1
        OnExit = txtDtaVencimentoExit
      end
    end
    object btnAddLote: TBitBtn
      Left = 40
      Top = 38
      Width = 23
      Height = 23
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        18000000000068020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333333333333333333
        33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF333333333333333333333333FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333
        3333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF33333333333333
        3333333333333333333333333333333333333333333333333333333333FFFFFF
        0000FFFFFF333333333333333333333333333333333333333333333333333333
        333333333333333333FFFFFF0000FFFFFF333333333333333333333333333333
        333333333333333333333333333333333333333333FFFFFF0000FFFFFF333333
        3333333333333333333333333333333333333333333333333333333333333333
        33FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333333333333333333
        33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF333333333333333333333333FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333
        3333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      TabOrder = 0
      OnClick = btnAddLoteClick
    end
  end
  object dsoIteLot: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_XML_ITE_LOT
    Left = 208
    Top = 113
  end
end
