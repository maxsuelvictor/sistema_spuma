object FAT_FM_M_NFE_IPE: TFAT_FM_M_NFE_IPE
  Left = 0
  Top = 0
  Caption = 'FAT_FM_M_NFE_IPE'
  ClientHeight = 464
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 801
    Height = 33
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 4
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Importa'#231#227'o de Pedido de Compra'
    Color = 3355443
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitWidth = 635
  end
  object lblCodificacaoLMestre: TLabel
    AlignWithMargins = True
    Left = 592
    Top = 7
    Width = 203
    Height = 18
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 0
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
    Transparent = False
  end
  object pnlDireita: TPanel
    Left = 0
    Top = 37
    Width = 801
    Height = 427
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 785
      Height = 372
      TabOrder = 0
      object Label1: TLabel
        Left = 324
        Top = 175
        Width = 140
        Height = 13
        Caption = 'Itens do Pedido de Compra'
      end
      object Label2: TLabel
        Left = 347
        Top = 7
        Width = 95
        Height = 13
        Caption = 'Pedido de Compra'
      end
      object dbGrid: TwwDBGrid
        AlignWithMargins = True
        Left = 9
        Top = 23
        Width = 770
        Height = 142
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Selected.Strings = (
          'id_pedido'#9'11'#9'Nro pedido'#9'F'
          'dta_pedido'#9'12'#9'Data'#9'F'
          'id_fornecedor'#9'10'#9'C'#243'digo'#9'F'
          'int_nomefor'#9'39'#9'Fornecedor'#9'F'
          'vlr_bruto'#9'13'#9'Vlr. Bruto'#9'F'
          'vlr_desconto'#9'14'#9'Vlr. Desconto'#9'F'
          'vlr_frete'#9'12'#9'Vlr. Frete'#9'F'
          'vlr_liquido'#9'14'#9'Vlr. Total'#9'F'
          'vlr_ipi'#9'12'#9'Vlr. IPI'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsCmpPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
      object gdItens: TwwDBGrid
        AlignWithMargins = True
        Left = 9
        Top = 191
        Width = 770
        Height = 174
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        Selected.Strings = (
          'id_item'#9'10'#9'C'#243'digo'#9'F'
          'int_nomeite'#9'20'#9'Item'#9'F'
          'id_cor'#9'4'#9'C'#243'd.'#9'F'
          'int_nomecor'#9'9'#9'Cor'#9'F'
          'qtde'#9'9'#9'Qtde'#9'F'
          'qtde_baixada'#9'16'#9'Qtde j'#225' baixada'#9'F'
          'vlr_unitario'#9'12'#9'Vlr. Unit'#225'rio'#9'F'
          'vlr_bruto'#9'10'#9'Vlr. Bruto'#9'F'
          'vlr_desconto'#9'10'#9'Vlr. Desc'#9'F'
          'vlr_liquido'#9'13'#9'Vlr. Total'#9'F'
          'per_ipi'#9'7'#9'% Ipi'#9'F'
          'qtde_a_baixar'#9'14'#9'Qtde a baixar'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        OnCellChanged = gdItensCellChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsCmpPedItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
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
        OnDrawDataCell = gdItensDrawDataCell
      end
    end
    object btnImporta: TButton
      Left = 8
      Top = 390
      Width = 80
      Height = 29
      Caption = '&Importar'
      TabOrder = 1
      OnClick = btnImportaClick
    end
    object btnSair: TButton
      Left = 89
      Top = 390
      Width = 80
      Height = 29
      Caption = '&Sair'
      TabOrder = 2
      OnClick = btnSairClick
    end
  end
  object dsCmpPed: TDataSource
    DataSet = dmGeral.CMP_CD_M_PED
    Left = 632
    Top = 275
  end
  object dsCmpPedItens: TDataSource
    DataSet = dmGeral.CMP_CD_M_PED_ITE
    Left = 728
    Top = 275
  end
  object dsPedNfe: TDataSource
    DataSet = dmGeral.CMP_CD_M_PED_NFE
    Left = 632
    Top = 325
  end
  object dsPedNfeIte: TDataSource
    DataSet = dmGeral.CMP_CD_M_PED_NFE_ITE
    Left = 728
    Top = 325
  end
end
