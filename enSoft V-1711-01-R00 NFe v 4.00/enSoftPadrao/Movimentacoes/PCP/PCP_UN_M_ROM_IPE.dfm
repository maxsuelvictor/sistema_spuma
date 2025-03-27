object PCP_FM_M_ROM_IPE: TPCP_FM_M_ROM_IPE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 549
  ClientWidth = 583
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
    Width = 583
    Height = 34
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 581
      Height = 32
      Align = alClient
      Alignment = taCenter
      Caption = 'Carregamento de Pedidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 250
      ExplicitHeight = 30
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 34
    Width = 583
    Height = 515
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlDados: TPanel
      Left = 1
      Top = 2
      Width = 583
      Height = 511
      BevelOuter = bvNone
      TabOrder = 0
      object lblPeriodo: TLabel
        Left = 43
        Top = 447
        Width = 43
        Height = 13
        Caption = 'Per'#237'odo :'
      end
      object Label1: TLabel
        Left = 186
        Top = 447
        Width = 16
        Height = 13
        Caption = 'at'#233
      end
      object Label2: TLabel
        Left = 16
        Top = 475
        Width = 70
        Height = 13
        Caption = 'Cod. Carreg. :'
      end
      object Label7: TLabel
        Left = 211
        Top = 387
        Width = 44
        Height = 13
        Caption = 'Faturado'
      end
      object Label3: TLabel
        Left = 300
        Top = 387
        Width = 50
        Height = 13
        Caption = 'Cancelado'
      end
      object Label4: TLabel
        Left = 392
        Top = 387
        Width = 53
        Height = 13
        Caption = 'Reprovado'
      end
      object Label5: TLabel
        Left = 26
        Top = 387
        Width = 39
        Height = 13
        Caption = 'Digitado'
      end
      object Label6: TLabel
        Left = 102
        Top = 387
        Width = 62
        Height = 13
        Caption = 'Em produ'#231#227'o'
      end
      object Label8: TLabel
        Left = 26
        Top = 407
        Width = 180
        Height = 13
        Caption = 'Em produ'#231#227'o mas precisa ser liberado'
      end
      object Label51: TLabel
        Left = -41
        Top = 1
        Width = 624
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ser'#227'o importado somente pedidos que estejam em produ'#231#227'o'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object gbPedidos: TGroupBox
        Left = 3
        Top = 185
        Width = 574
        Height = 199
        Caption = 'Pedidos'
        TabOrder = 0
        object dgPed: TwwDBGrid
          Left = 10
          Top = 21
          Width = 561
          Height = 172
          Selected.Strings = (
            'id_pedido'#9'10'#9'N'#186' Pedido'#9'T'
            'int_nomecli'#9'45'#9'Cliente'#9'T'
            'int_nomecid'#9'15'#9'Cidade'#9'T'
            'int_telfixo'#9'14'#9'Tel. Fixo'#9'T')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsoPed
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
          OnCalcCellColors = dgPedCalcCellColors
        end
      end
      object gbCarregamento: TGroupBox
        Left = 3
        Top = 26
        Width = 574
        Height = 160
        Caption = 'Carregamentos'
        TabOrder = 1
        object dgCar: TwwDBGrid
          Left = 6
          Top = 20
          Width = 563
          Height = 134
          Selected.Strings = (
            'id_carregamento'#9'10'#9'Carregamento'#9'T'
            'dta_carregamento'#9'10'#9'Data'#9'T'
            'int_nomeres'#9'63'#9'Respons'#225'vel'#9'T')
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
      end
      object btnSair: TcxButton
        Left = 475
        Top = 471
        Width = 90
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
      object btnImportar: TcxButton
        Left = 382
        Top = 471
        Width = 90
        Height = 25
        Caption = 'Importar'
        TabOrder = 3
        OnClick = btnImportarClick
      end
      object deInicial: TJvDateEdit
        Left = 91
        Top = 444
        Width = 89
        Height = 21
        ShowNullDate = False
        TabOrder = 4
      end
      object deFinal: TJvDateEdit
        Left = 208
        Top = 444
        Width = 89
        Height = 21
        ShowNullDate = False
        TabOrder = 5
      end
      object txtCodCar: TEdit
        Left = 91
        Top = 472
        Width = 89
        Height = 21
        TabOrder = 6
      end
      object btnPesquisar: TcxButton
        Left = 208
        Top = 471
        Width = 72
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
        TabOrder = 7
        OnClick = btnPesquisarClick
      end
      object Panel4: TPanel
        Left = 192
        Top = 386
        Width = 15
        Height = 15
        Color = clGreen
        ParentBackground = False
        TabOrder = 8
      end
      object Panel1: TPanel
        Left = 281
        Top = 386
        Width = 15
        Height = 15
        Color = clRed
        ParentBackground = False
        TabOrder = 9
      end
      object Panel2: TPanel
        Left = 373
        Top = 386
        Width = 15
        Height = 15
        Color = clMaroon
        ParentBackground = False
        TabOrder = 10
      end
      object Panel3: TPanel
        Left = 7
        Top = 386
        Width = 15
        Height = 15
        Color = clBlack
        ParentBackground = False
        TabOrder = 11
      end
      object Panel5: TPanel
        Left = 83
        Top = 386
        Width = 15
        Height = 15
        Color = clBlue
        ParentBackground = False
        TabOrder = 12
      end
      object Panel6: TPanel
        Left = 7
        Top = 406
        Width = 15
        Height = 15
        Color = 33023
        ParentBackground = False
        TabOrder = 13
      end
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_PCA
    Left = 514
    Top = 213
  end
  object dsoPed: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_PCA_PED
    Left = 522
    Top = 287
  end
end
