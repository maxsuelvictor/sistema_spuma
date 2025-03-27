object FAT_FM_M_NFE_IPQ: TFAT_FM_M_NFE_IPQ
  Left = 0
  Top = 0
  ClientHeight = 464
  ClientWidth = 798
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
    Width = 798
    Height = 33
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 4
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Importa'#231#227'o de Inspe'#231#227'o de Itens'
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
    Width = 798
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
    object lblSelInspecao: TLabel
      Left = 320
      Top = 393
      Width = 358
      Height = 21
      Caption = '"Nenhuma inspe'#231#227'o selicionada no momento"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 785
      Height = 372
      TabOrder = 0
      object Label1: TLabel
        Left = 346
        Top = 175
        Width = 93
        Height = 13
        Caption = 'Itens da Inspe'#231#227'o '
      end
      object Label2: TLabel
        Left = 367
        Top = 7
        Width = 51
        Height = 13
        Caption = 'Inspe'#231#245'es'
      end
      object dbGrid: TwwDBGrid
        AlignWithMargins = True
        Left = 7
        Top = 23
        Width = 770
        Height = 142
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Selected.Strings = (
          'id_iqm'#9'17'#9'Controle'#9'F'
          'dta_recebimento'#9'21'#9'Recebimento'#9'F'
          'dta_emissao_nf'#9'20'#9'Emiss'#227'o NF'#9'F'
          'numero_nf'#9'33'#9'N'#250'mero NF'#9'F'
          'serie'#9'5'#9'S'#233'rie'#9'F'
          'id_pedido_compra'#9'29'#9'Pedido de compra'#9'F'
          'sub_serie'#9'15'#9'Sub-s'#233'rie'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsIqm
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
        Left = 7
        Top = 191
        Width = 770
        Height = 174
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        Selected.Strings = (
          'id_sequencia'#9'10'#9'Sequ'#234'ncia'#9'F'
          'id_item'#9'10'#9'C'#243'digo'#9'F'
          'int_nomeite'#9'39'#9'Descri'#231#227'o'#9'F'
          'int_undcom'#9'4'#9'Und'#9'F'
          'int_nomecor'#9'16'#9'Cor'#9'F'
          'int_nometam'#9'12'#9'Tamanho'#9'F'
          'qtde'#9'9'#9'Qtde'#9'F'
          'dta_inspecao'#9'17'#9'Inspecionado em'#9'F'
          'int_nomeres'#9'20'#9'Respons'#225'vel'#9'F')
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
  object dsIqm: TDataSource
    DataSet = dmGeral.BUS_CD_M_IQM
    Left = 632
    Top = 275
  end
  object dsCmpPedItens: TDataSource
    DataSet = dmGeral.BUS_CD_M_IQM_ITE
    Left = 728
    Top = 275
  end
end
