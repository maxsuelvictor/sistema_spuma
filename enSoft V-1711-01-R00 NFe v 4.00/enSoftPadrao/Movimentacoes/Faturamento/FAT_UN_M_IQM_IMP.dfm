object FAT_FM_M_IQM_IMP: TFAT_FM_M_IQM_IMP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 310
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 613
    Height = 30
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 611
      Height = 28
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Imprimir Etiquetas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 398
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 30
    Width = 613
    Height = 280
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object lblSelecionarTodos: TLabel
      Left = 27
      Top = 13
      Width = 81
      Height = 13
      Caption = 'Selecionar Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lblSelecionarTodosClick
    end
    object lblDesmarcarTodos: TLabel
      Left = 130
      Top = 13
      Width = 83
      Height = 13
      Caption = 'Desmarcar Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lblDesmarcarTodosClick
    end
    object dgEtq: TwwDBGrid
      Left = 16
      Top = 32
      Width = 585
      Height = 201
      ControlType.Strings = (
        'int_selecao;CheckBox;True;False')
      Selected.Strings = (
        'int_selecao'#9'3'#9#9'F'
        'id_item'#9'12'#9'C'#243'digo'#9'T'
        'int_nomeite'#9'35'#9'Item'#9'T'
        'int_undcom'#9'4'#9'UND'#9'T'
        'int_nomecor'#9'14'#9'Cor'#9'T'
        'int_nometam'#9'7'#9'Tamanho'#9'T'
        'int_qtdeimprimir'#9'9'#9'Qtde'#9'F')
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
      UseTFields = False
    end
    object btnImprimir: TcxButton
      Left = 370
      Top = 246
      Width = 110
      Height = 25
      Caption = 'Imprimir'
      OptionsImage.Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        000000000000010101071D1D1D8F333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF1D1D
        1D8F010101070000000000000000000000000000000000000000000000001717
        1773333333FF2A2A2AD2252525B9252525B9252525B9252525B9252525B92525
        25B9252525B9252525B9252525B9252525B92C2C2CDD333333FF171717730000
        00000000000000000000000000000000000000000000222222A9333333FF0606
        061C000000000000000000000000000000000000000000000000000000000000
        000000000000000000000808082A333333FF222222A900000000000000000000
        00000000000000000000000000002020209F333333FF020202080606061E2020
        20A0202020A0202020A0202020A0202020A01A1A1A8202020208000000000000
        000004040413333333FF2020209F000000000000000000000000000000000000
        000000000001202020A1333333FF010101030A0A0A33333333FF333333FF3333
        33FF333333FF333333FF2C2C2CDE0000000200000000000000000606061C3333
        33FF202020A10000000100000000000000000909092D282828C72D2D2DE33131
        31F5333333FE050505170202020A0B0B0B380B0B0B380B0B0B380B0B0B380B0B
        0B380A0A0A330606061D0606061C0202020B0505051B333333FE313131F52D2D
        2DE3282828C70909092D292929CB333333FF333333FF333333FF333333FE0101
        01030A0A0A33333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF1616166C03030311323232FB333333FF333333FF333333FF2929
        29CB313131F7333333FF333333FF333333FF333333FE0303030E0606061E2020
        20A0202020A0202020A0202020A0202020A0202020A0202020A0202020A00C0C
        0C3C04040416323232FC333333FF333333FF333333FF313131F7303030F13333
        33FF333333FF333333FF333333FE010101040000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000023333
        33FE333333FF333333FF333333FF303030F1303030F1333333FF333333FF3333
        33FF333333FF252525BB242424B3242424B3242424B3242424B3242424B32424
        24B3242424B3242424B3242424B3242424B3252525BB333333FF333333FF3333
        33FF333333FF303030F1303030F1333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FD323232FA333333FF333333FF3030
        30F1303030F1333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF323232F91616166D0D0D0D402B2B2BD5333333FF303030F1323232F83333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF313131F30808
        082900000000252525B8333333FF323232F8303030F1333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF272727C2212121A73131
        31F5333333FF303030F11212125B333333FD333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FD1212
        125B000000000909092D0C0C0C3A242424B6333333FF101010500C0C0C3A0C0C
        0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C
        0C3A10101050333333FF242424B60C0C0C3A0909092D00000000000000000000
        0000000000001E1E1E97333333FF020202080000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020202083333
        33FF1E1E1E970000000000000000000000000000000000000000000000002020
        20A0333333FF0606061C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000606061C333333FF202020A00000
        00000000000000000000000000000000000000000000202020A0333333FF0404
        0416000000000000000000000000000000000000000000000000000000000000
        0000000000000000000004040413333333FF202020A000000000000000000000
        0000000000000000000000000000222222A9333333FF05050519000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000808082A333333FF222222A9000000000000000000000000000000000000
        00000000000017171773333333FF2A2A2AD2252525B9252525B9252525B92525
        25B9252525B9252525B9252525B9252525B9252525B9252525B92C2C2CDD3333
        33FF171717730000000000000000000000000000000000000000000000000101
        01071D1D1D8F333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF1D1D1D8F010101070000
        00000000000000000000}
      TabOrder = 1
      OnClick = btnImprimirClick
    end
    object btnSair: TcxButton
      Left = 488
      Top = 246
      Width = 110
      Height = 25
      Caption = 'Sair'
      OptionsImage.Glyph.Data = {
        46030000424D460300000000000036000000280000000E0000000E0000000100
        2000000000001003000000000000000000000000000000000000000000000000
        000000000000000000000000000002020208252525BC17171774060606210000
        0000000000000000000000000000000000000000000000000000000000000000
        00001E1E1E981313135F2F2F2FEF323232FF2F2F2FF2222222AE101010530000
        0000000000000000000000000000000000000000000000000000323232FF1E1E
        1E9B2B2B2BDD323232FF323232FF323232FF303030F700000000000000000000
        000000000000000000000000000000000000323232FD1D1D1D932C2C2CDE3232
        32FF323232FF323232FF2F2F2FF1000000000000000000000000000000000000
        00000000000000000000323232FD1D1D1D932C2C2CDE323232FF323232FF3232
        32FF2F2F2FF00000000000000000000000000000000000000000000000000000
        0000323232FD1D1D1D922D2D2DE7323232FF323232FF323232FF2F2F2FF00000
        0000000000000000000000000000000000000000000000000000323232FD1F1F
        1F9C1D1D1D94242424B8323232FF323232FF2F2F2FF000000000000000000000
        000000000000000000000000000000000000323232FD1F1F1F9C1D1D1D942424
        24B8323232FF323232FF2F2F2FF0000000000000000000000000000000000000
        00000000000000000000323232FD1D1D1D922D2D2DE7323232FF323232FF3232
        32FF2F2F2FF00000000000000000000000000000000000000000000000000000
        0000323232FD1D1D1D932C2C2CDE323232FF323232FF323232FF2F2F2FF00000
        0000000000000000000000000000000000000000000000000000323232FD1D1D
        1D932C2C2CDE323232FF323232FF323232FF2F2F2FF000000000000000000000
        000000000000000000000000000000000000323232FF1E1E1E9B2B2B2BDD3232
        32FF323232FF323232FF313131FB000000000000000000000000000000000000
        000000000000000000001E1E1E981212125E2F2F2FEE323232FF323232FF2E2E
        2EED222222AC0000000000000000000000000000000000000000000000000000
        00000000000001010107272727C51D1D1D961010105105050517000000000000
        00000000000000000000}
      TabOrder = 2
      OnClick = btnSairClick
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_IQM_ITE
    Left = 504
    Top = 110
  end
  object cdsEtiquetas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 174
    object cdsEtiquetasNUM_LOTE: TStringField
      FieldName = 'NUM_LOTE'
      Size = 15
    end
    object cdsEtiquetasDTA_RECEBIMENTO: TDateField
      FieldName = 'DTA_RECEBIMENTO'
    end
    object cdsEtiquetasNUMERO_NF: TIntegerField
      FieldName = 'NUMERO_NF'
    end
    object cdsEtiquetasITEM: TStringField
      FieldName = 'ITEM'
      Size = 150
    end
  end
  object FAT_FR_R_IQM_ETQ: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42157.442432453700000000
    ReportOptions.LastChange = 45491.480484224540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Page1.PaperHeight := MasterData1.Height*<ft_qtde>;           ' +
        '                                                                ' +
        '             '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 170
    Datasets = <
      item
        DataSet = FAT_DB_R_IQM_ETQ
        DataSetName = 'FAT_DB_R_IQM_ETQ'
      end>
    Variables = <
      item
        Name = ' Externo'
        Value = Null
      end
      item
        Name = 'ft_qtde'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 89.000000000000000000
      PaperHeight = 152.000000000000000000
      PaperSize = 256
      EndlessHeight = True
      EndlessWidth = True
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 113.385826770000000000
        Top = 18.897650000000000000
        Width = 336.378170000000000000
        DataSet = FAT_DB_R_IQM_ETQ
        DataSetName = 'FAT_DB_R_IQM_ETQ'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 51.236220470000000000
          Width = 287.244077400000000000
          Height = 18.897588980000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Light Condensed'
          Font.Style = []
          Memo.UTF8W = (
            
              'Nota Fiscal: [FAT_DB_R_IQM_ETQ."NUMERO_NF"]  -  N'#186' Lote: [FAT_DB' +
              '_R_IQM_ETQ."NUM_LOTE"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object PCP_DB_R_Q01ITEM: TfrxMemoView
          Left = 15.118120000000000000
          Top = 12.669291340000000000
          Width = 287.244077400000000000
          Height = 37.795300000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Bahnschrift Light Condensed'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_DB_R_IQM_ETQ."ITEM"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 25.897650000000000000
          Top = 6.779530000000000000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Style = fsDashDot
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 25.897650000000000000
          Top = 96.267780000000000000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Style = fsDashDot
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 71.692950000000000000
          Width = 287.244077400000000000
          Height = 18.897588980000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Light Condensed'
          Font.Style = []
          Memo.UTF8W = (
            'Data: [FAT_DB_R_IQM_ETQ."DTA_RECEBIMENTO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
    end
  end
  object FAT_DB_R_IQM_ETQ: TfrxDBDataset
    UserName = 'FAT_DB_R_IQM_ETQ'
    CloseDataSource = False
    DataSet = cdsEtiquetas
    BCDToCurrency = False
    Left = 429
    Top = 106
  end
end
