object CSU_FM_C_FOR: TCSU_FM_C_FOR
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Consulta'
  ClientHeight = 550
  ClientWidth = 835
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
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 835
    Height = 507
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlCentral: TPanel
      Left = 16
      Top = 6
      Width = 793
      Height = 509
      BevelOuter = bvNone
      TabOrder = 0
      object btnSair: TSpeedButton
        Left = 589
        Top = 467
        Width = 150
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
      object txtCidadeDescricao: TDBText
        Left = 176
        Top = 318
        Width = 142
        Height = 21
        Color = 14342874
        DataField = 'int_nomecid'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object txtEstadoDescricao: TDBText
        Left = 321
        Top = 318
        Width = 40
        Height = 21
        Color = 14342874
        DataField = 'INT_UF'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object lblEndereco: TLabel
        Left = 25
        Top = 275
        Width = 52
        Height = 13
        Caption = 'Endere'#231'o :'
      end
      object lblCEP: TLabel
        Left = 51
        Top = 298
        Width = 26
        Height = 13
        Caption = 'CEP :'
      end
      object lblCidade: TLabel
        Left = 37
        Top = 321
        Width = 40
        Height = 13
        Caption = 'Cidade :'
      end
      object lblTelFixo: TLabel
        Left = 29
        Top = 344
        Width = 48
        Height = 13
        Caption = 'Tel. Fixo :'
      end
      object lblSituacao: TLabel
        Left = 661
        Top = 390
        Width = 48
        Height = 13
        Caption = 'Situa'#231#227'o :'
        Visible = False
      end
      object lblLimite: TLabel
        Left = 43
        Top = 368
        Width = 34
        Height = 13
        Caption = 'Limite :'
      end
      object lblSaldo: TLabel
        Left = 222
        Top = 368
        Width = 33
        Height = 13
        Caption = 'Saldo :'
      end
      object lblFax: TLabel
        Left = 448
        Top = 344
        Width = 25
        Height = 13
        Caption = 'Fax :'
      end
      object lblBairro: TLabel
        Left = 438
        Top = 321
        Width = 35
        Height = 13
        Caption = 'Bairro :'
      end
      object lblEmail: TLabel
        Left = 438
        Top = 298
        Width = 35
        Height = 13
        Caption = 'E-mail :'
      end
      object lblComplemento: TLabel
        Left = 401
        Top = 275
        Width = 72
        Height = 13
        Caption = 'Complemento :'
      end
      object lblNumero: TLabel
        Left = 619
        Top = 275
        Width = 44
        Height = 13
        Caption = 'N'#250'mero :'
      end
      object lblSexo: TLabel
        Left = 575
        Top = 314
        Width = 3
        Height = 13
      end
      object lblCaixaPostal: TLabel
        Left = 189
        Top = 298
        Width = 66
        Height = 13
        Caption = 'Caixa Postal :'
      end
      object lblTelMovel: TLabel
        Left = 199
        Top = 344
        Width = 56
        Height = 13
        Caption = 'Tel. M'#243'vel :'
      end
      object lblValidade: TLabel
        Left = 686
        Top = 344
        Width = 47
        Height = 13
        Caption = 'Validade :'
        Visible = False
      end
      object lblTipoFornecedor: TLabel
        Left = 388
        Top = 368
        Width = 85
        Height = 13
        Caption = 'Tipo Fornecedor :'
        Color = 15921906
        ParentColor = False
      end
      object dgItens: TwwDBGrid
        AlignWithMargins = True
        Left = 0
        Top = 18
        Width = 769
        Height = 250
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        ControlType.Strings = (
          'ativo;CheckBox;True;False')
        Selected.Strings = (
          'id_fornecedor'#9'12'#9'C'#243'digo'#9'F'
          'ativo'#9'5'#9'Ativo'#9'F'
          'descricao'#9'30'#9'Nome do Fornecedor'#9'F'
          'fantasia'#9'21'#9'Fantasia'#9'F'
          'tel_fixo'#9'15'#9'Telefone'#9'F'
          'doc_cnpj'#9'19'#9'CNPJ/CPF'#9'F'
          'doc_ie'#9'20'#9'Insc. Estadual'#9'F'
          'doc_im'#9'17'#9'Insc. Municipal'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        OnRowChanged = dgItensRowChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
      end
      object gbxFiltro: TGroupBox
        AlignWithMargins = True
        Left = 11
        Top = 431
        Width = 348
        Height = 61
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Filtro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object lblCampoBusca: TLabel
          Left = 6
          Top = 15
          Width = 85
          Height = 13
          Caption = 'Campo da busca'
        end
        object lblTextoBuscado: TLabel
          Left = 110
          Top = 15
          Width = 101
          Height = 13
          Caption = 'Texto a ser buscado'
        end
        object cbbPesquisa: TComboBox
          Left = 4
          Top = 30
          Width = 100
          Height = 21
          Style = csDropDownList
          ItemIndex = 4
          TabOrder = 0
          Text = 'Nome Fantasia'
          OnChange = cbbPesquisaChange
          Items.Strings = (
            'C'#243'digo'
            'Descri'#231#227'o'
            'CPF/CNPJ'
            'Insc.Estadual'
            'Nome Fantasia')
        end
        object txtPesquisa: TEdit
          Left = 110
          Top = 30
          Width = 170
          Height = 21
          TabOrder = 1
          OnKeyDown = txtPesquisaKeyDown
        end
        object btnFiltra: TButton
          Left = 285
          Top = 30
          Width = 60
          Height = 21
          Caption = 'Filtrar'
          TabOrder = 2
          OnClick = btnFiltraClick
        end
      end
      object btnNotasFiscais: TButton
        Left = 433
        Top = 436
        Width = 150
        Height = 25
        Caption = 'Notas Fiscais'
        TabOrder = 2
        OnClick = btnNotasFiscaisClick
      end
      object btnFinanceiro: TButton
        Left = 589
        Top = 436
        Width = 150
        Height = 25
        Caption = 'Financeiro'
        TabOrder = 3
        OnClick = btnFinanceiroClick
      end
      object btnEstatistica: TButton
        Left = 433
        Top = 467
        Width = 150
        Height = 25
        Caption = 'Estat'#237'stica'
        Enabled = False
        TabOrder = 4
        OnClick = btnEstatisticaClick
      end
      object txtEndereco: TDBEdit
        Left = 83
        Top = 272
        Width = 278
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'endereco'
        DataSource = dso
        ReadOnly = True
        TabOrder = 5
      end
      object txtComplemento: TDBEdit
        Left = 479
        Top = 271
        Width = 120
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'end_complemento'
        DataSource = dso
        ReadOnly = True
        TabOrder = 6
      end
      object txtNumero: TDBEdit
        Left = 669
        Top = 271
        Width = 70
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'numero'
        DataSource = dso
        ReadOnly = True
        TabOrder = 7
      end
      object txtCEP: TDBEdit
        Left = 83
        Top = 295
        Width = 90
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'cep'
        DataSource = dso
        ReadOnly = True
        TabOrder = 8
      end
      object txtCaixaPostal: TDBEdit
        Left = 261
        Top = 294
        Width = 100
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'cp'
        DataSource = dso
        ReadOnly = True
        TabOrder = 9
      end
      object txtEmail: TDBEdit
        Left = 479
        Top = 294
        Width = 260
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'email'
        DataSource = dso
        ReadOnly = True
        TabOrder = 10
      end
      object txtCidade: TJvDBComboEdit
        Left = 83
        Top = 318
        Width = 90
        Height = 21
        ClickKey = 114
        DataField = 'id_cidade'
        DataSource = dso
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
        ReadOnly = True
        TabOrder = 11
      end
      object txtBairro: TDBEdit
        Left = 479
        Top = 318
        Width = 120
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'bairro'
        DataSource = dso
        ReadOnly = True
        TabOrder = 12
      end
      object txtTelFixo: TDBEdit
        Left = 83
        Top = 341
        Width = 90
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'tel_fixo'
        DataSource = dso
        ReadOnly = True
        TabOrder = 13
      end
      object txtTelMovel: TDBEdit
        Left = 261
        Top = 341
        Width = 100
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'tel_movel'
        DataSource = dso
        ReadOnly = True
        TabOrder = 14
      end
      object txtFax: TDBEdit
        Left = 479
        Top = 341
        Width = 120
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'fax'
        DataSource = dso
        ReadOnly = True
        TabOrder = 15
      end
      object txtSituacao: TDBEdit
        Left = 715
        Top = 387
        Width = 46
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'metodo2_situacao'
        DataSource = dso
        ReadOnly = True
        TabOrder = 16
        Visible = False
      end
      object txtLimite: TDBEdit
        Left = 83
        Top = 364
        Width = 90
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'lim_valor'
        DataSource = dso
        ReadOnly = True
        TabOrder = 17
      end
      object dpkValidade: TJvDBDateEdit
        Left = 661
        Top = 363
        Width = 98
        Height = 21
        DataField = 'metodo1_data_validade'
        DataSource = dso
        ReadOnly = True
        ShowNullDate = False
        TabOrder = 18
        Visible = False
      end
      object txtTipoForn: TwwDBLookupCombo
        Left = 479
        Top = 364
        Width = 120
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
        DataField = 'tipo_fornecedor'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_X_FOR_TFO
        LookupField = 'CODIGO'
        Color = clWhite
        ReadOnly = True
        TabOrder = 19
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object txtSaldo: TEdit
        Left = 261
        Top = 364
        Width = 100
        Height = 21
        Alignment = taRightJustify
        ReadOnly = True
        TabOrder = 20
        Text = 'txtSaldo'
      end
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
        Caption = 'Consulta Fornecedor'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitLeft = 2
        ExplicitTop = -13
        ExplicitWidth = 1150
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 25
      Width = 835
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_C_FOR
    Left = 711
    Top = 251
  end
end
