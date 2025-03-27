object FAT_FM_M_CXA_MPS: TFAT_FM_M_CXA_MPS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 261
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 351
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
      Width = 351
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
        Width = 351
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Suprimento / Sangria'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -10
        ExplicitWidth = 1200
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 25
      Width = 351
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 351
    Height = 218
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object gbxFaturamento: TGroupBox
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 347
      Height = 167
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      TabOrder = 0
      object rgTipoMov: TRadioGroup
        Left = 7
        Top = 4
        Width = 337
        Height = 45
        Caption = ' Tipo do movimento a fazer '
        Columns = 2
        Items.Strings = (
          'Suprimento'
          'Sangria')
        TabOrder = 0
        OnClick = rgTipoMovClick
      end
      object gbDados: TGroupBox
        Left = 7
        Top = 49
        Width = 337
        Height = 111
        Caption = ' '
        Enabled = False
        TabOrder = 1
        object Valor: TLabel
          Left = 8
          Top = 19
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object lblConta: TLabel
          Left = 10
          Top = 64
          Width = 76
          Height = 13
          Caption = 'Conta (Destino)'
        end
        object txtVlrMov: TwwDBEdit
          Left = 8
          Top = 34
          Width = 78
          Height = 21
          DataField = 'vlr_lancamento'
          DataSource = ds
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object cbbConta: TwwDBLookupCombo
          Left = 10
          Top = 83
          Width = 171
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'descricao'#9'40'#9'descricao'#9'F'
            'id_conta'#9'10'#9'id_conta'#9'F')
          DataField = 'exp_id_conta'
          DataSource = ds
          LookupTable = dmGeral.BUS_CD_C_CXA_BCO
          LookupField = 'id_conta'
          Style = csDropDownList
          Color = clWhite
          TabOrder = 1
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
          ShowMatchText = True
          OnEnter = cbbContaEnter
        end
      end
    end
    object btnGravar: TBitBtn
      Left = 89
      Top = 174
      Width = 85
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
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnSair: TBitBtn
      Left = 175
      Top = 174
      Width = 85
      Height = 40
      Caption = '&Sair'
      Glyph.Data = {
        66090000424D660900000000000036000000280000001C0000001C0000000100
        18000000000030090000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A8A8
        A8E4E4E4F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4C8C8C8CC8C8C8EBEBEBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF323232323232323232595959959595C8C8C8F3F3F3FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF989898989898989898FFFFFF323232323232323232
        323232323232323232636363989898CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32
        3232323232323232FFFFFF323232323232323232323232323232323232323232
        3232323D3D3D686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF32
        3232323232323232323232323232323232323232323232323232323232FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF323232323232323232FFFFFF32323232323232323232323232
        3232323232323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232
        32323232FFFFFF32323232323232323232323232323232323232323232323232
        3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF3232323232
        32323232323232323232323232323232323232323232323232FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF323232323232323232FFFFFF3232323232323232323232323232323232
        32323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232
        FFFFFF3232323232323232323232323232323232323232323232323232323232
        32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF323232323232323232
        323232323232323232323232323232323232323232FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32
        3232323232323232FFFFFF323232323232323232323232323232323232323232
        323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF32
        3232E1E1E1E1E1E1323232323232323232323232323232323232323232FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF323232323232323232FFFFFF323232E1E1E1E1E1E132323232
        3232323232323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232
        32323232FFFFFF32323232323232323232323232323232323232323232323232
        3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF3232323232
        32323232323232323232323232323232323232323232323232FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF323232323232323232FFFFFF3232323232323232323232323232323232
        32323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232
        FFFFFF3232323232323232323232323232323232323232323232323232323232
        32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF323232323232323232
        323232323232323232323232323232323232323232FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32
        3232323232323232FFFFFF323232323232323232323232323232323232323232
        323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF32
        3232323232323232323232323232323232323232323232323232323232FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF323232323232323232FFFFFF32323232323232323232323232
        3232323232323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232
        32323232FFFFFF32323232323232323232323232323232323232323232323232
        3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF989898989898989898FFFFFF3232323232
        323232323232323232323232323232323636365D5D5D868686FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232323232323232325151517F7F
        7FABABABCFCFCFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF444444757575A4A4A4D0D0D0E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F919191C1C1C1
        EBEBEBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      TabOrder = 2
      OnClick = btnSairClick
    end
  end
  object FAT_FR_R_CXA_MPS: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42318.351359942130000000
    ReportOptions.LastChange = 42318.351359942130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<sangria> = False) then'
      '    begin'
      '      ShapeSangria.Visible := false;'
      
        '      mmContraPartida.Visible := false;                         ' +
        '                                                   '
      '      mmlblCaixa.Visible := false;'
      '      mmCaixa.Visible := false;'
      '      mmlblTipoFinan.Visible := false;'
      '      mmTipoFinan.Visible := false;'
      '      mmlblPlano.Visible := false;'
      '      mmPlano.Visible := false;                            '
      '    end;              '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  mmTitulo.Text := <titulo>;                                '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 291
    Top = 216
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = FAT_DB_R_CXA_MPS
        DataSetName = 'FAT_DB_R_CXA_MPS'
      end>
    Variables = <
      item
        Name = ' Externo'
        Value = Null
      end
      item
        Name = 'sangria'
        Value = ''
      end
      item
        Name = 'titulo'
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
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 24.677180000000000000
          Width = 574.488560000000000000
          Color = clBlack
          ArrowSolid = True
          Frame.Typ = [ftTop]
        end
        object mmTitulo: TfrxMemoView
          Left = 3.779530000000000000
          Width = 385.512060000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Registro de Sa'#237'da')
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
        object Memo19: TfrxMemoView
          Left = 8.236240000000000000
          Top = 32.472480000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Nro. Movimenta'#231#227'o:')
          ParentFont = False
        end
        object FAT_DB_R_CXA_MPSid_controle: TfrxMemoView
          Left = 90.606370000000000000
          Top = 32.236240000000000000
          Width = 188.976500000000000000
          Height = 15.118110240000000000
          DataField = 'id_controle'
          DataSet = FAT_DB_R_CXA_MPS
          DataSetName = 'FAT_DB_R_CXA_MPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FAT_DB_R_CXA_MPS."id_controle"]')
          ParentFont = False
        end
        object CAD_DB_C_PARemp_fantasia: TfrxMemoView
          Left = 7.559060000000000000
          Top = 47.472480000000000000
          Width = 400.630180000000000000
          Height = 15.118110240000000000
          DataField = 'emp_fantasia'
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_fantasia"]')
          ParentFont = False
        end
        object CAD_DB_C_PARemp_endereco: TfrxMemoView
          Left = 7.677180000000000000
          Top = 62.252010000000000000
          Width = 400.630180000000000000
          Height = 15.118110240000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_endereco"], [CAD_DB_C_PAR."emp_numero"]')
          ParentFont = False
        end
        object CAD_DB_C_PARemp_bairro: TfrxMemoView
          Left = 7.677180000000000000
          Top = 77.149660000000000000
          Width = 321.260050000000000000
          Height = 15.118110240000000000
          DataField = 'emp_bairro'
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_bairro"]')
          ParentFont = False
        end
        object CAD_DB_C_PARemp_fax: TfrxMemoView
          Left = 157.858380000000000000
          Top = 91.929190000000000000
          Width = 151.181200000000000000
          Height = 15.118110240000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Fax: [CAD_DB_C_PAR."emp_fax"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 330.732530000000000000
          Top = 76.708720000000000000
          Width = 204.094620000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."int_nomecid"] - [CAD_DB_C_PAR."int_uf"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 8.118120000000000000
          Top = 92.267780000000000000
          Width = 139.842610000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Fone: [CAD_DB_C_PAR."emp_telefone"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 283.464750000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = FAT_DB_R_CXA_MPS
        DataSetName = 'FAT_DB_R_CXA_MPS'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Impresso por :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 11.795300000000000000
          Top = 17.015770000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Movimento :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 11.795300000000000000
          Top = 32.252010000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Caixa :')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 11.574830000000000000
          Top = 47.708720000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo Financeiro :')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 11.472480000000000000
          Top = 63.149660000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Plano de Contas :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 11.574830000000000000
          Top = 78.708720000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 105.960730000000000000
          Top = 48.236240000000000000
          Width = 404.409710000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[FAT_DB_R_CXA_MPS."id_tipo_financeiro"] - [FAT_DB_R_CXA_MPS."int' +
              '_nometif"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 105.504020000000000000
          Top = 62.811070000000000000
          Width = 404.409710000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[FAT_DB_R_CXA_MPS."id_plano"] - [FAT_DB_R_CXA_MPS."int_nomeplano' +
              '"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object ShapeSangria: TfrxShapeView
          Left = 9.897650000000000000
          Top = 105.944960000000000000
          Width = 495.118430000000000000
          Height = 83.149660000000000000
        end
        object Memo18: TfrxMemoView
          Left = 221.976500000000000000
          Top = 17.118120000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Mov. gerado por :')
          ParentFont = False
        end
        object FAT_DB_R_CXA_MPSint_nomefun: TfrxMemoView
          Left = 300.685220000000000000
          Top = 17.118120000000000000
          Width = 211.653680000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomefun'
          DataSet = FAT_DB_R_CXA_MPS
          DataSetName = 'FAT_DB_R_CXA_MPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_R_CXA_MPS."int_nomefun"]')
          ParentFont = False
        end
        object FAT_DB_R_CXA_MPSint_nomefun1: TfrxMemoView
          Left = 105.606370000000000000
          Top = 1.779530000000000000
          Width = 404.409710000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomefun'
          DataSet = FAT_DB_R_CXA_MPS
          DataSetName = 'FAT_DB_R_CXA_MPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_R_CXA_MPS."int_nomefun"]')
          ParentFont = False
        end
        object FAT_DB_R_CXA_MPSdta_movimento: TfrxMemoView
          Left = 106.283550000000000000
          Top = 16.897650000000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          DataField = 'dta_movimento'
          DataSet = FAT_DB_R_CXA_MPS
          DataSetName = 'FAT_DB_R_CXA_MPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_R_CXA_MPS."dta_movimento"]')
          ParentFont = False
        end
        object FAT_DB_R_CXA_MPSvlr_lancamento: TfrxMemoView
          Left = 105.606370000000000000
          Top = 78.370130000000000000
          Width = 177.637910000000000000
          Height = 15.118110240000000000
          DataField = 'vlr_lancamento'
          DataSet = FAT_DB_R_CXA_MPS
          DataSetName = 'FAT_DB_R_CXA_MPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_R_CXA_MPS."vlr_lancamento"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 208.756030000000000000
          Top = 241.433210000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Setor Financeiro')
          ParentFont = False
        end
        object FAT_DB_R_CXA_MPSid_conta: TfrxMemoView
          Left = 105.724490000000000000
          Top = 32.015770000000000000
          Width = 404.409710000000000000
          Height = 15.118110240000000000
          DataSet = FAT_DB_R_CXA_MPS
          DataSetName = 'FAT_DB_R_CXA_MPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_R_CXA_MPS."id_conta"] - [FAT_DB_R_CXA_MPS."int_nomectc"]')
          ParentFont = False
        end
        object mmContraPartida: TfrxMemoView
          Left = 22.677180000000000000
          Top = 115.685220000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Fill.BackColor = clSilver
          Memo.UTF8W = (
            'Contra Partida :')
          ParentFont = False
        end
        object mmlblCaixa: TfrxMemoView
          Left = 58.118120000000000000
          Top = 136.362400000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Color = clNone
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Caixa :')
          ParentFont = False
        end
        object mmCaixa: TfrxMemoView
          Left = 99.133890000000000000
          Top = 136.362400000000000000
          Width = 385.512060000000000000
          Height = 15.118110240000000000
          DataSet = FAT_DB_R_CXA_MPS
          DataSetName = 'FAT_DB_R_CXA_MPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Color = clNone
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            
              '[FAT_DB_R_CXA_MPS."id_exp_conta"] - [FAT_DB_R_CXA_MPS."int_nomec' +
              'tcexp"]')
          ParentFont = False
        end
        object mmlblTipoFinan: TfrxMemoView
          Left = 22.897650000000000000
          Top = 151.260050000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Color = clNone
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo Financeiro :')
          ParentFont = False
        end
        object mmTipoFinan: TfrxMemoView
          Left = 98.267780000000000000
          Top = 151.362400000000000000
          Width = 385.512060000000000000
          Height = 15.118110240000000000
          DataSet = FAT_DB_R_CXA_MPS
          DataSetName = 'FAT_DB_R_CXA_MPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Color = clNone
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            
              '[FAT_DB_R_CXA_MPS."exp_id_tipo_financeiro"] - [FAT_DB_R_CXA_MPS.' +
              '"int_nomeexptif"]')
          ParentFont = False
        end
        object mmlblPlano: TfrxMemoView
          Left = 22.881880000000000000
          Top = 166.378170000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Color = clNone
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Plano de Contas :')
          ParentFont = False
        end
        object mmPlano: TfrxMemoView
          Left = 98.370130000000000000
          Top = 166.819110000000000000
          Width = 385.512060000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Color = clNone
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            
              '[FAT_DB_R_CXA_MPS."exp_id_plano"] - [FAT_DB_R_CXA_MPS."int_nomee' +
              'xpplano"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 600.945270000000000000
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
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        Stretched = True
        object txtOpcoes: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
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
  object FAT_XL_R_CXA_MPS: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 283
    Top = 56
  end
  object FAT_PD_R_CXA_MPS: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
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
    Left = 283
    Top = 104
  end
  object FAT_DB_R_CXA_MPS: TfrxDBDataset
    UserName = 'FAT_DB_R_CXA_MPS'
    CloseDataSource = False
    DataSet = cdsMPS
    BCDToCurrency = False
    Left = 291
    Top = 160
  end
  object ds: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_CTA_CXA
    Left = 2
    Top = 213
  end
  object cdsMPS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 41
    Top = 214
    object cdsMPSdta_movimento: TDateTimeField
      FieldName = 'dta_movimento'
    end
    object cdsMPSexp_id_tipo_financeiro: TIntegerField
      FieldName = 'exp_id_tipo_financeiro'
    end
    object cdsMPSid_plano: TStringField
      FieldName = 'id_plano'
    end
    object cdsMPSexp_id_plano: TStringField
      FieldName = 'exp_id_plano'
    end
    object cdsMPSid_tipo_financeiro: TIntegerField
      FieldName = 'id_tipo_financeiro'
    end
    object cdsMPSint_nometif: TStringField
      FieldName = 'int_nometif'
      Size = 50
    end
    object cdsMPSint_nomeplano: TStringField
      FieldName = 'int_nomeplano'
      Size = 50
    end
    object cdsMPSint_nomeexptif: TStringField
      FieldName = 'int_nomeexptif'
      Size = 50
    end
    object cdsMPSint_nomeexpplano: TStringField
      FieldName = 'int_nomeexpplano'
      Size = 50
    end
    object cdsMPSvlr_lancamento: TCurrencyField
      FieldName = 'vlr_lancamento'
    end
    object cdsMPSid_conta: TIntegerField
      FieldName = 'id_conta'
    end
    object cdsMPSid_exp_conta: TIntegerField
      FieldName = 'id_exp_conta'
    end
    object cdsMPSint_nomefun: TStringField
      FieldName = 'int_nomefun'
      Size = 50
    end
    object cdsMPSid_controle: TIntegerField
      FieldName = 'id_controle'
    end
    object cdsMPSint_nomectcexp: TStringField
      FieldName = 'int_nomectcexp'
      Size = 50
    end
    object cdsMPSint_nomectc: TStringField
      FieldName = 'int_nomectc'
      Size = 50
    end
  end
end
