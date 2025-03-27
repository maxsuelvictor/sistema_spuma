object CSU_FM_M_NFE: TCSU_FM_M_NFE
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 550
  ClientWidth = 812
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
    Width = 812
    Height = 30
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 194
      Height = 30
      Align = alTop
      Alignment = taCenter
      Caption = 'Consulta Nota Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 30
    Width = 812
    Height = 520
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlDados: TPanel
      Left = 10
      Top = 6
      Width = 777
      Height = 485
      BevelOuter = bvNone
      TabOrder = 0
      object Label5: TLabel
        Left = 63
        Top = 185
        Width = 698
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Itens'
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
      object Label6: TLabel
        Left = 63
        Top = 5
        Width = 698
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Notas Fiscais'
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
      object btnSair: TSpeedButton
        Left = 556
        Top = 427
        Width = 150
        Height = 25
        Caption = 'Sair'
        Glyph.Data = {
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
        OnClick = btnSairClick
      end
      object Label7: TLabel
        Left = 100
        Top = 167
        Width = 50
        Height = 13
        Caption = 'Cancelada'
      end
      object Label8: TLabel
        Left = 189
        Top = 167
        Width = 49
        Height = 13
        Caption = 'Denegada'
      end
      object Label9: TLabel
        Left = 76
        Top = 25
        Width = 351
        Height = 13
        Caption = 
          'Para enviar XML deve-se selecionar registro clicando na caixa de' +
          ' sele'#231#227'o '
      end
      object dbGridNfe: TwwDBGrid
        Left = 63
        Top = 44
        Width = 698
        Height = 120
        ControlType.Strings = (
          'int_selecao;CheckBox;True;False')
        Selected.Strings = (
          'int_selecao'#9'3'#9#9'F'
          'id_fiscal'#9'10'#9'Controle'#9'T'
          'numero'#9'10'#9'Numero'#9'T'
          'dta_emissao'#9'15'#9'Emiss'#227'o'#9'T'
          'dta_movimento'#9'10'#9'Movimento'#9'T'
          'id_emitente'#9'10'#9'Cod. Emitente'#9'T'
          'int_nomeemi'#9'30'#9'Emitente'#9'T'
          'vlr_liquido'#9'15'#9'Vlt.Total'#9'T')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        OnRowChanged = dbGridNfeRowChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoNfe
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
        OnCalcCellColors = dbGridNfeCalcCellColors
      end
      object gbFiltro: TGroupBox
        Left = 65
        Top = 328
        Width = 457
        Height = 153
        Caption = 'Filtro'
        TabOrder = 1
        object Label2: TLabel
          Left = 214
          Top = 74
          Width = 16
          Height = 13
          Caption = 'at'#233
        end
        object Label1: TLabel
          Left = 34
          Top = 74
          Width = 84
          Height = 13
          Caption = 'Periodo emiss'#227'o :'
        end
        object Label3: TLabel
          Left = 69
          Top = 100
          Width = 49
          Height = 13
          Caption = 'Emitente :'
        end
        object Label4: TLabel
          Left = 74
          Top = 126
          Width = 44
          Height = 13
          Caption = 'N'#250'mero :'
        end
        object btnFiltra: TButton
          Left = 314
          Top = 125
          Width = 75
          Height = 25
          Caption = 'Filtrar'
          TabOrder = 0
          OnClick = btnFiltraClick
        end
        object rgTipoNota: TRadioGroup
          Left = 16
          Top = 16
          Width = 425
          Height = 49
          Caption = 'Tipo de Nota'
          Columns = 3
          ItemIndex = 1
          Items.Strings = (
            'Entrada'
            'Saida'
            'Devolu'#231#227'o Cliente'
            'Devolu'#231#227'o Fornecedor'
            'Frete')
          TabOrder = 1
        end
        object deFinal: TJvDateEdit
          Left = 233
          Top = 71
          Width = 90
          Height = 21
          ShowNullDate = False
          TabOrder = 4
        end
        object deInicial: TJvDateEdit
          Left = 121
          Top = 71
          Width = 90
          Height = 21
          ShowNullDate = False
          TabOrder = 2
        end
        object txtIdEmit: TJvComboEdit
          Left = 121
          Top = 97
          Width = 90
          Height = 21
          ClickKey = 114
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
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
          TabOrder = 3
          Text = ''
          OnButtonClick = txtIdEmitButtonClick
          OnExit = txtIdEmitExit
        end
        object txtEmitente: TEdit
          Left = 217
          Top = 98
          Width = 172
          Height = 21
          TabStop = False
          Color = 14342874
          ReadOnly = True
          TabOrder = 5
        end
        object txtNumero: TEdit
          Left = 121
          Top = 124
          Width = 90
          Height = 21
          TabOrder = 6
        end
      end
      object dbGridNfeIte: TwwDBGrid
        Left = 63
        Top = 205
        Width = 698
        Height = 120
        Selected.Strings = (
          'id_item'#9'10'#9'C'#243'd. Item'#9'T'
          'int_desc_item'#9'38'#9'Descri'#231#227'o'#9'T'
          'int_und_venda'#9'5'#9'UND'#9'T'
          'qtde'#9'10'#9'Qtde'#9'T'
          'vlr_unitario'#9'19'#9'Vlr.Unit'#225'rio'#9'T'
          'vlr_mercadoria'#9'13'#9'Vlr. Mercadoria'#9'T')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoNfeIte
        TabOrder = 2
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
      object btnEnviarEmail: TButton
        Left = 556
        Top = 396
        Width = 150
        Height = 25
        Caption = 'Enviar por E-mail'
        TabOrder = 3
        OnClick = btnEnviarEmailClick
      end
      object btnImprimirDanfe: TButton
        Left = 556
        Top = 365
        Width = 148
        Height = 25
        Caption = 'Imprimir Danfe'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnImprimirDanfeClick
      end
      object Panel1: TPanel
        Left = 81
        Top = 166
        Width = 15
        Height = 15
        Color = clRed
        ParentBackground = False
        TabOrder = 5
      end
      object Panel2: TPanel
        Left = 168
        Top = 166
        Width = 15
        Height = 15
        Color = clPurple
        ParentBackground = False
        TabOrder = 6
      end
    end
  end
  object dsoNfe: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE
    Left = 768
    Top = 242
  end
  object dsoNfeIte: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE
    Left = 714
    Top = 243
  end
  object NFE: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = Danfe
    Left = 770
    Top = 307
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 5
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 698
    Top = 307
  end
  object Danfe: TACBrNFeDANFEFR
    PathPDF = 'C:\'
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = NFE
    TipoDANFE = tiSemGeracao
    EspessuraBorda = 1
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 778
    Top = 363
  end
end
