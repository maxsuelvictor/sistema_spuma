object CSU_FM_M_ORC: TCSU_FM_M_ORC
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 550
  ClientWidth = 1140
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1140
    Height = 41
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 801
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 1138
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Programa'#231#227'o Or'#231'ament'#225'ria'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 265
      ExplicitHeight = 30
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 41
    Width = 1140
    Height = 509
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 801
    object pnlDados: TPanel
      Left = 3
      Top = 6
      Width = 1136
      Height = 495
      BevelOuter = bvNone
      TabOrder = 0
      object dgPlanos: TwwDBGrid
        Left = 6
        Top = 248
        Width = 1115
        Height = 237
        Selected.Strings = (
          'id_plc'#9'11'#9'Plano Contas'#9'T'
          'int_descpct'#9'30'#9'Descri'#231#227'o'#9'T'
          'id_empresa'#9'3'#9'Filial'#9'T'
          'ano'#9'4'#9'Ano'#9'T'
          'prev_jan'#9'9'#9'Previsto'#9'T'#9'Janeiro'
          'real_jan'#9'9'#9'Realizado'#9'T'#9'Janeiro'
          'per_jan'#9'7'#9'%'#9'T'#9'Janeiro'
          'prev_fev'#9'9'#9'Previsto'#9'T'#9'Fevereiro'
          'real_fev'#9'9'#9'Realizado'#9'T'#9'Fevereiro'
          'per_fev'#9'7'#9'%'#9'T'#9'Fevereiro'
          'prev_mar'#9'9'#9'Previsto'#9'T'#9'Mar'#231'o'
          'real_mar'#9'9'#9'Realizado'#9'T'#9'Mar'#231'o'
          'per_mar'#9'7'#9'Previsto'#9'T'#9'Mar'#231'o'
          'prev_abr'#9'9'#9'Previsto'#9'T'#9'Abril'
          'real_abr'#9'9'#9'Realizado'#9'T'#9'Abril'
          'per_abr'#9'7'#9'%'#9'T'#9'Abril'
          'prev_mai'#9'9'#9'Previsto'#9'T'#9'Maio'
          'real_mai'#9'9'#9'Realizado'#9'T'#9'Maio'
          'per_mai'#9'7'#9'%'#9'T'#9'Maio'
          'prev_jun'#9'9'#9'Previsto'#9'T'#9'Junho'
          'real_jun'#9'9'#9'Realizado'#9'T'#9'Junho'
          'per_jun'#9'7'#9'%'#9'F'#9'Junho'
          'prev_jul'#9'9'#9'Previsto'#9'T'#9'Julho'
          'real_jul'#9'9'#9'Realizado'#9'T'#9'Julho'
          'per_jul'#9'7'#9'%'#9'T'#9'Julho'
          'prev_ago'#9'9'#9'Previsto'#9'T'#9'Agosto'
          'real_ago'#9'9'#9'Realizado'#9'T'#9'Agosto'
          'per_ago'#9'7'#9'%'#9'T'#9'Agosto'
          'prev_set'#9'9'#9'Previsto'#9'T'#9'Setembro'
          'real_set'#9'9'#9'Realizado'#9'T'#9'Setembro'
          'per_set'#9'7'#9'%'#9'T'#9'Setembro'
          'prev_out'#9'9'#9'Previsto'#9'T'#9'Outubro'
          'real_out'#9'9'#9'Realizado'#9'T'#9'Outubro'
          'per_out'#9'7'#9'%'#9'T'#9'Outubro'
          'prev_nov'#9'9'#9'Previsto'#9'T'#9'Novembro'
          'real_nov'#9'9'#9'Realizado'#9'T'#9'Novembro'
          'per_nov'#9'7'#9'%'#9'T'#9'Novembro'
          'prev_dez'#9'9'#9'Previsto'#9'T'#9'Dezembro'
          'real_dez'#9'9'#9'Realizado'#9'T'#9'Dezembro'
          'per_dez'#9'7'#9'%'#9'T'#9'Dezembro')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dso
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
      end
      object btnImprimir: TcxButton
        Left = 936
        Top = 27
        Width = 105
        Height = 41
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
        Left = 936
        Top = 74
        Width = 105
        Height = 41
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
      object gbFiltro: TGroupBox
        Left = 301
        Top = 2
        Width = 596
        Height = 234
        Caption = 'Filtro'
        TabOrder = 3
        object lblAno: TLabel
          Left = 31
          Top = 18
          Width = 26
          Height = 13
          Caption = 'Ano :'
        end
        object PageControl1: TPageControl
          Left = 14
          Top = 46
          Width = 505
          Height = 166
          ActivePage = tsEmpresa
          TabOrder = 0
          object tsEmpresa: TTabSheet
            Caption = 'Empresa'
            object Label1: TLabel
              Left = 81
              Top = 9
              Width = 102
              Height = 13
              Caption = 'Empresas Dispon'#237'veis'
            end
            object Label2: TLabel
              Left = 327
              Top = 9
              Width = 111
              Height = 13
              Caption = 'Empresas Selecionados'
            end
            object lboxEmpDisp: TListBox
              Left = 3
              Top = 24
              Width = 255
              Height = 111
              ItemHeight = 13
              PopupMenu = pmSelEmp
              TabOrder = 0
              OnDblClick = lboxEmpDispDblClick
            end
            object lboxEmpSel: TListBox
              Left = 264
              Top = 24
              Width = 230
              Height = 111
              ItemHeight = 13
              PopupMenu = pmExcluirEmp
              TabOrder = 1
              OnDblClick = lboxEmpSelDblClick
            end
          end
          object tsPlanoContas: TTabSheet
            Caption = 'Plano de Contas'
            ImageIndex = 1
            object Label3: TLabel
              Left = 85
              Top = 10
              Width = 87
              Height = 13
              Caption = 'Planos Dispon'#237'veis'
            end
            object Label4: TLabel
              Left = 330
              Top = 10
              Width = 96
              Height = 13
              Caption = 'Planos Selecionados'
            end
            object lboxPlanoDisp: TListBox
              Left = 3
              Top = 24
              Width = 247
              Height = 111
              ItemHeight = 13
              PopupMenu = pmSelPlano
              TabOrder = 0
              OnDblClick = lboxPlanoDispDblClick
            end
            object lboxPlanoSel: TListBox
              Left = 256
              Top = 24
              Width = 238
              Height = 111
              ItemHeight = 13
              PopupMenu = pmExcluirPlano
              TabOrder = 1
              OnDblClick = lboxPlanoSelDblClick
            end
          end
        end
        object txtAno: TEdit
          Left = 60
          Top = 15
          Width = 73
          Height = 21
          NumbersOnly = True
          TabOrder = 1
        end
        object btnPesquisar: TcxButton
          Left = 351
          Top = 30
          Width = 105
          Height = 25
          Caption = 'Pesquisar'
          OptionsImage.Glyph.Data = {
            46030000424D460300000000000036000000280000000E0000000E0000000100
            2000000000001003000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000181818762F2F2FEC181818790000000000000000000000000000
            0000000000000000000000000000000000000000000000000000171717753333
            33FF333333FF313131F500000000000000000000000000000000000000000000
            000000000000000000000000000017171774333333FF333333FF333333FF1717
            177500000000000000000303031017171771252525B92A2A2AD3222222AC1111
            115407070722303030F1333333FF333333FF1717177500000000000000000C0C
            0C3A2D2D2DE32B2B2BD518181879151515671D1D1D922E2E2EE82D2D2DDF3030
            30F12E2E2EE71717177400000000000000000505051B2F2F2FEA1D1D1D920909
            092D1B1B1B871C1C1C8B0A0A0A300606061D272727C32D2D2DE2070707220000
            000000000000000000001D1D1D93272727C30909092E2E2E2EE5242424B41111
            11560606061D00000000050505182F2F2FE91111115300000000000000000000
            00002A2A2AD411111155242424B32020209E0000000000000000000000000000
            0000000000001E1E1E97232323AD000000000000000000000000303030F10C0C
            0C3E252525B70606061D00000000000000000000000000000000000000001818
            18762B2B2BD50000000000000000000000002C2C2CDD111111530F0F0F4D0000
            000000000000000000000000000000000000000000001B1B1B87252525BA0000
            00000000000000000000222222AB232323AF0000000000000000000000000000
            00000000000000000000010101052C2C2CDE1717177200000000000000000000
            00000A0A0A32323232FA15151567000000000000000000000000000000000000
            00021F1F1F992D2D2DE30303030F000000000000000000000000000000001414
            1464323232FA232323AE101010510C0C0C3C13131360282828CA2E2E2EE60B0B
            0B380000000000000000000000000000000000000000000000000B0B0B352222
            22A92C2C2CDC303030F02A2A2AD31D1D1D930606061E00000000000000000000
            00000000000000000000}
          TabOrder = 2
          OnClick = btnPesquisarClick
        end
      end
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_CSU_ORC_PLC
    Left = 984
    Top = 401
  end
  object pmSelEmp: TPopupMenu
    Left = 864
    Top = 387
    object btnSelTodasEmp: TMenuItem
      Caption = 'Todas Empresas'
      OnClick = btnSelTodasEmpClick
    end
  end
  object pmExcluirEmp: TPopupMenu
    Left = 776
    Top = 387
    object btnRemoverEmp: TMenuItem
      Caption = 'Remover Todas Empresas'
      OnClick = btnRemoverEmpClick
    end
  end
  object pmSelPlano: TPopupMenu
    Left = 864
    Top = 443
    object btnSelTodosPlanos: TMenuItem
      Caption = 'Todos os Planos'
      OnClick = btnSelTodosPlanosClick
    end
  end
  object pmExcluirPlano: TPopupMenu
    Left = 776
    Top = 443
    object btnExcluirPlano: TMenuItem
      Caption = 'Remover Todos Planos'
      OnClick = btnExcluirPlanoClick
    end
  end
  object CSU_FR_M_ORC: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42318.351359942120000000
    ReportOptions.LastChange = 42318.351359942120000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 949
    Top = 168
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = CSU_DB_M_ORC
        DataSetName = 'CSU_DB_M_ORC'
      end>
    Variables = <
      item
        Name = ' Externo'
        Value = Null
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 25.677180000000000000
          Width = 903.307670000000000000
          Color = clBlack
          ArrowSolid = True
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 385.512060000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Programa'#231#227'o Or'#231'ament'#225'ria')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 913.827150000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 52.913420000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CAD_DB_C_PARemp_fantasia: TfrxMemoView
          Left = 3.779530000000000000
          Top = 25.677180000000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 147.401670000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        DataSet = CSU_DB_M_ORC
        DataSetName = 'CSU_DB_M_ORC'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 8.338590000000000000
          Top = 3.559060000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Plano de Contas :')
          ParentFont = False
        end
        object CSU_DB_M_ORCid_plc: TfrxMemoView
          Left = 88.488250000000000000
          Top = 3.559060000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          DataField = 'id_plc'
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."id_plc"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.559060000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Descri'#231#227'o :')
          ParentFont = False
        end
        object CSU_DB_M_ORCint_descpct: TfrxMemoView
          Left = 260.567100000000000000
          Top = 3.559060000000000000
          Width = 309.921460000000000000
          Height = 15.118110240000000000
          DataField = 'int_descpct'
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."int_descpct"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 622.386210000000000000
          Top = 4.118120000000000000
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Filial :')
          ParentFont = False
        end
        object CSU_DB_M_ORCint_empfantasia: TfrxMemoView
          Left = 659.638220000000000000
          Top = 3.559060000000000000
          Width = 219.212740000000000000
          Height = 15.118110240000000000
          DataField = 'int_empfantasia'
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."int_empfantasia"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 933.543910000000000000
          Top = 3.559060000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Ano :')
          ParentFont = False
        end
        object CSU_DB_M_ORCano: TfrxMemoView
          Left = 968.118740000000000000
          Top = 3.559060000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          DataField = 'ano'
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."ano"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Janeiro')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 177.637910000000000000
          Top = 27.456710000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Fevereiro')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 351.244280000000000000
          Top = 26.133890000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Mar'#231'o')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 525.205010000000000000
          Top = 26.133890000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Abril')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 698.709030000000000000
          Top = 26.133890000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Maio')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 873.315400000000000000
          Top = 26.133890000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Junho')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 87.504020000000010000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Julho')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 106.519790000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 177.637910000000000000
          Top = 87.504020000000010000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Agosto')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 351.496290000000000000
          Top = 87.504020000000010000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Setembro')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 525.472790000000000000
          Top = 87.165430000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Outubro')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 699.346940000000000000
          Top = 86.944960000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Novembro')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 873.071430000000000000
          Top = 87.504020000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Dezembro')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_jul: TfrxMemoView
          Left = 140.401670000000000000
          Top = 127.299320000000000000
          Width = 37.795278030000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_jul"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_jul: TfrxMemoView
          Left = 4.779530000000000000
          Top = 127.519790000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_jul"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_jul: TfrxMemoView
          Left = 71.590600000000000000
          Top = 127.519790000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_jul"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.031540000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 177.094620000000000000
          Top = 45.590600000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 351.496290000000000000
          Top = 45.031540000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 525.590910000000000000
          Top = 45.370130000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 699.213050000000000000
          Top = 45.031540000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 873.071430000000000000
          Top = 45.031540000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 177.637910000000000000
          Top = 106.401670000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 351.496290000000000000
          Top = 106.401670000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 525.354670000000000000
          Top = 106.504020000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 698.787880000000000000
          Top = 106.181200000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 873.071430000000000000
          Top = 106.504020000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            '            Previsto            Realizado           %')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_ago: TfrxMemoView
          Left = 178.976500000000000000
          Top = 126.960730000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_ago"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_ago: TfrxMemoView
          Left = 247.008040000000000000
          Top = 126.960730000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_ago"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_ago: TfrxMemoView
          Left = 313.953000000000000000
          Top = 127.299320000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_ago"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_set: TfrxMemoView
          Left = 352.275820000000000000
          Top = 127.401670000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_set"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_set: TfrxMemoView
          Left = 420.086890000000000000
          Top = 127.181200000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_set"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_set: TfrxMemoView
          Left = 488.236550000000000000
          Top = 127.519790000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_set"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_out: TfrxMemoView
          Left = 525.354670000000000000
          Top = 126.724490000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_out"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_out: TfrxMemoView
          Left = 661.417750000000000000
          Top = 126.724490000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_out"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_out: TfrxMemoView
          Left = 593.386210000000000000
          Top = 126.724490000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_out"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_nov: TfrxMemoView
          Left = 699.331170000000000000
          Top = 126.960730000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_nov"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_nov: TfrxMemoView
          Left = 767.024120000000000000
          Top = 127.181200000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_nov"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_nov: TfrxMemoView
          Left = 834.614720000000000000
          Top = 127.401670000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_nov"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_dez: TfrxMemoView
          Left = 872.528140000000000000
          Top = 127.181200000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_dez"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_dez: TfrxMemoView
          Left = 941.441560000000000000
          Top = 126.960730000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_dez"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_dez: TfrxMemoView
          Left = 1009.354980000000000000
          Top = 127.181200000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_dez"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_jan: TfrxMemoView
          Left = 3.897650000000000000
          Top = 65.708720000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_jan"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_jan: TfrxMemoView
          Left = 72.385900000000000000
          Top = 66.488250000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_jan"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_jan: TfrxMemoView
          Left = 139.740260000000000000
          Top = 66.488250000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_jan"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_fev: TfrxMemoView
          Left = 177.330860000000000000
          Top = 66.488250000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_fev"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_fev: TfrxMemoView
          Left = 244.787570000000000000
          Top = 66.267780000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_fev"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_fev: TfrxMemoView
          Left = 313.055350000000000000
          Top = 66.267780000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_fev"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_mar: TfrxMemoView
          Left = 350.732530000000000000
          Top = 66.488250000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_mar"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_mar: TfrxMemoView
          Left = 418.866420000000000000
          Top = 66.488250000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_mar"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_mar: TfrxMemoView
          Left = 487.016080000000000000
          Top = 66.488250000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_mar"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_abr: TfrxMemoView
          Left = 525.929500000000000000
          Top = 66.488250000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_abr"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_abr: TfrxMemoView
          Left = 593.622450000000000000
          Top = 65.708720000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_abr"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_abr: TfrxMemoView
          Left = 662.315400000000000000
          Top = 66.488250000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_abr"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_mai: TfrxMemoView
          Left = 700.228820000000000000
          Top = 66.267780000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_mai"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_mai: TfrxMemoView
          Left = 767.921770000000000000
          Top = 66.488250000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_mai"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_mai: TfrxMemoView
          Left = 835.614720000000000000
          Top = 65.708720000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_mai"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCprev_jun: TfrxMemoView
          Left = 872.748610000000000000
          Top = 66.488250000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."prev_jun"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCreal_jun: TfrxMemoView
          Left = 941.339210000000000000
          Top = 66.267780000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."real_jun"]')
          ParentFont = False
        end
        object CSU_DB_M_ORCper_jun: TfrxMemoView
          Left = 1009.354980000000000000
          Top = 65.606370000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = CSU_DB_M_ORC
          DataSetName = 'CSU_DB_M_ORC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CSU_DB_M_ORC."per_jun"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = -0.322820000000000000
          Top = 19.236240000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 423.307360000000000000
        Width = 1046.929810000000000000
        object Memo25: TfrxMemoView
          Left = 450.567100000000000000
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
          Left = 925.724800000000000000
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
          Left = 11.622140000000000000
          Width = 385.511894020000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Assin_enorth]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 325.039580000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object txtOpcoesRelGer: TfrxMemoView
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
  object CSU_XL_M_ORC: TfrxXLSExport
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
    Left = 1061
    Top = 168
  end
  object CSU_PD_M_ORC: TfrxPDFExport
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
    Left = 1061
    Top = 224
  end
  object CSU_DB_M_ORC: TfrxDBDataset
    UserName = 'CSU_DB_M_ORC'
    CloseDataSource = False
    DataSet = dmGeral.BUS_CD_M_CSU_ORC_PLC
    BCDToCurrency = False
    Left = 949
    Top = 224
  end
end
