object FAT_FM_M_PED_IOR: TFAT_FM_M_PED_IOR
  Left = 0
  Top = 0
  Caption = 'FAT_FM_M_PED_IOR'
  ClientHeight = 385
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object pnlCima: TPanel
      Left = 0
      Top = 0
      Width = 718
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = -4
        Width = 718
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Importa'#231#227'o de Or'#231'amento'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -3
        ExplicitWidth = 998
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 25
      Width = 718
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
      object lblCodificacaoLMestre: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 713
        Height = 18
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
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
        ExplicitLeft = 80
        ExplicitWidth = 993
      end
    end
  end
  object pnlDireita: TPanel
    Left = 0
    Top = 43
    Width = 718
    Height = 342
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 705
      Height = 300
      TabOrder = 0
      object Label1: TLabel
        Left = 260
        Top = 96
        Width = 100
        Height = 13
        Caption = 'Itens do or'#231'amento'
      end
      object dbGrid: TwwDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 11
        Width = 693
        Height = 73
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Selected.Strings = (
          'ID_ORCAMENTO'#9'10'#9'C'#243'digo'#9'F'
          'INT_NOMECLI'#9'52'#9'Cliente'#9'F'
          'dta_orcamento'#9'12'#9'Data'#9'F'
          'vlr_bruto'#9'12'#9'Vlr. bruto'#9'F'
          'vlr_desc_basico'#9'12'#9'Desc. B'#225'sico'#9'F'
          'vlr_desc_especial'#9'12'#9'Desc. especial'#9'F'
          'vlr_liquido'#9'12'#9'Vlr. Total'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        OnMouseUp = dbGridMouseUp
      end
      object wwDBGrid1: TwwDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 112
        Width = 693
        Height = 182
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        Selected.Strings = (
          'id_item'#9'10'#9'Item'#9'F'
          'int_descitem'#9'46'#9'Descri'#231#227'o'#9'F'
          'id_cor'#9'4'#9'Cor'#9'F'
          'int_unidade'#9'4'#9'Und'#9'F'
          'qtde'#9'10'#9'Qtde'#9'F'
          'vlr_unitario'#9'12'#9'Vlr. Unit'#225'rio'#9'F'
          'vlr_desconto'#9'10'#9'Vlr. Desc'#9'F'
          'vlr_bruto'#9'13'#9'Vlr. Bruto'#9'F'
          'vlr_liquido'#9'13'#9'Vlr. Total'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsOrcItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
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
    end
    object btnImporta: TButton
      Left = 8
      Top = 314
      Width = 80
      Height = 25
      Caption = '&Importar'
      TabOrder = 1
      OnClick = btnImportaClick
    end
    object btnCancela: TButton
      Left = 89
      Top = 314
      Width = 80
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = btnCancelaClick
    end
  end
  object dsOrc: TDataSource
    DataSet = dmGeral.FAT_CD_M_ORC
    Left = 376
    Top = 187
  end
  object dsOrcItens: TDataSource
    DataSet = dmGeral.FAT_CD_M_ORC_ITE
    Left = 440
    Top = 187
  end
end
