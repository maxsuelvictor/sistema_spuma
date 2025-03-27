object FIN_FM_M_PDE: TFIN_FM_M_PDE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 512
  ClientWidth = 626
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 626
    Height = 30
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 5
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pequenas Despesas'
    Color = 3158064
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitLeft = -16
    ExplicitTop = 5
    ExplicitWidth = 508
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 626
    Height = 477
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlCentral: TPanel
      Left = 10
      Top = 3
      Width = 599
      Height = 462
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 17
        Top = 18
        Width = 106
        Height = 13
        Caption = 'Data de Lan'#231'amento :'
      end
      object Label3: TLabel
        Left = 38
        Top = 94
        Width = 85
        Height = 13
        Caption = 'Plano de Contas :'
      end
      object Label4: TLabel
        Left = 75
        Top = 67
        Width = 48
        Height = 13
        Caption = 'Hist'#243'rico :'
      end
      object Label5: TLabel
        Left = 42
        Top = 122
        Width = 81
        Height = 13
        Caption = 'Vlr.Lan'#231'amento :'
      end
      object Label8: TLabel
        AlignWithMargins = True
        Left = 1
        Top = 157
        Width = 576
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Lan'#231'amentos'
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label50: TLabel
        Left = 61
        Top = 44
        Width = 62
        Height = 13
        Caption = 'Fornecedor :'
      end
      object txtPctDescPadrao: TDBText
        Left = 211
        Top = 40
        Width = 337
        Height = 21
        Color = 14342874
        DataField = 'int_nomefor'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object dpkData: TJvDBDateEdit
        Left = 129
        Top = 15
        Width = 98
        Height = 21
        TabStop = False
        DataField = 'DtaLancto'
        DataSource = dso
        ReadOnly = True
        Color = 14342874
        ShowNullDate = False
        TabOrder = 0
      end
      object txtHistorico: TDBEdit
        Left = 129
        Top = 64
        Width = 352
        Height = 21
        DataField = 'historico'
        DataSource = dso
        TabOrder = 2
        OnExit = txtHistoricoExit
      end
      object cbbPlanoContas: TwwDBLookupCombo
        Left = 129
        Top = 91
        Width = 167
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
          'id_plano'#9'11'#9'C'#243'digo'#9'F')
        DataField = 'idplano'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_PCT
        LookupField = 'id_plano'
        Style = csDropDownList
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbPlanoContasEnter
      end
      object btnSair: TBitBtn
        Left = 300
        Top = 418
        Width = 85
        Height = 40
        Caption = '&Sair'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF5A5A5AACACACF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF3232323232323C3C3C838383D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF3232323232323232323232323232325A5A5AACACACF5F5F5FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF3232323232323232323232323232323232323232323C3C3C838383D5D5D5FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232F3F3F3F3F3F3323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232F3F3F3F3F3F3323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFF
          FF323232323232323232323232323232323232323232323232323232323232FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF323232323232323232323232323232323232353535666666A3A3A3E1E1E1FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF3232323232323232324040407A7A7AB8B8B8F1F1F1FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF5151518F8F8FCCCCCCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 6
        OnClick = btnSairClick
      end
      object btnGravar: TBitBtn
        Left = 213
        Top = 418
        Width = 83
        Height = 40
        Caption = '&Gravar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000010170000101700000000000000000000B5B5B54F4F4F
          8585859494949191919191919191919191919191919191919191919191919494
          948585854F4F4FB5B5B54141414D4D4DFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC4D4D4D414141363636595959
          FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFDFDFD595959363636393939585858FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB585858393939393939585858
          FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBFBFB585858393939393939585858FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB5858583939393939395A5A5A
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF5A5A5A3939393A3A3A494949E5E5E5F3F3F3F3F3F3F3F3F3F3F3F3F3
          F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E5E5E54949493A3A3A3F3F3F333333
          3C3C3C3B3B3B3939393939393939393939393939393939393939393939393E3E
          3E3C3C3C3333333F3F3F3F3F3F33333333333345454559595958585858585858
          58585858586161616565655454543333333333333333333F3F3F3F3F3F333333
          393939D7D7D7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBAAAAAA919191EDEDED6E6E
          6E3333333333333F3F3F3F3F3F3333333B3B3BE8E8E8FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF5E5E5E333333EAEAEA7F7F7F3333333333333D3D3D3F3F3F333333
          3B3B3BE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666343434E9E9E97D7D
          7D3333333333334545453D3D3D3333333B3B3BE6E6E6FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF616161333333E9E9E97E7E7E333333333333A5A5A5484848333333
          363636E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949494707070F2F2F27171
          71333333959595FFFFFFB7B7B74D4D4D40404077777795959591919191919191
          91919191919191919393938C8C8C525252A3A3A3FFFFFFFFFFFF}
        TabOrder = 5
        OnClick = btnGravarClick
      end
      object wwDBGrid1: TwwDBGrid
        Left = 1
        Top = 184
        Width = 576
        Height = 217
        TabStop = False
        Selected.Strings = (
          'DtaLancto'#9'18'#9'Data'
          'historico'#9'44'#9'historico'#9'F'
          'idplano'#9'13'#9'Plano de Contas'
          'vlrlancto'#9'12'#9'Valor')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = 14342874
        DataSource = dso
        ReadOnly = True
        TabOrder = 7
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object txtVlrLancamento: TwwDBEdit
        Left = 129
        Top = 118
        Width = 121
        Height = 21
        DataField = 'vlrlancto'
        DataSource = dso
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object btnVisPct: TButton
        Left = 336
        Top = 89
        Width = 145
        Height = 25
        Caption = 'Visualizar Plano de Contas'
        TabOrder = 8
        OnClick = btnVisPctClick
      end
      object txtFornecedor: TJvDBComboEdit
        Left = 129
        Top = 40
        Width = 82
        Height = 21
        ClickKey = 114
        DataField = 'id_fornecedor'
        DataSource = dso
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
        TabOrder = 1
        OnButtonClick = txtFornecedorButtonClick
        OnExit = txtFornecedorExit
      end
    end
  end
  object dso: TwwDataSource
    DataSet = cdsTempPeqDesp
    Left = 510
    Top = 155
  end
  object cdsTempPeqDesp: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsTempPeqDespNewRecord
    Left = 434
    Top = 150
    object cdsTempPeqDespDtaLancto: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 18
      FieldName = 'DtaLancto'
    end
    object cdsTempPeqDesphistorico: TStringField
      DisplayWidth = 44
      FieldName = 'historico'
      Size = 100
    end
    object cdsTempPeqDespidplano: TStringField
      DisplayLabel = 'Plano de Contas'
      DisplayWidth = 13
      FieldName = 'idplano'
      Size = 11
    end
    object cdsTempPeqDespvlrlancto: TCurrencyField
      DisplayLabel = 'Valor'
      DisplayWidth = 12
      FieldName = 'vlrlancto'
      DisplayFormat = '0.00'
      currency = False
    end
    object cdsTempPeqDespid_fornecedor: TStringField
      FieldName = 'id_fornecedor'
      Size = 10
    end
    object cdsTempPeqDespint_nomefor: TStringField
      FieldName = 'int_nomefor'
    end
  end
  object CAD_DB_R_PCT: TfrxDBDataset
    UserName = 'CAD_DB_R_PCT'
    CloseDataSource = False
    DataSet = CAD_CD_R_PCT
    BCDToCurrency = False
    Left = 578
    Top = 96
  end
  object CAD_FR_R_PCT: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.500000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41822.420257245400000000
    ReportOptions.LastChange = 41835.722833599500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <CAD_DB_R_PCT."tipo"> = 1 then'
      '  begin'
      '  CAD_DB_R_PCTid_plano.Font.Style := fsbold;'
      '  CAD_DB_R_PCTdescricao.Font.Style := fsbold;      '
      '  CAD_DB_R_PCTint_tipo.Font.Style := fsbold;'
      '  CAD_DB_R_PCTint_tipodesp.Font.Style := fsbold;        '
      '  CAD_DB_R_PCTint_tipomov.Font.Style := fsbold;        '
      '  end'
      '  else'
      '  begin'
      '  CAD_DB_R_PCTid_plano.Font.Style := nil;      '
      '  CAD_DB_R_PCTdescricao.Font.Style := nil;'
      '  CAD_DB_R_PCTint_tipo.Font.Style := nil;'
      '  CAD_DB_R_PCTint_tipodesp.Font.Style := nil;        '
      '  CAD_DB_R_PCTint_tipomov.Font.Style := nil;      '
      '  end;            '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 578
    Top = 40
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = CAD_DB_R_PCT
        DataSetName = 'CAD_DB_R_PCT'
      end>
    Variables = <
      item
        Name = ' Externo'
        Value = Null
      end
      item
        Name = 'ft_codlme'
        Value = ''
      end
      item
        Name = 'Assin_enorth'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = 3.559060000000000000
          Top = 27.456710000000000000
          Width = 593.386210000000000000
          Color = clBlack
          ArrowSolid = True
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 385.512060000000000000
          Height = 22.677180000000000000
          DataField = 'emp_fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_fantasia"]')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 603.504330000000000000
          Top = 2.338590000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.779530000000000000
          Width = 400.984540000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Plano de Contas - Listagem de Plano de Contas')
          ParentFont = False
        end
        object ft_codlme: TfrxMemoView
          Left = 427.188976380000000000
          Top = 6.102350000000000000
          Width = 170.078740160000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ft_codlme]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Shape1: TfrxShapeView
          Left = 2.559060000000000000
          Top = 1.000000000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15395562
          Frame.Color = 15395562
        end
        object Memo3: TfrxMemoView
          Left = 7.338590000000000000
          Top = 2.779530000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 68.031540000000000000
          Top = 2.779530000000000000
          Width = 374.173470000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 452.323130000000000000
          Top = 2.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 506.457020000000000000
          Top = 2.559060000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Natureza do Plano')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 612.268090000000000000
          Top = 2.779530000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo de despesa')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = CAD_DB_R_PCT
        DataSetName = 'CAD_DB_R_PCT'
        RowCount = 0
        object CAD_DB_R_PCTint_tipo: TfrxMemoView
          Left = 449.764070000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataField = 'int_tipo'
          DataSet = CAD_DB_R_PCT
          DataSetName = 'CAD_DB_R_PCT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CAD_DB_R_PCT."int_tipo"]')
          ParentFont = False
        end
        object CAD_DB_R_PCTint_tipomov: TfrxMemoView
          Left = 612.283860000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataField = 'int_tipomov'
          DataSet = CAD_DB_R_PCT
          DataSetName = 'CAD_DB_R_PCT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CAD_DB_R_PCT."int_tipomov"]')
          ParentFont = False
        end
        object CAD_DB_R_PCTdescricao: TfrxMemoView
          Left = 68.031540000000000000
          Width = 374.173470000000000000
          Height = 15.118110240000000000
          DataField = 'descricao'
          DataSet = CAD_DB_R_PCT
          DataSetName = 'CAD_DB_R_PCT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_R_PCT."descricao"]')
          ParentFont = False
        end
        object CAD_DB_R_PCTid_plano: TfrxMemoView
          Left = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          DataField = 'id_plano'
          DataSet = CAD_DB_R_PCT
          DataSetName = 'CAD_DB_R_PCT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CAD_DB_R_PCT."id_plano"]')
          ParentFont = False
        end
        object CAD_DB_R_PCTint_tipodesp: TfrxMemoView
          Left = 506.457020000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataField = 'int_tipodesp'
          DataSet = CAD_DB_R_PCT
          DataSetName = 'CAD_DB_R_PCT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CAD_DB_R_PCT."int_tipodesp"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Assin_enorth: TfrxMemoView
          Left = 7.559060000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 287.244280000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 619.842920000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        Stretched = True
      end
    end
  end
  object CAD_CD_R_PCT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_R_PCT'
    RemoteServer = dmGeral.pcConecao
    Left = 578
    Top = 147
  end
end
