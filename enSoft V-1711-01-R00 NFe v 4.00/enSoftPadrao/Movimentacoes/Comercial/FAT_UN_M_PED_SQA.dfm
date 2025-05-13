object FAT_FM_M_PED_SQA: TFAT_FM_M_PED_SQA
  Left = 0
  Top = 0
  ClientHeight = 627
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 970
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
      Width = 970
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 970
        Height = 26
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alTop
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
        ExplicitWidth = 896
        ExplicitHeight = 30
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 25
      Width = 970
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
        Width = 965
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
    Width = 970
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
    ExplicitTop = 46
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
      Width = 970
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
      ExplicitTop = 3
    end
    object Label2: TLabel
      Left = 213
      Top = 265
      Width = 221
      Height = 21
      Caption = 'Qtde a retirar desse produto :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 256
      Top = 211
      Width = 178
      Height = 21
      Caption = 'Qtde atual do produto :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblEmAberto: TLabel
      Left = 20
      Top = 547
      Width = 75
      Height = 14
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Caption = 'Em aberto'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label27: TLabel
      Left = 101
      Top = 547
      Width = 78
      Height = 14
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Caption = 'Liberado'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 307
      Width = 941
      Height = 236
      TabOrder = 0
      object Label10: TLabel
        Left = 2
        Top = 15
        Width = 937
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
        ExplicitWidth = 853
      end
      object wwGrdItensSolicitados: TwwDBGrid
        Left = 2
        Top = 40
        Width = 937
        Height = 194
        TabStop = False
        ControlType.Strings = (
          'liberado_destinatario;CheckBox;True;False')
        Selected.Strings = (
          'id_item'#9'10'#9'C'#243'digo'#9'F'
          'int_nomeite'#9'35'#9'Descri'#231#227'o'#9'F'
          'int_nomecor'#9'15'#9'Cor'#9'F'
          'int_nomefun'#9'15'#9'Funcion'#225'rio'#9'F'#9'Solicitacao'
          'qtde_retirar_conf'#9'10'#9'Qtde solicitado'#9'F'#9'Solicitacao'
          'dta_solicitacao'#9'10'#9'Data'#9'F'#9'Solicitacao'
          'hora_solicitacao'#9'10'#9'Hora'#9'F'#9'Solicitacao'
          'dta_liberado'#9'10'#9'Data'#9'F'#9'Liberacao'
          'hora_liberado'#9'10'#9'Hora'#9'F'#9'Liberacao'
          'int_nomefct'#9'13'#9'Liberado por'#9'F'#9'Liberacao')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsPedSqa
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        PopupMenu = pmLib
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnCalcCellColors = wwGrdItensSolicitadosCalcCellColors
        object wwbtnGrdItens: TwwIButton
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
          OnClick = wwbtnGrdItensClick
        end
      end
    end
    object btnSair: TButton
      Left = 441
      Top = 546
      Width = 82
      Height = 33
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnSairClick
    end
    object grdItens: TwwDBGrid
      Left = 20
      Top = 45
      Width = 899
      Height = 110
      TabStop = False
      Selected.Strings = (
        'ID_ITEM'#9'10'#9'C'#243'digo'#9'F'
        'INT_NOMEITE'#9'45'#9'Descri'#231#227'o'#9'F'
        'int_nomecor'#9'10'#9'Cor'#9'F'
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
      Width = 899
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'pcp_obs_item'
      DataSource = dsPedtIten
      ReadOnly = True
      TabOrder = 3
      Visible = False
    end
    object btnSolicitar: TButton
      Left = 509
      Top = 259
      Width = 120
      Height = 32
      Caption = '&Solicitar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnSolicitarClick
    end
    object txtQtde: TwwDBEdit
      Left = 440
      Top = 207
      Width = 69
      Height = 29
      TabStop = False
      Color = 14342874
      DataField = 'QTDE'
      DataSource = dsPedtIten
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object txtQtdeRetirarConf: TSpinEdit
      Left = 440
      Top = 260
      Width = 69
      Height = 31
      Color = 14342874
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 4
      Value = 0
      OnChange = txtQtdeRetirarConfChange
    end
  end
  object dsPedSqa: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_PED_SQA
    Left = 856
    Top = 283
  end
  object dsPedtIten: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_PED_ITE
    Left = 31
    Top = 279
  end
  object pmLib: TPopupMenu
    Left = 744
    Top = 283
    object Liberaralteraoparaesteitem1: TMenuItem
      Caption = 'Liberar altera'#231#227'o para este item'
      OnClick = Liberaralteraoparaesteitem1Click
    end
  end
end
