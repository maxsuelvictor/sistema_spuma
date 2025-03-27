object CSU_FM_C_ITE_CMP: TCSU_FM_C_ITE_CMP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 509
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 41
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 88
      Top = 3
      Width = 737
      Height = 39
      Align = alCustom
      Alignment = taCenter
      Caption = 'Pedido de Compra'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 41
    Width = 825
    Height = 468
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlDados: TPanel
      Left = 8
      Top = 7
      Width = 809
      Height = 450
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object lblItem: TLabel
        Left = 18
        Top = 16
        Width = 39
        Height = 16
        Caption = 'Item :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 32
        Top = 427
        Width = 73
        Height = 13
        Caption = 'Observa'#231#227'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtObs: TDBText
        Left = 111
        Top = 427
        Width = 682
        Height = 17
        DataField = 'observacao'
        DataSource = dso
      end
      object wwDBGrid1: TwwDBGrid
        Left = 16
        Top = 38
        Width = 777
        Height = 383
        Selected.Strings = (
          'id_empresa'#9'5'#9'C'#243'd. '
          'int_nomeemp'#9'15'#9'Empresa'#9'F'
          'id_pedido'#9'10'#9'C'#243'd. Pedido'
          'dta_pedido'#9'10'#9'Data Pedido'
          'dta_entrega'#9'10'#9'Prev. Entrega'
          'id_fornecedor'#9'8'#9'C'#243'd.'
          'int_nomefor'#9'36'#9'Forncededor'
          'qtde'#9'10'#9'Qtde'
          'qtde_baixada'#9'10'#9'Qtde Baixada')
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
      end
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_CSU_CMP_ITE
    Left = 544
    Top = 113
  end
end
