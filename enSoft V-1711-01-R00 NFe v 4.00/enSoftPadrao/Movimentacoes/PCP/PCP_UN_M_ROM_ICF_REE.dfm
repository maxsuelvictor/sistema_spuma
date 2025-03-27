object PCP_FM_M_ROM_ICF_REE: TPCP_FM_M_ROM_ICF_REE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 562
  ClientWidth = 970
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 17
    Width = 42
    Height = 18
    Caption = 'Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label51: TLabel
    Left = 2
    Top = 317
    Width = 964
    Height = 24
    Alignment = taCenter
    AutoSize = False
    Caption = 'Etiquetas do Relat'#243'rio de Cargas que podem ser remanejadas'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label3: TLabel
    Left = 2
    Top = 83
    Width = 964
    Height = 26
    Alignment = taCenter
    AutoSize = False
    Caption = 'Itens do Pedido'
    Color = 14342874
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object lblItem: TLabel
    Left = 6
    Top = 285
    Width = 44
    Height = 19
    Caption = 'Item :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 429
    Top = 285
    Width = 36
    Height = 19
    Caption = 'Cor :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 650
    Top = 285
    Width = 45
    Height = 19
    Caption = 'Qtde :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 797
    Top = 285
    Width = 80
    Height = 19
    Caption = 'Conferido :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 54
    Top = 530
    Width = 258
    Height = 23
    Caption = 'Qtde selecionada para o item :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 2
    Top = 341
    Width = 964
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = 'Exibe somente etiquetas de pedidos com situa'#231#227'o "em produ'#231#227'o"'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label8: TLabel
    Left = 529
    Top = 530
    Width = 59
    Height = 23
    Caption = 'Resta: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object txtPedido: TEdit
    Left = 8
    Top = 35
    Width = 95
    Height = 26
    AutoSelect = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object dgPedIte: TwwDBGrid
    Left = 2
    Top = 112
    Width = 964
    Height = 153
    TabStop = False
    Selected.Strings = (
      'id_item'#9'10'#9'Item'#9'F'
      'int_nomeite'#9'47'#9'Descri'#231#227'o'#9'F'
      'int_undvenda'#9'4'#9'Und'#9'F'
      'int_qtde_ped_ite'#9'10'#9'Qtde'#9'F'
      'int_nomecor'#9'20'#9'Cor'#9'F'
      'int_nometam'#9'8'#9'Tamanho'#9'F'
      'qtde_conferida'#9'12'#9'Qtde conferida'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = 13750737
    OnRowChanged = dgPedIteRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = clWhite
    DataSource = dsoPedIte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    PaintOptions.AlternatingRowColor = 15132390
  end
  object grdPedIcf: TwwDBGrid
    Left = 1
    Top = 360
    Width = 965
    Height = 162
    ControlType.Strings = (
      'int_selecao;CheckBox;True;False')
    Selected.Strings = (
      'int_selecao'#9'2'#9#9'F'
      'cod_barra'#9'19'#9'Cod. Barra'#9'T'
      'id_item'#9'10'#9'Cod. Item'#9'T'
      'int_nomeite'#9'45'#9'Item'#9'T'
      'int_undvenda'#9'4'#9'Und'#9'T'
      'int_nometam'#9'9'#9'Tamanho'#9'T'
      'int_nomecor'#9'23'#9'Cor'#9'T'
      'id_pedido'#9'13'#9'Pedido'#9'T')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsRomIcf
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgProportionalColResize]
    ParentFont = False
    TabOrder = 7
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    UseTFields = False
    OnFieldChanged = grdPedIcfFieldChanged
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
      Visible = False
    end
  end
  object btnBusPedido: TButton
    Left = 103
    Top = 34
    Width = 131
    Height = 26
    Caption = 'Buscar pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnBusPedidoClick
  end
  object btnSair: TButton
    Left = 836
    Top = 526
    Width = 75
    Height = 32
    Caption = 'Sair'
    TabOrder = 11
    OnClick = btnSairClick
  end
  object btnRealocar: TButton
    Left = 759
    Top = 526
    Width = 75
    Height = 32
    Caption = 'Realocar'
    TabOrder = 10
    OnClick = btnRealocarClick
  end
  object txtItem: TDBEdit
    Left = 55
    Top = 281
    Width = 361
    Height = 27
    TabStop = False
    Color = 15461355
    DataField = 'int_nomeite'
    DataSource = dsoPedIte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object txtCor: TDBEdit
    Left = 471
    Top = 281
    Width = 170
    Height = 27
    TabStop = False
    Color = 15461355
    DataField = 'int_nomecor'
    DataSource = dsoPedIte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object txtQtde: TDBEdit
    Left = 699
    Top = 281
    Width = 87
    Height = 27
    TabStop = False
    Color = 15461355
    DataField = 'int_qtde_ped_ite'
    DataSource = dsoPedIte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object txtConferido: TDBEdit
    Left = 879
    Top = 281
    Width = 87
    Height = 27
    TabStop = False
    Color = clYellow
    DataField = 'qtde_conferida'
    DataSource = dsoPedIte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object txtQtdeSel: TEdit
    Left = 320
    Top = 526
    Width = 101
    Height = 31
    TabStop = False
    Color = 15461355
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    Text = 'txtQtdeSel'
  end
  object txtQtdeRestante: TEdit
    Left = 594
    Top = 526
    Width = 101
    Height = 31
    TabStop = False
    Color = 15461355
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
    Text = 'txtQtdeSel'
  end
  object dsoPedIte: TwwDataSource
    DataSet = dmGeral.PCP_CD_M_ROM_PED_ITE
    Left = 440
    Top = 179
  end
  object dsRomIcf: TDataSource
    DataSet = BUS_CD_M_ROM_ICF
    Left = 392
    Top = 368
  end
  object BUS_CD_M_ROM_ICF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_ROM_ICF'
    RemoteServer = dmGeral.pcConecao
    Left = 528
    Top = 368
  end
end
