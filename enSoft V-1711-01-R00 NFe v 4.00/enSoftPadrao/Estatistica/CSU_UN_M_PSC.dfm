object CSU_FM_M_PSC: TCSU_FM_M_PSC
  Left = 0
  Top = 0
  ClientHeight = 510
  ClientWidth = 1150
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 30
    Width = 1150
    Height = 480
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlCentral: TPanel
      Left = 53
      Top = 38
      Width = 916
      Height = 435
      BevelOuter = bvNone
      TabOrder = 0
      object btnSair: TSpeedButton
        Left = 751
        Top = 337
        Width = 155
        Height = 25
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          9E020000424D9E0200000000000036000000280000000E0000000E0000000100
          18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD2D2D2808080D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF1809FFFFFFFFFFFFFFFFFFFFFFFF8B8B8B9D9D9D3232323535357070
          70C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFF60DFFFFFFFFFFFFFFFFFFFFFFFF3333
          338282823232323232323232323B3B3BFFFFFFFFFFFFFFFFFFFFFFFF1C0EFFFF
          FFFFFFFFFFFFFFFFFFFF3F3F3F8686863232323232323232323F3F3FFFFFFFFF
          FFFFFFFFFFFFFFFFF60DFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F86868632323232
          3232323232404040FFFFFFFFFFFFFFFFFFFFFFFF1C0EFFFFFFFFFFFFFFFFFFFF
          FFFF3F3F3F868686323232323232323232404040FFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFF3E3E3E8787878686863C3C3C323232404040
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3E3E3E878787
          8686863C3C3C323232404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFF3F3F3F868686323232323232323232404040FFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3F3F3F8686863232323232323232
          32404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3F3F
          3F868686323232323232323232404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFF333333828282323232323232323232353535FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF8B8B8B9E9E9E32323232
          3232404040808080FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD1D1D1797979B7B7B7EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000}
        ParentFont = False
        OnClick = btnSairClick
      end
      object gbClientesEncontrados: TGroupBox
        Left = 0
        Top = 0
        Width = 450
        Height = 80
        Caption = ' Quantidade de clientes encontrados no per'#237'odo '
        TabOrder = 0
        object txtClientesEncontrados: TEdit
          Left = 104
          Top = 52
          Width = 225
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 0
          Text = 'txtClientesEncontrados'
        end
      end
      object gbEmComparacao: TGroupBox
        Left = 456
        Top = 0
        Width = 450
        Height = 80
        Caption = 
          ' 4 - Em compara'#231#227'o com outras alternativas de colch'#245'es, a COLCH'#213 +
          'ES GLOBO '#233':'
        TabOrder = 4
        object lblMelhor: TLabel
          Left = 3
          Top = 36
          Width = 103
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Melhor'
        end
        object lblIgual: TLabel
          Left = 173
          Top = 36
          Width = 103
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Igual'
        end
        object lblPior: TLabel
          Left = 340
          Top = 36
          Width = 103
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Pior'
        end
        object lblQtdeResponderam: TLabel
          Left = 3
          Top = 20
          Width = 440
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Qtde de pessoas que responderam:'
        end
        object txtMelhorQtde: TEdit
          Left = 4
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 0
          Text = 'txtPessoasMenos1AnoPer'
        end
        object txtMelhorPer: TEdit
          Left = 57
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 1
          Text = 'txtMelhorPer'
        end
        object txtIgualQtde: TEdit
          Left = 173
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 2
          Text = 'txtIgualQtde'
        end
        object txtIgualPer: TEdit
          Left = 226
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 3
          Text = 'txtIgualPer'
        end
        object txtPiorQtde: TEdit
          Left = 340
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 4
          Text = 'txtPiorQtde'
        end
        object txtPiorPer: TEdit
          Left = 393
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 5
          Text = 'txtPiorQtde'
        end
      end
      object gbCompraraUtilizara: TGroupBox
        Left = 0
        Top = 94
        Width = 450
        Height = 80
        Caption = 
          ' 1 - Voc'#234' comprar'#225' ou utilizar'#225' o colch'#227'o da COLCH'#213'ES GLOBO nova' +
          'mente?'
        TabOrder = 1
        object lblQtdeSim: TLabel
          Left = 3
          Top = 36
          Width = 203
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Qtde de respostas SIM'
        end
        object lblQtdeNao: TLabel
          Left = 240
          Top = 36
          Width = 203
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Qtde de respostas N'#195'O'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object txtQtdeSimQtde: TEdit
          Left = 3
          Top = 52
          Width = 150
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 0
          Text = 'txtQtdeSimQtde'
        end
        object txtQtdeSimPer: TEdit
          Left = 156
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 1
          Text = 'txtQtdeSimPer'
        end
        object txtQtdeNaoQtde: TEdit
          Left = 240
          Top = 52
          Width = 150
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 2
          Text = 'txtQtdeNaoQtde'
        end
        object txtQtdeNaoPer: TEdit
          Left = 393
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 3
          Text = 'txtQtdeNaoPer'
        end
      end
      object gbRecomendaria: TGroupBox
        Left = 0
        Top = 188
        Width = 450
        Height = 80
        Caption = 
          ' 2 - Voc'#234' recomendaria o colch'#227'o da COLCH'#213'ES GLOBO para outras p' +
          'essoas?'
        TabOrder = 2
        object lblQtdeRespostasSim: TLabel
          Left = 3
          Top = 36
          Width = 203
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Qtde de respostas SIM'
        end
        object lblQtdeRespostasNao: TLabel
          Left = 240
          Top = 36
          Width = 203
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Qtde de respostas N'#195'O'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object txtQtdeRespostasSimQtde: TEdit
          Left = 3
          Top = 52
          Width = 150
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 0
          Text = 'txtQtdeRespostasSimQtde'
        end
        object txtQtdeRespostasSimPer: TEdit
          Left = 156
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 1
          Text = 'txtQtdeRespostasSimPer'
        end
        object txtQtdeRespostasNaoQte: TEdit
          Left = 240
          Top = 52
          Width = 150
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 2
          Text = 'txtQtdeRespostasNaoQte'
        end
        object txtQtdeRespostasNaoPer: TEdit
          Left = 393
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 3
          Text = 'txtQtdeRespostasNaoPer'
        end
      end
      object gbHaQuantoTempo: TGroupBox
        Left = 0
        Top = 282
        Width = 450
        Height = 80
        Caption = 
          ' 3 - H'#225' quanto tempo o Sr.(a) vem utilizando o colch'#227'o de espuma' +
          ' da COLCH'#213'ES GLOBO?'
        TabOrder = 3
        object lblPessoasMenos1Ano: TLabel
          Left = 3
          Top = 36
          Width = 203
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Qtde de pessoas com menos de 1 ano'
        end
        object lblPessoasMais1Ano: TLabel
          Left = 240
          Top = 36
          Width = 203
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Qtde de pessoas com mais de 1 ano'
        end
        object txtPessoasMenos1AnoQtde: TEdit
          Left = 4
          Top = 52
          Width = 150
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 0
          Text = 'txtPessoasMenos1AnoQtde'
        end
        object txtPessoasMenos1AnoPer: TEdit
          Left = 156
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 1
          Text = 'txtPessoasMenos1AnoPer'
        end
        object txtPessoasMais1AnoQtde: TEdit
          Left = 240
          Top = 52
          Width = 150
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 2
          Text = 'txtPessoasMais1AnoQtde'
        end
        object txtPessoasMais1AnoPer: TEdit
          Left = 393
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 3
          Text = 'txtPessoasMais1AnoPer'
        end
      end
      object gbGrauSatisfacao: TGroupBox
        Left = 456
        Top = 94
        Width = 450
        Height = 80
        Caption = 
          ' 5 - Qual o seu grau de satisfa'#231#227'o geral com o seu colch'#227'o da CO' +
          'LCH'#213'ES GLOBO?'
        TabOrder = 5
        object lblExcelente: TLabel
          Left = 3
          Top = 36
          Width = 103
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Excelente'
        end
        object lblBom: TLabel
          Left = 115
          Top = 36
          Width = 103
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Bom'
        end
        object lblRazoavel: TLabel
          Left = 227
          Top = 36
          Width = 103
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Razo'#225'vel'
        end
        object lblRuim: TLabel
          Left = 340
          Top = 36
          Width = 103
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Ruim'
        end
        object txtExcelenteQtde: TEdit
          Left = 3
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 0
          Text = 'txtExcelenteQtde'
        end
        object txtExcelentePer: TEdit
          Left = 56
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 1
          Text = 'txtExcelentePer'
        end
        object txtBomQtde: TEdit
          Left = 116
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 2
          Text = 'txtExcelentePer'
        end
        object txtBomPer: TEdit
          Left = 169
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 3
          Text = 'txtBomPer'
        end
        object txtRazoavelQtde: TEdit
          Left = 229
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 4
          Text = 'txtRazoavelQtde'
        end
        object txtRazoavelPer: TEdit
          Left = 282
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 5
          Text = 'txtRazoavelPer'
        end
        object txtRuimQtde: TEdit
          Left = 340
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 6
          Text = 'txtRuimQtde'
        end
        object txtRuimPer: TEdit
          Left = 393
          Top = 52
          Width = 50
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 7
          Text = 'txtRuimPer'
        end
      end
      object gbResultado: TGroupBox
        Left = 456
        Top = 188
        Width = 450
        Height = 80
        Caption = ' Resultado da satisfa'#231#227'o (Excelente + Bom)'
        TabOrder = 6
        object lblQtdePessoas: TLabel
          Left = 3
          Top = 36
          Width = 203
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Qtde de pessoas'
        end
        object lblPer: TLabel
          Left = 239
          Top = 36
          Width = 203
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = '(%)'
        end
        object txtQtdePessoas: TEdit
          Left = 3
          Top = 52
          Width = 203
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 0
          Text = 'txtQtdePessoas'
        end
        object txtPerPessoas: TEdit
          Left = 240
          Top = 52
          Width = 203
          Height = 21
          TabStop = False
          Alignment = taCenter
          Color = 14342874
          ReadOnly = True
          TabOrder = 1
          Text = 'txtPerPessoas'
        end
      end
      object gbFiltro: TGroupBox
        Left = 456
        Top = 282
        Width = 289
        Height = 80
        Caption = ' Filtro '
        TabOrder = 7
        object lblAte: TLabel
          Left = 117
          Top = 56
          Width = 16
          Height = 13
          Alignment = taCenter
          Caption = 'at'#233
        end
        object lblPeriodo: TLabel
          Left = 11
          Top = 36
          Width = 257
          Height = 14
          AutoSize = False
          Caption = 'Per'#237'odo das pesquisas realizadas:'
        end
        object btnFiltro: TSpeedButton
          Left = 245
          Top = 51
          Width = 23
          Height = 23
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF4D0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFCBCBCB4C4C4C858585FFFFFFFB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCD414141333333444444FFFFFF310EFFFF
            FFFFFFFFFFFFFFFFFFFFDEDEDEC6C6C6D6D6D6FFFFFFE1E1E13F3F3F33333340
            4040CACACAFFFFFF0000FFFFFFFFFFFFE2E2E27171716060606868685F5F5F66
            66667C7C7C333333414141CCCCCCFFFFFFFFFFFF1C0EFFFFFFE8E8E84E4E4E95
            9595BDBDBDABABABD1D1D1B1B1B13838387C7C7CDEDEDEFFFFFFFFFFFFFFFFFF
            CC3FFFFFFF828282868686A9A9A95252529D9D9DE0E0E0FFFFFFB1B1B1666666
            FFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFF5D5D5DBCBCBC555555E0E0E0FFFFFF
            FFFFFFFFFFFFF9F9F9595959D6D6D6FFFFFFFFFFFFFFFFFFAA02FFFFFF565656
            BABABA9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C5C5CC6C6C6FFFFFFFFFF
            FFFFFFFF0000FFFFFF5D5D5DBDBDBDF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFF1F1
            F1555555DFDFDFFFFFFFFFFFFFFFFFFF0000FFFFFF989898666666FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF8D8D8D6D6D6DFDFDFDFFFFFFFFFFFFFFFFFF520EFFFF
            FFF6F6F6676767696969C9C9C9E8E8E8D5D5D58181814D4D4DE0E0E0FFFFFFFF
            FFFFFFFFFFFFFFFFED3FFFFFFFFFFFFFF9F9F99999995F5F5F4F4F4F59595981
            8181E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            AA02}
          OnClick = btnFiltroClick
        end
        object dpkDataInicial: TJvDateEdit
          Left = 11
          Top = 52
          Width = 90
          Height = 21
          ShowNullDate = False
          TabOrder = 0
        end
        object dpkDataFinal: TJvDateEdit
          Left = 149
          Top = 52
          Width = 90
          Height = 21
          ShowNullDate = False
          TabOrder = 1
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1150
    Height = 30
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
      Width = 1150
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblCodificacaoLMestre: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 4
        Width = 1145
        Height = 25
        Margins.Left = 0
        Margins.Top = 4
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Lista Mestre'
        Color = 3355443
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -1
        ExplicitWidth = 1195
      end
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = -5
        Width = 1150
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Resultado da pesquisa ao Consumidor Final'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ExplicitTop = -4
        ExplicitWidth = 1200
      end
      object pnlBaixo: TPanel
        Left = 0
        Top = 0
        Width = 1150
        Height = 0
        Align = alTop
        BevelOuter = bvNone
        Color = 3355443
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
end
