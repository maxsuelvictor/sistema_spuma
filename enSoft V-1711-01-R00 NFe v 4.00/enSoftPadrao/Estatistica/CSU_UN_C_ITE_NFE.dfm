object CSU_FM_C_ITE_NFE: TCSU_FM_C_ITE_NFE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 519
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 835
    Height = 476
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 48
      Width = 835
      Height = 424
      ActivePage = TabSheet1
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = 'Vendas'
        object Label2: TLabel
          Left = 40
          Top = 422
          Width = 50
          Height = 13
          Caption = 'Devolu'#231#227'o'
        end
        object Panel2: TPanel
          Left = 19
          Top = 421
          Width = 15
          Height = 15
          BevelOuter = bvNone
          Color = clRed
          ParentBackground = False
          TabOrder = 0
        end
        object dgCli: TwwDBGrid
          Left = 19
          Top = 14
          Width = 793
          Height = 400
          Selected.Strings = (
            'id_empresa'#9'5'#9'Empresa'#9'F'
            'int_nomeemi'#9'32'#9'Cliente'#9'F'
            'numero'#9'10'#9'Numero'#9'F'
            'dta_emissao'#9'10'#9'Emiss'#227'o'#9'F'
            'qtde'#9'10'#9'Qtde'#9'F'
            'qtde_devolvida'#9'10'#9'Qtde.Devolvida'#9'F'
            'vlr_unitario'#9'19'#9'Vlr.Unit'#225'rio'#9'F'
            'vlr_liquido'#9'19'#9'Vlr.Total'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsoCli
          TabOrder = 1
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnCalcCellColors = dgCliCalcCellColors
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Compras'
        ImageIndex = 1
        object Label1: TLabel
          Left = 40
          Top = 422
          Width = 50
          Height = 13
          Caption = 'Devolu'#231#227'o'
        end
        object Panel1: TPanel
          Left = 19
          Top = 421
          Width = 15
          Height = 15
          BevelOuter = bvNone
          Color = clRed
          ParentBackground = False
          TabOrder = 0
        end
        object dgFor: TwwDBGrid
          Left = 19
          Top = 15
          Width = 793
          Height = 400
          Selected.Strings = (
            'id_empresa'#9'5'#9'Empresa'#9'F'
            'int_nomeemi'#9'32'#9'Fornecedor'#9'F'
            'numero'#9'10'#9'Numero'#9'F'
            'dta_emissao'#9'10'#9'Emiss'#227'o'#9'F'
            'qtde'#9'10'#9'Qtde'#9'F'
            'qtde_devolvida'#9'10'#9'Qtde.Devolvida'#9'F'
            'vlr_unitario'#9'13'#9'Vlr.Unit'#225'rio'#9'F'
            'vlr_desconto'#9'11'#9'Vlr. Desconto'#9'F'
            'vlr_liquido'#9'13'#9'Vlr.Total'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsoFor
          TabOrder = 1
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnCalcCellColors = dgForCalcCellColors
        end
      end
      object tsArquivoPdf: TTabSheet
        Caption = 'Visualiza'#231#227'o .PDF'
        ImageIndex = 2
        object acroPDF: TAcroPDF
          Left = 0
          Top = 0
          Width = 827
          Height = 396
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 3
          ExplicitTop = 3
          ExplicitWidth = 821
          ExplicitHeight = 390
          ControlData = {000C000079550000EE280000}
        end
      end
      object tsArquivoXml: TTabSheet
        Caption = 'Visualiza'#231#227'o .XML'
        ImageIndex = 3
        object WebBrowser1: TWebBrowser
          Left = 576
          Top = 72
          Width = 300
          Height = 150
          TabOrder = 0
          ControlData = {
            4C000000021F0000810F00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
        object wb: TWebBrowser
          Left = 0
          Top = 0
          Width = 827
          Height = 396
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 136
          ExplicitTop = 32
          ExplicitWidth = 412
          ExplicitHeight = 190
          ControlData = {
            4C00000079550000EE2800000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126209000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
    object btnAbrirArqPdf: TBitBtn
      Left = 10
      Top = 10
      Width = 153
      Height = 25
      Caption = 'Abrir Documento .PDF'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
        B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
        B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
        0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
        55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
        55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
        55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
        5555575FFF755555555557000075555555555577775555555555}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnAbrirArqPdfClick
    end
    object btnDocXml: TBitBtn
      Left = 173
      Top = 10
      Width = 145
      Height = 25
      Caption = 'Abrir Documento .XML'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
        B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
        B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
        0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
        55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
        55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
        55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
        5555575FFF755555555557000075555555555577775555555555}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnDocXmlClick
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 835
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object pnlCima: TPanel
      Left = 0
      Top = 0
      Width = 835
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = -5
        Width = 835
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Notas Fiscais'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = 5
        ExplicitWidth = 804
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 31
      Width = 835
      Height = 12
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
    end
  end
  object dsoCli: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_CSU_NFE_ITE_CLI
    Left = 580
    Top = 387
  end
  object dsoFor: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_CSU_NFE_ITE_FOR
    Left = 708
    Top = 307
  end
  object odAbrePdf: TOpenDialog
    FileName = '*.PDF'
    Filter = 'Arquivos PDF (*.PDF)|*.PDF'
    Left = 568
    Top = 51
  end
  object odAbreXml: TOpenDialog
    FileName = '*.XML'
    Filter = 'Arquivos XML(*.XML)|*.XML'
    Left = 496
    Top = 51
  end
end
