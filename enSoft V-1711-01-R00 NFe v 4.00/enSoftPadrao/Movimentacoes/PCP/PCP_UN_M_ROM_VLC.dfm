object PCP_FM_M_ROM_VLC: TPCP_FM_M_ROM_VLC
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 180
  ClientWidth = 399
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
    Left = 25
    Top = 30
    Width = 43
    Height = 13
    Caption = 'Per'#237'odo :'
  end
  object Label2: TLabel
    Left = 168
    Top = 31
    Width = 16
    Height = 13
    Caption = 'at'#233
  end
  object lblOrde: TLabel
    Left = 17
    Top = 71
    Width = 52
    Height = 13
    Caption = 'Motorista :'
  end
  object deInicial: TJvDateEdit
    Left = 72
    Top = 27
    Width = 90
    Height = 21
    ShowNullDate = False
    TabOrder = 0
  end
  object deFinal: TJvDateEdit
    Left = 190
    Top = 27
    Width = 90
    Height = 21
    ShowNullDate = False
    TabOrder = 1
  end
  object cbbMotorista: TComboBox
    Left = 73
    Top = 68
    Width = 322
    Height = 22
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    Sorted = True
    TabOrder = 2
  end
  object btnSair: TButton
    Left = 320
    Top = 147
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 5
    OnClick = btnSairClick
  end
  object Button1: TButton
    Left = 245
    Top = 147
    Width = 75
    Height = 25
    Caption = '&Visualizar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object cbVisPed: TCheckBox
    Left = 72
    Top = 104
    Width = 129
    Height = 17
    Caption = 'Visualiza os pedidos'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object PCP_FR_M_VRE: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43776.703114363400000000
    ReportOptions.LastChange = 43776.703114363400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 132
    Datasets = <
      item
        DataSet = BUS_DB_R_ROM_VLC
        DataSetName = 'BUS_CD_R_ROM_VLC'
      end
      item
        DataSet = BUS_DB_R_ROM_VLC_PED
        DataSetName = 'BUS_CD_R_ROM_VLC_PED'
      end>
    Variables = <
      item
        Name = ' Externo'
        Value = Null
      end
      item
        Name = 'ft_vlr_carga'
        Value = Null
      end
      item
        Name = 'ft_periodo'
        Value = ''
      end
      item
        Name = 'ft_motorista'
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
        Height = 123.724490000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object imgEmpresa2: TfrxPictureView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 120.944960000000000000
          Height = 64.252010000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Top = 77.149660000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[ft_periodo]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 7.559060000000000000
          Top = 101.047310000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Motorista :')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 101.047310000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[ft_motorista]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSet = BUS_DB_R_ROM_VLC
        DataSetName = 'BUS_CD_R_ROM_VLC'
        RowCount = 0
        Stretched = True
        object BUS_CD_R_ROM_VLCid_rom: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'id_rom'
          DataSet = BUS_DB_R_ROM_VLC
          DataSetName = 'BUS_CD_R_ROM_VLC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC."id_rom"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLCdta_emissao: TfrxMemoView
          Left = 90.708720000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'dta_emissao'
          DataSet = BUS_DB_R_ROM_VLC
          DataSetName = 'BUS_CD_R_ROM_VLC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC."dta_emissao"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLCid_pca: TfrxMemoView
          Left = 173.858380000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = BUS_DB_R_ROM_VLC
          DataSetName = 'BUS_CD_R_ROM_VLC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC."id_pca"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLCvlr_carga: TfrxMemoView
          Left = 268.346630000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataSet = BUS_DB_R_ROM_VLC
          DataSetName = 'BUS_CD_R_ROM_VLC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC."vlr_carga"]')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 718.110700000000000000
          Height = 56.692950000000000000
        end
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Fill.BackColor = cl3DLight
        end
        object Memo7: TfrxMemoView
          Left = 264.567100000000000000
          Top = 7.559060000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Resumo das cargas')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 32.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Rel. de carga')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 90.708720000000000000
          Top = 32.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Criado em')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 173.858380000000000000
          Top = 32.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Carregamento')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 321.260050000000000000
          Top = 32.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        object Memo29: TfrxMemoView
          Left = 306.141930000000000000
          Top = 5.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<BUS_CD_R_ROM_VLC."vlr_carga">,MasterData3)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 260.787570000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object srptPedidos: TfrxSubreport
          Left = 3.000000000000000000
          Top = 41.574830000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Page = PCP_FR_M_VRE.Page2
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 283.464750000000000000
          Top = 20.456710000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 585.827150000000000000
          Top = 20.456710000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] / [Time]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 56.692950000000000000
        Width = 718.110700000000000000
        DataSet = BUS_DB_R_ROM_VLC
        DataSetName = 'BUS_CD_R_ROM_VLC'
        RowCount = 0
        object Shape4: TfrxShapeView
          Align = baClient
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Fill.BackColor = cl3DLight
        end
        object BUS_CD_R_ROM_VLCid_rom1: TfrxMemoView
          Left = 77.811070000000000000
          Top = 3.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'id_rom'
          DataSet = BUS_DB_R_ROM_VLC
          DataSetName = 'BUS_CD_R_ROM_VLC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC."id_rom"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLCdta_emissao1: TfrxMemoView
          Left = 189.417440000000000000
          Top = 3.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'dta_emissao'
          DataSet = BUS_DB_R_ROM_VLC
          DataSetName = 'BUS_CD_R_ROM_VLC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC."dta_emissao"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLCid_pca1: TfrxMemoView
          Left = 307.362400000000000000
          Top = 3.559060000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'id_pca'
          DataSet = BUS_DB_R_ROM_VLC
          DataSetName = 'BUS_CD_R_ROM_VLC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC."id_pca"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLCnome1: TfrxMemoView
          Left = 414.189240000000000000
          Top = 3.559060000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'nome'
          DataSet = BUS_DB_R_ROM_VLC
          DataSetName = 'BUS_CD_R_ROM_VLC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC."nome"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLCvlr_carga1: TfrxMemoView
          Left = 616.063390000000000000
          Top = 3.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = BUS_DB_R_ROM_VLC
          DataSetName = 'BUS_CD_R_ROM_VLC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC."vlr_carga"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 365.055350000000000000
          Top = 3.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Motorista :')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 563.149970000000000000
          Top = 3.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr carga :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 261.448980000000000000
          Top = 3.559060000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Carreg. :')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 132.842610000000000000
          Top = 3.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Emisss'#227'o :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 1.669295000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Rel. de carga :')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 11.338590000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        Stretched = True
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo8: TfrxMemoView
          Left = 7.559060000000000000
          Top = 28.015770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pedido')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 90.708720000000000000
          Top = 28.015770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 173.858380000000000000
          Top = 28.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 268.346630000000000000
          Top = 28.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 623.622450000000000000
          Top = 28.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 309.921460000000000000
          Top = 2.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pedidos da carga')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 487.559370000000000000
          Top = 28.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Representante')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = -0.220470000000000000
          Top = 23.677180000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = BUS_DB_R_ROM_VLC_PED
        DataSetName = 'BUS_CD_R_ROM_VLC_PED'
        RowCount = 0
        object BUS_CD_R_ROM_VLC_PEDid_pedido: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'id_pedido'
          DataSet = BUS_DB_R_ROM_VLC_PED
          DataSetName = 'BUS_CD_R_ROM_VLC_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC_PED."id_pedido"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLC_PEDdta_pedido: TfrxMemoView
          Left = 83.149660000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = BUS_DB_R_ROM_VLC_PED
          DataSetName = 'BUS_CD_R_ROM_VLC_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC_PED."dta_pedido"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLC_PEDnome: TfrxMemoView
          Left = 268.346630000000000000
          Top = 3.779530000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataField = 'nome'
          DataSet = BUS_DB_R_ROM_VLC_PED
          DataSetName = 'BUS_CD_R_ROM_VLC_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC_PED."nome"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLC_PEDvlr_liquido: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = BUS_DB_R_ROM_VLC_PED
          DataSetName = 'BUS_CD_R_ROM_VLC_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC_PED."vlr_liquido"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLC_PEDid_cliente: TfrxMemoView
          Left = 173.858380000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'id_cliente'
          DataSet = BUS_DB_R_ROM_VLC_PED
          DataSetName = 'BUS_CD_R_ROM_VLC_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC_PED."id_cliente"]')
          ParentFont = False
        end
        object BUS_CD_R_ROM_VLC_PEDint_nomeven: TfrxMemoView
          Left = 487.559370000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = BUS_DB_R_ROM_VLC_PED
          DataSetName = 'BUS_CD_R_ROM_VLC_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_CD_R_ROM_VLC_PED."int_nomeven"]')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Left = 608.504330000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<BUS_CD_R_ROM_VLC_PED."vlr_liquido">,DetailData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 597.165740000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object BUS_CD_R_ROM_VLC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_R_ROM_VLC'
    RemoteServer = dmGeral.pcConecao
    Left = 144
    object BUS_CD_R_ROM_VLCid_rom: TIntegerField
      FieldName = 'id_rom'
    end
    object BUS_CD_R_ROM_VLCid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_R_ROM_VLCdta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object BUS_CD_R_ROM_VLCid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object BUS_CD_R_ROM_VLCid_motorista: TIntegerField
      FieldName = 'id_motorista'
    end
    object BUS_CD_R_ROM_VLCobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object BUS_CD_R_ROM_VLCcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_R_ROM_VLCrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_R_ROM_VLCplaca: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object BUS_CD_R_ROM_VLClot_qtde_total: TFloatField
      FieldName = 'lot_qtde_total'
    end
    object BUS_CD_R_ROM_VLChor_emissao: TTimeField
      FieldName = 'hor_emissao'
    end
    object BUS_CD_R_ROM_VLChor_alt: TTimeField
      FieldName = 'hor_alt'
    end
    object BUS_CD_R_ROM_VLCid_resp_alt: TIntegerField
      FieldName = 'id_resp_alt'
    end
    object BUS_CD_R_ROM_VLCdta_alt: TDateField
      FieldName = 'dta_alt'
    end
    object BUS_CD_R_ROM_VLChor_fin: TTimeField
      FieldName = 'hor_fin'
    end
    object BUS_CD_R_ROM_VLCdta_fin: TDateField
      FieldName = 'dta_fin'
    end
    object BUS_CD_R_ROM_VLCid_resp_fin: TIntegerField
      FieldName = 'id_resp_fin'
    end
    object BUS_CD_R_ROM_VLCped_ite_qtde_total: TIntegerField
      FieldName = 'ped_ite_qtde_total'
    end
    object BUS_CD_R_ROM_VLCid_pca: TIntegerField
      FieldName = 'id_pca'
    end
    object BUS_CD_R_ROM_VLCqtde_total_ite_conf: TFloatField
      FieldName = 'qtde_total_ite_conf'
    end
    object BUS_CD_R_ROM_VLCnome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
    object BUS_CD_R_ROM_VLCvlr_carga: TFMTBCDField
      FieldName = 'vlr_carga'
      Precision = 32
    end
    object BUS_CD_R_ROM_VLCBUS_SQ_R_ROM_VLC_PED: TDataSetField
      FieldName = 'BUS_SQ_R_ROM_VLC_PED'
    end
  end
  object BUS_CD_R_ROM_VLC_PED: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_R_ROM_VLCBUS_SQ_R_ROM_VLC_PED
    Params = <>
    Left = 144
    Top = 48
    object BUS_CD_R_ROM_VLC_PEDid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object BUS_CD_R_ROM_VLC_PEDdta_pedido: TDateField
      FieldName = 'dta_pedido'
    end
    object BUS_CD_R_ROM_VLC_PEDnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object BUS_CD_R_ROM_VLC_PEDvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_R_ROM_VLC_PEDid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object BUS_CD_R_ROM_VLC_PEDint_nomeven: TWideStringField
      FieldName = 'int_nomeven'
      ProviderFlags = []
      Size = 50
    end
  end
  object BUS_DB_R_ROM_VLC: TfrxDBDataset
    UserName = 'BUS_CD_R_ROM_VLC'
    CloseDataSource = False
    DataSet = BUS_CD_R_ROM_VLC
    BCDToCurrency = False
    Left = 328
  end
  object BUS_DB_R_ROM_VLC_PED: TfrxDBDataset
    UserName = 'BUS_CD_R_ROM_VLC_PED'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_pedido=id_pedido'
      'dta_pedido=dta_pedido'
      'nome=nome'
      'vlr_liquido=vlr_liquido'
      'id_cliente=id_cliente'
      'int_nomeven=int_nomeven')
    DataSet = BUS_CD_R_ROM_VLC_PED
    BCDToCurrency = False
    Left = 328
    Top = 56
  end
end
