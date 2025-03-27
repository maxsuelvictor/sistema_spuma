object FAT_FM_M_CXA_NFE_NCF: TFAT_FM_M_CXA_NFE_NCF
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 458
  ClientWidth = 894
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
    Width = 894
    Height = 40
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 892
      Height = 38
      Align = alClient
      Alignment = taCenter
      Caption = 'Gerar NFe de Cupom Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 260
      ExplicitHeight = 30
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 40
    Width = 894
    Height = 418
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlDados: TPanel
      Left = 32
      Top = 5
      Width = 801
      Height = 379
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 40
        Top = 16
        Width = 737
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cupom Fiscais'
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label2: TLabel
        Left = 40
        Top = 190
        Width = 737
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Itens'
        Color = 14342874
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object dgNota: TwwDBGrid
        Left = 40
        Top = 38
        Width = 737
        Height = 146
        Selected.Strings = (
          'id_fiscal'#9'10'#9'Controle'#9'T'
          'numero'#9'10'#9'N'#250'mero'#9'T'
          'id_cfo'#9'5'#9'CFOP'#9'T'
          'int_nometme'#9'20'#9'Tipo Mov. Estoque'#9'T'
          'int_nomecpg'#9'20'#9'Condicao Pag.'#9'T'
          'dta_emissao'#9'10'#9'Emiss'#227'o'#9'T'
          'serie'#9'3'#9'S'#233'rie'#9'T'
          'int_nomeemi'#9'30'#9'Emitente'#9'T')
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
      object dgItens: TwwDBGrid
        Left = 40
        Top = 210
        Width = 737
        Height = 120
        Selected.Strings = (
          'id_item'#9'10'#9'C'#243'digo'#9'T'
          'int_desc_item'#9'30'#9'Descri'#231#227'o'#9'T'
          'int_und_venda'#9'4'#9'Und'#9'T'
          'int_nomecor'#9'10'#9'Cor'#9'T'
          'int_nometam'#9'4'#9'Tamanho'#9'T'
          'qtde'#9'7'#9'Qtde'#9'T'
          'vlr_unitario'#9'13'#9'Vlr.Unit'#225'rio'#9'T'
          'vlr_desconto'#9'13'#9'Vlr. Desc'#9'T'
          'vlr_liquido'#9'13'#9'Vlr.Total'#9'T')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoIte
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
      end
      object btnGerarNfe: TcxButton
        Left = 512
        Top = 338
        Width = 129
        Height = 25
        Caption = 'Gerar NFe'
        TabOrder = 2
        OnClick = btnGerarNfeClick
      end
      object btnSair: TcxButton
        Left = 656
        Top = 338
        Width = 123
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
        TabOrder = 3
        OnClick = btnSairClick
      end
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_CXA
    Left = 752
    Top = 109
  end
  object dsoIte: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE_CXA
    Left = 752
    Top = 293
  end
end
