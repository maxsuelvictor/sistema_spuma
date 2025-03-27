object FAT_FM_M_PED_IPE: TFAT_FM_M_PED_IPE
  Left = 0
  Top = 0
  ClientHeight = 627
  ClientWidth = 896
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 896
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
      Width = 896
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
        Width = 896
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Importa'#231#227'o de Pedido de Venda'
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
      Width = 896
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
        Width = 891
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
    Width = 896
    Height = 584
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
    object Label5: TLabel
      Left = 60
      Top = 36
      Width = 95
      Height = 13
      Caption = 'Cliente produ'#231#227'o :'
    end
    object txtClienteNome: TDBText
      Left = 231
      Top = 32
      Width = 248
      Height = 21
      Color = 14342874
      DataField = 'INT_NOMECLI'
      DataSource = FAT_FM_M_PED.dso
      ParentColor = False
      Transparent = False
    end
    object Label2: TLabel
      Left = 486
      Top = 36
      Width = 53
      Height = 13
      Caption = 'CNPJ/CPF :'
    end
    object DBText1: TDBText
      Left = 546
      Top = 32
      Width = 142
      Height = 21
      Color = 14342874
      DataField = 'int_cpfcnpj'
      DataSource = FAT_FM_M_PED.dso
      ParentColor = False
      Transparent = False
    end
    object Label6: TLabel
      Left = 113
      Top = 63
      Width = 42
      Height = 13
      Caption = 'Cidade :'
    end
    object DBText2: TDBText
      Left = 159
      Top = 59
      Width = 320
      Height = 21
      Color = 14342874
      DataField = 'int_nomecid'
      DataSource = FAT_FM_M_PED.dso
      ParentColor = False
      Transparent = False
    end
    object DBText3: TDBText
      Left = 546
      Top = 59
      Width = 30
      Height = 21
      Color = 14342874
      DataField = 'int_nomeest'
      DataSource = FAT_FM_M_PED.dso
      ParentColor = False
      Transparent = False
    end
    object Label7: TLabel
      Left = 520
      Top = 63
      Width = 20
      Height = 13
      Caption = 'UF :'
    end
    object Label8: TLabel
      Left = 15
      Top = 9
      Width = 140
      Height = 13
      Caption = '(%) para abater no pedido :'
    end
    object Label4: TLabel
      Left = 112
      Top = 90
      Width = 42
      Height = 13
      Caption = 'Pedido :'
    end
    object lblPedNomeCli: TLabel
      Left = 239
      Top = 86
      Width = 381
      Height = 21
      AutoSize = False
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object Label16: TLabel
      Left = 621
      Top = 556
      Width = 148
      Height = 13
      Caption = 'Valor total com abatemento :'
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 112
      Width = 857
      Height = 436
      Caption = ' '
      TabOrder = 3
      object Label3: TLabel
        Left = 2
        Top = 257
        Width = 853
        Height = 8
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitTop = 225
        ExplicitWidth = 770
      end
      object Label1: TLabel
        Left = 2
        Top = 15
        Width = 853
        Height = 17
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pedidos em produ'#231#227'o'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitTop = 14
        ExplicitWidth = 770
      end
      object Label9: TLabel
        Left = 2
        Top = 129
        Width = 853
        Height = 17
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Itens do Pedido'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitTop = 179
        ExplicitWidth = 669
      end
      object Label10: TLabel
        Left = 2
        Top = 265
        Width = 853
        Height = 16
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Unifica'#231#227'o dos Itens dos Pedidos'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitTop = 289
        ExplicitWidth = 770
      end
      object Label11: TLabel
        Left = 346
        Top = 416
        Width = 58
        Height = 13
        Caption = 'Qtde total :'
      end
      object Label26: TLabel
        Left = 10
        Top = 416
        Width = 15
        Height = 13
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label12: TLabel
        Left = 30
        Top = 416
        Width = 169
        Height = 13
        Caption = 'Item sem c'#243'digo correspondente'
      end
      object Label15: TLabel
        Left = 696
        Top = 416
        Width = 59
        Height = 13
        Caption = 'Valor total :'
      end
      object Label14: TLabel
        Left = 473
        Top = 416
        Width = 132
        Height = 13
        Caption = 'Valor total desc. especial :'
      end
      object dbGrid: TwwDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 32
        Width = 851
        Height = 97
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ControlType.Strings = (
          'int_selecao;CheckBox;S;N')
        Selected.Strings = (
          'id_pedido'#9'10'#9'Pedido'#9'T'
          'dta_pedido'#9'10'#9'Data'#9'T'
          'dta_prev_entrega'#9'13'#9'Previs'#227'o '#9'T'
          'id_cliente'#9'10'#9'C'#243'digo'#9'T'
          'INT_NOMECLI'#9'57'#9'Cliente'#9'T'
          'int_nomefun'#9'20'#9'Representante'#9'T'
          'int_nomeate'#9'20'#9'Atendente'#9'T'
          'vlr_liquido'#9'13'#9'Valor'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dsPed
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
        object dbGridIButton: TwwIButton
          Left = 0
          Top = 0
          Width = 20
          Height = 22
          AllowAllUp = True
          Glyph.Data = {
            46030000424D460300000000000036000000280000000E0000000E0000000100
            2000000000001003000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000333333FF333333FF3333
            33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
            33FF333333FF0000000000000000333333FF333333FF333333FF333333FF3333
            33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
            000000000000333333FF333333FF333333FF333333FF333333FF333333FF3333
            33FF333333FF333333FF333333FF333333FF333333FF00000000000000003333
            33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
            33FF333333FF333333FF333333FF000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000}
          OnClick = dbGridIButtonClick
        end
      end
      object wwDBGrid1: TwwDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 281
        Width = 851
        Height = 130
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        ControlType.Strings = (
          'codigo;CustomEdit;txtIdItem;F')
        Selected.Strings = (
          'cod_ite_producao'#9'16'#9'C'#243'd. item prod.'#9'T'
          'item_producao'#9'43'#9'Item produ'#231#227'o'#9'T'
          'codigo'#9'10'#9'C'#243'digo'#9'F'
          'item'#9'35'#9'Item'#9'T'
          'und_venda'#9'4'#9'Und'#9'T'
          'cor'#9'20'#9'Cor'#9'T'
          'qtde'#9'10'#9'Qtde'#9'T'
          'vlr_liquido'#9'17'#9'Vlr. total'#9'T'
          'vlr_desc_basico'#9'10'#9'vlr_desc_basico'#9'F'
          'vlr_desc_especial'#9'10'#9'vlr_desc_especial'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dsItensPedidosUni
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
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
        OnCalcCellColors = wwDBGrid1CalcCellColors
        OnDblClick = wwDBGrid1DblClick
      end
      object wwDBGrid2: TwwDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 146
        Width = 851
        Height = 111
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        Selected.Strings = (
          'id_sequencia'#9'10'#9'Seq.'#9'F'
          'id_item'#9'7'#9'C'#243'digo'#9'F'
          'int_nomeite'#9'67'#9'Item'#9'F'
          'int_nomecor'#9'15'#9'Cor'#9'F'
          'qtde'#9'8'#9'Qtde'#9'F'
          'vlr_unitario'#9'12'#9'Vlr. Unit'#225'rio'#9'F'
          'vlr_desconto'#9'10'#9'Vlr. Desc'#9'F'
          'vlr_bruto'#9'13'#9'Vlr. Bruto'#9'F'
          'vlr_liquido'#9'11'#9'Vlr. Total'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dsPedItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
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
      object txtQtdeTotal: TEdit
        Left = 409
        Top = 412
        Width = 56
        Height = 21
        Alignment = taRightJustify
        Color = 14342874
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 3
      end
      object txtIdItem: TJvDBComboEdit
        Left = 310
        Top = 368
        Width = 54
        Height = 21
        TabStop = False
        Alignment = taRightJustify
        ClickKey = 114
        Color = clWhite
        DataField = 'codigo'
        DataSource = dsItensPedidosUni
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
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
        TabOrder = 4
        OnButtonClick = txtIdItemButtonClick
        OnExit = txtIdItemExit
      end
      object txtVlrTotal: TEdit
        Left = 759
        Top = 412
        Width = 79
        Height = 21
        Alignment = taRightJustify
        Color = 14342874
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 6
      end
      object pnMedidas: TPanel
        Left = 370
        Top = 320
        Width = 306
        Height = 73
        TabOrder = 7
        Visible = False
        object Label13: TLabel
          Left = 88
          Top = 1
          Width = 109
          Height = 13
          Caption = '<Tecle TAB para sair>'
        end
        object mmPcpObsIte: TDBMemo
          Left = 5
          Top = 16
          Width = 297
          Height = 53
          DataField = 'item'
          DataSource = dsItensPedidosUni
          TabOrder = 0
          OnEnter = mmPcpObsIteEnter
          OnExit = mmPcpObsIteExit
        end
      end
      object txtVlrTotalDescEspecial: TEdit
        Left = 611
        Top = 412
        Width = 79
        Height = 21
        Alignment = taRightJustify
        Color = 14342874
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 5
      end
    end
    object btnImporta: TButton
      Left = 232
      Top = 554
      Width = 80
      Height = 25
      Caption = '&Importar'
      TabOrder = 4
      OnClick = btnImportaClick
    end
    object btnSair: TButton
      Left = 313
      Top = 554
      Width = 80
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
      OnClick = btnSairClick
    end
    object txtCliente: TJvDBComboEdit
      Left = 158
      Top = 32
      Width = 71
      Height = 21
      TabStop = False
      ClickKey = 114
      Color = 14342874
      DataField = 'id_cliente'
      DataSource = FAT_FM_M_PED.dso
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
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
      ReadOnly = True
      TabOrder = 6
    end
    object txtPercAbater: TwwDBEdit
      Left = 158
      Top = 5
      Width = 71
      Height = 21
      DataField = 'per_desconto_fat'
      DataSource = FAT_FM_M_PED.dso
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object txtCodPed: TJvComboEdit
      Left = 160
      Top = 86
      Width = 78
      Height = 21
      ClickKey = 114
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
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
      ShowButton = False
      TabOrder = 1
      Text = ''
      OnExit = txtCodPedExit
      NumbersOnly = True
    end
    object btnAdicionar: TcxButton
      Left = 626
      Top = 85
      Width = 61
      Height = 23
      Caption = 'Inserir'
      OptionsImage.ImageIndex = 1
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnAdicionarClick
    end
    object btnUnificar: TButton
      Left = 20
      Top = 554
      Width = 103
      Height = 25
      Caption = '&Unificar pedidos'
      TabOrder = 7
      OnClick = btnUnificarClick
    end
    object txtVlrTotalDescontado: TEdit
      Left = 775
      Top = 552
      Width = 79
      Height = 21
      Alignment = taRightJustify
      Color = 14342874
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 8
    end
  end
  object dsPed: TDataSource
    DataSet = BUS_CD_M_PED_PRD
    Left = 72
    Top = 219
  end
  object dsPedItens: TDataSource
    DataSet = BUS_CD_M_PED_ITE_PRD
    Left = 72
    Top = 275
  end
  object pcConecaoDBProd: TDSProviderConnection
    ServerClassName = 'TSM'
    SQLConnection = ConexaoBDProd
    Left = 111
    Top = 421
  end
  object ConexaoBDProd: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=18.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}'
      'DSAuthenticationUser=admin'
      'HostName=localhost')
    Left = 231
    Top = 421
    UniqueId = '{9DB98CFE-7809-45C4-AD3A-DA87030605AD}'
  end
  object BUS_CD_M_PED_PRD: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_M_PED'
    RemoteServer = pcConecaoDBProd
    Left = 192
    Top = 219
    object BUS_CD_M_PED_PRDid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object BUS_CD_M_PED_PRDid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_M_PED_PRDdta_pedido: TDateField
      FieldName = 'dta_pedido'
    end
    object BUS_CD_M_PED_PRDid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
    end
    object BUS_CD_M_PED_PRDid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object BUS_CD_M_PED_PRDvlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDper_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object BUS_CD_M_PED_PRDvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDhor_pedido: TSQLTimeStampField
      FieldName = 'hor_pedido'
    end
    object BUS_CD_M_PED_PRDid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
    end
    object BUS_CD_M_PED_PRDpcp_id_opr: TIntegerField
      FieldName = 'pcp_id_opr'
    end
    object BUS_CD_M_PED_PRDsituacao: TIntegerField
      FieldName = 'situacao'
    end
    object BUS_CD_M_PED_PRDsituacao_aprovacao: TIntegerField
      FieldName = 'situacao_aprovacao'
    end
    object BUS_CD_M_PED_PRDid_atendente: TIntegerField
      FieldName = 'id_atendente'
    end
    object BUS_CD_M_PED_PRDid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object BUS_CD_M_PED_PRDid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object BUS_CD_M_PED_PRDtipo_restricao: TWideStringField
      FieldName = 'tipo_restricao'
      Size = 100
    end
    object BUS_CD_M_PED_PRDid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
    end
    object BUS_CD_M_PED_PRDjustificativa: TWideStringField
      FieldName = 'justificativa'
      Size = 100
    end
    object BUS_CD_M_PED_PRDid_usuario_lib: TIntegerField
      FieldName = 'id_usuario_lib'
    end
    object BUS_CD_M_PED_PRDcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_M_PED_PRDrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_M_PED_PRDorigem: TIntegerField
      FieldName = 'origem'
    end
    object BUS_CD_M_PED_PRDdispositivo: TWideStringField
      FieldName = 'dispositivo'
      Size = 50
    end
    object BUS_CD_M_PED_PRDgps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object BUS_CD_M_PED_PRDgps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
    object BUS_CD_M_PED_PRDcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object BUS_CD_M_PED_PRDid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
    end
    object BUS_CD_M_PED_PRDenvia_carga: TBooleanField
      FieldName = 'envia_carga'
    end
    object BUS_CD_M_PED_PRDdta_prev_entrega: TDateField
      FieldName = 'dta_prev_entrega'
    end
    object BUS_CD_M_PED_PRDint_nomecli: TWideStringField
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRDint_nometme: TWideStringField
      FieldName = 'int_nometme'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_PED_PRDint_nomefun: TWideStringField
      FieldName = 'int_nomefun'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRDint_nomecpg: TWideStringField
      FieldName = 'int_nomecpg'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_PED_PRDint_nomeate: TWideStringField
      FieldName = 'int_nomeate'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRDint_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRDint_nomecid: TWideStringField
      FieldName = 'int_nomecid'
      ProviderFlags = []
      Size = 60
    end
    object BUS_CD_M_PED_PRDint_nomeest: TWideStringField
      FieldName = 'int_nomeest'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_M_PED_PRDint_cpfcnpj: TWideStringField
      FieldName = 'int_cpfcnpj'
      ProviderFlags = []
      Size = 14
    end
    object BUS_CD_M_PED_PRDint_pessoacli: TIntegerField
      FieldName = 'int_pessoacli'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRDint_id_perfil: TIntegerField
      FieldName = 'int_id_perfil'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRDid_ors: TIntegerField
      FieldName = 'id_ors'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRDint_sitaprov: TWideStringField
      FieldName = 'int_sitaprov'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRDint_sitped: TWideStringField
      FieldName = 'int_sitped'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRDid_abertura: TIntegerField
      FieldName = 'id_abertura'
    end
    object BUS_CD_M_PED_PRDint_ie_rg_cli: TWideStringField
      FieldName = 'int_ie_rg_cli'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRDint_selecao: TBooleanField
      FieldName = 'int_selecao'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRDdias_cpg_prazo: TIntegerField
      FieldName = 'dias_cpg_prazo'
    end
    object BUS_CD_M_PED_PRDint_nomereg: TWideStringField
      FieldName = 'int_nomereg'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRDoffline: TBooleanField
      FieldName = 'offline'
    end
    object BUS_CD_M_PED_PRDconferido: TBooleanField
      FieldName = 'conferido'
    end
    object BUS_CD_M_PED_PRDid_conf: TIntegerField
      FieldName = 'id_conf'
    end
    object BUS_CD_M_PED_PRDdta_conf: TDateField
      FieldName = 'dta_conf'
    end
    object BUS_CD_M_PED_PRDhor_conf: TTimeField
      FieldName = 'hor_conf'
    end
    object BUS_CD_M_PED_PRDresultado_conf: TIntegerField
      FieldName = 'resultado_conf'
    end
    object BUS_CD_M_PED_PRDid_resp_conf: TIntegerField
      FieldName = 'id_resp_conf'
    end
    object BUS_CD_M_PED_PRDint_nome_rcn: TWideStringField
      FieldName = 'int_nome_rcn'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRDid_propriedade: TIntegerField
      FieldName = 'id_propriedade'
    end
    object BUS_CD_M_PED_PRDmod_frete: TIntegerField
      FieldName = 'mod_frete'
    end
    object BUS_CD_M_PED_PRDvlr_frete: TFMTBCDField
      FieldName = 'vlr_frete'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDid_mkt: TIntegerField
      FieldName = 'id_mkt'
    end
    object BUS_CD_M_PED_PRDcan_usuario: TIntegerField
      FieldName = 'can_usuario'
    end
    object BUS_CD_M_PED_PRDcan_data: TDateField
      FieldName = 'can_data'
    end
    object BUS_CD_M_PED_PRDcan_motivo: TWideStringField
      FieldName = 'can_motivo'
      Size = 100
    end
    object BUS_CD_M_PED_PRDcan_hora: TTimeField
      FieldName = 'can_hora'
    end
    object BUS_CD_M_PED_PRDint_numloteopr: TWideStringField
      FieldName = 'int_numloteopr'
      ProviderFlags = []
      Size = 15
    end
    object BUS_CD_M_PED_PRDid_motorista: TIntegerField
      FieldName = 'id_motorista'
    end
    object BUS_CD_M_PED_PRDid_placa: TWideStringField
      FieldName = 'id_placa'
      Size = 8
    end
    object BUS_CD_M_PED_PRDint_nomemta: TWideStringField
      FieldName = 'int_nomemta'
      ProviderFlags = []
      Size = 80
    end
    object BUS_CD_M_PED_PRDvlr_credito: TFMTBCDField
      FieldName = 'vlr_credito'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDvlr_desc_especial: TFMTBCDField
      FieldName = 'vlr_desc_especial'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDvlr_desc_basico: TFMTBCDField
      FieldName = 'vlr_desc_basico'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDsgq_per_comissao: TFloatField
      FieldName = 'sgq_per_comissao'
    end
    object BUS_CD_M_PED_PRDint_sitped2: TWideStringField
      FieldName = 'int_sitped2'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRDqtde_volume: TFloatField
      FieldName = 'qtde_volume'
    end
    object BUS_CD_M_PED_PRDvlr_icm_desn: TFMTBCDField
      FieldName = 'vlr_icm_desn'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDint_sitord: TIntegerField
      FieldName = 'int_sitord'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRDvlr_desc_produtos: TFMTBCDField
      FieldName = 'vlr_desc_produtos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDper_desc_produtos: TFloatField
      FieldName = 'per_desc_produtos'
    end
    object BUS_CD_M_PED_PRDvlr_produtos: TFMTBCDField
      FieldName = 'vlr_produtos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDvlr_serv_bruto: TFMTBCDField
      FieldName = 'vlr_serv_bruto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDvlr_desc_servicos: TFMTBCDField
      FieldName = 'vlr_desc_servicos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDper_desc_servicos: TFloatField
      FieldName = 'per_desc_servicos'
    end
    object BUS_CD_M_PED_PRDvlr_ser_liquido: TFMTBCDField
      FieldName = 'vlr_ser_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDvlr_terceiro: TFMTBCDField
      FieldName = 'vlr_terceiro'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDvlr_desc_terceiro: TFMTBCDField
      FieldName = 'vlr_desc_terceiro'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDper_desc_terceiro: TFloatField
      FieldName = 'per_desc_terceiro'
    end
    object BUS_CD_M_PED_PRDvlr_terc_liquido: TFMTBCDField
      FieldName = 'vlr_terc_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDped_gera_fin_separado: TBooleanField
      FieldName = 'ped_gera_fin_separado'
    end
    object BUS_CD_M_PED_PRDvlr_prod_liquido: TFMTBCDField
      FieldName = 'vlr_prod_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDsepara_prod_serv: TBooleanField
      FieldName = 'separa_prod_serv'
    end
    object BUS_CD_M_PED_PRDvlr_cred_produtos: TFMTBCDField
      FieldName = 'vlr_cred_produtos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDvlr_cred_servicos: TFMTBCDField
      FieldName = 'vlr_cred_servicos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRDobs: TWideStringField
      FieldName = 'obs'
      Size = 255
    end
    object BUS_CD_M_PED_PRDid_mecanico: TIntegerField
      FieldName = 'id_mecanico'
    end
    object BUS_CD_M_PED_PRDsgq_texto_cond_pgto: TWideStringField
      FieldName = 'sgq_texto_cond_pgto'
      Size = 80
    end
    object BUS_CD_M_PED_PRDper_desc_basico: TFloatField
      FieldName = 'per_desc_basico'
    end
    object BUS_CD_M_PED_PRDper_desc_especial: TFloatField
      FieldName = 'per_desc_especial'
    end
    object BUS_CD_M_PED_PRDdta_liberacao: TDateField
      FieldName = 'dta_liberacao'
    end
    object BUS_CD_M_PED_PRDint_nomelib: TWideStringField
      FieldName = 'int_nomelib'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRDpcp_obs: TWideStringField
      FieldName = 'pcp_obs'
      Size = 200
    end
    object BUS_CD_M_PED_PRDpedido_automatico: TBooleanField
      FieldName = 'pedido_automatico'
    end
    object BUS_CD_M_PED_PRDpedido_origem_aut: TIntegerField
      FieldName = 'pedido_origem_aut'
    end
    object BUS_CD_M_PED_PRDgerar_pedido_diferenca: TBooleanField
      FieldName = 'gerar_pedido_diferenca'
    end
    object BUS_CD_M_PED_PRDid_pedido_gerado: TIntegerField
      FieldName = 'id_pedido_gerado'
    end
    object BUS_CD_M_PED_PRDFAT_SQ_M_PED_ITE: TDataSetField
      FieldName = 'FAT_SQ_M_PED_ITE'
    end
  end
  object BUS_CD_M_PED_ITE_PRD: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_M_PED_PRDFAT_SQ_M_PED_ITE
    Params = <>
    Left = 192
    Top = 275
    object BUS_CD_M_PED_ITE_PRDid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object BUS_CD_M_PED_ITE_PRDid_sequencia: TIntegerField
      FieldName = 'id_sequencia'
    end
    object BUS_CD_M_PED_ITE_PRDid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_M_PED_ITE_PRDqtde: TFloatField
      FieldName = 'qtde'
    end
    object BUS_CD_M_PED_ITE_PRDvlr_unitario: TFMTBCDField
      FieldName = 'vlr_unitario'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDvlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDper_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object BUS_CD_M_PED_ITE_PRDvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDid_cor: TIntegerField
      FieldName = 'id_cor'
    end
    object BUS_CD_M_PED_ITE_PRDid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
    end
    object BUS_CD_M_PED_ITE_PRDid_busca_item: TWideStringField
      FieldName = 'id_busca_item'
      Size = 30
    end
    object BUS_CD_M_PED_ITE_PRDint_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      Size = 100
    end
    object BUS_CD_M_PED_ITE_PRDint_nomecor: TWideStringField
      FieldName = 'int_nomecor'
      Size = 40
    end
    object BUS_CD_M_PED_ITE_PRDint_id_und_venda: TWideStringField
      FieldName = 'int_id_und_venda'
      Size = 3
    end
    object BUS_CD_M_PED_ITE_PRDint_nometam: TWideStringField
      FieldName = 'int_nometam'
      Size = 40
    end
    object BUS_CD_M_PED_ITE_PRDvlr_unitario_orig: TFMTBCDField
      FieldName = 'vlr_unitario_orig'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDint_tipo_item: TWideStringField
      FieldName = 'int_tipo_item'
      Size = 2
    end
    object BUS_CD_M_PED_ITE_PRDint_seqitem: TIntegerField
      FieldName = 'int_seqitem'
    end
    object BUS_CD_M_PED_ITE_PRDint_rua: TWideStringField
      FieldName = 'int_rua'
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDint_prateleira: TWideStringField
      FieldName = 'int_prateleira'
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDint_escaninho: TWideStringField
      FieldName = 'int_escaninho'
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDper_desc_max: TFloatField
      FieldName = 'per_desc_max'
    end
    object BUS_CD_M_PED_ITE_PRDqtde_conferida: TFloatField
      FieldName = 'qtde_conferida'
    end
    object BUS_CD_M_PED_ITE_PRDpcp_obs_item: TWideStringField
      FieldName = 'pcp_obs_item'
      Size = 150
    end
    object BUS_CD_M_PED_ITE_PRDid_cultura: TIntegerField
      FieldName = 'id_cultura'
    end
    object BUS_CD_M_PED_ITE_PRDint_nomecul: TWideStringField
      FieldName = 'int_nomecul'
      Size = 30
    end
    object BUS_CD_M_PED_ITE_PRDint_selecao: TBooleanField
      FieldName = 'int_selecao'
    end
    object BUS_CD_M_PED_ITE_PRDvlr_frete: TFMTBCDField
      FieldName = 'vlr_frete'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDint_rua2: TWideStringField
      FieldName = 'int_rua2'
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDint_prateleira2: TWideStringField
      FieldName = 'int_prateleira2'
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDint_escaninho2: TWideStringField
      FieldName = 'int_escaninho2'
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDvlr_icm_desn: TFMTBCDField
      FieldName = 'vlr_icm_desn'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDnum_lote: TWideStringField
      FieldName = 'num_lote'
      Size = 15
    end
    object BUS_CD_M_PED_ITE_PRDint_lote_gru: TBooleanField
      FieldName = 'int_lote_gru'
    end
    object BUS_CD_M_PED_ITE_PRDmotivo_icms_des: TIntegerField
      FieldName = 'motivo_icms_des'
    end
    object BUS_CD_M_PED_ITE_PRDint_serterceiro: TBooleanField
      FieldName = 'int_serterceiro'
    end
    object BUS_CD_M_PED_ITE_PRDid_mecanico: TIntegerField
      FieldName = 'id_mecanico'
    end
    object BUS_CD_M_PED_ITE_PRDint_nomemec: TWideStringField
      FieldName = 'int_nomemec'
      Size = 50
    end
    object BUS_CD_M_PED_ITE_PRDper_desc_basico: TFloatField
      FieldName = 'per_desc_basico'
    end
    object BUS_CD_M_PED_ITE_PRDvlr_desc_basico: TFMTBCDField
      FieldName = 'vlr_desc_basico'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_ITE_PRDper_desc_especial: TFloatField
      FieldName = 'per_desc_especial'
    end
    object BUS_CD_M_PED_ITE_PRDvlr_desc_especial: TFMTBCDField
      FieldName = 'vlr_desc_especial'
      Precision = 18
      Size = 4
    end
  end
  object BUS_CD_M_PED_PRD2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_M_PED'
    RemoteServer = pcConecaoDBProd
    Left = 480
    Top = 219
    object BUS_CD_M_PED_PRD2id_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object BUS_CD_M_PED_PRD2id_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_M_PED_PRD2dta_pedido: TDateField
      FieldName = 'dta_pedido'
    end
    object BUS_CD_M_PED_PRD2id_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
    end
    object BUS_CD_M_PED_PRD2id_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object BUS_CD_M_PED_PRD2vlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2per_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object BUS_CD_M_PED_PRD2vlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2hor_pedido: TSQLTimeStampField
      FieldName = 'hor_pedido'
    end
    object BUS_CD_M_PED_PRD2id_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
    end
    object BUS_CD_M_PED_PRD2pcp_id_opr: TIntegerField
      FieldName = 'pcp_id_opr'
    end
    object BUS_CD_M_PED_PRD2situacao: TIntegerField
      FieldName = 'situacao'
    end
    object BUS_CD_M_PED_PRD2situacao_aprovacao: TIntegerField
      FieldName = 'situacao_aprovacao'
    end
    object BUS_CD_M_PED_PRD2id_atendente: TIntegerField
      FieldName = 'id_atendente'
    end
    object BUS_CD_M_PED_PRD2id_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object BUS_CD_M_PED_PRD2id_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object BUS_CD_M_PED_PRD2tipo_restricao: TWideStringField
      FieldName = 'tipo_restricao'
      Size = 100
    end
    object BUS_CD_M_PED_PRD2id_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
    end
    object BUS_CD_M_PED_PRD2justificativa: TWideStringField
      FieldName = 'justificativa'
      Size = 100
    end
    object BUS_CD_M_PED_PRD2id_usuario_lib: TIntegerField
      FieldName = 'id_usuario_lib'
    end
    object BUS_CD_M_PED_PRD2cod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_M_PED_PRD2rev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_M_PED_PRD2origem: TIntegerField
      FieldName = 'origem'
    end
    object BUS_CD_M_PED_PRD2dispositivo: TWideStringField
      FieldName = 'dispositivo'
      Size = 50
    end
    object BUS_CD_M_PED_PRD2gps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object BUS_CD_M_PED_PRD2gps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
    object BUS_CD_M_PED_PRD2cubagem: TFloatField
      FieldName = 'cubagem'
    end
    object BUS_CD_M_PED_PRD2id_orcamento: TIntegerField
      FieldName = 'id_orcamento'
    end
    object BUS_CD_M_PED_PRD2envia_carga: TBooleanField
      FieldName = 'envia_carga'
    end
    object BUS_CD_M_PED_PRD2dta_prev_entrega: TDateField
      FieldName = 'dta_prev_entrega'
    end
    object BUS_CD_M_PED_PRD2int_nomecli: TWideStringField
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRD2int_nometme: TWideStringField
      FieldName = 'int_nometme'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_PED_PRD2int_nomefun: TWideStringField
      FieldName = 'int_nomefun'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRD2int_nomecpg: TWideStringField
      FieldName = 'int_nomecpg'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_PED_PRD2int_nomeate: TWideStringField
      FieldName = 'int_nomeate'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRD2int_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRD2int_nomecid: TWideStringField
      FieldName = 'int_nomecid'
      ProviderFlags = []
      Size = 60
    end
    object BUS_CD_M_PED_PRD2int_nomeest: TWideStringField
      FieldName = 'int_nomeest'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_M_PED_PRD2int_cpfcnpj: TWideStringField
      FieldName = 'int_cpfcnpj'
      ProviderFlags = []
      Size = 14
    end
    object BUS_CD_M_PED_PRD2int_pessoacli: TIntegerField
      FieldName = 'int_pessoacli'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRD2int_id_perfil: TIntegerField
      FieldName = 'int_id_perfil'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRD2id_ors: TIntegerField
      FieldName = 'id_ors'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRD2int_sitaprov: TWideStringField
      FieldName = 'int_sitaprov'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRD2int_sitped: TWideStringField
      FieldName = 'int_sitped'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRD2id_abertura: TIntegerField
      FieldName = 'id_abertura'
    end
    object BUS_CD_M_PED_PRD2int_ie_rg_cli: TWideStringField
      FieldName = 'int_ie_rg_cli'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRD2int_selecao: TBooleanField
      FieldName = 'int_selecao'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRD2dias_cpg_prazo: TIntegerField
      FieldName = 'dias_cpg_prazo'
    end
    object BUS_CD_M_PED_PRD2int_nomereg: TWideStringField
      FieldName = 'int_nomereg'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRD2offline: TBooleanField
      FieldName = 'offline'
    end
    object BUS_CD_M_PED_PRD2conferido: TBooleanField
      FieldName = 'conferido'
    end
    object BUS_CD_M_PED_PRD2id_conf: TIntegerField
      FieldName = 'id_conf'
    end
    object BUS_CD_M_PED_PRD2dta_conf: TDateField
      FieldName = 'dta_conf'
    end
    object BUS_CD_M_PED_PRD2hor_conf: TTimeField
      FieldName = 'hor_conf'
    end
    object BUS_CD_M_PED_PRD2resultado_conf: TIntegerField
      FieldName = 'resultado_conf'
    end
    object BUS_CD_M_PED_PRD2id_resp_conf: TIntegerField
      FieldName = 'id_resp_conf'
    end
    object BUS_CD_M_PED_PRD2int_nome_rcn: TWideStringField
      FieldName = 'int_nome_rcn'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRD2id_propriedade: TIntegerField
      FieldName = 'id_propriedade'
    end
    object BUS_CD_M_PED_PRD2mod_frete: TIntegerField
      FieldName = 'mod_frete'
    end
    object BUS_CD_M_PED_PRD2vlr_frete: TFMTBCDField
      FieldName = 'vlr_frete'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2id_mkt: TIntegerField
      FieldName = 'id_mkt'
    end
    object BUS_CD_M_PED_PRD2can_usuario: TIntegerField
      FieldName = 'can_usuario'
    end
    object BUS_CD_M_PED_PRD2can_data: TDateField
      FieldName = 'can_data'
    end
    object BUS_CD_M_PED_PRD2can_motivo: TWideStringField
      FieldName = 'can_motivo'
      Size = 100
    end
    object BUS_CD_M_PED_PRD2can_hora: TTimeField
      FieldName = 'can_hora'
    end
    object BUS_CD_M_PED_PRD2int_numloteopr: TWideStringField
      FieldName = 'int_numloteopr'
      ProviderFlags = []
      Size = 15
    end
    object BUS_CD_M_PED_PRD2id_motorista: TIntegerField
      FieldName = 'id_motorista'
    end
    object BUS_CD_M_PED_PRD2id_placa: TWideStringField
      FieldName = 'id_placa'
      Size = 8
    end
    object BUS_CD_M_PED_PRD2int_nomemta: TWideStringField
      FieldName = 'int_nomemta'
      ProviderFlags = []
      Size = 80
    end
    object BUS_CD_M_PED_PRD2vlr_credito: TFMTBCDField
      FieldName = 'vlr_credito'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2vlr_desc_especial: TFMTBCDField
      FieldName = 'vlr_desc_especial'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2vlr_desc_basico: TFMTBCDField
      FieldName = 'vlr_desc_basico'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2sgq_per_comissao: TFloatField
      FieldName = 'sgq_per_comissao'
    end
    object BUS_CD_M_PED_PRD2int_sitped2: TWideStringField
      FieldName = 'int_sitped2'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRD2qtde_volume: TFloatField
      FieldName = 'qtde_volume'
    end
    object BUS_CD_M_PED_PRD2vlr_icm_desn: TFMTBCDField
      FieldName = 'vlr_icm_desn'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2int_sitord: TIntegerField
      FieldName = 'int_sitord'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PRD2vlr_desc_produtos: TFMTBCDField
      FieldName = 'vlr_desc_produtos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2per_desc_produtos: TFloatField
      FieldName = 'per_desc_produtos'
    end
    object BUS_CD_M_PED_PRD2vlr_produtos: TFMTBCDField
      FieldName = 'vlr_produtos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2vlr_serv_bruto: TFMTBCDField
      FieldName = 'vlr_serv_bruto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2vlr_desc_servicos: TFMTBCDField
      FieldName = 'vlr_desc_servicos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2per_desc_servicos: TFloatField
      FieldName = 'per_desc_servicos'
    end
    object BUS_CD_M_PED_PRD2vlr_ser_liquido: TFMTBCDField
      FieldName = 'vlr_ser_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2vlr_terceiro: TFMTBCDField
      FieldName = 'vlr_terceiro'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2vlr_desc_terceiro: TFMTBCDField
      FieldName = 'vlr_desc_terceiro'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2per_desc_terceiro: TFloatField
      FieldName = 'per_desc_terceiro'
    end
    object BUS_CD_M_PED_PRD2vlr_terc_liquido: TFMTBCDField
      FieldName = 'vlr_terc_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2ped_gera_fin_separado: TBooleanField
      FieldName = 'ped_gera_fin_separado'
    end
    object BUS_CD_M_PED_PRD2vlr_prod_liquido: TFMTBCDField
      FieldName = 'vlr_prod_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2separa_prod_serv: TBooleanField
      FieldName = 'separa_prod_serv'
    end
    object BUS_CD_M_PED_PRD2vlr_cred_produtos: TFMTBCDField
      FieldName = 'vlr_cred_produtos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2vlr_cred_servicos: TFMTBCDField
      FieldName = 'vlr_cred_servicos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PRD2obs: TWideStringField
      FieldName = 'obs'
      Size = 255
    end
    object BUS_CD_M_PED_PRD2id_mecanico: TIntegerField
      FieldName = 'id_mecanico'
    end
    object BUS_CD_M_PED_PRD2sgq_texto_cond_pgto: TWideStringField
      FieldName = 'sgq_texto_cond_pgto'
      Size = 80
    end
    object BUS_CD_M_PED_PRD2per_desc_basico: TFloatField
      FieldName = 'per_desc_basico'
    end
    object BUS_CD_M_PED_PRD2per_desc_especial: TFloatField
      FieldName = 'per_desc_especial'
    end
    object BUS_CD_M_PED_PRD2dta_liberacao: TDateField
      FieldName = 'dta_liberacao'
    end
    object BUS_CD_M_PED_PRD2int_nomelib: TWideStringField
      FieldName = 'int_nomelib'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PRD2pcp_obs: TWideStringField
      FieldName = 'pcp_obs'
      Size = 200
    end
    object BUS_CD_M_PED_PRD2pedido_automatico: TBooleanField
      FieldName = 'pedido_automatico'
    end
    object BUS_CD_M_PED_PRD2pedido_origem_aut: TIntegerField
      FieldName = 'pedido_origem_aut'
    end
    object BUS_CD_M_PED_PRD2gerar_pedido_diferenca: TBooleanField
      FieldName = 'gerar_pedido_diferenca'
    end
    object BUS_CD_M_PED_PRD2id_pedido_gerado: TIntegerField
      FieldName = 'id_pedido_gerado'
    end
    object BUS_CD_M_PED_PRD2FAT_SQ_M_PED_ITE: TDataSetField
      FieldName = 'FAT_SQ_M_PED_ITE'
    end
  end
  object BUS_CD_M_PED_ITE_PRD2: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_M_PED_PRD2FAT_SQ_M_PED_ITE
    Params = <>
    Left = 480
    Top = 275
  end
  object dsItensPedidosUni: TDataSource
    DataSet = cdsItensPedidosUni
    Left = 80
    Top = 517
  end
  object cdsItensPedidosUni: TClientDataSet
    PersistDataPacket.Data = {
      440200009619E0BD020000001800000010000000000003000000440206636F64
      69676F0400010000000000046974656D01004A00000001000557494454480200
      0200A00007636F645F636F72040001000000000003636F7201004A0000000100
      05574944544802000200500007636F645F74616D040001000000000004717464
      6508000400000000000B766C725F6C69717569646F1200120000000200084445
      43494D414C5302000200040005574944544802000200200009756E645F76656E
      646101004A0000000100055749445448020002000600097469706F5F6974656D
      01004A000000010005574944544802000200040010636F645F6974655F70726F
      647563616F04000100000000000D6974656D5F70726F647563616F01004A0000
      00010005574944544802000200A0000F766C725F646573635F62617369636F12
      0012000000020008444543494D414C5302000200040005574944544802000200
      200011766C725F646573635F657370656369616C120012000000020008444543
      494D414C5302000200040005574944544802000200200009766C725F62727574
      6F120012000000020008444543494D414C530200020004000557494454480200
      020020000F766C725F6C69717569646F5F706564120012000000020008444543
      494D414C5302000200040005574944544802000200200015766C725F64657363
      5F657370656369616C5F706564120012000000020008444543494D414C530200
      0200040005574944544802000200200001000D44454641554C545F4F52444552
      0200820000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'item'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'cod_cor'
        DataType = ftInteger
      end
      item
        Name = 'cor'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'cod_tam'
        DataType = ftInteger
      end
      item
        Name = 'qtde'
        DataType = ftFloat
      end
      item
        Name = 'vlr_liquido'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'und_venda'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'tipo_item'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'cod_ite_producao'
        DataType = ftInteger
      end
      item
        Name = 'item_producao'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'vlr_desc_basico'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'vlr_desc_especial'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'vlr_bruto'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'vlr_liquido_ped'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'vlr_desc_especial_ped'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'item_producao'
    Params = <>
    StoreDefs = True
    Left = 196
    Top = 517
    object cdsItensPedidosUnicodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsItensPedidosUnicod_cor: TIntegerField
      FieldName = 'cod_cor'
    end
    object cdsItensPedidosUnicod_tam: TIntegerField
      FieldName = 'cod_tam'
    end
    object cdsItensPedidosUniitem: TWideStringField
      FieldName = 'item'
      Size = 80
    end
    object cdsItensPedidosUnicor: TWideStringField
      FieldName = 'cor'
    end
    object cdsItensPedidosUnivlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsItensPedidosUniund_venda: TWideStringField
      FieldName = 'und_venda'
      Size = 3
    end
    object cdsItensPedidosUnitipo_item: TWideStringField
      FieldName = 'tipo_item'
      Size = 2
    end
    object cdsItensPedidosUniqtde: TFloatField
      FieldName = 'qtde'
    end
    object cdsItensPedidosUnicod_ite_producao: TIntegerField
      FieldName = 'cod_ite_producao'
    end
    object cdsItensPedidosUniitem_producao: TWideStringField
      FieldName = 'item_producao'
      Size = 80
    end
    object cdsItensPedidosUnivlr_desc_basico: TFMTBCDField
      FieldName = 'vlr_desc_basico'
    end
    object cdsItensPedidosUnivlr_desc_especial: TFMTBCDField
      FieldName = 'vlr_desc_especial'
    end
    object cdsItensPedidosUnivlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
    end
    object cdsItensPedidosUnivlr_liquido_ped: TFMTBCDField
      FieldName = 'vlr_liquido_ped'
    end
    object cdsItensPedidosUnivlr_desc_especial_ped: TFMTBCDField
      FieldName = 'vlr_desc_especial_ped'
    end
  end
end
