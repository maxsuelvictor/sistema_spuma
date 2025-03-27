object PCP_FM_M_OPR_ENT: TPCP_FM_M_OPR_ENT
  Left = 0
  Top = 0
  ClientHeight = 512
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 931
    Height = 40
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 887
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 929
      Height = 38
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Confer'#234'ncia de Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExplicitWidth = 113
      ExplicitHeight = 30
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 65
    Width = 921
    Height = 220
    TabOrder = 1
    object Label9: TLabel
      Left = 2
      Top = 15
      Width = 917
      Height = 20
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Itens Conferidos'
      Color = 14342874
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 1150
    end
    object grdPedIcf: TwwDBGrid
      Left = 2
      Top = 94
      Width = 917
      Height = 124
      Selected.Strings = (
        'id_item'#9'13'#9'Cod. Item'#9'T'
        'cod_barra'#9'18'#9'Cod. Barra'#9'T'
        'int_nomeite'#9'45'#9'Descri'#231#227'o'#9'T'
        'int_undvenda'#9'5'#9'Und'#9'T'
        'int_nometam'#9'8'#9'Tamanho'#9'T'
        'int_nomecor'#9'15'#9'Cor'#9'T')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      ExplicitWidth = 1146
      object grdItensIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
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
      end
    end
    object pnlCorTamanho: TPanel
      Left = 628
      Top = 136
      Width = 276
      Height = 57
      TabOrder = 1
      Visible = False
      object lblTamanho: TLabel
        Left = 4
        Top = 4
        Width = 67
        Height = 19
        Caption = 'Tamanho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblCor: TLabel
        Left = 140
        Top = 4
        Width = 25
        Height = 19
        Caption = 'Cor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbbCor: TwwDBLookupCombo
        Left = 140
        Top = 22
        Width = 130
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'20'#9'Descri'#231#227'o'#9'F')
        DataField = 'id_cor'
        LookupTable = dmGeral.BUS_CD_C_COR
        LookupField = 'id_cor'
        Color = clWhite
        ParentFont = False
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object cbbTamanho: TwwDBLookupCombo
        Left = 4
        Top = 23
        Width = 130
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'20'#9'Descri'#231#227'o'#9'F')
        DataField = 'id_tamanho'
        LookupTable = dmGeral.BUS_CD_C_TAM
        LookupField = 'id_tamanho'
        Color = clWhite
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 35
      Width = 917
      Height = 59
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 1146
      object pnlIte: TPanel
        Left = 32
        Top = 5
        Width = 897
        Height = 50
        BevelOuter = bvNone
        TabOrder = 0
        object lblCodBarra: TLabel
          Left = 9
          Top = 4
          Width = 121
          Height = 19
          Caption = '<F7> Cod. Barra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 823
          Top = 4
          Width = 29
          Height = 19
          Caption = 'Und'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 255
          Top = 4
          Width = 67
          Height = 19
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtIdItem: TJvDBComboEdit
          Left = 9
          Top = 24
          Width = 242
          Height = 27
          ClickKey = 114
          DataField = 'cod_barra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0066B6DB903AFFFFFFFFFFFFFFFFFFFF
            FFFFDBFFFF003A900000000000003A0000FFDB90FFFFFFFFFFFFFFFFFFFFFFFF
            0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFF90DBFFB6663AFFFFFFFFFFFF3A90
            DB660000FFFFB6FFFFFFFFFFFFFFFFFF0066B6DB903AFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF90DBFF3A003AFFDB90FFFFFFFFFFFFFFFFFF
            0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A90
            DB660000FFFFB6FFFFFFFFFFFFFFFFFF0066B6000000000000000000660000FF
            FFB6FFFFFF66B6FF000000000000B66600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6FFFF0000
            66DB903AFFFFFFFFFFFFFFFFFFFFFFFF0066B6DB903AFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A90DB903A00FFFFDBFFFFFFFFFFFFFFFFFF
            0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFFB6FFFF903A66FFFFDBFFFFFF0066
            B6B66600FFFFFFFFFFFFFFFFFFFFFFFF0066B6000000000000000000000000FF
            B666FFFFFF3A90DB000000000000660000FFFFB6FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 0
        end
        object txtDescricao: TwwDBEdit
          Left = 257
          Top = 24
          Width = 560
          Height = 25
          BorderStyle = bsNone
          Color = 14342874
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtUnd: TwwDBEdit
          Left = 823
          Top = 23
          Width = 60
          Height = 25
          BorderStyle = bsNone
          Color = 14342874
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object btnAddIte: TBitBtn
        Left = 2
        Top = 30
        Width = 25
        Height = 25
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
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 471
    Width = 931
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 2
    ExplicitLeft = -1
    ExplicitWidth = 1184
  end
end
