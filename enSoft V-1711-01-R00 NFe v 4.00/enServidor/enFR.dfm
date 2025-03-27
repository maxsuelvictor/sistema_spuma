object FR: TFR
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 508
  Width = 767
  object CSU_FR_R_GER_FVN: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43090.487376261580000000
    ReportOptions.LastChange = 43090.487376261580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 56
    Top = 368
    Datasets = <
      item
        DataSet = CAD_DB_C_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = CSU_DB_M_GER_FVN
        DataSetName = 'CSU_DB_M_GER_FVN'
      end
      item
        DataSet = CSU_DB_M_GER_FVN_MED
        DataSetName = 'CSU_DB_M_GER_FVN_MED'
      end
      item
        DataSet = CSU_DB_M_GER_NCL
        DataSetName = 'CSU_DB_M_GER_NCL'
      end>
    Variables = <
      item
        Name = ' Externo'
        Value = Null
      end
      item
        Name = 'dia'
        Value = ''
      end
      item
        Name = 'mes'
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
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 574.488560000000000000
          Color = clBlack
          ArrowSolid = True
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 385.512060000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ger'#234'ncial de Vendas')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 52.913420000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CAD_DB_C_PARemp_fantasia: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 385.512060000000000000
          Height = 26.456710000000000000
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
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 34.118120000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Fill.BackColor = 15395562
          Frame.Color = 15395562
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.000000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd. Vendedor')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 95.370130000000000000
          Top = 18.000000000000000000
          Width = 213.086580000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 519.960730000000000000
          Top = 18.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Bruto')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 586.000000000000000000
          Top = 18.039270000000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Desconto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 652.000000000000000000
          Top = 18.039270000000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. L'#237'quido')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 520.000000000000000000
          Top = 2.039270000000000000
          Width = 196.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#234's [mes]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 337.000000000000000000
          Top = 2.039270000000000000
          Width = 175.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Dia [dia]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 337.000000000000000000
          Top = 18.000000000000000000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Bruto')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 396.039270000000000000
          Top = 18.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Desconto')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 455.039270000000000000
          Top = 18.039270000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. L'#237'quido')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.464430240000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = CSU_DB_M_GER_FVN
        DataSetName = 'CSU_DB_M_GER_FVN'
        RowCount = 0
        object CSU_DB_M_GER_FVNint_cod_vnd: TfrxMemoView
          Left = 3.779527560000000000
          Top = 0.346320000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          DataField = 'int_cod_vnd'
          DataSet = CSU_DB_M_GER_FVN
          DataSetName = 'CSU_DB_M_GER_FVN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN."int_cod_vnd"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVNint_nomevnd: TfrxMemoView
          Left = 96.267780000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          DataField = 'int_nomevnd'
          DataSet = CSU_DB_M_GER_FVN
          DataSetName = 'CSU_DB_M_GER_FVN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN."int_nomevnd"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVNvlr_bruto_dia: TfrxMemoView
          Left = 336.378170000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_M_GER_FVN
          DataSetName = 'CSU_DB_M_GER_FVN'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN."vlr_bruto_dia"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVNvlr_desconto_dia: TfrxMemoView
          Left = 397.000000000000000000
          Top = 0.346320000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_GER_FVN
          DataSetName = 'CSU_DB_M_GER_FVN'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN."vlr_desconto_dia"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVNvlr_liquido_dia: TfrxMemoView
          Left = 456.000000000000000000
          Top = 0.346320000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_GER_FVN
          DataSetName = 'CSU_DB_M_GER_FVN'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN."vlr_liquido_dia"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVNvlr_bruto_msl: TfrxMemoView
          Left = 520.062992130000000000
          Top = 0.346320000000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_GER_FVN
          DataSetName = 'CSU_DB_M_GER_FVN'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN."vlr_bruto_msl"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVNvlr_desconto_msl: TfrxMemoView
          Left = 585.000000000000000000
          Top = 0.346320000000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_GER_FVN
          DataSetName = 'CSU_DB_M_GER_FVN'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN."vlr_desconto_msl"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVNvlr_liquido_msl: TfrxMemoView
          Left = 650.000000000000000000
          Top = 0.346320000000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_GER_FVN
          DataSetName = 'CSU_DB_M_GER_FVN'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN."vlr_liquido_msl"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 264.567100000000000000
          Width = 188.976500000000000000
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
          Left = 604.724800000000000000
          Width = 113.385900000000000000
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
        object Assin_enorth: TfrxMemoView
          Left = 3.779530000000000000
          Width = 252.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Assin_enorth]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        DataSet = CSU_DB_M_GER_FVN_MED
        DataSetName = 'CSU_DB_M_GER_FVN_MED'
        RowCount = 0
        object CSU_DB_M_GER_FVN_MEDVLR_BRUTO_DIA: TfrxMemoView
          Left = 336.378170000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_M_GER_FVN_MED
          DataSetName = 'CSU_DB_M_GER_FVN_MED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN_MED."VLR_BRUTO_DIA"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVN_MEDVLR_DESCONTO_DIA: TfrxMemoView
          Left = 396.850650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_M_GER_FVN_MED
          DataSetName = 'CSU_DB_M_GER_FVN_MED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN_MED."VLR_DESCONTO_DIA"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVN_MEDVLR_LIQUIDO_DIA: TfrxMemoView
          Left = 457.323130000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_M_GER_FVN_MED
          DataSetName = 'CSU_DB_M_GER_FVN_MED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN_MED."VLR_LIQUIDO_DIA"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVN_MEDVLR_BRUTO_MSL: TfrxMemoView
          Left = 521.575140000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_M_GER_FVN_MED
          DataSetName = 'CSU_DB_M_GER_FVN_MED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN_MED."VLR_BRUTO_MSL"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVN_MEDVLR_DESCONTO_MSL: TfrxMemoView
          Left = 585.827150000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_M_GER_FVN_MED
          DataSetName = 'CSU_DB_M_GER_FVN_MED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN_MED."VLR_DESCONTO_MSL"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_FVN_MEDVLR_LIQUIDO_MSL: TfrxMemoView
          Left = 650.079160000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_M_GER_FVN_MED
          DataSetName = 'CSU_DB_M_GER_FVN_MED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_GER_FVN_MED."VLR_LIQUIDO_MSL"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 187.110390000000000000
          Width = 145.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total m'#233'dio por vendedor:')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 15.677180000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        DataSet = CSU_DB_M_GER_NCL
        DataSetName = 'CSU_DB_M_GER_NCL'
        RowCount = 0
        object CSU_DB_M_GER_NCLnum_cliente_dia: TfrxMemoView
          Left = 340.157700000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'num_cliente_dia'
          DataSet = CSU_DB_M_GER_NCL
          DataSetName = 'CSU_DB_M_GER_NCL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CSU_DB_M_GER_NCL."num_cliente_dia"]')
          ParentFont = False
        end
        object CSU_DB_M_GER_NCLnum_cliente_msl: TfrxMemoView
          Left = 517.795610000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          DataField = 'num_cliente_msl'
          DataSet = CSU_DB_M_GER_NCL
          DataSetName = 'CSU_DB_M_GER_NCL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CSU_DB_M_GER_NCL."num_cliente_msl"]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 16.677180000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 238.000000000000000000
          Top = 0.551020000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Geral:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 650.078740160000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<CSU_DB_M_GER_FVN."vlr_liquido_msl">,MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 585.070866141732000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<CSU_DB_M_GER_FVN."vlr_desconto_msl">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 520.062992125984000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<CSU_DB_M_GER_FVN."vlr_bruto_msl">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 456.188976380000000000
          Top = 0.551020000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<CSU_DB_M_GER_FVN."vlr_liquido_dia">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 396.850393700000000000
          Top = 0.551020000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<CSU_DB_M_GER_FVN."vlr_desconto_dia">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 336.377952760000000000
          Top = 0.551020000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<CSU_DB_M_GER_FVN."vlr_bruto_dia">,MasterData1)]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 41.677180000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 338.000000000000000000
          Top = 2.960420000000000000
          Width = 380.110700000000000000
          Height = 34.015770000000000000
          Fill.BackColor = 15395562
          Frame.Color = 15395562
        end
        object Memo20: TfrxMemoView
          Left = 339.000000000000000000
          Top = 3.960420000000000000
          Width = 377.267780000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero de Clientes Atendidos')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 339.000000000000000000
          Top = 19.960420000000000000
          Width = 175.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dia [dia]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 519.000000000000000000
          Top = 19.960420000000000000
          Width = 196.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#234's [mes]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 29.677180000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        object txtOpcoesRelGer: TfrxMemoView
          Left = 5.000000000000000000
          Top = 2.645330000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[Opcoes]')
          ParentFont = False
        end
      end
    end
  end
  object CSU_DB_M_GER_FVN: TfrxDBDataset
    UserName = 'CSU_DB_M_GER_FVN'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'int_nomeemp=int_nomeemp'
      'int_cod_vnd=int_cod_vnd'
      'int_nomevnd=int_nomevnd'
      'vlr_bruto_dia=vlr_bruto_dia'
      'vlr_desconto_dia=vlr_desconto_dia'
      'vlr_liquido_dia=vlr_liquido_dia'
      'vlr_bruto_msl=vlr_bruto_msl'
      'vlr_desconto_msl=vlr_desconto_msl'
      'vlr_liquido_msl=vlr_liquido_msl')
    DataSet = CSU_CD_M_GER_FVN
    BCDToCurrency = False
    Left = 188
    Top = 256
  end
  object CSU_DB_M_GER_NCL: TfrxDBDataset
    UserName = 'CSU_DB_M_GER_NCL'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'int_nomeemp=int_nomeemp'
      'num_cliente_dia=num_cliente_dia'
      'num_cliente_msl=num_cliente_msl')
    DataSet = CSU_CD_M_GER_NCL
    BCDToCurrency = False
    Left = 172
    Top = 136
  end
  object CSU_DB_M_GER_FVN_MED: TfrxDBDataset
    UserName = 'CSU_DB_M_GER_FVN_MED'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VLR_BRUTO_DIA=VLR_BRUTO_DIA'
      'VLR_DESCONTO_DIA=VLR_DESCONTO_DIA'
      'VLR_LIQUIDO_DIA=VLR_LIQUIDO_DIA'
      'VLR_BRUTO_MSL=VLR_BRUTO_MSL'
      'VLR_DESCONTO_MSL=VLR_DESCONTO_MSL'
      'VLR_LIQUIDO_MSL=VLR_LIQUIDO_MSL')
    DataSet = CSU_CD_M_GER_FVN_MED
    BCDToCurrency = False
    Left = 196
    Top = 312
  end
  object PAD_PD_R_REL: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 42838.413670520840000000
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 692
    Top = 16
  end
  object PAD_XL_R_REL: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 42838.413731273150000000
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 692
    Top = 72
  end
  object CSU_CD_M_GER_NCL: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_CSU_GRV_NCL'
    Left = 48
    Top = 136
  end
  object CSU_CD_M_GER_FVN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_CSU_GRV_FVN'
    Left = 56
    Top = 256
  end
  object BUS_DP_M_CSU_GRV_FVN: TDataSetProvider
    DataSet = BUS_SQ_M_CSU_GRV_FVN
    OnDataRequest = BUS_DP_M_CSU_GRV_FVNDataRequest
    Left = 192
    Top = 200
  end
  object CAD_CD_C_PAR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_PAR'
    Left = 544
    Top = 152
    object CAD_CD_C_PARid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CAD_CD_C_PARemp_razao: TWideStringField
      FieldName = 'emp_razao'
      Size = 50
    end
    object CAD_CD_C_PARemp_fantasia: TWideStringField
      FieldName = 'emp_fantasia'
      Size = 50
    end
    object CAD_CD_C_PARCAD_SQ_C_PAR_EML: TDataSetField
      FieldName = 'CAD_SQ_C_PAR_EML'
    end
    object CAD_CD_C_PARCAD_SQ_C_PAR_CTR: TDataSetField
      FieldName = 'CAD_SQ_C_PAR_CTR'
    end
    object CAD_CD_C_PARCAD_SQ_C_PAR_NFE: TDataSetField
      FieldName = 'CAD_SQ_C_PAR_NFE'
    end
  end
  object CAD_DP_C_PAR: TDataSetProvider
    DataSet = CAD_SQ_C_PAR
    OnDataRequest = CAD_DP_C_PARDataRequest
    Left = 536
    Top = 32
  end
  object BUS_DP_M_CSU_GRV_NCL: TDataSetProvider
    DataSet = BUS_SQ_M_CSU_GRV_NCL
    OnDataRequest = BUS_DP_M_CSU_GRV_NCLDataRequest
    Left = 180
    Top = 80
  end
  object CAD_DB_C_PAR: TfrxDBDataset
    UserName = 'CAD_DB_C_PAR'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'emp_cnpj=emp_cnpj'
      'id_ramo=id_ramo'
      'emp_razao=emp_razao'
      'emp_endereco=emp_endereco'
      'emp_numero=emp_numero'
      'emp_complemento=emp_complemento'
      'emp_bairro=emp_bairro'
      'id_cidade=id_cidade'
      'emp_cep=emp_cep'
      'emp_telefone=emp_telefone'
      'emp_fax=emp_fax'
      'emp_email=emp_email'
      'emp_site=emp_site'
      'emp_fantasia=emp_fantasia'
      'emp_im=emp_im'
      'emp_ie=emp_ie'
      'emp_suframa=emp_suframa'
      'emp_numero_junta=emp_numero_junta'
      'res_nome=res_nome'
      'res_qualificacao=res_qualificacao'
      'res_cpf=res_cpf'
      'res_cep=res_cep'
      'res_endereco=res_endereco'
      'res_numero=res_numero'
      'res_complemento=res_complemento'
      'res_bairro=res_bairro'
      'res_cp=res_cp'
      'res_telefone=res_telefone'
      'res_fax=res_fax'
      'res_email=res_email'
      'cnt_nome=cnt_nome'
      'cnt_cpf=cnt_cpf'
      'cnt_crc=cnt_crc'
      'cnt_cnpj=cnt_cnpj'
      'cnt_cep=cnt_cep'
      'cnt_endereco=cnt_endereco'
      'cnt_numero=cnt_numero'
      'cnt_complemento=cnt_complemento'
      'cnt_bairro=cnt_bairro'
      'cnt_telefone=cnt_telefone'
      'cnt_fax=cnt_fax'
      'cnt_email=cnt_email'
      'cnt_id_cidade=cnt_id_cidade'
      'cnt_qualificacao=cnt_qualificacao'
      'cnt_cp=cnt_cp'
      'res_cidade=res_cidade'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'res_id_cidade=res_id_cidade'
      'banco=banco'
      'agencia=agencia'
      'conta_corrente=conta_corrente'
      'agencia_dig=agencia_dig'
      'conta_corrente_dig=conta_corrente_dig'
      'gps_latitude=gps_latitude'
      'gps_longitude=gps_longitude'
      'chave_bloqueio=chave_bloqueio'
      'status_internet=status_internet'
      'int_uf=int_uf'
      'int_reg_tributario=int_reg_tributario'
      'int_nomecid=int_nomecid'
      'int_id_cnae=int_id_cnae')
    DataSet = CAD_CD_C_PAR
    BCDToCurrency = False
    Left = 700
    Top = 128
  end
  object CSU_CD_M_GER_FVN_MED: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 310
    object CSU_CD_M_GER_FVN_MEDVLR_BRUTO_DIA: TCurrencyField
      FieldName = 'VLR_BRUTO_DIA'
    end
    object CSU_CD_M_GER_FVN_MEDVLR_DESCONTO_DIA: TCurrencyField
      FieldName = 'VLR_DESCONTO_DIA'
    end
    object CSU_CD_M_GER_FVN_MEDVLR_LIQUIDO_DIA: TCurrencyField
      FieldName = 'VLR_LIQUIDO_DIA'
    end
    object CSU_CD_M_GER_FVN_MEDVLR_BRUTO_MSL: TCurrencyField
      FieldName = 'VLR_BRUTO_MSL'
    end
    object CSU_CD_M_GER_FVN_MEDVLR_DESCONTO_MSL: TCurrencyField
      FieldName = 'VLR_DESCONTO_MSL'
    end
    object CSU_CD_M_GER_FVN_MEDVLR_LIQUIDO_MSL: TCurrencyField
      FieldName = 'VLR_LIQUIDO_MSL'
    end
  end
  object ConexaoNW: TSQLConnection
    DriverName = 'DevartPostgreSQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DbxDevartPostgreSQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver180.' +
        'bpl'
      
        'MetaDataPackageLoader=TDBXDevartPostgreSQLMetaDataCommandFactory' +
        ',DbxDevartPostgreSQLDriver180.bpl'
      'ProductName=DevartPostgreSQL'
      'GetDriverFunc=getSQLDriverPostgreSQL'
      'LibraryName=dbexppgsql40.dll'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'MaxBlobSize=-1'
      'FetchAll=True'
      'UseQuoteChar=False'
      'UseUnicode=True'
      'VendorLib=dbexppgsql40.dll'
      'BlobSize=-1'
      'HostName=localhost'
      'SchemaName=public'
      'Database=enSoftTeresina161117'
      'User_Name=postgres'
      'Password=ssq#0609'
      'EnableBCD=True')
    Left = 39
    Top = 15
  end
  object CAD_SQ_C_PAR: TSQLDataSet
    CommandText = 
      'select PAR.*, CID.UF AS INT_UF, '#13#10'          RAM.REGIME_TRIBUTARI' +
      'O AS INT_REG_TRIBUTARIO, '#13#10'          CID.NOME AS INT_NOMECID,'#13#10' ' +
      '         RAM.ID_CNAE AS INT_ID_CNAE'#13#10'from CAD_TB_C_PAR PAR'#13#10'LEFT' +
      ' OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=PAR.ID_CIDADE'#13#10'LEF' +
      'T OUTER JOIN CAD_TB_C_RAM RAM ON RAM.ID_RAMO = PAR.ID_RAMO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 432
    Top = 32
    object CAD_SQ_C_PARid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CAD_SQ_C_PARemp_razao: TWideStringField
      FieldName = 'emp_razao'
      Size = 50
    end
    object CAD_SQ_C_PARemp_fantasia: TWideStringField
      FieldName = 'emp_fantasia'
      Size = 50
    end
  end
  object BUS_SQ_M_CSU_GRV_NCL: TSQLDataSet
    CommandText = 
      'select '#13#10'          NFE.ID_EMPRESA, '#13#10'          PAR.EMP_FANTASIA ' +
      'AS INT_NOMEEMP, '#13#10'          '#13#10#13#10#13#10'          COALESCE(count(case ' +
      'NFE.DTA_EMISSAO '#13#10'           when '#39'12/12/2017'#39' then             ' +
      '                        '#13#10'                NFE.ID_EMITENTE'#13#10'     ' +
      '     end),0) AS  NUM_CLIENTE_DIA,   '#13#10#13#10#13#10'          COUNT(NFE.ID' +
      '_EMITENTE)  AS NUM_CLIENTE_MSL'#13#10#13#10#13#10' FROM FAT_TB_M_NFE NFE  '#13#10'  ' +
      '        LEFT OUTER JOIN CAD_TB_C_PAR PAR ON PAR.ID_EMPRESA=NFE.I' +
      'D_EMPRESA   '#13#10'          LEFT OUTER JOIN CAD_TB_C_FUN FUN ON FUN.' +
      'ID_FUNCIONARIO=NFE.ID_VENDEDOR  '#13#10'          LEFT OUTER JOIN CAD_' +
      'TB_C_CFO CFO ON CFO.ID_CFO=NFE.ID_CFO           '#13#10'           WHE' +
      'RE 1=2 AND  PAR.ID_EMPRESA = '#39'1'#39' AND '#13#10'          '#13#10'          NFE' +
      '.DTA_EMISSAO>='#39'01/12/2017'#39' and '#13#10'          NFE.DTA_EMISSAO<='#39'20/' +
      '12/2017'#39' and '#13#10'          CFO.ID_CLASSE IN ('#39'SP10'#39','#39'SP70'#39') AND NF' +
      'E.NFE_COD_SIT not in ('#39'02'#39','#39'04'#39','#39'05'#39') AND '#13#10'          NFE.STATUS' +
      ' = 1 AND NFE.FATURADA = true AND NFE.TIPO_NF='#39'S'#39#13#10#13#10#13#10'          ' +
      'group by 1,2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 40
    Top = 80
  end
  object BUS_SQ_M_CSU_GRV_FVN: TSQLDataSet
    CommandText = 
      'select '#13#10'          NFE.ID_EMPRESA, '#13#10'          PAR.EMP_FANTASIA ' +
      'AS INT_NOMEEMP, '#13#10'          COALESCE(NFE.ID_VENDEDOR,0) AS INT_C' +
      'OD_VND, '#13#10'          CAST( COALESCE(FUN.NOME,'#39'INDEFINIDO'#39') AS VAR' +
      'CHAR(100)) AS INT_NOMEVND, '#13#10#13#10#13#10'          COALESCE(sum(case NFE' +
      '.DTA_EMISSAO '#13#10'           when '#39'20/12/2017'#39' then                ' +
      '                     '#13#10'                (COALESCE(NIT.VLR_UNITARI' +
      'O*(NIT.QTDE-NIT.QTDE_DEVOLVIDA),0)) '#13#10'          end),0) AS  VLR_' +
      'BRUTO_DIA,   '#13#10#13#10#13#10'         COALESCE(sum(case NFE.DTA_EMISSAO '#13#10 +
      '           when '#39'20/12/2017'#39' then                               ' +
      '      '#13#10'                (COALESCE((case when nit.qtde>0 then (CO' +
      'ALESCE(NIT.VLR_DESCONTO,0)/NIT.QTDE) else 0 end) *(nit.qtde-nit.' +
      'qtde_devolvida),0)) '#13#10'          end),0) AS  VLR_DESCONTO_DIA,   ' +
      '     '#13#10#13#10#13#10'          COALESCE(sum(case NFE.DTA_EMISSAO '#13#10'       ' +
      '    when '#39'20/12/2017'#39' then                                     '#13 +
      #10'                COALESCE(NIT.VLR_UNITARIO*(NIT.QTDE-NIT.QTDE_DE' +
      'VOLVIDA),0)  - (case when nit.qtde>0 then (COALESCE(NIT.VLR_DESC' +
      'ONTO,0)/NIT.QTDE) else 0 end) *(nit.qtde-nit.qtde_devolvida)'#13#10'  ' +
      '        end),0) AS  VLR_LIQUIDO_DIA, '#13#10#13#10#13#10#13#10'          SUM(COALE' +
      'SCE(NIT.VLR_UNITARIO*(NIT.QTDE-NIT.QTDE_DEVOLVIDA),0)) AS VLR_BR' +
      'UTO_MSL,'#13#10'          SUM(COALESCE((case when nit.qtde>0 then (COA' +
      'LESCE(NIT.VLR_DESCONTO,0)/NIT.QTDE) else 0 end) *(nit.qtde-nit.q' +
      'tde_devolvida),0)) AS VLR_DESCONTO_MSL, '#13#10'          SUM(COALESCE' +
      '(NIT.VLR_UNITARIO*(NIT.QTDE-NIT.QTDE_DEVOLVIDA),0))-SUM( (case w' +
      'hen nit.qtde>0 then (COALESCE(NIT.VLR_DESCONTO,0)/NIT.QTDE) else' +
      ' 0 end) *(nit.qtde-nit.qtde_devolvida)) AS VLR_LIQUIDO_MSL '#13#10'   ' +
      '      '#13#10#13#10#13#10' FROM FAT_TB_M_NFE_ITE NIT '#13#10'          LEFT OUTER JO' +
      'IN FAT_TB_M_NFE NFE ON NFE.ID_FISCAL=NIT.ID_FISCAL     '#13#10'       ' +
      '   LEFT OUTER JOIN CAD_TB_C_PAR PAR ON PAR.ID_EMPRESA=NFE.ID_EMP' +
      'RESA   '#13#10'          LEFT OUTER JOIN CAD_TB_C_FUN FUN ON FUN.ID_FU' +
      'NCIONARIO=NFE.ID_VENDEDOR  '#13#10'          LEFT OUTER JOIN CAD_TB_C_' +
      'CFO CFO ON CFO.ID_CFO=NFE.ID_CFO           '#13#10'           WHERE  1' +
      '=2 AND PAR.ID_EMPRESA = '#39'1'#39' AND '#13#10'          '#13#10'          NFE.DTA_' +
      'EMISSAO>='#39'20/12/2017'#39' and '#13#10'          NFE.DTA_EMISSAO<='#39'20/12/20' +
      '17'#39' and '#13#10'          CFO.ID_CLASSE IN ('#39'SP10'#39','#39'SP70'#39') AND NFE.NFE' +
      '_COD_SIT not in ('#39'02'#39','#39'04'#39','#39'05'#39') AND '#13#10'          NFE.STATUS = 1 ' +
      'AND NFE.FATURADA = true AND NFE.TIPO_NF='#39'S'#39#13#10#13#10#13#10'          group' +
      ' by 1,2,3,4'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoNW
    Left = 56
    Top = 200
  end
  object ACBrMail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 704
    Top = 192
  end
  object CAD_CD_C_PAR_CTR: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_PARCAD_SQ_C_PAR_CTR
    Params = <>
    Left = 544
    Top = 208
    object CAD_CD_C_PAR_CTRenviar_rel_grv: TBooleanField
      FieldName = 'enviar_rel_grv'
    end
  end
  object CAD_CD_C_PAR_EML: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_PARCAD_SQ_C_PAR_EML
    Params = <>
    Left = 544
    Top = 272
    object CAD_CD_C_PAR_EMLid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAD_CD_C_PAR_EMLemail: TWideStringField
      FieldName = 'email'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
  end
  object CAD_DS_C_PAR: TDataSource
    DataSet = CAD_SQ_C_PAR
    Left = 536
    Top = 88
  end
  object CAD_SQ_C_PAR_CTR: TSQLDataSet
    CommandText = 'select * from cad_tb_c_par_ctr'#13#10'where id_empresa=:id_empresa'
    DataSource = CAD_DS_C_PAR
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 432
    Top = 88
    object CAD_SQ_C_PAR_CTRenviar_rel_grv: TBooleanField
      FieldName = 'enviar_rel_grv'
    end
  end
  object CAD_SQ_C_PAR_EML: TSQLDataSet
    CommandText = 'select * from cad_tb_c_par_eml'#13#10'where id_empresa=:id_empresa'
    DataSource = CAD_DS_C_PAR
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 432
    Top = 144
  end
  object CAD_SQ_C_PAR_NFE: TSQLDataSet
    CommandText = 'SELECT * FROM CAD_TB_C_PAR_NFE'#13#10'WHERE ID_EMPRESA=:ID_EMPRESA'
    DataSource = CAD_DS_C_PAR
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoNW
    Left = 432
    Top = 192
    object CAD_SQ_C_PAR_NFEemail_smtp: TWideStringField
      FieldName = 'email_smtp'
      Size = 100
    end
    object CAD_SQ_C_PAR_NFEemail_smtp_porta: TIntegerField
      FieldName = 'email_smtp_porta'
    end
    object CAD_SQ_C_PAR_NFEemail_smtp_seguro: TWideStringField
      FieldName = 'email_smtp_seguro'
      Size = 1
    end
    object CAD_SQ_C_PAR_NFEemail_usuario: TWideStringField
      FieldName = 'email_usuario'
      Size = 30
    end
    object CAD_SQ_C_PAR_NFEemail_senha: TWideStringField
      FieldName = 'email_senha'
      Size = 30
    end
    object CAD_SQ_C_PAR_NFEemail_smtp_ssl: TBooleanField
      FieldName = 'email_smtp_ssl'
    end
    object CAD_SQ_C_PAR_NFEemail_smtp_tls: TBooleanField
      FieldName = 'email_smtp_tls'
    end
  end
  object CAD_CD_C_PAR_NFE: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_PARCAD_SQ_C_PAR_NFE
    Params = <>
    Left = 544
    Top = 328
    object CAD_CD_C_PAR_NFEemail_smtp: TWideStringField
      FieldName = 'email_smtp'
      Size = 100
    end
    object CAD_CD_C_PAR_NFEemail_smtp_porta: TIntegerField
      FieldName = 'email_smtp_porta'
    end
    object CAD_CD_C_PAR_NFEemail_smtp_seguro: TWideStringField
      FieldName = 'email_smtp_seguro'
      Size = 1
    end
    object CAD_CD_C_PAR_NFEemail_usuario: TWideStringField
      FieldName = 'email_usuario'
      Size = 30
    end
    object CAD_CD_C_PAR_NFEemail_senha: TWideStringField
      FieldName = 'email_senha'
      Size = 30
    end
    object CAD_CD_C_PAR_NFEemail_smtp_ssl: TBooleanField
      FieldName = 'email_smtp_ssl'
    end
    object CAD_CD_C_PAR_NFEemail_smtp_tls: TBooleanField
      FieldName = 'email_smtp_tls'
    end
  end
end
