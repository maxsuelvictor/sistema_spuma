object PCP_FM_M_ORS_FIN: TPCP_FM_M_ORS_FIN
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  ClientHeight = 505
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    998
    505)
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 998
    Height = 30
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Gerar Financeiro da Ordem de Faturamento'
    Color = clBackground
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = False
    ExplicitTop = -4
    ExplicitWidth = 1054
  end
  object pnlDados: TPanel
    Left = 8
    Top = 33
    Width = 1001
    Height = 468
    Anchors = []
    BevelOuter = bvNone
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object lbTituloGrid: TLabel
      Left = 2
      Top = 54
      Width = 309
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ordem de faturamento em aberto'
      Color = 14342874
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object lbRomaneio: TLabel
      Left = 362
      Top = 153
      Width = 95
      Height = 13
      Caption = 'Relat'#243'rio de carga :'
    end
    object lbData: TLabel
      Left = 557
      Top = 153
      Width = 30
      Height = 13
      Caption = 'Data :'
    end
    object lbResponsavel: TLabel
      Left = 664
      Top = 153
      Width = 68
      Height = 13
      Caption = 'Respons'#225'vel :'
    end
    object lbObservacao: TLabel
      Left = 392
      Top = 85
      Width = 65
      Height = 13
      Caption = 'Observa'#231#227'o :'
    end
    object lblResponsavel: TLabel
      Left = 388
      Top = 63
      Width = 68
      Height = 13
      Caption = 'Respons'#225'vel :'
      FocusControl = txtResponsavelNome
    end
    object lblEmissao: TLabel
      Left = 713
      Top = 40
      Width = 45
      Height = 13
      Caption = 'Emiss'#227'o :'
    end
    object Label53: TLabel
      Left = 569
      Top = 40
      Width = 32
      Height = 13
      Caption = 'Rev.:'
      Color = 15921906
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblCod: TLabel
      Left = 362
      Top = 40
      Width = 94
      Height = 13
      Caption = 'Ord. Faturamento :'
      Color = 15921906
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbMotorista: TLabel
      Left = 639
      Top = 63
      Width = 52
      Height = 13
      Caption = 'Motorista :'
      FocusControl = txtMotorista
    end
    object lbPedido: TLabel
      Left = 418
      Top = 108
      Width = 39
      Height = 13
      Caption = 'Pedido :'
    end
    object lbCliente: TLabel
      Left = 547
      Top = 109
      Width = 40
      Height = 13
      Caption = 'Cliente :'
    end
    object Label8: TLabel
      Left = 404
      Top = 176
      Width = 52
      Height = 13
      Caption = 'Vlr. Bruto :'
      FocusControl = txtObservacao
    end
    object Label9: TLabel
      Left = 568
      Top = 176
      Width = 53
      Height = 13
      Caption = 'Vlr. Desc. :'
      FocusControl = txtObservacao
    end
    object Label13: TLabel
      Left = 725
      Top = 176
      Width = 43
      Height = 13
      Caption = 'Vlr. Liq. :'
      FocusControl = txtObservacao
    end
    object Label20: TLabel
      Left = 12
      Top = 390
      Width = 15
      Height = 13
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label28: TLabel
      Left = 135
      Top = 390
      Width = 15
      Height = 13
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label1: TLabel
      Left = 33
      Top = 390
      Width = 87
      Height = 13
      Caption = 'Financeiro a gerar'
    end
    object Label7: TLabel
      Left = 156
      Top = 390
      Width = 86
      Height = 13
      Caption = 'Financeiro gerado'
    end
    object Label14: TLabel
      Left = 334
      Top = 131
      Width = 123
      Height = 13
      Caption = 'Condi'#231#227'o de pagamento :'
    end
    object dgPrincipal: TwwDBGrid
      Left = 2
      Top = 74
      Width = 309
      Height = 310
      TabStop = False
      Selected.Strings = (
        'id_ors'#9'10'#9'Controle'
        'dta_emissao'#9'10'#9'Emiss'#227'o'
        'int_nomeres'#9'24'#9'Respons'#225'vel')
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
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = dgPrincipalCalcCellColors
    end
    object txtRomaneio: TDBEdit
      Left = 463
      Top = 150
      Width = 78
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'id_rom'
      DataSource = dso
      ReadOnly = True
      TabOrder = 1
    end
    object txtDataRom: TDBEdit
      Left = 593
      Top = 150
      Width = 66
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'int_dta_rom'
      DataSource = dso
      ReadOnly = True
      TabOrder = 2
    end
    object txtRespRom: TDBEdit
      Left = 738
      Top = 150
      Width = 117
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'int_nomeresp_rom'
      DataSource = dso
      ReadOnly = True
      TabOrder = 3
    end
    object gbxFiltro: TGroupBox
      AlignWithMargins = True
      Left = 0
      Top = 417
      Width = 311
      Height = 48
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 2
      Caption = 'Filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object cbbPesquisa: TComboBox
        Left = 4
        Top = 17
        Width = 138
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'Ord. de Faturamento'
        OnChange = cbbPesquisaChange
        Items.Strings = (
          'Ord. de Faturamento'
          'Respons'#225'vel'
          'Data de Emiss'#227'o'
          'Observa'#231#227'o'
          'Pedido')
      end
      object txtPesquisa: TEdit
        Left = 146
        Top = 17
        Width = 126
        Height = 21
        TabOrder = 1
        OnKeyDown = txtPesquisaKeyDown
      end
      object btnFiltro: TcxButton
        Left = 277
        Top = 16
        Width = 23
        Height = 23
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = ImgPequena
        OptionsImage.Layout = blGlyphTop
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnFiltroClick
      end
    end
    object btnIniciar: TButton
      Left = 2
      Top = 7
      Width = 87
      Height = 39
      Caption = 'Iniciar acerto financeiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      WordWrap = True
      OnClick = btnIniciarClick
    end
    object btnCancelar: TButton
      Left = 88
      Top = 7
      Width = 75
      Height = 39
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      WordWrap = True
      OnClick = btnCancelarClick
    end
    object gbDados: TGroupBox
      Left = 322
      Top = 200
      Width = 633
      Height = 265
      Enabled = False
      TabOrder = 7
      object Label2: TLabel
        Left = 11
        Top = 6
        Width = 610
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Titulos'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label3: TLabel
        Left = 11
        Top = 62
        Width = 148
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Entradas'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label12: TLabel
        Left = 87
        Top = 78
        Width = 54
        Height = 13
        Caption = 'Vlr.Entrada'
      end
      object Label11: TLabel
        Left = 11
        Top = 78
        Width = 55
        Height = 13
        Caption = 'Forma pgto'
      end
      object Label4: TLabel
        Left = 11
        Top = 114
        Width = 148
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'Gera'#231#227'o do Titulos'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label6: TLabel
        Left = 11
        Top = 133
        Width = 55
        Height = 13
        Caption = 'Forma pgto'
      end
      object Label10: TLabel
        Left = 87
        Top = 133
        Width = 68
        Height = 13
        Caption = 'Qtde.Parcelas'
      end
      object dgFormaPagamento: TwwDBGrid
        Left = 170
        Top = 158
        Width = 451
        Height = 102
        Selected.Strings = (
          'int_nomefpg'#9'12'#9'Forma de Pgto'#9'F'
          'dias'#9'3'#9'Dias'#9'F'
          'dta_vencimento'#9'9'#9'Vencimento'#9'F'
          'vlr_titulo'#9'8'#9'Vlr. T'#237'tulo'#9'F'
          'che_banco'#9'4'#9'Banco'#9'F'
          'che_agencia'#9'6'#9'Ag.'#9'F'
          'che_conta'#9'9'#9'C.Corrente'#9'F'
          'che_numero'#9'9'#9'Nro'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        OnRowChanged = dgFormaPagamentoRowChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clWhite
        DataSource = dsoTitulos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 6
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        OnMouseUp = dgFormaPagamentoMouseUp
        object dgFormaPagamentoIButton: TwwIButton
          Left = -1
          Top = -1
          Width = 22
          Height = 22
          AllowAllUp = True
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            18000000000068020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF33333333333333
            3333333333333333333333333333333333333333333333333333333333FFFFFF
            0000FFFFFF333333333333333333333333333333333333333333333333333333
            333333333333333333FFFFFF0000FFFFFF333333333333333333333333333333
            333333333333333333333333333333333333333333FFFFFF0000FFFFFF333333
            3333333333333333333333333333333333333333333333333333333333333333
            33FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000}
          OnClick = dgFormaPagamentoIButtonClick
        end
      end
      object txtVlrEntrada: TJvValidateEdit
        Left = 91
        Top = 93
        Width = 72
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        TabOrder = 1
        OnExit = txtVlrEntradaExit
      end
      object txtFpgEntrada: TJvComboEdit
        Left = 10
        Top = 93
        Width = 72
        Height = 21
        ClickKey = 114
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
        TabOrder = 0
        Text = ''
        OnButtonClick = txtFpgEntradaButtonClick
        OnExit = txtFpgEntradaExit
        NumbersOnly = True
      end
      object txtGerFpg: TJvComboEdit
        Left = 11
        Top = 152
        Width = 72
        Height = 21
        ClickKey = 114
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
        TabOrder = 2
        Text = ''
        OnButtonClick = txtGerFpgButtonClick
        OnExit = txtGerFpgExit
        NumbersOnly = True
      end
      object txtQtdeParc: TEdit
        Left = 91
        Top = 152
        Width = 72
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 3
        Text = '0'
        OnExit = txtQtdeParcExit
      end
      object pnTitulos: TPanel
        Left = 196
        Top = 56
        Width = 432
        Height = 98
        BevelOuter = bvNone
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 5
        object lblFormaPagamento: TLabel
          Left = 0
          Top = 3
          Width = 102
          Height = 13
          Caption = 'Forma de Pagamento'
        end
        object lblDias: TLabel
          Left = 196
          Top = 3
          Width = 20
          Height = 13
          Caption = 'Dias'
          FocusControl = txtDias
        end
        object lblVencimento: TLabel
          Left = 247
          Top = 3
          Width = 55
          Height = 13
          Caption = 'Vencimento'
          FocusControl = txtDias
        end
        object Label5: TLabel
          Left = 340
          Top = 3
          Width = 45
          Height = 13
          Caption = 'Vlr. T'#237'tulo'
        end
        object cbbFormaPagamento: TwwDBLookupCombo
          Left = 0
          Top = 18
          Width = 190
          Height = 21
          Ctl3D = True
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F'
            'CODIGO'#9'1'#9'Codigo'#9'F')
          DataField = 'id_forma_pag'
          DataSource = dsoTitulos
          LookupTable = dmGeral.BUS_CD_C_FPG
          LookupField = 'id_forma_pag'
          Style = csDropDownList
          ParentCtl3D = False
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cbbFormaPagamentoEnter
          OnExit = cbbFormaPagamentoExit
        end
        object txtDias: TDBEdit
          Left = 194
          Top = 18
          Width = 50
          Height = 21
          Ctl3D = True
          DataField = 'dias'
          DataSource = dsoTitulos
          ParentCtl3D = False
          TabOrder = 1
          OnExit = txtDiasExit
        end
        object txtVencimento: TDBEdit
          Left = 247
          Top = 18
          Width = 91
          Height = 21
          Ctl3D = True
          DataField = 'dta_vencimento'
          DataSource = dsoTitulos
          ParentCtl3D = False
          TabOrder = 2
          OnExit = txtVencimentoExit
        end
        object txtVlrTitulos: TwwDBEdit
          Left = 340
          Top = 18
          Width = 85
          Height = 21
          Color = clWhite
          Ctl3D = True
          DataField = 'vlr_titulo'
          DataSource = dsoTitulos
          ParentCtl3D = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = txtVlrTitulosExit
        end
        object gbCheque: TGroupBox
          Left = 2
          Top = 43
          Width = 425
          Height = 55
          Caption = ' Dados do cheque'
          TabOrder = 4
          object lblBanco: TLabel
            Left = 16
            Top = 15
            Width = 29
            Height = 13
            Caption = 'Banco'
          end
          object lblAgencia: TLabel
            Left = 73
            Top = 15
            Width = 38
            Height = 13
            Caption = 'Ag'#234'ncia'
          end
          object lblContaCorrente: TLabel
            Left = 144
            Top = 15
            Width = 57
            Height = 13
            Caption = 'C. Corrente'
          end
          object lblNCheque: TLabel
            Left = 212
            Top = 15
            Width = 52
            Height = 13
            Caption = 'N'#186' Cheque'
          end
          object lblEmitente: TLabel
            Left = 283
            Top = 15
            Width = 42
            Height = 13
            Caption = 'Emitente'
          end
          object txtBanco: TDBEdit
            Left = 16
            Top = 29
            Width = 56
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'che_banco'
            DataSource = dsoTitulos
            ParentCtl3D = False
            TabOrder = 0
          end
          object txtAgencia: TDBEdit
            Left = 73
            Top = 29
            Width = 70
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'che_agencia'
            DataSource = dsoTitulos
            ParentCtl3D = False
            TabOrder = 1
          end
          object txtContaCorrente: TDBEdit
            Left = 144
            Top = 29
            Width = 66
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'che_conta'
            DataSource = dsoTitulos
            ParentCtl3D = False
            TabOrder = 2
          end
          object txtNCheque: TDBEdit
            Left = 212
            Top = 29
            Width = 69
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'che_numero'
            DataSource = dsoTitulos
            ParentCtl3D = False
            TabOrder = 3
          end
          object txtEmitenteChq: TDBEdit
            Left = 283
            Top = 29
            Width = 136
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'che_emitente'
            DataSource = dsoTitulos
            ParentCtl3D = False
            TabOrder = 4
            OnExit = txtEmitenteChqExit
          end
        end
      end
      object btnAddFormaPagamento: TBitBtn
        Left = 169
        Top = 73
        Width = 23
        Height = 23
        Glyph.Data = {
          9E020000424D9E0200000000000036000000280000000E0000000E0000000100
          18000000000068020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333333333333333333
          33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF333333333333333333333333FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333
          3333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF33333333333333
          3333333333333333333333333333333333333333333333333333333333FFFFFF
          0000FFFFFF333333333333333333333333333333333333333333333333333333
          333333333333333333FFFFFF0000FFFFFF333333333333333333333333333333
          333333333333333333333333333333333333333333FFFFFF0000FFFFFF333333
          3333333333333333333333333333333333333333333333333333333333333333
          33FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333333333333333333
          33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF333333333333333333333333FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333
          3333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000}
        TabOrder = 4
        OnClick = btnAddFormaPagamentoClick
      end
      object btnImportVencto: TBitBtn
        Left = 10
        Top = 27
        Width = 54
        Height = 25
        Hint = 'Importa os vencimentos do pedido'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000010170000101700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D75757578C8C
          8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD8D8D84A4A4A3333333333338D8D8DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D54949493333333333333333
          333333338B8B8BFDFDFDFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1EEEEEEFBFBFBDB
          DBDB4949493333333333333333333333333333333333338D8D8DFFFFFFEFEFEF
          A6A6A67C7C7C757575727272ACACACE4E4E4BEBEBEA9A9A93636363333333333
          33686868C5C5C5C6C6C6EDEDED8686869797979E9E9E9696969999999D9D9DCC
          CCCCE6E6E6D9D9D93737373333333333337D7D7DFFFFFFFFFFFFCACACA9D9D9D
          7474747A7A7A8A8A8A9A9A9A9A9A9A8F8F8FC7C7C7D5D5D53535353333333333
          33787878FFFFFFFFFFFFCDCDCD5C5C5C9B9B9BA5A5A59090907F7F7F75757578
          7878BFBFBFDEDEDE3333333333333333337B7B7BFFFFFFFFFFFFA1A1A1C0C0C0
          C0C0C09494949696969C9C9C9B9B9B8B8B8B717171EAEAEABABABA9999999B9B
          9BDBDBDBFFFFFFFFFFFFE5E5E59999996B6B6B8686869D9D9D9999998D8D8D9E
          9E9EAAAAAA7E7E7ED5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9C808080
          B0B0B0929292787878A6A6A6A8A8A8929292C0C0C08989899D9D9DFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF8F8F8F9494943939392C2C2C2323239E9E9EF0F0F06C
          6C6C5D5D5DB7B7B7F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9C313131
          303030727272A2A2A2949494E9E9E9C9C9C92121216C6C6CFCFCFCFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA8A8A8313131404040E3E3E3E1E1E1E7E7E7DDDDDD86
          86862D2D2D555555F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF696969
          303030D5D5D5D9D9D95252524E4E4E2F2F2F434343BDBDBDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6A6A6A68D8D8DBDBDBD6060605757578A
          8A8AD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 7
        OnClick = btnImportVenctoClick
      end
    end
    object txtObservacao: TDBEdit
      Left = 463
      Top = 82
      Width = 392
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'observacao'
      DataSource = dso
      ReadOnly = True
      TabOrder = 8
    end
    object txtResponsavelNome: TDBEdit
      Left = 463
      Top = 59
      Width = 170
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'int_nomeres'
      DataSource = dso
      ReadOnly = True
      TabOrder = 9
    end
    object txtCodRev: TDBEdit
      Left = 607
      Top = 36
      Width = 60
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'rev_lme'
      DataSource = dso
      Enabled = False
      ReadOnly = True
      TabOrder = 10
    end
    object txtcod: TDBEdit
      Left = 463
      Top = 36
      Width = 60
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'id_ors'
      DataSource = dso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object dpkEmissao: TDBEdit
      Left = 764
      Top = 36
      Width = 91
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'dta_emissao'
      DataSource = dso
      ReadOnly = True
      TabOrder = 12
    end
    object txtMotorista: TDBEdit
      Left = 698
      Top = 59
      Width = 157
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'int_nomemta'
      DataSource = dso
      ReadOnly = True
      TabOrder = 13
    end
    object btnGerar: TButton
      Left = 162
      Top = 7
      Width = 75
      Height = 39
      Caption = 'Gerar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      WordWrap = True
      OnClick = btnGerarClick
    end
    object btnSair: TButton
      Left = 236
      Top = 7
      Width = 75
      Height = 39
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      WordWrap = True
      OnClick = btnSairClick
    end
    object txtPedido: TDBEdit
      Left = 463
      Top = 105
      Width = 78
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'id_pedido'
      DataSource = dso
      ReadOnly = True
      TabOrder = 16
    end
    object txtCliente: TDBEdit
      Left = 593
      Top = 104
      Width = 262
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'int_nomecli'
      DataSource = dso
      ReadOnly = True
      TabOrder = 17
    end
    object txtVlrBruto: TDBEdit
      Left = 463
      Top = 173
      Width = 78
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'vlr_bruto'
      DataSource = dso
      ReadOnly = True
      TabOrder = 18
    end
    object txtVlrDesc: TDBEdit
      Left = 627
      Top = 173
      Width = 78
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'vlr_desconto'
      DataSource = dso
      ReadOnly = True
      TabOrder = 19
    end
    object txtVlrLiq: TDBEdit
      Left = 775
      Top = 173
      Width = 80
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'vlr_liquido'
      DataSource = dso
      ReadOnly = True
      TabOrder = 20
    end
    object txtDescCND: TDBEdit
      Left = 463
      Top = 127
      Width = 392
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'int_desc_cpg'
      DataSource = dso
      ReadOnly = True
      TabOrder = 21
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.PCP_CD_M_ORS
    Left = 164
    Top = 141
  end
  object dsoTitulos: TwwDataSource
    DataSet = dmGeral.PCP_CD_M_ORS_TIT
    Left = 172
    Top = 189
  end
  object ImgPequena: TImageList
    ColorDepth = cd32Bit
    Height = 14
    Width = 14
    Left = 970
    Top = 43
    Bitmap = {
      494C01011200000180010E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000038000000460000000100200000000000403D
      0000000000000000000000000000000000000005003C004803DA0024019A000A
      0054000200250000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FA
      F700438C47008BB88D00DEEBDF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002002B005904F3003402BA0032
      02B7003D03CA001D018A00000008000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000067A26A00A0C5
      A200106D1500006305000D6B120051955400ACCCAE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D003702BF000700470000
      00000024019A006204FF0025019C000000050000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063050064A0
      67002278260000630500006305000063050008680D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000001D018A0025019C0001
      0022002A01A7006204FF006204FF002601A00000000500000000000000000000
      0000000000000000000000000000000000000000000000000000026407006CA5
      6F00217725000063050000630500006305000E6C130000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005003D005904F30062
      04FF006204FF006204FF006204FF006204FF002801A30000000B000000000000
      0000000000000000000000000000000000000000000000000000026407006CA5
      6F00217725000063050000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002001300710060
      04FD006204FF006204FF006204FF006204FF006204FF002901A40000000A0000
      0000000000000000000000000000000000000000000000000000026407006DA6
      700018721D000063050000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000012
      006F006204FF006204FF006204FF006204FF006204FF006204FF002C02AB0000
      00000000000000000000000000000000000000000000000000000264070063A0
      66006BA46E00478E4B0000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000012006E005E04FA006204FF006204FF006204FF006204FF003102B40004
      00360000001900000000000000000000000000000000000000000264070063A0
      66006BA46E00478E4B0000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000011006C005E04F9006204FF006204FF002D02AC000B0056004A
      03DD000A00540000000000000000000000000000000000000000026407006DA6
      700018721D000063050000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000011006C006204FF002D02AD00090051004803DB0019
      0180001B01850011006C00000000000000000000000000000000026407006CA5
      6F00217725000063050000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000060041000D005D004903DC0018007E0016
      0078006204FF003A03C400000000000000000000000000000000026407006CA5
      6F00217725000063050000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000010006A001C01880018007F0062
      04FF005604EF00070048000000000000000000000000000000000063050064A0
      6700227826000063050000630500006305000465090000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001001F005704F0004F
      04E60009004F000000000000000000000000000000000000000067A26A00A1C5
      A300116D16000063050000630500126E17005396560000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004000200290001
      002300000000000000000000000000000000000000000000000000000000F8FB
      F8003A863E0069A36C00AECDB000E8F1E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089B78B00136F180086B5
      8800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008AB78C0000630500006305000A69
      0F00000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008BB88D000063050000630500006305008AB7
      8C00000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEADE000063050099C19B000000
      0000000000000000000000000000DDEADE00448D480000630500006305003382
      3700CCE0CD00000000000000000000000000EFF5EF008EBA9000468E4A002C7E
      300053965600ABCCAD00DDEADE000E6C130000630500006305008AB78C000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEADE000063050099C19B000000
      0000000000000000000000000000CCE0CD0033823700EEF5EE00000000003382
      3700227826000000000000000000C5DCC6001C7420002A7D2E0086B5880098C0
      9A006DA6700017711C00207724000E6C130018721D008BB88D00000000000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEADE000063050099C19B000000
      00000000000000000000000000000000000000000000000000000000000088B6
      8A000063050000000000E4EEE50015701A006DA67000D2E3D30078AC7B0074AA
      7700CFE2D000E2EDE3003C8840001D752100DDEADE0000000000000000000000
      0000000000000063050000630500006305000063050000630500006305000063
      0500006305000063050000630500006305000063050000000000000000000063
      0500006305000063050000630500006305000063050000630500006305000063
      050000630500006305000063050000000000DDEADE000063050099C19B000000
      0000000000000000000000000000000000000000000000000000DDEADE003382
      370055975800000000006CA56F003C884000D1E3D2001A731E004B914F00A9CA
      AB00E2EDE30000000000E7F0E70016701B00ACCCAE0000000000000000000000
      0000000000000063050000630500006305000063050000630500006305000063
      0500006305000063050000630500006305000063050000000000000000000063
      0500006305000063050000630500006305000063050000630500006305000063
      050000630500006305000063050000000000DDEADE0000630500006305000063
      05000063050066A1690000000000000000000000000099C19B00006305003382
      370000000000000000002B7D2F00AACBAC004C915000619E6400000000000000
      000000000000000000000000000068A36B005295550000000000000000000000
      0000000000000063050000630500006305000063050000630500006305000063
      0500006305000063050000630500006305000063050000000000000000000063
      0500006305000063050000630500006305000063050000630500006305000063
      050000630500006305000063050000000000DDEADE000063050099C19B000000
      0000000000000000000000000000000000000000000000000000DDEADE00116D
      160088B68A00000000000E6C1300C1D9C200488F4C00E2EDE300000000000000
      000000000000000000000000000089B78B002A7D2E0000000000000000000000
      0000000000000063050000630500006305000063050000630500006305000063
      0500006305000063050000630500006305000063050000000000000000000063
      0500006305000063050000630500006305000063050000630500006305000063
      050000630500006305000063050000000000DDEADE000063050099C19B000000
      000000000000000000000000000000000000000000000000000000000000448D
      4800448D48000000000022782600ACCCAE00B2D0B40000000000000000000000
      000000000000000000000000000078AC7B00458D490000000000000000000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEADE000063050099C19B000000
      0000000000000000000000000000EEF5EE0033823700EEF5EE00DDEADE00116D
      160077AC7A000000000054965700509453000000000000000000000000000000
      00000000000000000000FAFCFA00217725008DB98F0000000000000000000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEADE0000630500006305000063
      050000630500006305002278260000000000448D48000063050000630500448D
      4800EEF5EE0000000000CDE0CE0005660A0098C09A0000000000000000000000
      000000000000FDFEFD0066A169001C742000F0F6F00000000000000000000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009BC29D0005660A0051955400AECDB000C3DA
      C4009FC4A1003583390019721E00C7DDC8000000000000000000000000000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CADFCB0056985900237827000F6C
      14002C7E30006CA56F00E1EDE200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000704003C603805DA301C039A0E0800540201002500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000008472904BC1B0F0174020100210000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000302002B774507F3452804BA432704B7523004CA2616028A000000080000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E1B0298120A015F734306EF844C07FF764507F23D24
      03AE0D0800530000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000D492B04BF0A05004700000000301C039A844C07FF311C039C0000
      0005000000000000000000000000000000000000000000000000000000000000
      00000000000000000000844C07FF301C039B623906DD844C07FF844C07FF844C
      07FF7C4807F70000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002616028A311C039C02010022382003A7844C07FF844C07FF331E
      03A0000000050000000000000000000000000000000000000000000000000000
      00000000000000000000824B07FD2B190293633A06DE844C07FF844C07FF844C
      07FF754407F10000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000704003D774507F3844C07FF844C07FF844C07FF844C07FF844C
      07FF351F03A30000000B00000000000000000000000000000000000000000000
      00000000000000000000824B07FD2B190293633A06DE844C07FF844C07FF844C
      07FF744307F000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF0000000000000000844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000
      00000000000000000002190F0171824B07FD844C07FF844C07FF844C07FF844C
      07FF844C07FF362003A40000000A000000000000000000000000000000000000
      00000000000000000000824B07FD2B1902926C3F06E7844C07FF844C07FF844C
      07FF744307F000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF0000000000000000844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000
      0000000000000000000000000000180E016F844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF3B2203AB000000000000000000000000000000000000
      00000000000000000000824B07FD311C039C2C1A0294442804B8844C07FF844C
      07FF744307F000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF0000000000000000844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000
      000000000000000000000000000000000000180E016E7E4907FA844C07FF844C
      07FF844C07FF844C07FF412504B4050300360100001900000000000000000000
      00000000000000000000824B07FD311C039C2C1A0294442804B8844C07FF844C
      07FF744307F000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF0000000000000000844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000
      00000000000000000000000000000000000000000000170D016C7E4807F9844C
      07FF844C07FF3B2203AC0F080156623906DD0E08005400000000000000000000
      00000000000000000000824B07FD2B1902926C3F06E7844C07FF844C07FF844C
      07FF744307F00000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000170D016C844C
      07FF3C2303AD0D070051603805DB2113028023140285170D016C000000000000
      00000000000000000000824B07FD2B190293633A06DE844C07FF844C07FF844C
      07FF744307F00000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000805
      0041110A015D613806DC1F12017E1D100178844C07FF4D2D04C4000000000000
      00000000000000000000824B07FD2B190293633A06DE844C07FF844C07FF844C
      07FF744307F00000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000160D016A251502882012017F844C07FF734306EF0A060048000000000000
      00000000000000000000844C07FF301C039B623906DD844C07FF844C07FF844C
      07FF804A07FB0000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101001F744307F06A3D06E60C07004F00000000000000000000
      000000000000000000002E1B0298110A015E724206EE844C07FF844C07FF7142
      06ED3B2203AC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000403010029020100230000000000000000000000000000
      0000000000000000000000000000000000074E2D04C52D1A02960D0700510100
      0017000000000000000000000000000000000202023C252525DA1212129A0505
      0554010101250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00081B1B1BBC0A0A0A7400000021000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C100176704106EC1D1101790101012B2D2D2DF31B1B1BBA1A1A
      1AB7202020CA0E0E0E8A00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111111980707
      075F2B2B2BEF313131FF2C2C2CF2171717AE0505055300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B0F0175844C07FF844C07FF794607F50000000D1C1C1CBF030303470000
      00001212129A323232FF1414149C000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313131FF1212
      129B252525DD313131FF313131FF313131FF2E2E2EF700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B0F
      0174844C07FF844C07FF844C07FF1B0F0175000000000F0F0F8A1111119C0000
      0022161616A7323232FF323232FF141414A00000000500000000000000000000
      0000000000000000000000000000000000000000000000000000313131FD1010
      1093262626DE313131FF313131FF313131FF2C2C2CF100000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000201
      0022462804BB844C07FF844C07FF543104CC0502003300000000000000000000
      000000000010190F0171452804B9593405D33B2203AC0E080054020100227544
      07F1844C07FF844C07FF1B0F017500000000000000000202023D2E2E2EF33232
      32FF323232FF323232FF323232FF333333FF141414A30000000B000000000000
      0000000000000000000000000000000000000000000000000000313131FD1010
      1093262626DE313131FF313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000502
      0033543104CC0000001100000000543104CC623906DD00000000000000000604
      003A683D06E35B3505D51D110179150C01672B1902926C3F06E8643A06DF7544
      07F16C3F06E71B0F017400000000000000000000000000000002090909713232
      32FD323232FF323232FF323232FF323232FF323232FF151515A40000000A0000
      0000000000000000000000000000000000000000000000000000313131FD1010
      1092282828E7313131FF313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000000
      00000000000000000000000000001C100177844C07FF000000000100001B6E40
      06EA2B1902920402002D241502872716028B040200300101001D4C2C04C3673C
      06E2020100220000000000000000000000000000000000000000000000000909
      096F323232FF323232FF323232FF323232FF323232FF323232FF171717AB0000
      0000000000000000000000000000000000000000000000000000313131FD1212
      129C10101094191919B8313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000000
      0000000000000000000002010022543104CC3A2103AA000000002B1902934C2C
      04C30402002E6A3D06E5412504B40F0801560101001D00000000010000186E3F
      06E90D0800530000000000000000000000000000000000000000000000000000
      00000909096E303030FA323232FF323232FF323232FF323232FF181818B40202
      0236000000190000000000000000000000000000000000000000313131FD1212
      129C10101094191919B8313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF844C07FF844C07FF844C07FF2F1B0299000000000000
      000000000000150C0166844C07FF543104CC00000000000000005B3505D40E08
      0055412504B3321D039E00000000000000000000000000000000000000002E1B
      02973C2303AD0000000000000000000000000000000000000000000000000000
      0000000000000808086C303030F9323232FF323232FF161616AC050505562525
      25DD060606540000000000000000000000000000000000000000313131FD1010
      1092282828E7313131FF313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000000
      0000000000000000000002010022724206EE1C10017700000000754407F10704
      003E432704B70101001D00000000000000000000000000000000000000001C10
      01765B3505D50000000000000000000000000000000000000000000000000000
      000000000000000000000909096C323232FF161616AD05050551252525DB0C0C
      0C800E0E0E850606066C00000000000000000000000000000000313131FD1010
      1093262626DE313131FF313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000000
      0000000000000000000000000000462804BB462804BB00000000623906DD0D08
      00530C06004D0000000000000000000000000000000000000000000000002415
      0287452804BA0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303410606065D252525DC0C0C0C7E0B0B
      0B78323232FF202020C400000000000000000000000000000000313131FD1010
      1093262626DE313131FF313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000000
      0011543104CC0000001102010022724206EE25150288000000003B2203AB3E24
      03AF00000000000000000000000000000000000000000000000000000005633A
      06DE1A0F01720000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808086A0E0E0E880C0C0C7F3232
      32FF2C2C2CEF0303034800000000000000000000000000000000313131FF1212
      129B252525DD313131FF313131FF313131FF303030FB00000000000000000000
      000002010022844C07FF844C07FF844C07FF844C07FF844C07FF623906DD0000
      0000462804BB844C07FF844C07FF462804BB0000001100000000050200327E49
      07FA150C016700000000000000000000000000000000000000022F1B0299683D
      06E30000000F0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001F2D2D2DF02B2B
      2BE60404044F0000000000000000000000000000000000000000111111980606
      065E2B2B2BEE313131FF313131FF2A2A2AED161616AC00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000140B
      01647E4907FA3D2403AE0D0700510704003C120A0160523004CA6A3D06E60603
      0038000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004010101290000
      0023000000000000000000000000000000000000000000000000000000000000
      00071E1E1EC51010109605050551000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005030035392103A9613806DC744307F0593405D32B1902930101001E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B762B2B2BEC0B0B
      0B79000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0A0A75323232FF323232FF2E2E
      2EF50000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A74323232FF323232FF323232FF0A0A
      0A750000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000022323232FF070707660000
      0000000000000000000000000000000000221B1B1BBB323232FF323232FF2020
      20CC01010133000000000000000000000000000000100A0A0A711A1A1AB92222
      22D3161616AC05050554000000222D2D2DF1323232FF323232FF0A0A0A750000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000022323232FF070707660000
      000000000000000000000000000001010133202020CC00000011000000002020
      20CC252525DD00000000000000000202023A272727E3232323D50B0B0B790808
      086710101092292929E8272727DF2D2D2DF1292929E70A0A0A74000000000000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000022323232FF070707660000
      0000000000000000000000000000000000000000000000000000000000000B0B
      0B77323232FF000000000000001B2A2A2AEA101010920101012D0E0E0E870F0F
      0F8B010101300000001D1D1D1DC3272727E20000002200000000000000000000
      000000000000323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF00000000000000003232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF0000000000000022323232FF070707660000
      0000000000000000000000000000000000000000000000000000000000222020
      20CC161616AA00000000101010931D1D1DC30101012E292929E5191919B40505
      05560000001D00000000000000182A2A2AE90505055300000000000000000000
      000000000000323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF00000000000000003232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF0000000000000022323232FF323232FF3232
      32FF323232FF1212129900000000000000000000000007070766323232FF2020
      20CC0000000000000000222222D405050555191919B31313139E000000000000
      000000000000000000000000000011111197171717AD00000000000000000000
      000000000000323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF00000000000000003232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF0000000000000022323232FF070707660000
      0000000000000000000000000000000000000000000000000000000000222C2C
      2CEE0B0B0B77000000002D2D2DF10202023E1A1A1AB70000001D000000000000
      00000000000000000000000000000B0B0B76232323D500000000000000000000
      000000000000323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF00000000000000003232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF0000000000000022323232FF070707660000
      0000000000000000000000000000000000000000000000000000000000001B1B
      1BBB1B1B1BBB00000000252525DD050505530404044D00000000000000000000
      00000000000000000000000000000E0E0E871A1A1ABA00000000000000000000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000022323232FF070707660000
      000000000000000000000000000000000011202020CC00000011000000222C2C
      2CEE0E0E0E8800000000161616AB171717AF0000000000000000000000000000
      0000000000000000000000000005262626DE0A0A0A7200000000000000000000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000022323232FF323232FF3232
      32FF323232FF323232FF252525DD000000001B1B1BBB323232FF323232FF1B1B
      1BBB000000110000000001010132303030FA0808086700000000000000000000
      0000000000000000000212121299272727E30000000F00000000000000000000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000007070764303030FA171717AE050505510202
      023C070707601F1F1FCA292929E6020202380000000000000000000000000000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020235161616A9252525DC2D2D
      2DF0222222D3101010930000001E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000038000000460000000100010000000000300200000000000000000000
      000000000000000000000000FFFFFF000003E1F0000000000003C07000000000
      0003C070000000000003C070000000000003C070000000000003C07000000000
      0003C070000000000003C070000000000003C070000000000003C07000000000
      0003C070000000000003C070000000000003C070000000000003E0F000000000
      FFFFFF8FFFFFFF00FFFFFF0F87FFFF00FFFFFE0F87FFFF001E07001F87FFFF00
      1E26003F87FFFF001FE40078006001001FC4047800600100038C3E7800600100
      1FC43E78006001001FE47E7F87FFFF001E04FC7F87FFFF000104787F87FFFF00
      FFFE00FF87FFFF00FFFF01FFFFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
  end
end
