object FAT_FM_M_PED_SQA: TFAT_FM_M_PED_SQA
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
        Caption = 'Solicita'#231#227'o de altera'#231#227'o da qtde do item a EXPEDI'#199#195'O'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -9
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
    object lblItemSobMed: TLabel
      Left = 20
      Top = 161
      Width = 109
      Height = 13
      Caption = 'Obs item sob medida'
      Visible = False
    end
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 896
      Height = 26
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Itens do pedido'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label2: TLabel
      Left = 249
      Top = 232
      Width = 217
      Height = 21
      Caption = 'Qtde a retirar desse produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 20
      Top = 312
      Width = 857
      Height = 236
      TabOrder = 0
      object Label10: TLabel
        Left = 2
        Top = 15
        Width = 853
        Height = 25
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Itens solicitados'
        Color = 2577445
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitTop = 23
      end
      object wwDBGrid1: TwwDBGrid
        Left = 2
        Top = 40
        Width = 853
        Height = 194
        TabStop = False
        ControlType.Strings = (
          'liberado_destinatario;CheckBox;True;False')
        Selected.Strings = (
          'id_item'#9'10'#9'C'#243'digo'#9'F'
          'int_nomeite'#9'40'#9'Descri'#231#227'o'#9'F'
          'int_nomecor'#9'15'#9'Cor'#9'F'
          'int_nomefun'#9'20'#9'Funcion'#225'rio'#9'F'#9'Solicitacao'
          'dta_solicitacao'#9'10'#9'Data'#9'F'#9'Solicitacao'
          'hora_solicitacao'#9'10'#9'Hora'#9'F'#9'Solicitacao'
          'dta_liberado'#9'10'#9'Data'#9'F'#9'Liberacao'
          'hora_liberado'#9'10'#9'Hora'#9'F'#9'Liberacao'
          'liberado_destinatario'#9'5'#9'Liberado'#9'F'#9'Liberacao')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsPedSqa
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
        ExplicitLeft = 3
        ExplicitTop = 46
        ExplicitWidth = 855
        ExplicitHeight = 126
        object wwIButton1: TwwIButton
          Left = -1
          Top = -1
          Width = 22
          Height = 22
          AllowAllUp = True
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF7008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC108FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFC23FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFF32323232323232
            3232323232323232323232323232323232323232323232323232323232FFFFFF
            B102FFFFFF323232323232323232323232323232323232323232323232323232
            323232323232323232FFFFFF0080FFFFFF323232323232323232323232323232
            323232323232323232323232323232323232323232FFFFFFD83FFFFFFF323232
            3232323232323232323232323232323232323232323232323232323232323232
            32FFFFFF0080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFEE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            B102}
        end
      end
    end
    object btnImporta: TButton
      Left = 232
      Top = 554
      Width = 80
      Height = 25
      Caption = '&Importar'
      TabOrder = 1
    end
    object btnSair: TButton
      Left = 313
      Top = 554
      Width = 80
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
    end
    object grdItens: TwwDBGrid
      Left = 20
      Top = 45
      Width = 855
      Height = 110
      TabStop = False
      Selected.Strings = (
        'ID_ITEM'#9'10'#9'C'#243'digo'#9'F'
        'INT_NOMEITE'#9'25'#9'Descri'#231#227'o'#9'F'
        'int_nomecor'#9'10'#9'Cor'#9'F'
        'int_nometam'#9'8'#9'Tamanho'#9'F'
        'int_nomecul'#9'15'#9'Cultura'#9'T'
        'QTDE'#9'5'#9'Qtde'#9'F'
        'VLR_UNITARIO'#9'10'#9'Vlr.Unit'#225'rio'#9'F'
        'VLR_BRUTO'#9'10'#9'Vlr. Bruto'#9'F'
        'PER_DESCONTO'#9'6'#9'%Desc.'#9'F'
        'VLR_DESCONTO'#9'8'#9'Vlr.Desc.'#9'F'
        'VLR_LIQUIDO'#9'10'#9'Vlr.Liquido'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsPedtIten
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      OnDblClick = grdItensDblClick
      object grdItensIButton: TwwIButton
        Left = -1
        Top = -1
        Width = 22
        Height = 22
        AllowAllUp = True
        Glyph.Data = {
          9E020000424D9E0200000000000036000000280000000E0000000E0000000100
          18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF7008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC108FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFC23FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFF32323232323232
          3232323232323232323232323232323232323232323232323232323232FFFFFF
          B102FFFFFF323232323232323232323232323232323232323232323232323232
          323232323232323232FFFFFF0080FFFFFF323232323232323232323232323232
          323232323232323232323232323232323232323232FFFFFFD83FFFFFFF323232
          3232323232323232323232323232323232323232323232323232323232323232
          32FFFFFF0080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          B102}
      end
    end
    object txtPcpObsItem: TDBMemo
      Left = 20
      Top = 174
      Width = 855
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'pcp_obs_item'
      DataSource = dsPedtIten
      ReadOnly = True
      TabOrder = 4
      Visible = False
    end
    object txtQtdeRetirarConf: TwwDBSpinEdit
      Left = 472
      Top = 229
      Width = 69
      Height = 29
      Increment = 1.000000000000000000
      DataField = 'qtde_retirar_conf'
      DataSource = dsPedSqa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
    end
    object Button1: TButton
      Left = 547
      Top = 229
      Width = 81
      Height = 29
      Caption = '&Solicitar'
      TabOrder = 6
    end
  end
  object dsPedSqa: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_PED_SQA
    Left = 760
    Top = 299
  end
  object dsPedtIten: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_PED_ITE
    Left = 15
    Top = 255
  end
end
