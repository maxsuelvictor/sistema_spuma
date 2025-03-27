object CSU_FM_M_PED: TCSU_FM_M_PED
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Movimenta'#231#227'o'
  ClientHeight = 512
  ClientWidth = 882
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 882
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
      Width = 882
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
        Width = 882
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Consulta de Pedido de Venda'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -3
        ExplicitWidth = 585
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 25
      Width = 882
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
        Width = 877
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
        ExplicitWidth = 1195
      end
    end
  end
  object pnlDireita: TPanel
    Left = 0
    Top = 43
    Width = 882
    Height = 469
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
    object Label2: TLabel
      Left = 13
      Top = 283
      Width = 852
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'T'#237'tulos'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object Label1: TLabel
      Left = 13
      Top = 148
      Width = 852
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Itens'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object lblPagamentos: TLabel
      Left = 13
      Top = 13
      Width = 852
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Pedidos'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object btnSair: TSpeedButton
      Left = 702
      Top = 428
      Width = 163
      Height = 34
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD2D2D2808080D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF1809FFFFFFFFFFFFFFFFFFFFFFFF8B8B8B9D9D9D3232323535357070
        70C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFF60DFFFFFFFFFFFFFFFFFFFFFFFF3333
        338282823232323232323232323B3B3BFFFFFFFFFFFFFFFFFFFFFFFF1C0EFFFF
        FFFFFFFFFFFFFFFFFFFF3F3F3F8686863232323232323232323F3F3FFFFFFFFF
        FFFFFFFFFFFFFFFFF60DFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F86868632323232
        3232323232404040FFFFFFFFFFFFFFFFFFFFFFFF1C0EFFFFFFFFFFFFFFFFFFFF
        FFFF3F3F3F868686323232323232323232404040FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF3E3E3E8787878686863C3C3C323232404040
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3E3E3E878787
        8686863C3C3C323232404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF3F3F3F868686323232323232323232404040FFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3F3F3F8686863232323232323232
        32404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3F3F
        3F868686323232323232323232404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFF333333828282323232323232323232353535FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF8B8B8B9E9E9E32323232
        3232404040808080FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD1D1D1797979B7B7B7EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      ParentFont = False
      OnClick = btnSairClick
    end
    object lblPedido: TLabel
      Left = 18
      Top = 439
      Width = 42
      Height = 13
      Caption = 'Pedido :'
      Visible = False
    end
    object dgTit: TwwDBGrid
      Left = 13
      Top = 299
      Width = 852
      Height = 119
      Selected.Strings = (
        'id_forma_pag'#9'11'#9'C'#243'digo'#9'F'
        'int_nomefpg'#9'70'#9'Forma de Pagamento'#9'F'
        'dias'#9'15'#9'Dias'#9'F'
        'dta_vencimento'#9'15'#9'Vencimento'#9'F'
        'vlr_titulo'#9'21'#9'Vlr.T'#237'tulo'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alCustom
      Color = clWhite
      DataSource = dsoTit
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    end
    object dgIte: TwwDBGrid
      Left = 13
      Top = 158
      Width = 852
      Height = 119
      Selected.Strings = (
        'id_item'#9'10'#9'C'#243'digo'#9'F'
        'int_nomeite'#9'45'#9'Item'#9'F'
        'int_id_und_venda'#9'5'#9'Und'#9'F'
        'int_nomecor'#9'13'#9'Cor'#9'F'
        'int_nometam'#9'9'#9'Tamanho'#9'F'
        'qtde'#9'7'#9'Qtde'#9'F'
        'vlr_unitario'#9'10'#9'Atual'#9'F'#9'Vlr.Unit'#225'rio'
        'vlr_unitario_orig'#9'10'#9'Original'#9'F'#9'Vlr.Unit'#225'rio'
        'vlr_desconto'#9'10'#9'Desconto'#9'F'
        'vlr_liquido'#9'10'#9'Vlr.Total'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alCustom
      Color = clWhite
      DataSource = dsoIte
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDblClick = dgIteDblClick
      OnKeyDown = dgIteKeyDown
    end
    object dgPed: TwwDBGrid
      Left = 13
      Top = 29
      Width = 852
      Height = 119
      Selected.Strings = (
        'id_pedido'#9'8'#9'N'#186' Pedido'#9'F'
        'id_cliente'#9'11'#9'C'#243'digo'#9'F'
        'int_nomecli'#9'46'#9'Cliente'#9'F'
        'int_nomecpg'#9'18'#9'Cond. de Pagamento'#9'F'
        'int_nomefun'#9'10'#9'Vendedor'#9'F'
        'int_nometme'#9'11'#9'Tipo de Estoque'#9'F'
        'obs'#9'10'#9'Observa'#231#245'es'#9'F'
        'vlr_liquido'#9'11'#9'Vlr.Total'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alCustom
      Color = clWhite
      DataSource = dsoPed
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 2
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
    object txtNroPedido: TEdit
      Left = 64
      Top = 435
      Width = 71
      Height = 21
      NumbersOnly = True
      TabOrder = 3
      Text = 'txtNroPedido'
      Visible = False
    end
    object btnBuscar: TBitBtn
      Left = 141
      Top = 433
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 4
      Visible = False
      OnClick = btnBuscarClick
    end
  end
  object dsoPed: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_PED
    Left = 336
    Top = 467
  end
  object dsoIte: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_PED_ITE
    Left = 376
    Top = 467
  end
  object dsoTit: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_PED_TIT
    Left = 416
    Top = 467
  end
end
