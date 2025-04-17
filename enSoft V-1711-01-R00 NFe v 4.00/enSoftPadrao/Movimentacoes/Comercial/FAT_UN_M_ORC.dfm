inherited FAT_FM_M_ORC: TFAT_FM_M_ORC
  Caption = 'Movimenta'#231#227'o'
  ClientHeight = 597
  ExplicitWidth = 1156
  ExplicitHeight = 626
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlEsquerda: TPanel
    Height = 567
    ExplicitHeight = 567
    inherited pnlFiltro: TPanel
      Top = 517
      ExplicitTop = 517
      inherited gbxFiltro: TGroupBox
        Caption = ' Filtro '
        inherited cbbPesquisa: TComboBox
          Width = 146
          ItemIndex = 0
          Text = 'C'#243'digo do or'#231'amento'
          OnChange = cbbPesquisaChange
          Items.Strings = (
            'C'#243'digo do or'#231'amento'
            'C'#243'digo do cliente'
            'Nome cliente'
            'Data do Or'#231'amento'
            'Vendedor')
          ExplicitWidth = 146
        end
        inherited txtPesquisa: TEdit
          Left = 153
          Width = 130
          ExplicitLeft = 153
          ExplicitWidth = 130
        end
        inherited btnFiltro: TcxButton
          Left = 281
          Top = 17
          Width = 25
          Height = 22
          OnClick = btnFiltroClick
          ExplicitLeft = 281
          ExplicitTop = 17
          ExplicitWidth = 25
          ExplicitHeight = 22
        end
        object txtPesquisaData: TJvDateEdit
          Left = 153
          Top = 18
          Width = 121
          Height = 21
          ShowNullDate = False
          TabOrder = 3
        end
      end
    end
    inherited pnlDatagrid: TPanel
      Top = 105
      Height = 362
      ExplicitTop = 105
      ExplicitHeight = 362
      inherited dbGrid: TwwDBGrid
        Height = 362
        Selected.Strings = (
          'id_orcamento'#9'15'#9'C'#243'd.Or'#231'amento'#9'F'
          'id_cliente'#9'15'#9'C'#243'd.Cliente'#9'F'
          'int_nomecli'#9'21'#9'Nome Cliente'#9'F')
        OnRowChanged = dbGridRowChanged
        OnCalcCellColors = dbGridCalcCellColors
        ExplicitHeight = 362
      end
      object pnReconectar: TPanel
        Left = 64
        Top = 272
        Width = 185
        Height = 41
        Caption = 'Reconectando...'
        TabOrder = 1
        Visible = False
      end
    end
    inherited pnlBotoes: TPanel
      Height = 105
      ExplicitHeight = 105
      inherited btnIncluir: TcxButton
        Left = 2
        ExplicitLeft = 2
      end
      inherited btnAlterar: TcxButton
        Left = 54
        ExplicitLeft = 54
      end
      inherited btnImprime: TcxButton
        TabOrder = 8
      end
      object btnAtualizaCont: TBitBtn
        Left = 1
        Top = 52
        Width = 310
        Height = 50
        Caption = 'Imprimir or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = btnAtualizaContClick
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 467
      Width = 310
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object pnlLegenda: TGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 3
        Width = 308
        Height = 45
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alBottom
        Caption = ' Legenda '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblAberto: TLabel
          Left = 25
          Top = 20
          Width = 35
          Height = 13
          Caption = 'Aberto'
        end
        object lblImportado: TLabel
          Left = 126
          Top = 20
          Width = 54
          Height = 13
          Caption = 'Importado'
        end
        object pnlAberto: TPanel
          Left = 4
          Top = 19
          Width = 15
          Height = 15
          BevelOuter = bvNone
          Color = clBlack
          ParentBackground = False
          TabOrder = 0
        end
        object Panel2: TPanel
          Left = 105
          Top = 19
          Width = 15
          Height = 15
          BevelOuter = bvNone
          Color = clHotLight
          ParentBackground = False
          TabOrder = 1
        end
      end
    end
  end
  inherited pnlDireita: TPanel
    Height = 567
    ExplicitHeight = 567
    inherited pnlDados: TPanel
      Left = 31
      Top = 11
      Width = 693
      Height = 545
      ExplicitLeft = 31
      ExplicitTop = 11
      ExplicitWidth = 693
      ExplicitHeight = 545
      object lblCodigo: TLabel
        Left = 141
        Top = 6
        Width = 48
        Height = 13
        Caption = 'C'#243'digo :'
        FocusControl = txtCodigo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCliente: TLabel
        Left = 147
        Top = 74
        Width = 42
        Height = 13
        Caption = 'Cliente :'
      end
      object lblDataEntrega: TLabel
        Left = 408
        Top = 99
        Width = 73
        Height = 13
        Caption = 'Prev. entrega :'
        Visible = False
      end
      object lblDataValidade: TLabel
        Left = 388
        Top = 52
        Width = 93
        Height = 13
        Caption = 'Data de Validade :'
      end
      object lblData: TLabel
        Left = 159
        Top = 52
        Width = 30
        Height = 13
        Caption = 'Data :'
      end
      object lblFormaPagamento: TLabel
        Left = 74
        Top = 145
        Width = 115
        Height = 13
        Caption = 'Forma de Pagamento :'
      end
      object lblCondicaoPagamento: TLabel
        Left = 57
        Top = 122
        Width = 132
        Height = 13
        Caption = 'Condi'#231#227'o de Pagamento :'
      end
      object lblObservacao: TLabel
        Left = 123
        Top = 169
        Width = 66
        Height = 13
        Caption = 'Observa'#231#227'o :'
      end
      object lblVlrDesconto2: TLabel
        Left = 102
        Top = 501
        Width = 74
        Height = 13
        Caption = 'Vlr. Desc. Serv.'
        Visible = False
      end
      object lblVlrDesconto3: TLabel
        Left = 405
        Top = 501
        Width = 77
        Height = 13
        Caption = 'Vlr. Desc. Prod.'
        Visible = False
      end
      object lblVlrProdLiquido: TLabel
        Left = 507
        Top = 501
        Width = 80
        Height = 13
        Caption = 'Vlr. Produto L'#237'q'
        Visible = False
      end
      object txtClienteNome: TDBText
        Left = 288
        Top = 71
        Width = 285
        Height = 21
        Color = 14342874
        DataField = 'INT_NOMECLI'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object lblVlrServicoLiquido: TLabel
        Left = 201
        Top = 501
        Width = 74
        Height = 13
        Caption = 'Vlr. Servi'#231'o L'#237'q'
        Visible = False
      end
      object lblVlrServico: TLabel
        Left = 3
        Top = 501
        Width = 56
        Height = 13
        Caption = 'Vlr. Servi'#231'o'
        Visible = False
      end
      object lblVlrProduto: TLabel
        Left = 303
        Top = 501
        Width = 62
        Height = 13
        Caption = 'Vlr. Produto'
        Visible = False
      end
      object lblVlrTotal2: TLabel
        Left = 608
        Top = 501
        Width = 48
        Height = 13
        Caption = 'Vlr. Total '
        Visible = False
      end
      object lblAtendente: TLabel
        Left = 133
        Top = 99
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vendedor :'
      end
      object Label53: TLabel
        Left = 475
        Top = 6
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
      object lblVendedor: TLabel
        Left = 129
        Top = 29
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Atendente :'
      end
      object lblTextoCondPgto: TLabel
        Left = 346
        Top = 118
        Width = 90
        Height = 22
        Alignment = taRightJustify
        Caption = 'Texto a imprimir da condi'#231#227'o de pgto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object txtCodigo: TDBEdit
        Left = 195
        Top = 2
        Width = 90
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'ID_ORCAMENTO'
        DataSource = dso
        Enabled = False
        ReadOnly = True
        TabOrder = 6
      end
      object txtCliente: TJvDBComboEdit
        Left = 195
        Top = 71
        Width = 90
        Height = 21
        ClickKey = 114
        DataField = 'ID_CLIENTE'
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
        TabOrder = 0
        OnButtonClick = txtClienteButtonClick
        OnExit = txtClienteExit
      end
      object cbbFormaPagamento: TwwDBLookupCombo
        Left = 195
        Top = 142
        Width = 378
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
        DataField = 'ID_FORMA_PAG'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FPG
        LookupField = 'ID_FORMA_PAG'
        Color = clWhite
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnEnter = cbbFormaPagamentoEnter
      end
      object cbbCondicaoPagamento: TwwDBLookupCombo
        Left = 195
        Top = 118
        Width = 151
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
        DataField = 'ID_CONDICAO_PAG'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CPG
        LookupField = 'ID_CONDICAO_PAG'
        Color = clWhite
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbCondicaoPagamentoEnter
        OnExit = cbbCondicaoPagamentoExit
      end
      object txtObservacao: TDBMemo
        Left = 195
        Top = 166
        Width = 378
        Height = 28
        DataField = 'OBS'
        DataSource = dso
        TabOrder = 4
      end
      object gbItens: TGroupBox
        Left = 3
        Top = 195
        Width = 690
        Height = 304
        Caption = ' Itens '
        TabOrder = 5
        object lblItemSobMed: TLabel
          Left = 3
          Top = 207
          Width = 109
          Height = 13
          Caption = 'Obs item sob medida'
        end
        object lblPerDescBasc: TLabel
          Left = 3
          Top = 249
          Width = 65
          Height = 13
          Caption = '% Desc b'#225'sic'
        end
        object lblDescBasc: TLabel
          Left = 71
          Top = 249
          Width = 63
          Height = 13
          Caption = 'Desc. b'#225'sico'
        end
        object lblPerDescEspecial: TLabel
          Left = 137
          Top = 249
          Width = 60
          Height = 13
          Caption = '% Desc esp.'
        end
        object lblDescEspecial: TLabel
          Left = 201
          Top = 249
          Width = 71
          Height = 13
          Caption = 'Desc. especial'
        end
        object lblBruto: TLabel
          Left = 302
          Top = 249
          Width = 56
          Height = 13
          Caption = 'Total Bruto'
        end
        object lblPerDesc: TLabel
          Left = 383
          Top = 250
          Width = 9
          Height = 13
          Caption = '%'
        end
        object lblVlrDesc: TLabel
          Left = 411
          Top = 249
          Width = 52
          Height = 13
          Caption = 'Desconto '
        end
        object lblFrete: TLabel
          Left = 561
          Top = 250
          Width = 46
          Height = 13
          Caption = 'Vlr. Frete'
          Visible = False
        end
        object lblTotalPed: TLabel
          Left = 639
          Top = 250
          Width = 42
          Height = 13
          Caption = 'Vlr.Total'
        end
        object Label2: TLabel
          Left = 478
          Top = 249
          Width = 63
          Height = 13
          Caption = 'Cubagem m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 541
          Top = 246
          Width = 5
          Height = 11
          Caption = '3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_Add_Itens: TBitBtn
          Left = 4
          Top = 38
          Width = 23
          Height = 23
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF6A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232323232323232
            32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232323232FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32323232323232
            3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF32323232323232
            3232323232323232323232323232323232323232323232323232323232FFFFFF
            0000FFFFFF323232323232323232323232323232323232323232323232323232
            323232323232323232FFFFFF0000FFFFFF323232323232323232323232323232
            323232323232323232323232323232323232323232FFFFFF0000FFFFFF323232
            3232323232323232323232323232323232323232323232323232323232323232
            32FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232323232323232
            32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232323232FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32323232323232
            3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000}
          TabOrder = 0
          OnClick = btn_Add_ItensClick
        end
        object grdItens: TwwDBGrid
          Left = 3
          Top = 66
          Width = 683
          Height = 135
          TabStop = False
          Selected.Strings = (
            'ID_ITEM'#9'10'#9'Item'#9'F'
            'INT_DESCITEM'#9'21'#9'Descri'#231#227'o'#9'F'
            'INT_UNIDADE'#9'4'#9'Und'#9'F'
            'int_nomecor'#9'10'#9'Cor'#9'F'
            'int_nometam'#9'10'#9'Tamanho'#9'F'
            'QTDE'#9'5'#9'Qtde'#9'F'
            'VLR_UNITARIO'#9'10'#9'Vlr. Unit'#225'rio'#9'F'
            'VLR_BRUTO'#9'10'#9'Vlr. Bruto'#9'F'
            'VLR_DESCONTO'#9'8'#9'Vlr. Desc'#9'F'
            'VLR_LIQUIDO'#9'10'#9'Vlr. Total'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsItens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ReadOnly = True
          TabOrder = 3
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnMouseUp = grdItensMouseUp
          object grdItensIButton: TwwIButton
            Left = -1
            Top = -1
            Width = 22
            Height = 22
            AllowAllUp = True
            Glyph.Data = {
              9E020000424D9E0200000000000036000000280000000E0000000E0000000100
              18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF7008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC108FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFC23FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFF32323232323232
              3232323232323232323232323232323232323232323232323232323232FFFFFF
              B102FFFFFF323232323232323232323232323232323232323232323232323232
              323232323232323232FFFFFF0080FFFFFF323232323232323232323232323232
              323232323232323232323232323232323232323232FFFFFFD83FFFFFFF323232
              3232323232323232323232323232323232323232323232323232323232323232
              32FFFFFF0080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFEE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              B102}
            OnClick = grdItensIButtonClick
          end
        end
        object pnItens: TPanel
          Left = 28
          Top = 21
          Width = 655
          Height = 40
          BevelOuter = bvNone
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
          OnExit = pnItensExit
          object lblItem: TLabel
            Left = 3
            Top = 4
            Width = 80
            Height = 13
            Caption = '<F7> C'#243'd. item'
          end
          object txtItemDescricao: TDBText
            Left = 101
            Top = 18
            Width = 189
            Height = 21
            Color = 14342874
            DataField = 'INT_DESCITEM'
            DataSource = dsItens
            ParentColor = False
            Transparent = False
          end
          object lblDescricao: TLabel
            Left = 101
            Top = 4
            Width = 49
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object Label1: TLabel
            Left = 293
            Top = 4
            Width = 22
            Height = 13
            Caption = 'Und'
          end
          object txtUnidade: TDBText
            Left = 293
            Top = 18
            Width = 33
            Height = 21
            Color = 14342874
            DataField = 'INT_UNIDADE'
            DataSource = dsItens
            ParentColor = False
            Transparent = False
          end
          object lblQtde: TLabel
            Left = 330
            Top = 4
            Width = 25
            Height = 13
            Caption = 'Qtde'
          end
          object lblVlrUnitario: TLabel
            Left = 384
            Top = 4
            Width = 62
            Height = 13
            Caption = 'Vlr. Unit'#225'rio'
          end
          object lblPerDesconto: TLabel
            Left = 457
            Top = 4
            Width = 36
            Height = 13
            Caption = '% Desc'
          end
          object lblVlrDesconto: TLabel
            Left = 511
            Top = 4
            Width = 69
            Height = 13
            Caption = 'Vlr. Desconto'
          end
          object lblVlrTotal: TLabel
            Left = 584
            Top = 4
            Width = 45
            Height = 13
            Caption = 'Vlr. Total'
          end
          object txtBuscaItem: TJvDBComboEdit
            Left = 1
            Top = 18
            Width = 94
            Height = 21
            ClickKey = 114
            DataField = 'ID_BUSCA_ITEM'
            DataSource = dsItens
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
            OnButtonClick = txtBuscaItemButtonClick
            OnExit = txtBuscaItemExit
            OnKeyDown = txtBuscaItemKeyDown
          end
          object txtQtde: TDBEdit
            Left = 330
            Top = 18
            Width = 51
            Height = 21
            Color = clWhite
            DataField = 'QTDE'
            DataSource = dsItens
            TabOrder = 1
            OnEnter = txtQtdeEnter
            OnExit = txtQtdeExit
          end
          object txtVlrUnitario: TDBEdit
            Left = 384
            Top = 18
            Width = 70
            Height = 21
            Color = clWhite
            DataField = 'VLR_UNITARIO'
            DataSource = dsItens
            TabOrder = 2
            OnEnter = txtVlrUnitarioEnter
            OnExit = txtVlrUnitarioExit
          end
          object txtVlrDesconto: TDBEdit
            Left = 509
            Top = 18
            Width = 70
            Height = 21
            Color = clWhite
            DataField = 'VLR_DESCONTO'
            DataSource = dsItens
            TabOrder = 4
            OnEnter = txtVlrDescontoEnter
            OnExit = txtVlrDescontoExit
          end
          object txtVlrTotal: TDBEdit
            Left = 583
            Top = 18
            Width = 74
            Height = 21
            TabStop = False
            Color = 16376287
            DataField = 'VLR_LIQUIDO'
            DataSource = dsItens
            ReadOnly = True
            TabOrder = 5
          end
          object txtPerDesconto: TDBEdit
            Left = 457
            Top = 18
            Width = 50
            Height = 21
            Color = clWhite
            DataField = 'per_desconto'
            DataSource = dsItens
            TabOrder = 3
            OnEnter = txtPerDescontoEnter
            OnExit = txtPerDescontoExit
          end
        end
        object pnlCorTamanho: TPanel
          Left = 126
          Top = 95
          Width = 558
          Height = 74
          TabOrder = 2
          Visible = False
          object lblTamanho: TLabel
            Left = 4
            Top = 4
            Width = 47
            Height = 13
            Caption = 'Tamanho'
          end
          object lblCor: TLabel
            Left = 140
            Top = 4
            Width = 18
            Height = 13
            Caption = 'Cor'
          end
          object lblMedida: TLabel
            Left = 273
            Top = 4
            Width = 131
            Height = 13
            Caption = 'Medida (Para a Produ'#231#227'o)'
            Visible = False
          end
          object cbbCor: TwwDBLookupCombo
            Left = 140
            Top = 18
            Width = 130
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'DESCRICAO'#9'20'#9'Descri'#231#227'o'#9'F')
            DataField = 'id_cor'
            DataSource = dsItens
            LookupTable = dmGeral.BUS_CD_C_COR
            LookupField = 'id_cor'
            Color = clWhite
            TabOrder = 1
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnEnter = cbbCorEnter
            OnExit = cbbCorExit
          end
          object cbbTamanho: TwwDBLookupCombo
            Left = 4
            Top = 18
            Width = 130
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'DESCRICAO'#9'20'#9'Descri'#231#227'o'#9'F')
            DataField = 'id_tamanho'
            DataSource = dsItens
            LookupTable = dmGeral.BUS_CD_C_TAM
            LookupField = 'id_tamanho'
            Color = clWhite
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnEnter = cbbTamanhoEnter
            OnExit = cbbTamanhoExit
          end
          object mmPcpObsIte: TDBMemo
            Left = 273
            Top = 18
            Width = 264
            Height = 47
            DataField = 'pcp_obs_item'
            DataSource = dsItens
            TabOrder = 2
            Visible = False
            OnEnter = mmPcpObsIteEnter
            OnExit = mmPcpObsIteExit
          end
        end
        object txtPcpObsItem: TDBMemo
          Left = 3
          Top = 221
          Width = 607
          Height = 21
          Color = 14342874
          DataField = 'pcp_obs_item'
          DataSource = dsItens
          ReadOnly = True
          TabOrder = 4
        end
        object txtPercDescBasc: TwwDBEdit
          Tag = 1
          Left = 3
          Top = 263
          Width = 66
          Height = 21
          Color = clWhite
          DataField = 'per_desc_basico'
          DataSource = dso
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtPercDescBascEnter
          OnExit = txtPercDescBascExit
        end
        object txtDescBasc: TwwDBEdit
          Tag = 1
          Left = 71
          Top = 263
          Width = 63
          Height = 21
          Color = clWhite
          DataField = 'vlr_desc_basico'
          DataSource = dso
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtDescBascEnter
          OnExit = txtDescBascExit
        end
        object txtPercDescEspecial: TwwDBEdit
          Tag = 1
          Left = 137
          Top = 263
          Width = 59
          Height = 21
          Color = clWhite
          DataField = 'per_desc_especial'
          DataSource = dso
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtPercDescEspecialEnter
          OnExit = txtPercDescEspecialExit
        end
        object txtDescEspecial: TwwDBEdit
          Tag = 1
          Left = 202
          Top = 263
          Width = 72
          Height = 21
          Color = clWhite
          DataField = 'vlr_desc_especial'
          DataSource = dso
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtDescEspecialEnter
          OnExit = txtDescEspecialExit
        end
        object txtVlrBruto: TwwDBEdit
          Left = 293
          Top = 263
          Width = 65
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'VLR_BRUTO'
          DataSource = dso
          ReadOnly = True
          TabOrder = 9
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtPerDesc: TwwDBEdit
          Left = 361
          Top = 263
          Width = 47
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'PER_DESCONTO'
          DataSource = dso
          ReadOnly = True
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtTotalVlrDesc: TwwDBEdit
          Tag = 1
          Left = 411
          Top = 263
          Width = 55
          Height = 21
          TabStop = False
          Color = clWhite
          DataField = 'VLR_DESCONTO'
          DataSource = dso
          TabOrder = 11
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtTotalVlrDescEnter
          OnExit = txtTotalVlrDescExit
        end
        object txtFrete: TwwDBEdit
          Left = 560
          Top = 263
          Width = 51
          Height = 21
          DataField = 'vlr_frete'
          DataSource = dso
          TabOrder = 13
          UnboundDataType = wwDefault
          Visible = False
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdTotalLiqItens: TwwDBEdit
          Left = 614
          Top = 263
          Width = 69
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'VLR_LIQUIDO'
          DataSource = dso
          ReadOnly = True
          TabOrder = 14
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit1: TwwDBEdit
          Left = 478
          Top = 263
          Width = 65
          Height = 21
          TabStop = False
          Color = clSkyBlue
          DataField = 'cubagem'
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object txtVlrDesc2: TDBEdit
        Left = 102
        Top = 517
        Width = 80
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'VLR_DESCONTO_SER'
        DataSource = dso
        ReadOnly = True
        TabOrder = 13
        Visible = False
      end
      object txtVlrDesconto3: TDBEdit
        Left = 405
        Top = 517
        Width = 80
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'VLR_DESCONTO_PRO'
        DataSource = dso
        ReadOnly = True
        TabOrder = 16
        Visible = False
      end
      object txtVlrProdLiquido: TDBEdit
        Left = 507
        Top = 517
        Width = 80
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'VLR_PRODUTOS_LIQ'
        DataSource = dso
        ReadOnly = True
        TabOrder = 17
        Visible = False
      end
      object txtVlrServicoLiquido: TDBEdit
        Left = 201
        Top = 517
        Width = 80
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'VLR_SERVICOS_LIQ'
        DataSource = dso
        ReadOnly = True
        TabOrder = 14
        Visible = False
      end
      object txtVlrServico: TDBEdit
        Left = 3
        Top = 517
        Width = 80
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'VLR_SERVICOS_BRU'
        DataSource = dso
        ReadOnly = True
        TabOrder = 12
        Visible = False
      end
      object txtVlrProduto: TDBEdit
        Left = 303
        Top = 517
        Width = 80
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'VLR_PRODUTOS_BRU'
        DataSource = dso
        ReadOnly = True
        TabOrder = 15
        Visible = False
      end
      object txtVlrTotal2: TDBEdit
        Left = 608
        Top = 517
        Width = 80
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'VLR_TOTAL'
        DataSource = dso
        ReadOnly = True
        TabOrder = 18
        Visible = False
      end
      object dpkData: TJvDBDateEdit
        Left = 195
        Top = 48
        Width = 90
        Height = 21
        TabStop = False
        DataField = 'DTA_ORCAMENTO'
        DataSource = dso
        ReadOnly = True
        Color = 14342874
        ShowNullDate = False
        TabOrder = 10
      end
      object dpkDataValidade: TJvDBDateEdit
        Left = 488
        Top = 48
        Width = 85
        Height = 21
        TabStop = False
        DataField = 'DTA_VALIDADE'
        DataSource = dso
        ReadOnly = True
        Color = 14342874
        ShowNullDate = False
        TabOrder = 11
      end
      object dpkDataEntrega: TJvDBDateEdit
        Left = 488
        Top = 95
        Width = 85
        Height = 21
        TabStop = False
        DataField = 'DTA_ENTREGA'
        DataSource = dso
        ReadOnly = True
        Color = 14342874
        ShowNullDate = False
        TabOrder = 9
      end
      object txtCodRev: TDBEdit
        Left = 513
        Top = 2
        Width = 60
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'rev_lme'
        DataSource = dso
        Enabled = False
        ReadOnly = True
        TabOrder = 7
      end
      object cbbVendedor: TwwDBLookupCombo
        Left = 195
        Top = 95
        Width = 182
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'30'#9'nome'#9'F')
        DataField = 'id_funcionario'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FUN
        LookupField = 'id_funcionario'
        Options = [loTitles]
        Style = csDropDownList
        Color = clWhite
        TabOrder = 8
        AutoDropDown = False
        ShowButton = False
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbVendedorEnter
      end
      object cbbAtendente: TwwDBLookupCombo
        Left = 195
        Top = 25
        Width = 182
        Height = 21
        TabStop = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'30'#9'nome'#9'F')
        DataField = 'id_atendente'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FU2
        LookupField = 'id_funcionario'
        Style = csDropDownList
        Color = clWhite
        ReadOnly = True
        TabOrder = 19
        AutoDropDown = False
        ShowButton = False
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object Button1: TButton
        Left = 579
        Top = 23
        Width = 75
        Height = 25
        Caption = 'fechar'
        TabOrder = 20
        Visible = False
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 579
        Top = 64
        Width = 75
        Height = 25
        Caption = 'reconnectar'
        TabOrder = 21
        Visible = False
        OnClick = Button2Click
      end
      object txtTextoCondPgto: TwwDBEdit
        Left = 440
        Top = 118
        Width = 133
        Height = 21
        DataField = 'sgq_texto_cond_pgto'
        DataSource = dso
        TabOrder = 2
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
      end
    end
  end
  inherited pnlTop: TJvPanel
    inherited pnlCima: TJvPanel
      inherited lblCodificacaoLMestre: TLabel
        ExplicitWidth = 993
      end
      inherited lblTitulo: TLabel
        Caption = 'Or'#231'amento de Venda'
        ExplicitWidth = 998
      end
    end
  end
  object dsItens: TwwDataSource [4]
    DataSet = dmGeral.FAT_CD_M_ORC_ITE
    OnStateChange = dsoStateChange
    Left = 64
    Top = 356
  end
  inherited dso: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_ORC
    Left = 64
    Top = 308
  end
  inherited imgBotoesAtivo: TImageList
    Bitmap = {
      494C01010800A800300218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202390000
      000E000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000012111111962B2B2BEC2020
      20CD1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B
      1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B
      1BBC1F1F1FC72F2F2FF6191919B6020202340000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000272727E31919
      19B3080808670000001700000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101092323232FE272727E10000
      0024000000130000001300000013000000130000001300000013000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      00130000001E222222D0323232FE191919B60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000000323232FF3232
      32FF323232FF2C2C2CEE0E0E0E890000000E0000000000000000000000000000
      0000000000000000000000000000000000002E2E2EF4323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF303030F80000000000000000000000000000
      0000000000000000000B1313139E323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF1C1C1CBF000000120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000010000
      0001000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF303030F7151515A501010128000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000000000000000
      0000000000000C0C0C7F323232FF191919B4161616A9161616A9161616A91616
      16A9161616A9161616A9161616A9161616A9191919B22B2B2BEB1C1C1CBF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000080303034310101092222222D3292929E82D2D
      2DF02A2A2AEA222222D311111198030303460000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000000000000000
      000000000000161616A9323232FF0000000B0000000000000000000000000000
      00000000000000000000000000000000000000000009191919B2323232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000191212129B292929E5323232FD323232FF323232FF3232
      32FF323232FF323232FF323232FF2B2B2BED0404044E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000000000000000
      000000000000161616A9323232FF00000000161616A9323232FF323232FF3232
      32FF323232FF1C1C1CC0000000160000000000000000161616A9323232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001D1C1C1CBF323232FF323232FF323232FF323232FE2E2E2EF52929
      29E62E2E2EF3323232FE323232FF1F1F1FC80000000700000012000000180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000000000040303
      0340050505561E1E1EC6323232FF000000000A0A0A70161616A9161616A91616
      16A9161616A90C0C0C800000000F0000000000000000161616A9323232FF0505
      0556030303480000000600000000000000000000000000000000000000000000
      00011212129A323232FE323232FF2E2E2EF3161616AA0404044D000000170000
      000A0000001404040448111111950000001E000000020E0E0E872C2C2CEF0E0E
      0E89010101320000000300000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000050505582A2A
      2AE9323232FF323232FF323232FF000000000A0A0A71161616AA161616AA1616
      16AA161616AA161616AA161616AA161616AA0000001D161616A9323232FF3232
      32FF2D2D2DF10D0D0D8500000000000000000000000000000000000000000303
      03492E2E2EF3323232FF323232FF0B0B0B780000001200000000000000000000
      000000000000000000000000000700000000000000131A1A1AB8323232FF3131
      31FB242424D81010109002020234000000030000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF00000000161616A8323232FE323232FE3232
      32FE323232FE323232FE323232FE323232FE0101012B161616A9323232FF3232
      32FF323232FF323232FF00000000000000000000000000000000000000062525
      25DC323232FF323232FF1010108F000000000000000000000000000000000000
      00000000000000000000000000000000000001010131252525DB323232FF3232
      32FF323232FF323232FF2E2E2EF4101010940000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000161616A9323232FF3232
      32FF323232FF323232FF000000000000000000000000000000000202023D3232
      32FE323232FF272727E20000000C000000000000000000000000000000000000
      000000000000000000000000000000000000060606562E2E2EF5323232FF3232
      32FF323232FF2E2E2EF31C1C1CBE0A0A0A750000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF202020CC0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000181818B0323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF161616AA161616AA161616AA161616AA1616
      16AA161616AA161616AA161616AA161616AA161616AA272727E2323232FF3232
      32FF323232FF323232FF000000000000000000000000000000000A0A0A713232
      32FF323232FF151515A400000000000000000000000000000000000000000000
      0000000000000000000000000000000000001010108E323232FF323232FF3232
      32FF323232FF1C1C1CBD00000019000000020000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001171717AF0000
      000F323232FE323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF2F2F2FF60101
      0133000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000222D2D2DF1323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FE3232
      32FF323232FF323232FF000000000000000000000000000000000E0E0E863232
      32FF323232FF0D0D0D8000000000000000050000000600000000000000000000
      0000000000000000000000000000000000001E1E1EC6303030F71B1B1BBB3131
      31FC323232FF232323D600000003000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF000000011F1F1FCA0707
      0760323232FE323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF161616AA0101012B1616
      16AA323232FF323232FF000000000000000000000000000000000D0D0D833232
      32FF323232FF141414A00A0A0A761A1A1AB70303034600000000000000000000
      0000000000000000000000000000000000020808086901010132000000233131
      31FC323232FF272727E200000008000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF161616AA0101012B1616
      16AA323232FF323232FF00000000000000000000000000000000080808683232
      32FF323232FF2E2E2EF5323232FE252525DB0101013100000000000000000000
      00000000000000000000000000000000000000000000000000000202023D3232
      32FE323232FF232323D500000003000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF323232FD202020CC171717AF171717AF171717AF171717AF171717AF1717
      17AF171717AF171717AF171717AF171717AF171717AF1C1C1CBD323232FF3232
      32FF323232FF323232FF323232FF323232FF00000000000000000C0C0C7F3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF1C1C1CBE0000000000000000000000010202023B1A1A1AB63232
      32FF323232FF323232FF323232FF1C1C1CC00000001600000000000000000000
      0000000000000000000000000000000000000000000000000000101010913232
      32FF323232FF151515A400000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1D1D1DC20000001800000000000000000000000000000000000000000000
      00000000000000000011050505510707076003030345000000050D0D0D803232
      32FF323232FF323232FF323232FF323232FF0000000000000000000000070C0C
      0C7E161616A9272727E2323232FF161616A9161616A9161616A9161616A91616
      16A9161616A9161616A9161616A9161616A9161616A9272727E2323232FF1616
      16A90F0F0F8D0000000B00000000000000000B0B0B782B2B2BEE323232FF3232
      32FF323232FF323232FF323232FF0F0F0F8D0000000300000000000000000000
      00000000000000000000000000000000000000000000010101262D2D2DF23232
      32FF303030FA0303034200000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1A1A1AB80000000D00000000000000000000000000000000000000000000
      0000000000000101012D242424D7323232FF1A1A1AB80000000D070707603232
      32FF323232FF323232FF323232FF323232FF0000000000000000000000000000
      000000000000161616A9323232FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000161616A9323232FF0000
      00000000000000000000000000000000000000000019050505561B1B1BBB3232
      32FF323232FF323232FF323232FF050505530000000000000000000000000000
      00000000000000000000000000000000000000000016151515A4323232FF3232
      32FF1D1D1DC10000000600000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1A1A1AB80000000D00000000000000000000000000000000000000000000
      0000000000000101012D242424D7323232FF1A1A1AB80000000D070707603232
      32FF323232FF323232FF323232FF323232FF0000000000000000000000000000
      000000000000161616A9323232FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000161616A9323232FF0000
      0000000000000000000000000000000000000000000000000000000000000202
      023C212121CF323232FF303030FA00000017000000000101012F000000090000
      0000000000000000000000000000000000121A1A1AB8323232FF323232FF2D2D
      2DF00404044D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1A1A1AB80000000D00000000000000000000000000000000000000000000
      0000000000000101012D242424D7323232FF1A1A1AB80000000D070707603232
      32FF323232FF323232FF323232FF2D2D2DF10000000000000000000000000000
      000000000000161616A9323232FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000161616A9323232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000110909096B0E0E0E88000000020202023D2E2E2EF5202020CD0E0E
      0E89080808670A0A0A71141414A02A2A2AEA323232FF323232FF313131FB1010
      10910000000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1A1A1AB80000000D00000000000000000000000000000000000000000000
      0000000000000101012D242424D7323232FF1A1A1AB80000000D070707603232
      32FF323232FF323232FF323232FE151515A60000000000000000000000000000
      000000000000161616A9323232FF000000150000000000000000000000000000
      000000000000000000000000000000000000000000121B1B1BBB323232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000060000001C1A1A1AB7323232FF323232FF3232
      32FF313131FB323232FD323232FF323232FF323232FF2C2C2CEC0A0A0A720000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FE323232FE00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FE05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1A1A1AB80000000D00000000000000000000000000000000000000000000
      0000000000000101012D242424D7323232FF1A1A1AB80000000D070707603232
      32FF323232FF323232FF212121D0010101260000000000000000000000000000
      0000000000000808086A323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF1313139E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000E0B0B0B7A2E2E2EF5323232FF3232
      32FF323232FF323232FF323232FF323232FE1E1E1EC602020238000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000323232FF3232
      32FF303030F9242424D8191919B50C0C0C7E0202023B00000008000000000000
      000000000000000000000000000000000000272727E3323232FF323232FF3232
      32FF1A1A1AB90000000E00000000000000000000000000000000000000000000
      00000000000001010126191919B5242424D71212129B0000000B070707643232
      32FF323232FF242424D90303033F000000000000000000000000000000000000
      0000000000000000000708080869161616A9161616A9161616A9161616A91616
      16A9161616A9161616A9161616A9161616A9161616A90C0C0C7F0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001A0606065D0E0E
      0E881212129C111111940B0B0B7A030303450000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000222222D41010
      1090050505510101012E0000000E000000000000000000000000000000000000
      00000000000000000000000000000000000007070763313131FD323232FF3232
      32FF242424D80404044A01010125010101250101012501010125010101250101
      0125010101250101012D0404044C050505530303034601010131191919B43232
      32FE1C1C1CBF0101012F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007070763272727E33232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF313131FB1414
      14A10000001C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000030000001E0202
      023B030303430303034303030343030303430303034303030343030303430303
      03430202023E00000002000000000000001B0909096D161616A8222222D11818
      18B10B0B0B7B0101012A000000010000000000000000000000030000001E0202
      023B0303034303030343030303430303034303030343030303430101012F0101
      0133020202380000001700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020238161616AB303030FA323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF313131FC1C1C1CC10606
      065B0000000800000000000000000000000000000000000000030000001E0202
      023B030303430303034303030343030303430303034303030343030303430303
      03430202023E00000002000000000000001B0909096D161616A8222222D11818
      18B10B0B0B7B0101012A0000000100000000000000000606065C1D1D1DC42929
      29E52B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B
      2BED0F0F0F8C000000020202023B1E1E1EC5303030FA323232FF323232FF3232
      32FF323232FE222222D40606065800000001000000000606065C1D1D1DC42929
      29E52B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED111111971313
      139E272727E21D1D1DC011111193050505520000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818B0313131FC1C1C1CC0151515A5151515A5151515A5151515A51515
      15A5151515A5151515A5151515A5151515A5151515A5191919B7313131FB2424
      24D80101012E000000000000000000000000000000000606065C1D1D1DC42929
      29E52B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B
      2BED0F0F0F8C000000020202023B1E1E1EC5303030FA323232FF323232FF3232
      32FF323232FE222222D4060606580000000101010127303030F9323232FF2525
      25DB171717AF171717AF171717AF171717AF171717AF171717AF171717AF1515
      15A600000006000000151C1C1CBE323232FF323232FF262626DE171717AF2222
      22D2323232FF323232FF222222D40101012A01010127303030F9323232FF2525
      25DB171717AF171717AF171717AF171717AF171717AF171717AF0909096F0909
      096F242424D7000000220C0C0C7C323232FE0E0E0E8700000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A313131FC191919B500000001000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001010108E3232
      32FE0606065B00000000000000000000000001010127303030F9323232FF2525
      25DB171717AF171717AF171717AF171717AF171717AF171717AF171717AF1515
      15A600000006000000151C1C1CBE323232FF1010109211111194323232FF2525
      25DD0808086C202020CE222222D40101012A1A1A1ABA303030F80A0A0A710000
      0001000000000000000000000000000000000000000000000000000000000000
      00000000000005050556303030F7323232FF323232FF11111195000000000909
      096F323232FF323232FF323232FE0B0B0B7B1A1A1ABA303030F80A0A0A710000
      0001000000000000000000000000000000000000000000000000000000000101
      012D2E2E2EF50000001503030340323232FE2D2D2DF20C0C0C7C000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0010323232FF11111195000000000101012A070707600000001F000000070303
      0347070707600000000E00000014070707600303034500000005070707603232
      32FF070707600000000000000000000000001A1A1ABA303030F80A0A0A710000
      0001000000000000000000000000000000000000000000000000000000000000
      00000000000005050556303030F7323232FF010101270000000F0E0E0E850404
      044D000000070909096A323232FE0B0B0B7B2E2E2EF4252525DA010101300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0E0E85323232FF2F2F2FF60909096F03030341000000000101
      01300909096F222222D2323232FF181818B02E2E2EF4252525DA010101300000
      0000000000000000000000000000000000000000000000000000000000000000
      0004232323D6181818B31E1E1EC6323232FF323232FF2E2E2EF30F0F0F8D0000
      0007000000000000000000000000000000000000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF070707600000000000000000000000002E2E2EF4252525DA010101300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0E0E85323232FF323232FF151515A50000001D000000050000
      00050404044F252525DD323232FF181818B0323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000151515A6323232FF2D2D2DF00000000000000000000000000000
      000000000000171717AF323232FF222222D1323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030347313131FB323232FF323232FF323232FF323232FF323232FF1010
      108F000000060000000000000000000000000000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000151515A6323232FF323232FF262626DE02020236000000000000
      00050E0E0E86323232FF323232FF222222D1323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C7C323232FF303030F91111119505050557000000000303
      034111111195262626DE323232FF161616A8323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000070707612A2A2AE8323232FF323232FF323232FF323232FF2E2E
      2EF40D0D0D820000000700000000000000000000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C7C323232FF323232FF0404044E00000009010101330000
      001C0000000F11111193323232FF161616A8323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404044B2D2D2DF0323232FF323232FF11111195000000000909
      096F323232FF323232FF303030FA0909096C323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000080707075F303030FA323232FF323232FF323232FF3232
      32FF292929E80000002000000005000000000000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404044B2D2D2DF0323232FF0404044A0404044D252525DC1515
      15A30101012810101090303030FA0909096C323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A161616AB323232FF323232FF303030F92D2D2DF02F2F
      2FF6323232FF323232FF1E1E1EC50000001B323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030347303030FA323232FF323232FF2F2F
      2FF607070765111111960F0F0F8C000000030000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A161616AB323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF1E1E1EC50000001B323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000024161616AA2D2D2DF0323232FF323232FF3232
      32FF2F2F2FF71C1C1CBE0202023C00000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606065D292929E62F2F2FF60D0D
      0D8610101094222222D108080868030303410000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000024161616AA2D2D2DF0323232FF323232FF3232
      32FF2F2F2FF71C1C1CBE0202023C00000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0404044B0C0C0C7D151515A60E0E
      0E8505050556000000150000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000080606065A070707641111
      1194191919B505050553212121CF1D1D1DC10000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0404044B0C0C0C7D151515A60E0E
      0E8505050556000000150000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000000101012F2020
      20CA050505522E2E2EF4323232FE0D0D0D830000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D161616AC0404044B000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D161616AC0404044B000000000000
      0021171717AF2F2F2FF611111194000000130000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D161616AC0404044B000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      0005020202340404044D00000012000000000000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010323232FF11111195000000000404044C171717AF020202370000000D0D0D
      0D81171717AF0000001901010125171717AF0C0C0C7F00000009070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010127323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010127323232FF11111195000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010323232FF1111119500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010127323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000020202350E0E
      0E8A10101090101010911212129C1E1E1EC6323232FF0D0D0D84000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000020202350E0E
      0E8A10101090101010911212129C1E1E1EC6323232FF0D0D0D84000000000000
      00000000000000000000000000000000000000000000000000190B0B0B7A1111
      1197323232FF222222D110101090101010901010109012121298151515A41515
      15A8151515A8151515A61212129C1010109010101090101010901A1A1ABA3232
      32FF1A1A1ABA101010900101013300000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000020202350E0E
      0E8A10101090101010911212129C1E1E1EC6323232FF0D0D0D84000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      00000000000000000000000000000000000000000000000000001313139F3232
      32FF323232FF323232FF323232FF323232FF2C2C2CEE03030344000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      00000000000000000000000000000000000000000000000000001313139F3232
      32FF323232FF323232FF323232FF323232FF2C2C2CEE03030344000000000000
      000000000000000000000000000000000000000000000101012D242424D73232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF0606065B00000000323232FF222222D2010101280000
      00000000000000000000000000000000000000000000000000001313139F3232
      32FF323232FF323232FF323232FF323232FF2C2C2CEE03030344000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF323232FF323232FD0F0F0F8B0000000D000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF323232FF323232FD0F0F0F8B0000000D000000000000
      00000000000000000000000000000000000000000000000000130B0B0B783232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF121212990101012600000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF323232FF323232FD0F0F0F8B0000000D000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF313131FE0F0F0F8D0000001000000000000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF313131FE0F0F0F8D0000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000192A2A
      2AE9323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF2D2D2DF1010101270000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF313131FE0F0F0F8D0000001000000000000000000000
      0000000000000000000000000000000000002A2A2AEA272727E1020202380000
      0000000000000000000000000000000000000000000000000000161616A93232
      32FF323232FF323232FE0F0F0F8D000000000000000000000000000000000000
      0000000000000000000000000000000000002A2A2AEA272727E1020202380000
      0000000000000000000000000000000000000000000000000000161616A93232
      32FF323232FF323232FE0F0F0F8D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00020000001000000010000000100D0D0D81323232FF0B0B0B77000000100000
      0010000000100000001005050554323232FE1C1C1CC100000021000000100000
      0010000000070000000000000000000000002A2A2AEA272727E1020202380000
      0000000000000000000000000000000000000000000000000000161616A93232
      32FF323232FF323232FE0F0F0F8D000000000000000000000000000000000000
      00000000000000000000000000000000000011111193323232FE121212990202
      023801010128010101280101012801010128010101280101012E222222D23232
      32FF323232FD1111119600000014000000000000000000000000000000000000
      00000000000000000000000000000000000011111193323232FE121212990202
      023801010128010101280101012801010128010101280101012E222222D23232
      32FF323232FD1111119600000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303472C2C2CEE252525DC030303430101
      012C0101012B02020239171717AD323232FF0F0F0F8A00000002000000000000
      00000000000000000000000000000000000011111193323232FE121212990202
      023801010128010101280101012801010128010101280101012E222222D23232
      32FF323232FD1111119600000014000000000000000000000000000000000000
      000000000000000000000000000000000000000000181F1F1FCA323232FE2727
      27E1222222D2222222D2222222D2222222D2222222D2242424D7323232FF3030
      30FA0D0D0D810000001200000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000181F1F1FCA323232FE2727
      27E1222222D2222222D2222222D2222222D2222222D2242424D7323232FF3030
      30FA0D0D0D810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000171C1C1CBD323232FF2B2B2BEB2323
      23D6232323D5272727E2313131FC303030F90101012F00000000000000000000
      000000000000000000000000000000000000000000181F1F1FCA323232FE2727
      27E1222222D2222222D2222222D2222222D2222222D2242424D7323232FF3030
      30FA0D0D0D810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000018111111932A2A
      2AEA323232FF323232FF323232FF323232FF323232FF323232FF232323D40404
      044B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000018111111932A2A
      2AEA323232FF323232FF323232FF323232FF323232FF323232FF232323D40404
      044B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D0A0A0A75292929E83232
      32FF323232FF2E2E2EF411111198000000130000000000000000000000000000
      0000000000000000000000000000000000000000000000000018111111932A2A
      2AEA323232FF323232FF323232FF323232FF323232FF323232FF232323D40404
      044B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited imgBotoesInativo: TImageList
    Bitmap = {
      494C010108003001840218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606390000
      000E000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000122E2E2E96717171EC5555
      55CD474747BC474747BC474747BC474747BC474747BC474747BC474747BC4747
      47BC474747BC474747BC474747BC474747BC474747BC474747BC474747BC4747
      47BC505050C77B7B7BF6434343B6050505340000000000000000000000000000
      00070B0B0B4A545454CC858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF5A5A5AD30F0F
      0F57000000090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000686868E34141
      41B3151515670101011700000000000000000000000000000000000000000000
      0000000000000000000000000000000000002B2B2B92838383FE666666E10202
      0224000000130000001300000013000000130000001300000013000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      00130101011E585858D0848484FE434343B60000000000000000000000000303
      032B535353CA757575F15F5F5FD85B5B5BD45B5B5BD45B5B5BD45B5B5BD45B5B
      5BD45B5B5BD45B5B5BD45B5B5BD45B5B5BD45B5B5BD4616161DA757575F05858
      58D00707073B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000000858585FF8585
      85FF858585FF737373EE262626890000000E0000000000000000000000000000
      000000000000000000000000000000000000797979F4858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF7D7D7DF80000000000000000000000000808
      083F858585FF363636A400000012000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101193232329D8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000010000
      0001000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF7D7D7DF7373737A503030328000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF0000000000000000000000000808
      083F858585FF2D2D2D9500000000050505320F0F0F560F0F0F560F0F0F560F0F
      0F560F0F0F560D0D0D50000000120000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      0000000000000000000000000008090909432B2B2B925A5A5AD36D6D6DE87676
      76F06F6F6FEA5A5A5AD32E2E2E980A0A0A460000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF0000000000000000000000000808
      083F858585FF2D2D2D95000000002C2C2C94858585FF858585FF858585FF8585
      85FF858585FF747474EF050505360000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      000000000000010101193131319B6A6A6AE5838383FD858585FF858585FF8585
      85FF858585FF858585FF858585FF727272ED0C0C0C4E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF0000000814141463212121803333
      33A0858585FF2D2D2D95000000000A0A0A492020207F2020207F2020207F2020
      207F2020207F1C1C1C770101011B0000000000000000000000002020207F8585
      85FF3B3B3BAB2121218015151566000000100000000000000000000000000000
      00000101011D494949BF858585FF858585FF858585FF848484FE7B7B7BF56C6C
      6CE6787878F3848484FE858585FF525252C80000000700000012010101180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF1C1C1C776D6D6DE7858585FF8585
      85FF858585FF2D2D2D95000000000F0F0F572D2D2D952D2D2D952D2D2D952D2D
      2D952D2D2D952D2D2D952D2D2D952D2D2D951A1A1A71000000162020207F8585
      85FF858585FF858585FF6F6F6FE9212121800000000000000000000000000000
      00013030309A838383FE858585FF787878F33B3B3BAA0C0C0C4D010101170000
      000A000000140A0A0A482D2D2D950101011E0000000224242487737373EF2626
      2689050505320000000300000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF6F6F6FEA858585FF858585FF8585
      85FF858585FF2D2D2D95000000002C2C2C94858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF4B4B4BC0020202262020207F8585
      85FF858585FF858585FF858585FF717171EC0000000000000000000000000A0A
      0A49787878F3858585FF858585FF1D1D1D780000001200000000000000000000
      00000000000000000000000000070000000000000013454545B8858585FF8181
      81FB5F5F5FD82A2A2A9005050534000000030000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF2D2D2D9500000000020202240808083F0808083F0808083F0808
      083F0808083F0808083F0808083F0808083F0404042F000000092020207F8585
      85FF858585FF858585FF858585FF858585FF0000000000000000000000066262
      62DC858585FF858585FF2929298F000000000000000000000000000000000000
      00000000000000000000000000000000000004040431616161DB858585FF8585
      85FF858585FF858585FF797979F42C2C2C940000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF2D2D2D9500000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002020207F8585
      85FF858585FF858585FF858585FF858585FF00000000000000000707073D8484
      84FE858585FF686868E20000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F56797979F5858585FF8585
      85FF858585FF787878F3494949BE1B1B1B750000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CC0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F3F3FB0858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF7B7B7BF66F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F
      6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA7B7B7BF58585
      85FF858585FF858585FF858585FF858585FF00000000000000001A1A1A718585
      85FF858585FF373737A400000000000000000000000000000000000000000000
      0000000000000000000000000000000000002929298E858585FF858585FF8585
      85FF858585FF494949BD01010119000000020000000000000000000000000000
      0000000000000000000000000000858585FF858585FF000000013E3E3EAF0000
      000F848484FE858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF7B7B7BF60505
      0533000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      000102020222767676F1858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8484
      84FE858585FF858585FF858585FF858585FF0000000000000000242424868585
      85FF858585FF2121218000000000000000050000000600000000000000000000
      000000000000000000000000000000000000505050C67E7E7EF7474747BB8282
      82FC858585FF5D5D5DD600000003000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001525252CA1212
      1260848484FE858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF545454CB1313
      13611D1D1D786A6A6AE5858585FF858585FF0000000000000000222222838585
      85FF858585FF333333A01C1C1C76434343B70A0A0A4600000000000000000000
      0000000000000000000000000000000000021616166905050532020202238181
      81FC858585FF686868E200000008000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF393939A80303
      0328060606395A5A5AD3858585FF858585FF0000000000000000151515688585
      85FF858585FF7B7B7BF5838383FE616161DB0404043100000000000000000000
      00000000000000000000000000000000000000000000000000000707073D8484
      84FE858585FF5C5C5CD500000003000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF838383FD555555CC3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E
      3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF494949BD858585FF8585
      85FF858585FF858585FF858585FF858585FF747474EF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF616161DB2929
      298E333333A0717171ED858585FF757575F0000000010606063B434343B68585
      85FF858585FF858585FF858585FF4B4B4BC00000001600000000000000000000
      00000000000000000000000000000000000000000000000000002B2B2B918585
      85FF858585FF373737A400000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF4C4C4CC20101011800000000000000000000000000000000000000000000
      000000000000000000110D0D0D51121212600909094500000005212121808585
      85FF858585FF858585FF858585FF858585FF23232384707070EB858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF727272ED2828288D1D1D1D78737373EE858585FF8585
      85FF858585FF858585FF858585FF2828288D0000000300000000000000000000
      0000000000000000000000000000000000000000000002020226777777F28585
      85FF808080FA0808084200000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF454545B80000000D00000000000000000000000000000000000000000000
      0000000000000404042D5E5E5ED7858585FF454545B80000000D121212608585
      85FF858585FF858585FF858585FF858585FF000000091A1A1A722C2C2C943E3E
      3EAF858585FF5A5A5AD32C2C2C942C2C2C942C2C2C942C2C2C942C2C2C942C2C
      2C942C2C2C942C2C2C942C2C2C942C2C2C942C2C2C942C2C2C94525252CA8585
      85FF454545B82C2C2C941C1C1C7600000012010101190F0F0F56474747BB8585
      85FF858585FF858585FF858585FF0D0D0D530000000000000000000000000000
      00000000000000000000000000000000000000000016363636A4858585FF8585
      85FF4C4C4CC10000000600000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF454545B80000000D00000000000000000000000000000000000000000000
      0000000000000404042D5E5E5ED7858585FF454545B80000000D121212608585
      85FF858585FF858585FF858585FF858585FF0000000000000000000000000808
      083F858585FF2D2D2D9500000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000707
      073C575757CF858585FF7F7F7FFA01010117000000000404042F000000090000
      000000000000000000000000000000000012454545B8858585FF858585FF7575
      75F00C0C0C4D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF454545B80000000D00000000000000000000000000000000000000000000
      0000000000000404042D5E5E5ED7858585FF454545B80000000D121212608585
      85FF858585FF858585FF858585FF767676F10000000000000000000000000808
      083F858585FF2D2D2D9500000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      0000000000111717176B25252588000000020707073D7B7B7BF5555555CD2525
      2589151515671A1A1A71343434A06F6F6FEA858585FF858585FF818181FB2A2A
      2A910000000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF454545B80000000D00000000000000000000000000000000000000000000
      0000000000000404042D5E5E5ED7858585FF454545B80000000D121212608585
      85FF858585FF858585FF848484FE383838A60000000000000000000000000808
      083F858585FF2D2D2D9500000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      00000000000000000001000000060101011C444444B7858585FF858585FF8585
      85FF818181FB838383FD858585FF858585FF858585FF717171EC1A1A1A720000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000838383FE838383FE00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF848484FE0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF454545B80000000D00000000000000000000000000000000000000000000
      0000000000000404042D5E5E5ED7858585FF454545B80000000D121212608585
      85FF858585FF858585FF575757D0020202260000000000000000000000000808
      083F858585FF2D2D2D9500000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000E1E1E1E7A7B7B7BF5858585FF8585
      85FF858585FF858585FF858585FF848484FE505050C606060638000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000858585FF8585
      85FF7F7F7FF95F5F5FD8434343B52020207E0707073B00000008000000000000
      000000000000000000000000000000000000686868E3858585FF858585FF8585
      85FF464646B90000000E00000000000000000000000000000000000000000000
      00000000000002020226434343B55E5E5ED73131319B0000000B141414648585
      85FF858585FF5F5F5FD90808083F000000000000000000000000000000000808
      083F858585FF373737A600000014000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101011C343434A08585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101011A1111115D2525
      25883131319C2D2D2D941E1E1E7A090909450000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5BD42A2A
      2A900D0D0D510404042E0000000E000000000000000000000000000000000000
      00000000000000000000000000000000000014141463838383FD858585FF8585
      85FF5F5F5FD80A0A0A4A02020225020202250202022502020225020202250202
      0225020202250404042D0B0B0B4C0D0D0D530909094604040431424242B48484
      84FE4A4A4ABF0404042F00000000000000000000000000000000000000000303
      03294E4E4EC47D7D7DF8717171EC6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F
      6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA717171ED7D7D7DF85454
      54CC060606380000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014141463686868E38585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF818181FB3434
      34A10101011C0000000000000000000000000000000000000000000000000000
      00040808083F505050C7858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF575757CF0B0B
      0B4C000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000030101011E0707
      073B090909430909094309090943090909430909094309090943090909430909
      09430707073E00000002000000000101011B1717176D393939A8585858D13F3F
      3FB11E1E1E7B0303032A000000010000000000000000000000030101011E0707
      073B0909094309090943090909430909094309090943090909430404042F0505
      0533060606380101011700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060606383B3B3BAB7F7F7FFA858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF818181FC4B4B4BC11010
      105B0000000800000000000000000000000000000000000000030101011E0707
      073B090909430909094309090943090909430909094309090943090909430909
      09430707073E00000002000000000101011B1717176D393939A8585858D13F3F
      3FB11E1E1E7B0303032A0000000100000000000000001111115C4E4E4EC46A6A
      6AE5717171ED717171ED717171ED717171ED717171ED717171ED717171ED7171
      71ED2727278C000000020707073B4F4F4FC57F7F7FFA858585FF858585FF8585
      85FF838383FE5B5B5BD40F0F0F5800000001000000001111115C4E4E4EC46A6A
      6AE5717171ED717171ED717171ED717171ED717171ED717171ED2E2E2E973333
      339E686868E24B4B4BC02B2B2B930D0D0D520000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003F3F3FB0828282FC4B4B4BC0373737A5373737A5373737A5373737A53737
      37A5373737A5373737A5373737A5373737A5373737A5434343B7818181FB5F5F
      5FD80404042E000000000000000000000000000000001111115C4E4E4EC46A6A
      6AE5717171ED717171ED717171ED717171ED717171ED717171ED717171ED7171
      71ED2727278C000000020707073B4F4F4FC57F7F7FFA858585FF858585FF8585
      85FF838383FE5B5B5BD40F0F0F5800000001030303277F7F7FF9858585FF6262
      62DB3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3838
      38A60000000600000015484848BE858585FF858585FF646464DE3E3E3EAF5A5A
      5AD2858585FF858585FF5B5B5BD40303032A030303277F7F7FF9858585FF6262
      62DB3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF1919196F1818
      186F5E5E5ED7020202221F1F1F7C838383FE2424248700000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A828282FC424242B500000001000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002929298E8383
      83FE1010105B000000000000000000000000030303277F7F7FF9858585FF6262
      62DB3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3838
      38A60000000600000015484848BE858585FF2B2B2B922C2C2C94858585FF6363
      63DD1717176C565656CE5B5B5BD40303032A464646BA7D7D7DF81A1A1A710000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F567D7D7DF7858585FF858585FF2D2D2D95000000001919
      196F858585FF858585FF838383FE1E1E1E7B464646BA7D7D7DF81A1A1A710000
      0001000000000000000000000000000000000000000000000000000000000404
      042D7B7B7BF50000001508080840848484FE777777F21F1F1F7C000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0010858585FF2D2D2D95000000000303032A121212600101011F000000070A0A
      0A47121212600000000E00000014121212600909094500000005121212608585
      85FF12121260000000000000000000000000464646BA7D7D7DF81A1A1A710000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F567D7D7DF7858585FF030303270000000F242424850C0C
      0C4D000000071616166A838383FE1E1E1E7B797979F4616161DA040404300000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000024242485858585FF7B7B7BF61919196F08080841000000000404
      04301919196F5A5A5AD2858585FF3F3F3FB0797979F4616161DA040404300000
      0000000000000000000000000000000000000000000000000000000000000000
      00045D5D5DD6414141B34F4F4FC6858585FF858585FF787878F32828288D0000
      0007000000000000000000000000000000000000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000797979F4616161DA040404300000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000024242485858585FF858585FF373737A50101011D000000050000
      00050C0C0C4F636363DD858585FF3F3F3FB0858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000383838A6858585FF757575F00000000000000000000000000000
      0000000000003E3E3EAF858585FF585858D1858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A0A0A47818181FB858585FF858585FF858585FF858585FF858585FF2929
      298F000000060000000000000000000000000000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000383838A6858585FF858585FF646464DE05050536000000000000
      000524242486858585FF858585FF585858D1858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F7C858585FF7F7F7FF92D2D2D950F0F0F57000000000808
      08412D2D2D95646464DE858585FF393939A8858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000121212616D6D6DE8858585FF858585FF858585FF858585FF7A7A
      7AF4222222820000000700000000000000000000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F7C858585FF858585FF0C0C0C4E00000009050505330101
      011C0000000F2C2C2C93858585FF393939A8858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B4B757575F0858585FF858585FF2D2D2D95000000001919
      196F858585FF858585FF7F7F7FFA1717176C858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000081212125F7F7F7FFA858585FF858585FF858585FF8585
      85FF6D6D6DE80202022000000005000000000000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B4B757575F0858585FF0A0A0A4A0C0C0C4D616161DC3636
      36A3030303282A2A2A907F7F7FFA1717176C858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A3B3B3BAB858585FF858585FF7F7F7FF9757575F07B7B
      7BF6858585FF858585FF4F4F4FC50101011B858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A477F7F7FFA858585FF858585FF7B7B
      7BF6141414652D2D2D962727278C000000030000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A3B3B3BAB858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF4F4F4FC50101011B858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020202243B3B3BAA757575F0858585FF858585FF8585
      85FF7D7D7DF7484848BE0707073C00000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111115D6B6B6BE67B7B7BF62424
      24862C2C2C94585858D115151568080808410000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020202243B3B3BAA757575F0858585FF858585FF8585
      85FF7D7D7DF7484848BE0707073C00000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0B0B0B4B1F1F1F7D383838A62424
      24850F0F0F56000000150000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000081010105A141414642C2C
      2C94434343B50D0D0D53575757CF4B4B4BC10000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0B0B0B4B1F1F1F7D383838A62424
      24850F0F0F56000000150000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000000404042F5353
      53CA0D0D0D527A7A7AF4838383FE232323830000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3C3C3CAC0B0B0B4B000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3C3C3CAC0B0B0B4B000000000202
      02213E3E3EAF7B7B7BF62C2C2C94000000130000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3C3C3CAC0B0B0B4B000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      0005050505340C0C0C4D00000012000000000000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010858585FF2D2D2D95000000000B0B0B4C3E3E3EAF060606370000000D2222
      22813E3E3EAF01010119020202253E3E3EAF2020207F00000009121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030327858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030327858585FF2D2D2D95000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010858585FF2D2D2D9500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030327858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000050505352626
      268A2A2A2A902A2A2A913131319C4F4F4FC6858585FF23232384000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000050505352626
      268A2A2A2A902A2A2A913131319C4F4F4FC6858585FF23232384000000000000
      00000000000000000000000000000000000000000000010101191E1E1E7A2E2E
      2E97858585FF585858D12A2A2A902A2A2A902A2A2A902E2E2E98373737A43939
      39A8393939A8383838A63131319C2A2A2A902A2A2A902A2A2A90464646BA8585
      85FF464646BA2A2A2A900505053300000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000050505352626
      268A2A2A2A902A2A2A913131319C4F4F4FC6858585FF23232384000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      00000000000000000000000000000000000000000000000000003333339F8585
      85FF858585FF858585FF858585FF858585FF737373EE09090944000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      00000000000000000000000000000000000000000000000000003333339F8585
      85FF858585FF858585FF858585FF858585FF737373EE09090944000000000000
      000000000000000000000000000000000000000000000404042D5E5E5ED78585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF1010105B00000000858585FF5A5A5AD2030303280000
      00000000000000000000000000000000000000000000000000003333339F8585
      85FF858585FF858585FF858585FF858585FF737373EE09090944000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF858585FF838383FD2727278B0000000D000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF858585FF838383FD2727278B0000000D000000000000
      00000000000000000000000000000000000000000000000000131D1D1D788585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF2F2F2F990202022600000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF858585FF838383FD2727278B0000000D000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF838383FE2828288D0000001000000000000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF838383FE2828288D0000001000000000000000000000
      0000000000000000000000000000000000000000000000000000010101196F6F
      6FE9858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF767676F1030303270000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF838383FE2828288D0000001000000000000000000000
      0000000000000000000000000000000000006F6F6FEA676767E1060606380000
      00000000000000000000000000000000000000000000000000003A3A3AA98585
      85FF858585FF838383FE2828288D000000000000000000000000000000000000
      0000000000000000000000000000000000006F6F6FEA676767E1060606380000
      00000000000000000000000000000000000000000000000000003A3A3AA98585
      85FF858585FF838383FE2828288D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000200000010000000100000001022222281858585FF1C1C1C77000000100000
      001000000010000000100E0E0E54848484FE4B4B4BC102020221000000100000
      0010000000070000000000000000000000006F6F6FEA676767E1060606380000
      00000000000000000000000000000000000000000000000000003A3A3AA98585
      85FF858585FF838383FE2828288D000000000000000000000000000000000000
      0000000000000000000000000000000000002C2C2C93838383FE2F2F2F990606
      063803030328030303280303032803030328030303280404042E595959D28585
      85FF838383FD2D2D2D9600000014000000000000000000000000000000000000
      0000000000000000000000000000000000002C2C2C93838383FE2F2F2F990606
      063803030328030303280303032803030328030303280404042E595959D28585
      85FF838383FD2D2D2D9600000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A47737373EE626262DC090909430303
      032C0303032B060606393C3C3CAD858585FF2626268A00000002000000000000
      0000000000000000000000000000000000002C2C2C93838383FE2F2F2F990606
      063803030328030303280303032803030328030303280404042E595959D28585
      85FF838383FD2D2D2D9600000014000000000000000000000000000000000000
      00000000000000000000000000000000000001010118535353CA838383FE6767
      67E15A5A5AD25A5A5AD25A5A5AD25A5A5AD25A5A5AD25E5E5ED7858585FF7F7F
      7FFA212121810000001200000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010118535353CA838383FE6767
      67E15A5A5AD25A5A5AD25A5A5AD25A5A5AD25A5A5AD25E5E5ED7858585FF7F7F
      7FFA212121810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010117484848BD858585FF707070EB5D5D
      5DD65C5C5CD5686868E2818181FC7F7F7FF90404042F00000000000000000000
      00000000000000000000000000000000000001010118535353CA838383FE6767
      67E15A5A5AD25A5A5AD25A5A5AD25A5A5AD25A5A5AD25E5E5ED7858585FF7F7F
      7FFA212121810000001200000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101182C2C2C936F6F
      6FEA858585FF858585FF858585FF858585FF858585FF858585FF5B5B5BD40B0B
      0B4B000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101182C2C2C936F6F
      6FEA858585FF858585FF858585FF858585FF858585FF858585FF5B5B5BD40B0B
      0B4B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D1B1B1B756D6D6DE88585
      85FF858585FF797979F42E2E2E98000000130000000000000000000000000000
      00000000000000000000000000000000000000000000010101182C2C2C936F6F
      6FEA858585FF858585FF858585FF858585FF858585FF858585FF5B5B5BD40B0B
      0B4B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited ImgPequena: TImageList
    Bitmap = {
      494C01011200000180020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
  inherited imgBotoesAtivoAz: TImageList
    Bitmap = {
      494C01010800DC00280218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060300390000
      000E000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000122D1A0296704106EC5431
      04CD472904BC472904BC472904BC472904BC472904BC472904BC472904BC4729
      04BC472904BC472904BC472904BC472904BC472904BC472904BC472904BC4729
      04BC502E04C77A4807F6422704B6050300340000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000673D06E34125
      04B3150C01670100001700000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A190292824C07FE653B06E10201
      0024000000130000001300000013000000130000001300000013000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      00130101001E573305D0834C07FE422704B60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000000844C07FF844C
      07FF844C07FF724206EE251502890000000E0000000000000000000000000000
      000000000000000000000000000000000000784607F4844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF7C4807F80000000000000000000000000000
      0000000000000000000B321D039E844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF492B04BF000000120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000010000
      0001000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF7C4707F7372003A503010028000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF0000000000000000000000000000
      0000000000002012017F844C07FF412504B43A2103A93A2103A93A2103A93A21
      03A93A2103A93A2103A93A2103A93A2103A93F2504B26F4106EB492B04BF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000008090500432B190292593405D36C3F06E87543
      06F06E3F06EA593405D32E1B0298090500460000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF0000000000000000000000000000
      0000000000003A2103A9844C07FF0000000B0000000000000000000000000000
      000000000000000000000000000000000000000000093F2503B2844C07FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001000019311C039B693D06E5824C07FD844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF714206ED0C07004E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF0000000000000000000000000000
      0000000000003A2103A9844C07FF000000003A2103A9844C07FF844C07FF844C
      07FF844C07FF4A2B04C00000001600000000000000003A2103A9844C07FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101001D492A04BF844C07FF844C07FF844C07FF834C07FE794607F56B3D
      06E6774607F3834C07FE844C07FF512F04C80000000700000012010000180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF0000000000000000000000040804
      00400E0801564F2E04C6844C07FF00000000190E01703A2103A93A2103A93A21
      03A93A2103A9211302800000000F00000000000000003A2103A9844C07FF0E08
      01560A0600480000000600000000000000000000000000000000000000000000
      0001301C039A824B07FE844C07FF774507F33A2103AA0C06004D010000170000
      000A000000140A0600482C1A02950101001E0000000224150287734306EF2516
      0289050200320000000300000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF00000000000000000F0901586E40
      06E9844C07FF844C07FF844C07FF000000001A0F01713A2103AA3A2103AA3A21
      03AA3A2103AA3A2103AA3A2103AA3A2103AA0101001D3A2103A9844C07FF844C
      07FF754407F12314028500000000000000000000000000000000000000000A06
      0049774507F3844C07FF844C07FF1D1101780000001200000000000000000000
      00000000000000000000000000070000000000000013452804B8844C07FF804A
      07FB5E3605D82918029005030034000000030000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF00000000392103A8824C07FE824C07FE824C
      07FE824C07FE824C07FE824C07FE824C07FE0302002B3A2103A9844C07FF844C
      07FF844C07FF844C07FF00000000000000000000000000000000000000066139
      06DC844C07FF844C07FF2918028F000000000000000000000000000000000000
      00000000000000000000000000000000000004020031603805DB844C07FF844C
      07FF844C07FF844C07FF784607F42B1A02940000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A2103A9844C07FF844C
      07FF844C07FF844C07FF000000000000000000000000000000000704003D834C
      07FE844C07FF673C06E20000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000F080056784607F5844C07FF844C
      07FF844C07FF774507F3482A04BE1B0F01750000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533105CC0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F2504B0844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF3A2103AA3A2103AA3A2103AA3A2103AA3A21
      03AA3A2103AA3A2103AA3A2103AA3A2103AA3A2103AA673C06E2844C07FF844C
      07FF844C07FF844C07FF000000000000000000000000000000001A0F0171844C
      07FF844C07FF362003A400000000000000000000000000000000000000000000
      0000000000000000000000000000000000002917028E844C07FF844C07FF844C
      07FF844C07FF482A04BD01000019000000020000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF000000013E2403AF0000
      000F834C07FE844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF7A4707F60402
      0033000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      000102010022754407F1844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF834C07FE844C
      07FF844C07FF844C07FF0000000000000000000000000000000024150286844C
      07FF844C07FF2113028000000000000000050000000600000000000000000000
      0000000000000000000000000000000000004F2E04C67D4807F7462904BB814A
      07FC844C07FF5C3605D600000003000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001523004CA120A
      0160834C07FE844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF3A2103AA0302002B3A21
      03AA844C07FF844C07FF0000000000000000000000000000000022140283844C
      07FF844C07FF331E03A01C100176432704B70A05004600000000000000000000
      000000000000000000000000000000000002160D01690502003202010023804A
      07FC844C07FF673C06E200000008000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF3A2103AA0302002B3A21
      03AA844C07FF844C07FF00000000000000000000000000000000150D0168844C
      07FF844C07FF794607F5824C07FE603805DB0402003100000000000000000000
      00000000000000000000000000000000000000000000000000000704003D834C
      07FE844C07FF5C3605D500000003000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF824B07FD543105CC3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E24
      04AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF482A04BD844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF00000000000000002013017F844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF492B04BE0000000000000000000000010603003B432704B6844C
      07FF844C07FF844C07FF844C07FF4A2B04C00000001600000000000000000000
      00000000000000000000000000000000000000000000000000002B180291844C
      07FF844C07FF362003A400000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF4B2B04C20100001800000000000000000000000000000000000000000000
      000000000000000000110D070051120A0160090500450000000521130280844C
      07FF844C07FF844C07FF844C07FF844C07FF0000000000000000000000072013
      017E3A2103A9673C06E2844C07FF3A2103A93A2103A93A2103A93A2103A93A21
      03A93A2103A93A2103A93A2103A93A2103A93A2103A9673C06E2844C07FF3A21
      03A92817028D0000000B00000000000000001D100178724207EE844C07FF844C
      07FF844C07FF844C07FF844C07FF2817028D0000000300000000000000000000
      0000000000000000000000000000000000000000000002010026764506F2844C
      07FF7F4907FA0805004200000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF442704B80000000D00000000000000000000000000000000000000000000
      0000000000000402002D5D3605D7844C07FF442704B80000000D120A0160844C
      07FF844C07FF844C07FF844C07FF844C07FF0000000000000000000000000000
      0000000000003A2103A9844C07FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A2103A9844C07FF0000
      000000000000000000000000000000000000010000190F080156462804BB844C
      07FF844C07FF844C07FF844C07FF0D0800530000000000000000000000000000
      00000000000000000000000000000000000000000016362003A4844C07FF844C
      07FF4B2B04C10000000600000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF442704B80000000D00000000000000000000000000000000000000000000
      0000000000000402002D5D3605D7844C07FF442704B80000000D120A0160844C
      07FF844C07FF844C07FF844C07FF844C07FF0000000000000000000000000000
      0000000000003A2103A9844C07FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A2103A9844C07FF0000
      0000000000000000000000000000000000000000000000000000000000000704
      003C563205CF844C07FF7E4907FA01000017000000000402002F000000090000
      000000000000000000000000000000000012442804B8844C07FF844C07FF7443
      07F00C06004D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF442704B80000000D00000000000000000000000000000000000000000000
      0000000000000402002D5D3605D7844C07FF442704B80000000D120A0160844C
      07FF844C07FF844C07FF844C07FF754407F10000000000000000000000000000
      0000000000003A2103A9844C07FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A2103A9844C07FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000011160D016B25150288000000020704003D794607F5543105CD2515
      0289150C01671A0F0171331E03A06E4006EA844C07FF844C07FF804A07FB2A18
      02910000000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF442704B80000000D00000000000000000000000000000000000000000000
      0000000000000402002D5D3605D7844C07FF442704B80000000D120A0160844C
      07FF844C07FF844C07FF834C07FE372003A60000000000000000000000000000
      0000000000003A2103A9844C07FF000000150000000000000000000000000000
      00000000000000000000000000000000000000000012462804BB844C07FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000060100001C432704B7844C07FF844C07FF844C
      07FF804A07FB824B07FD844C07FF844C07FF844C07FF704106EC190F01720000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000824C07FE824C07FE00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF834C07FE0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF442704B80000000D00000000000000000000000000000000000000000000
      0000000000000402002D5D3605D7844C07FF442704B80000000D120A0160844C
      07FF844C07FF844C07FF563305D0020100260000000000000000000000000000
      000000000000160D016A844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF321D039E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000E1E11017A794607F5844C07FF844C
      07FF844C07FF844C07FF844C07FF834C07FE4F2E04C606030038000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000844C07FF844C
      07FF7E4807F95E3605D8422604B51F12017E0704003B00000008000000000000
      000000000000000000000000000000000000673D06E3844C07FF844C07FF844C
      07FF452704B90000000E00000000000000000000000000000000000000000000
      00000000000002010026422604B55D3605D7301B039B0000000B140B0164844C
      07FF844C07FF5F3705D90804003F000000000000000000000000000000000000
      00000000000000000007160D01693A2103A93A2103A93A2103A93A2103A93A21
      03A93A2103A93A2103A93A2103A93A2103A93A2103A92013017F0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000100001A110A015D2515
      0288311C039C2C1902941E11017A090500450000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B3505D42A18
      02900D0700510402002E0000000E000000000000000000000000000000000000
      000000000000000000000000000000000000130B0163824B07FD844C07FF844C
      07FF5E3605D80A06004A02010025020100250201002502010025020100250201
      0025020100250402002D0B06004C0D0800530905004604020031412604B4834C
      07FE492B04BF0402002F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000130B0163673D06E3844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF804A07FB341E
      03A10100001C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000030101001E0704
      003B090500430905004309050043090500430905004309050043090500430905
      00430704003E00000002000000000100001B170D016D392103A8583305D13E25
      03B11E11017B0301002A000000010000000000000000000000030101001E0704
      003B0905004309050043090500430905004309050043090500430402002F0502
      0033060300380100001700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060300383A2203AB7E4A07FA844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF804A07FC4B2B04C11009
      015B0000000800000000000000000000000000000000000000030101001E0704
      003B090500430905004309050043090500430905004309050043090500430905
      00430704003E00000002000000000100001B170D016D392103A8583305D13E25
      03B11E11017B0301002A000000010000000000000000100A015C4D2D04C4693D
      06E5714106ED714106ED714106ED714106ED714106ED714106ED714106ED7141
      06ED2716028C000000020704003B4E2D04C57E4907FA844C07FF844C07FF844C
      07FF824C07FE5A3505D40F0801580000000100000000100A015C4D2D04C4693D
      06E5714106ED714106ED714106ED714106ED714106ED714106ED2E1A0297321D
      039E673C06E24A2B04C02B1902930D0800520000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E2403B0814A07FC4A2B04C0362003A5362003A5362003A5362003A53620
      03A5362003A5362003A5362003A5362003A5362003A5432704B7804A07FB5E36
      05D80402002E00000000000000000000000000000000100A015C4D2D04C4693D
      06E5714106ED714106ED714106ED714106ED714106ED714106ED714106ED7141
      06ED2716028C000000020704003B4E2D04C57E4907FA844C07FF844C07FF844C
      07FF824C07FE5A3505D40F08015800000001030100277E4807F9844C07FF6138
      05DB3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3720
      03A60000000600000015482B04BE844C07FF844C07FF633A06DE3E2404AF5934
      05D2844C07FF844C07FF5A3505D40301002A030100277E4807F9844C07FF6138
      05DB3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF180E016F180E
      016F5D3605D7020100221F11017C824C07FE2415028700000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A814A07FC412603B500000001000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002917028E824C
      07FE1009015B000000000000000000000000030100277E4807F9844C07FF6138
      05DB3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3720
      03A60000000600000015482B04BE844C07FF2B1902922C1A0294844C07FF6239
      06DD170D016C563104CE5A3505D40301002A452804BA7C4807F81A0F01710000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000F0800567C4707F7844C07FF844C07FF2D1A029500000000190E
      016F844C07FF844C07FF824B07FE1E11017B452804BA7C4807F81A0F01710000
      0001000000000000000000000000000000000000000000000000000000000402
      002D794607F50000001508040040834C07FE764506F21F11017C000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0010844C07FF2D1A0295000000000302002A120A01600101001F000000070A06
      0047120A01600000000E00000014120A01600905004500000005120A0160844C
      07FF120A0160000000000000000000000000452804BA7C4807F81A0F01710000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000F0800567C4707F7844C07FF030100270000000F231402850C06
      004D00000007160D016A824B07FE1E11017B784607F4603805DA040200300000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000023140285844C07FF7A4707F6190E016F08050041000000000402
      0030190E016F593405D2844C07FF3E2404B0784607F4603805DA040200300000
      0000000000000000000000000000000000000000000000000000000000000000
      00045C3605D6402503B34E2E04C6844C07FF844C07FF774507F32817028D0000
      0007000000000000000000000000000000000000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000784607F4603805DA040200300000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000023140285844C07FF844C07FF362003A50101001D000000050000
      00050C07004F623906DD844C07FF3E2404B0844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000372003A6844C07FF744307F00000000000000000000000000000
      0000000000003E2404AF844C07FF583305D1844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A050047804A07FB844C07FF844C07FF844C07FF844C07FF844C07FF2918
      028F000000060000000000000000000000000000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000372003A6844C07FF844C07FF633A06DE05030036000000000000
      000524150286844C07FF844C07FF583305D1844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F12017C844C07FF7E4807F92D1A02950F080157000000000805
      00412D1A0295633A06DE844C07FF392103A8844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000120A01616C3F06E8844C07FF844C07FF844C07FF844C07FF7946
      06F4221302820000000700000000000000000000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F12017C844C07FF844C07FF0C07004E00000009050200330100
      001C0000000F2C190293844C07FF392103A8844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B06004B744306F0844C07FF844C07FF2D1A029500000000190E
      016F844C07FF844C07FF7E4A07FA170D016C844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000008120A015F7E4A07FA844C07FF844C07FF844C07FF844C
      07FF6D4006E80201002000000005000000000000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B06004B744306F0844C07FF0A06004A0C06004D613906DC351F
      03A3030100282A1802907E4A07FA170D016C844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A3A2204AB844C07FF844C07FF7E4807F9744307F07A47
      07F6844C07FF844C07FF4E2D04C50100001B844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0500477E4A07FA844C07FF844C07FF7A47
      07F6140B01652D1A02962716028C000000030000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A3A2204AB844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF4E2D04C50100001B844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020100243A2203AA744307F0844C07FF844C07FF844C
      07FF7C4807F7482B04BE0704003C00000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000110A015D6A3D06E67A4707F62415
      02862C1A0294583305D1150D0168080500410000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020100243A2203AA744307F0844C07FF844C07FF844C
      07FF7C4807F7482B04BE0704003C00000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0B06004B1F12017D372003A62314
      02850F080056000000150000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000081009015A140B01642C1A
      0294422604B50D080053573205CF4B2B04C10000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0B06004B1F12017D372003A62314
      02850F080056000000150000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000000402002F5230
      05CA0D080052794607F4824C07FE221302830000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3B2203AC0B06004B000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3B2203AC0B06004B000000000201
      00213E2404AF7A4707F62B1A0294000000130000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3B2203AC0B06004B000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      0005050300340C07004D00000012000000000000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010844C07FF2D1A0295000000000B06004C3E2404AF060300370000000D2113
      02813E2404AF01000019020100253E2404AF2012017F00000009120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003010027844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003010027844C07FF2D1A0295000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010844C07FF2D1A029500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003010027844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000050300352616
      028A2A1802902A180291301C039C4E2E04C6844C07FF23140284000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000050300352616
      028A2A1802902A180291301C039C4E2E04C6844C07FF23140284000000000000
      00000000000000000000000000000000000000000000010000191E11017A2E1B
      0297844C07FF583304D12A1802902A1802902A1802902E1B0298362003A43921
      03A8392103A8372003A6311C039C2A1802902A1802902A180290462804BA844C
      07FF452804BA2A1802900502003300000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000050300352616
      028A2A1802902A180291301C039C4E2E04C6844C07FF23140284000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000331D039F844C
      07FF844C07FF844C07FF844C07FF844C07FF724206EE09050044000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000331D039F844C
      07FF844C07FF844C07FF844C07FF844C07FF724206EE09050044000000000000
      000000000000000000000000000000000000000000000402002D5D3605D7844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF1009015B00000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000331D039F844C
      07FF844C07FF844C07FF844C07FF844C07FF724206EE09050044000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF844C07FF824B07FD2616028B0000000D000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF844C07FF824B07FD2616028B0000000D000000000000
      00000000000000000000000000000000000000000000000000131D110178844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF2F1B02990201002600000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF844C07FF824B07FD2616028B0000000D000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF824B07FE2817028D0000001000000000000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF824B07FE2817028D0000001000000000000000000000
      0000000000000000000000000000000000000000000000000000010000196E40
      06E9844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF754406F1020100270000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF824B07FE2817028D0000001000000000000000000000
      0000000000000000000000000000000000006E4006EA663B06E1060300380000
      0000000000000000000000000000000000000000000000000000392103A9844C
      07FF844C07FF824C07FE2817028D000000000000000000000000000000000000
      0000000000000000000000000000000000006E4006EA663B06E1060300380000
      0000000000000000000000000000000000000000000000000000392103A9844C
      07FF844C07FF824C07FE2817028D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000200000010000000100000001021130281844C07FF1C100177000000100000
      001000000010000000100E080054834C07FE4B2B04C102010021000000100000
      0010000000070000000000000000000000006E4006EA663B06E1060300380000
      0000000000000000000000000000000000000000000000000000392103A9844C
      07FF844C07FF824C07FE2817028D000000000000000000000000000000000000
      0000000000000000000000000000000000002B190293824B07FE2F1B02990603
      003803010028030100280301002803010028030100280402002E583305D2844C
      07FF824B07FD2D1A029600000014000000000000000000000000000000000000
      0000000000000000000000000000000000002B190293824B07FE2F1B02990603
      003803010028030100280301002803010028030100280402002E583305D2844C
      07FF824B07FD2D1A029600000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A050047724207EE613806DC090500430302
      002C0302002B060300393C2303AD844C07FF2616028A00000002000000000000
      0000000000000000000000000000000000002B190293824B07FE2F1B02990603
      003803010028030100280301002803010028030100280402002E583305D2844C
      07FF824B07FD2D1A029600000014000000000000000000000000000000000000
      00000000000000000000000000000000000001000018523004CA824C07FE663B
      06E1593305D2593305D2593305D2593305D2593305D25D3605D7844C07FF7E4A
      07FA211302810000001200000000000000000000000000000000000000000000
      00000000000000000000000000000000000001000018523004CA824C07FE663B
      06E1593305D2593305D2593305D2593305D2593305D25D3605D7844C07FF7E4A
      07FA211302810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001000017482A04BD844C07FF6F4106EB5C36
      05D65B3505D5673C06E2804A07FC7E4807F90402002F00000000000000000000
      00000000000000000000000000000000000001000018523004CA824C07FE663B
      06E1593305D2593305D2593305D2593305D2593305D25D3605D7844C07FF7E4A
      07FA211302810000001200000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010000182B1902936E40
      06EA844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF5B3505D40B06
      004B000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010000182B1902936E40
      06EA844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF5B3505D40B06
      004B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D1B0F01756C3F06E8844C
      07FF844C07FF784607F42E1B0298000000130000000000000000000000000000
      00000000000000000000000000000000000000000000010000182B1902936E40
      06EA844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF5B3505D40B06
      004B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited ImgPequenaAz: TImageList
    Bitmap = {
      494C01010600000178020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000380000001C00000001002000000000008018
      0000000000000000000000000000000000000704003C603805DA301C039A0E08
      0054020100250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008472904BC1B0F017402010021000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000302002B774507F3452804BA4327
      04B7523004CA2616028A00000008000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E1B0298120A
      015F734306EF844C07FF764507F23D2403AE0D08005300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D492B04BF0A0500470000
      0000301C039A844C07FF311C039C000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000844C07FF301C
      039B623906DD844C07FF844C07FF844C07FF7C4807F700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002616028A311C039C0201
      0022382003A7844C07FF844C07FF331E03A00000000500000000000000000000
      0000000000000000000000000000000000000000000000000000824B07FD2B19
      0293633A06DE844C07FF844C07FF844C07FF754407F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000704003D774507F3844C
      07FF844C07FF844C07FF844C07FF844C07FF351F03A30000000B000000000000
      0000000000000000000000000000000000000000000000000000824B07FD2B19
      0293633A06DE844C07FF844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002190F0171824B
      07FD844C07FF844C07FF844C07FF844C07FF844C07FF362003A40000000A0000
      0000000000000000000000000000000000000000000000000000824B07FD2B19
      02926C3F06E7844C07FF844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000180E
      016F844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF3B2203AB0000
      0000000000000000000000000000000000000000000000000000824B07FD311C
      039C2C1A0294442804B8844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000180E016E7E4907FA844C07FF844C07FF844C07FF844C07FF412504B40503
      0036010000190000000000000000000000000000000000000000824B07FD311C
      039C2C1A0294442804B8844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000170D016C7E4807F9844C07FF844C07FF3B2203AC0F0801566239
      06DD0E0800540000000000000000000000000000000000000000824B07FD2B19
      02926C3F06E7844C07FF844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000170D016C844C07FF3C2303AD0D070051603805DB2113
      028023140285170D016C00000000000000000000000000000000824B07FD2B19
      0293633A06DE844C07FF844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000008050041110A015D613806DC1F12017E1D10
      0178844C07FF4D2D04C400000000000000000000000000000000824B07FD2B19
      0293633A06DE844C07FF844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000160D016A251502882012017F844C
      07FF734306EF0A06004800000000000000000000000000000000844C07FF301C
      039B623906DD844C07FF844C07FF844C07FF804A07FB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101001F744307F06A3D
      06E60C07004F00000000000000000000000000000000000000002E1B0298110A
      015E724206EE844C07FF844C07FF714206ED3B2203AC00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004030100290201
      0023000000000000000000000000000000000000000000000000000000000000
      00074E2D04C52D1A02960D070051010000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C100176704106EC1D11
      0179000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B0F0175844C07FF844C07FF7946
      07F50000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001B0F0174844C07FF844C07FF844C07FF1B0F
      01750000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002010022844C07FF150C01660000
      000000000000000000000000000002010022462804BB844C07FF844C07FF5431
      04CC0502003300000000000000000000000000000010190F0171452804B95934
      05D33B2203AC0E08005402010022754407F1844C07FF844C07FF1B0F01750000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002010022844C07FF150C01660000
      000000000000000000000000000005020033543104CC00000011000000005431
      04CC623906DD00000000000000000604003A683D06E35B3505D51D110179150C
      01672B1902926C3F06E8643A06DF754407F16C3F06E71B0F0174000000000000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002010022844C07FF150C01660000
      0000000000000000000000000000000000000000000000000000000000001C10
      0177844C07FF000000000100001B6E4006EA2B1902920402002D241502872716
      028B040200300101001D4C2C04C3673C06E20201002200000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000000000000000844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF0000000002010022844C07FF150C01660000
      0000000000000000000000000000000000000000000000000000020100225431
      04CC3A2103AA000000002B1902934C2C04C30402002E6A3D06E5412504B40F08
      01560101001D00000000010000186E3F06E90D08005300000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000000000000000844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF0000000002010022844C07FF844C07FF844C
      07FF844C07FF2F1B0299000000000000000000000000150C0166844C07FF5431
      04CC00000000000000005B3505D40E080055412504B3321D039E000000000000
      00000000000000000000000000002E1B02973C2303AD00000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000000000000000844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF0000000002010022844C07FF150C01660000
      0000000000000000000000000000000000000000000000000000020100227242
      06EE1C10017700000000754407F10704003E432704B70101001D000000000000
      00000000000000000000000000001C1001765B3505D500000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000000000000000844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF0000000002010022844C07FF150C01660000
      0000000000000000000000000000000000000000000000000000000000004628
      04BB462804BB00000000623906DD0D0800530C06004D00000000000000000000
      000000000000000000000000000024150287452804BA00000000000000000000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002010022844C07FF150C01660000
      000000000000000000000000000000000011543104CC00000011020100227242
      06EE25150288000000003B2203AB3E2403AF0000000000000000000000000000
      0000000000000000000000000005633A06DE1A0F017200000000000000000000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002010022844C07FF844C07FF844C
      07FF844C07FF844C07FF623906DD00000000462804BB844C07FF844C07FF4628
      04BB0000001100000000050200327E4907FA150C016700000000000000000000
      000000000000000000022F1B0299683D06E30000000F00000000000000000000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000140B01647E4907FA3D2403AE0D0700510704
      003C120A0160523004CA6A3D06E6060300380000000000000000000000000000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005030035392103A9613806DC7443
      07F0593405D32B1902930101001E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000380000001C0000000100010000000000E00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited imgBotoesAtivoVe: TImageList
    Bitmap = {
      494C01010800DC00380218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000500390000
      000E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001200220196005304EC0040
      03CD003502BC003502BC003502BC003502BC003502BC003502BC003502BC0035
      02BC003502BC003502BC003502BC003502BC003502BC003502BC003502BC0035
      02BC003C03C7005C04F6003202B6000400340000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004E03E30030
      02B3001000670000001700000000000000000000000000000000000000000000
      00000000000000000000000000000000000000200192006204FE004C03E10001
      0024000000130000001300000013000000130000001300000013000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      00130001001E004103D0006204FE003202B60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000000006204FF0062
      04FF006204FF005604EE001C01890000000E0000000000000000000000000000
      000000000000000000000000000000000000005A04F4006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF005D04F80000000000000000000000000000
      0000000000000000000B0026019E006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF003702BF000000120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000010000
      0001000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF005C04F7002901A500020028000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000000000000000
      0000000000000018007F006204FF003102B4002B01A9002B01A9002B01A9002B
      01A9002B01A9002B01A9002B01A9002B01A9002F02B2005304EB003702BF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000080007004300200192004303D3005103E80057
      04F0005303EA004303D300230198000700460000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000000000000000
      000000000000002B01A9006204FF0000000B0000000000000000000000000000
      00000000000000000000000000000000000000000009002F02B2006204FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000190024019B004F04E5006004FD006204FF006204FF0062
      04FF006204FF006204FF006204FF005504ED0009004E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000000000000000
      000000000000002B01A9006204FF00000000002B01A9006204FF006204FF0062
      04FF006204FF003703C0000000160000000000000000002B01A9006204FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000001001D003702BF006204FF006204FF006204FF006204FE005A04F5004F
      04E6005A04F3006204FE006204FF003C03C80000000700000012000000180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000000000040006
      0040000B0056003B03C6006204FF0000000000130070002B01A9002B01A9002B
      01A9002B01A9001801800000000F0000000000000000002B01A9006204FF000B
      0056000700480000000600000000000000000000000000000000000000000000
      00010024019A006104FE006204FF005904F3002B01AA0009004D000000170000
      000A0000001400080048002101950001001E00000002001B0187005604EF001C
      0189000300320000000300000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000000B00580052
      04E9006204FF006204FF006204FF0000000000130071002B01AA002B01AA002B
      01AA002B01AA002B01AA002B01AA002B01AA0001001D002B01A9006204FF0062
      04FF005704F1001A018500000000000000000000000000000000000000000008
      0049005A04F3006204FF006204FF001600780000001200000000000000000000
      00000000000000000000000000070000000000000013003302B8006204FF005F
      04FB004603D8001F019000040034000000030000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF00000000002B01A8006204FE006204FE0062
      04FE006204FE006204FE006204FE006204FE0002002B002B01A9006204FF0062
      04FF006204FF006204FF00000000000000000000000000000000000000060049
      03DC006204FF006204FF001F018F000000000000000000000000000000000000
      00000000000000000000000000000000000000030031004803DB006204FF0062
      04FF006204FF006204FF005A04F4002001940000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002B01A9006204FF0062
      04FF006204FF006204FF000000000000000000000000000000000005003D0062
      04FE006204FF004D04E20000000C000000000000000000000000000000000000
      000000000000000000000000000000000000000B0056005A04F5006204FF0062
      04FF006204FF005904F3003602BE001501750000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003E03CC0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002F02B0006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF002B01AA002B01AA002B01AA002B01AA002B
      01AA002B01AA002B01AA002B01AA002B01AA002B01AA004D03E2006204FF0062
      04FF006204FF006204FF00000000000000000000000000000000001301710062
      04FF006204FF002901A400000000000000000000000000000000000000000000
      000000000000000000000000000000000000001E018E006204FF006204FF0062
      04FF006204FF003602BD00000019000000020000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001002E02AF0000
      000F006204FE006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF005C04F60003
      0033000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      000100010022005804F1006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FE0062
      04FF006204FF006204FF00000000000000000000000000000000001B01860062
      04FF006204FF0019018000000000000000050000000600000000000000000000
      000000000000000000000000000000000000003B03C6005C04F7003502BB0060
      04FC006204FF004503D600000003000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001003D03CA000D
      0060006204FE006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF002B01AA0002002B002B
      01AA006204FF006204FF00000000000000000000000000000000001A01830062
      04FF006204FF002601A000140076003202B70007004600000000000000000000
      0000000000000000000000000000000000020010006900030032000100230060
      04FC006204FF004D03E200000008000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF002B01AA0002002B002B
      01AA006204FF006204FF00000000000000000000000000000000001000680062
      04FF006204FF005A04F5006104FE004803DB0003003100000000000000000000
      00000000000000000000000000000000000000000000000000000005003D0062
      04FE006204FF004503D500000003000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF006004FD003F03CC002E02AF002E02AF002E02AF002E02AF002E02AF002E
      02AF002E02AF002E02AF002E02AF002E02AF002E02AF003502BD006204FF0062
      04FF006204FF006204FF006204FF006204FF00000000000000000018017F0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF003602BE0000000000000000000000010005003B003202B60062
      04FF006204FF006204FF006204FF003703C00000001600000000000000000000
      0000000000000000000000000000000000000000000000000000002001910062
      04FF006204FF002901A400000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003803C20000001800000000000000000000000000000000000000000000
      00000000000000000011000A0051000D00600007004500000005001901800062
      04FF006204FF006204FF006204FF006204FF0000000000000000000000070018
      017E002B01A9004D03E2006204FF002B01A9002B01A9002B01A9002B01A9002B
      01A9002B01A9002B01A9002B01A9002B01A9002B01A9004D03E2006204FF002B
      01A9001D018D0000000B000000000000000000160078005504EE006204FF0062
      04FF006204FF006204FF006204FF001E018D0000000300000000000000000000
      0000000000000000000000000000000000000000000000020026005804F20062
      04FF005E04FA0006004200000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003302B80000000D00000000000000000000000000000000000000000000
      0000000000000003002D004603D7006204FF003302B80000000D000D00600062
      04FF006204FF006204FF006204FF006204FF0000000000000000000000000000
      000000000000002B01A9006204FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002B01A9006204FF0000
      00000000000000000000000000000000000000000019000B0056003502BB0062
      04FF006204FF006204FF006204FF000A00530000000000000000000000000000
      00000000000000000000000000000000000000000016002901A4006204FF0062
      04FF003803C10000000600000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003302B80000000D00000000000000000000000000000000000000000000
      0000000000000003002D004603D7006204FF003302B80000000D000D00600062
      04FF006204FF006204FF006204FF006204FF0000000000000000000000000000
      000000000000002B01A9006204FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002B01A9006204FF0000
      0000000000000000000000000000000000000000000000000000000000000005
      003C004003CF006204FF005E04FA00000017000000000003002F000000090000
      000000000000000000000000000000000012003302B8006204FF006204FF0057
      04F00009004D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003302B80000000D00000000000000000000000000000000000000000000
      0000000000000003002D004603D7006204FF003302B80000000D000D00600062
      04FF006204FF006204FF006204FF005804F10000000000000000000000000000
      000000000000002B01A9006204FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002B01A9006204FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000110011006B001C0188000000020005003D005B04F5004003CD001C
      01890010006700130071002601A0005303EA006204FF006204FF005F04FB001F
      01910000000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003302B80000000D00000000000000000000000000000000000000000000
      0000000000000003002D004603D7006204FF003302B80000000D000D00600062
      04FF006204FF006204FF006204FE002901A60000000000000000000000000000
      000000000000002B01A9006204FF000000150000000000000000000000000000
      00000000000000000000000000000000000000000012003502BB006204FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000060001001C003202B7006204FF006204FF0062
      04FF006004FB006004FD006204FF006204FF006204FF005403EC001300720000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FE006204FE00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FE000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003302B80000000D00000000000000000000000000000000000000000000
      0000000000000003002D004603D7006204FF003302B80000000D000D00600062
      04FF006204FF006204FF004103D0000200260000000000000000000000000000
      0000000000000010006A006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF0026019E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000E0016007A005B04F5006204FF0062
      04FF006204FF006204FF006204FF006204FE003B03C600040038000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006204FF0062
      04FF005E04F9004603D8003102B50018017E0005003B00000008000000000000
      000000000000000000000000000000000000004E04E3006204FF006204FF0062
      04FF003402B90000000E00000000000000000000000000000000000000000000
      00000000000000020026003202B5004603D70024019B0000000B000F00640062
      04FF006204FF004703D90006003F000000000000000000000000000000000000
      0000000000000000000700100069002B01A9002B01A9002B01A9002B01A9002B
      01A9002B01A9002B01A9002B01A9002B01A9002B01A90018017F0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001001A000D005D001C
      01880024019C002101940016007A000700450000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004303D4001F
      0190000A00510003002E0000000E000000000000000000000000000000000000
      000000000000000000000000000000000000000F0063006004FD006204FF0062
      04FF004604D80008004A00020025000200250002002500020025000200250002
      0025000200250003002D0008004C000A00530007004600030031003102B40062
      04FE003702BF0003002F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000F0063004E04E30062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF005F04FB0027
      01A10001001C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000030001001E0005
      003B000600430006004300060043000600430006004300060043000600430006
      00430005003E00000002000000000001001B0011006D002A02A8004203D1002F
      02B10017007B0002002A000000010000000000000000000000030001001E0005
      003B0006004300060043000600430006004300060043000600430003002F0003
      0033000400380000001700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000040038002C02AB005E04FA006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006004FC003803C1000C
      005B0000000800000000000000000000000000000000000000030001001E0005
      003B000600430006004300060043000600430006004300060043000600430006
      00430005003E00000002000000000001001B0011006D002A02A8004203D1002F
      02B10017007B0002002A000000010000000000000000000C005C003A03C4004F
      03E5005504ED005504ED005504ED005504ED005504ED005504ED005504ED0055
      04ED001D018C000000020005003B003A03C5005E04FA006204FF006204FF0062
      04FF006204FE004303D4000B00580000000100000000000C005C003A03C4004F
      03E5005504ED005504ED005504ED005504ED005504ED005504ED002201970025
      019E004D03E2003703C000200193000A00520000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000002F02B0006004FC003703C0002901A5002901A5002901A5002901A50029
      01A5002901A5002901A5002901A5002901A5002901A5003202B7006004FB0046
      03D80003002E00000000000000000000000000000000000C005C003A03C4004F
      03E5005504ED005504ED005504ED005504ED005504ED005504ED005504ED0055
      04ED001D018C000000020005003B003A03C5005E04FA006204FF006204FF0062
      04FF006204FE004303D4000B00580000000100020027005E04F9006204FF0048
      03DB002E02AF002E02AF002E02AF002E02AF002E02AF002E02AF002E02AF002A
      01A60000000600000015003602BE006204FF006204FF004A03DE002E02AF0043
      03D2006204FF006204FF004303D40002002A00020027005E04F9006204FF0048
      03DB002E02AF002E02AF002E02AF002E02AF002E02AF002E02AF0012006F0012
      006F004503D7000100220017007C006204FE001B018700000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A006004FC003102B500000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001F018E0061
      04FE000C005B00000000000000000000000000020027005E04F9006204FF0048
      03DB002E02AF002E02AF002E02AF002E02AF002E02AF002E02AF002E02AF002A
      01A60000000600000015003602BE006204FF001F019200210194006204FF004A
      03DD0011006C004003CE004303D40002002A003402BA005D04F8001300710000
      0001000000000000000000000000000000000000000000000000000000000000
      000000000000000B0056005C04F7006204FF006204FF00210195000000000013
      006F006204FF006204FF006104FE0017007B003402BA005D04F8001300710000
      0001000000000000000000000000000000000000000000000000000000000003
      002D005A04F50000001500060040006204FE005804F20017007C000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0010006204FF00210195000000000002002A000D00600001001F000000070007
      0047000D00600000000E00000014000D00600007004500000005000D00600062
      04FF000D0060000000000000000000000000003402BA005D04F8001300710000
      0001000000000000000000000000000000000000000000000000000000000000
      000000000000000B0056005C04F7006204FF000200270000000F001B01850009
      004D000000070010006A006104FE0017007B005A04F4004803DA000300300000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001B0185006204FF005C04F60013006F00060041000000000003
      00300013006F004303D2006204FF002F02B0005A04F4004803DA000300300000
      0000000000000000000000000000000000000000000000000000000000000000
      0004004503D6003002B3003B03C6006204FF006204FF005904F3001E018D0000
      0007000000000000000000000000000000000000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000005A04F4004803DA000300300000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001B0185006204FF006204FF002901A50001001D000000050000
      00050009004F004A03DD006204FF002F02B0006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002901A6006204FF005704F00000000000000000000000000000
      000000000000002E02AF006204FF004203D1006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000070047006004FB006204FF006204FF006204FF006204FF006204FF001F
      018F000000060000000000000000000000000000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002901A6006204FF006204FF004A03DE00040036000000000000
      0005001B0186006204FF006204FF004203D1006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000017017C006204FF005E04F900210195000B0057000000000006
      004100210195004A03DE006204FF002B02A8006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000E0061005104E8006204FF006204FF006204FF006204FF005A
      04F4001901820000000700000000000000000000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000017017C006204FF006204FF0009004E00000009000300330001
      001C0000000F00200193006204FF002B02A8006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000008004B005704F0006204FF006204FF00210195000000000013
      006F006204FF006204FF005E04FA0011006C006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000008000D005F005E04FA006204FF006204FF006204FF0062
      04FF005103E80001002000000005000000000000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000008004B005704F0006204FF0008004A0009004D004903DC0028
      01A300020028001F0190005E04FA0011006C006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A002C02AB006204FF006204FF005E04F9005704F0005C
      04F6006204FF006204FF003A03C50001001B006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000070047005E04FA006204FF006204FF005B
      04F6000F006500210196001D018C000000030000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A002C02AB006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF003A03C50001001B006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010024002B02AA005704F0006204FF006204FF0062
      04FF005C04F7003602BE0005003C00000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000D005D004F04E6005B04F6001B
      018600200194004203D100100068000600410000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010024002B02AA005704F0006204FF006204FF0062
      04FF005C04F7003602BE0005003C00000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0008004B0017007D002901A6001B
      0185000B0056000000150000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000008000C005A000F00640021
      0194003102B5000A0053004003CF003803C10000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0008004B0017007D002901A6001B
      0185000B0056000000150000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000000003002F003E
      03CA000A0052005A04F4006104FE001A01830000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D002C02AC0008004B000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D002C02AC0008004B000000000001
      0021002E02AF005B04F600210194000000130000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D002C02AC0008004B000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      0005000400340009004D00000012000000000000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010006204FF00210195000000000008004C002E02AF000400370000000D0019
      0181002E02AF0000001900020025002E02AF0018007F00000009000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000020027006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000020027006204FF00210195000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010006204FF0021019500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000020027006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      000000000000000000000000000000000000000000000000000000040035001C
      018A001F0190001F01910024019C003B03C6006204FF001A0184000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      000000000000000000000000000000000000000000000000000000040035001C
      018A001F0190001F01910024019C003B03C6006204FF001A0184000000000000
      00000000000000000000000000000000000000000000000000190016007A0022
      0197006204FF004203D1001F0190001F0190001F019000230198002901A4002A
      01A8002A01A8002901A60025019C001F0190001F0190001F0190003402BA0062
      04FF003402BA001F01900003003300000000006204FF004303D2000200280000
      000000000000000000000000000000000000000000000000000000040035001C
      018A001F0190001F01910024019C003B03C6006204FF001A0184000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      00000000000000000000000000000000000000000000000000000026019F0062
      04FF006204FF006204FF006204FF006204FF005504EE00070044000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      00000000000000000000000000000000000000000000000000000026019F0062
      04FF006204FF006204FF006204FF006204FF005504EE00070044000000000000
      000000000000000000000000000000000000000000000003002D004603D70062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF000C005B00000000006204FF004303D2000200280000
      00000000000000000000000000000000000000000000000000000026019F0062
      04FF006204FF006204FF006204FF006204FF005504EE00070044000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006204FF006004FD001D018B0000000D000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006204FF006004FD001D018B0000000D000000000000
      0000000000000000000000000000000000000000000000000013001600780062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF002301990002002600000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006204FF006004FD001D018B0000000D000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006104FE001D018D0000001000000000000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006104FE001D018D0000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000190052
      03E9006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF005803F1000200270000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006104FE001D018D0000001000000000000000000000
      000000000000000000000000000000000000005304EA004C03E1000400380000
      0000000000000000000000000000000000000000000000000000002B01A90062
      04FF006204FF006104FE001E018D000000000000000000000000000000000000
      000000000000000000000000000000000000005304EA004C03E1000400380000
      0000000000000000000000000000000000000000000000000000002B01A90062
      04FF006204FF006104FE001E018D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000200000010000000100000001000190181006204FF00150077000000100000
      00100000001000000010000A0054006204FE003803C100010021000000100000
      001000000007000000000000000000000000005304EA004C03E1000400380000
      0000000000000000000000000000000000000000000000000000002B01A90062
      04FF006204FF006104FE001E018D000000000000000000000000000000000000
      00000000000000000000000000000000000000200193006104FE002301990004
      003800020028000200280002002800020028000200280003002E004203D20062
      04FF006004FD0021019600000014000000000000000000000000000000000000
      00000000000000000000000000000000000000200193006104FE002301990004
      003800020028000200280002002800020028000200280003002E004203D20062
      04FF006004FD0021019600000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000070047005604EE004903DC000600430002
      002C0002002B00040039002D02AD006204FF001C018A00000002000000000000
      00000000000000000000000000000000000000200193006104FE002301990004
      003800020028000200280002002800020028000200280003002E004203D20062
      04FF006004FD0021019600000014000000000000000000000000000000000000
      00000000000000000000000000000000000000000018003D03CA006204FE004C
      03E1004303D2004303D2004303D2004303D2004303D2004603D7006204FF005E
      04FA001901810000001200000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000018003D03CA006204FE004C
      03E1004303D2004303D2004303D2004303D2004303D2004603D7006204FF005E
      04FA001901810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000017003502BD006204FF005304EB0045
      03D6004503D5004D03E2006004FC005E04F90003002F00000000000000000000
      00000000000000000000000000000000000000000018003D03CA006204FE004C
      03E1004303D2004303D2004303D2004303D2004303D2004603D7006204FF005E
      04FA001901810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000018002001930053
      04EA006204FF006204FF006204FF006204FF006204FF006204FF004303D40008
      004B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000018002001930053
      04EA006204FF006204FF006204FF006204FF006204FF006204FF004303D40008
      004B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D00140075005103E80062
      04FF006204FF005A04F400230198000000130000000000000000000000000000
      0000000000000000000000000000000000000000000000000018002001930053
      04EA006204FF006204FF006204FF006204FF006204FF006204FF004303D40008
      004B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited ImgPequenaVe: TImageList
    Bitmap = {
      494C01010600000188020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000380000001C00000001002000000000008018
      0000000000000000000000000000000000000005003C004803DA0024019A000A
      0054000200250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008003502BC0014007400010021000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002002B005904F3003402BA0032
      02B7003D03CA001D018A00000008000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000230198000D
      005F005604EF006204FF005804F2002E02AE000A005300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D003702BF000700470000
      00000024019A006204FF0025019C000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006204FF0024
      019B004A03DD006204FF006204FF006204FF005C04F700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000001D018A0025019C0001
      0022002A01A7006204FF006204FF002601A00000000500000000000000000000
      0000000000000000000000000000000000000000000000000000006004FD0020
      0193004A03DE006204FF006204FF006204FF005804F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005003D005904F30062
      04FF006204FF006204FF006204FF006204FF002801A30000000B000000000000
      0000000000000000000000000000000000000000000000000000006004FD0020
      0193004A03DE006204FF006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002001300710060
      04FD006204FF006204FF006204FF006204FF006204FF002901A40000000A0000
      0000000000000000000000000000000000000000000000000000006004FD0020
      0192005104E7006204FF006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000012
      006F006204FF006204FF006204FF006204FF006204FF006204FF002C02AB0000
      0000000000000000000000000000000000000000000000000000006004FD0025
      019C00200194003302B8006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000012006E005E04FA006204FF006204FF006204FF006204FF003102B40004
      0036000000190000000000000000000000000000000000000000006004FD0025
      019C00200194003302B8006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000011006C005E04F9006204FF006204FF002D02AC000B0056004A
      03DD000A00540000000000000000000000000000000000000000006004FD0020
      0192005104E7006204FF006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000011006C006204FF002D02AD00090051004803DB0019
      0180001B01850011006C00000000000000000000000000000000006004FD0020
      0193004A03DE006204FF006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000060041000D005D004903DC0018007E0016
      0078006204FF003A03C400000000000000000000000000000000006004FD0020
      0193004A03DE006204FF006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000010006A001C01880018007F0062
      04FF005604EF0007004800000000000000000000000000000000006204FF0024
      019B004A03DD006204FF006204FF006204FF005F04FB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001001F005704F0004F
      04E60009004F000000000000000000000000000000000000000000230198000D
      005E005504EE006204FF006204FF005504ED002D02AC00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004000200290001
      0023000000000000000000000000000000000000000000000000000000000000
      0007003A03C50021019600090051000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000150076005404EC0016
      0079000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000140075006204FF006204FF005A
      04F50000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000140074006204FF006204FF006204FF0014
      00750000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010022006204FF000F00660000
      000000000000000000000000000000010022003502BB006204FF006204FF003E
      03CC000300330000000000000000000000000000001000130071003402B90043
      03D3002D02AC000A005400010022005804F1006204FF006204FF001400750000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010022006204FF000F00660000
      000000000000000000000000000000030033003E03CC0000001100000000003E
      03CC004A03DD00000000000000000005003A004E03E3004503D5001600790010
      006700200192005104E8004B03DF005804F1005104E700140074000000000000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010022006204FF000F00660000
      0000000000000000000000000000000000000000000000000000000000000015
      0077006204FF000000000001001B005304EA002001920002002D001B0187001D
      018B000300300001001D003903C3004D03E20001002200000000000000000000
      000000000000006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF00000000000000000062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF0000000000010022006204FF000F00660000
      000000000000000000000000000000000000000000000000000000010022003E
      03CC002B01AA0000000000200193003903C30003002E004F03E5003102B4000B
      00560001001D0000000000000018005104E9000A005300000000000000000000
      000000000000006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF00000000000000000062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF0000000000010022006204FF006204FF0062
      04FF006204FF00230199000000000000000000000000000F0066006204FF003E
      03CC0000000000000000004303D4000A0055003002B30025019E000000000000
      000000000000000000000000000000220197002D02AD00000000000000000000
      000000000000006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF00000000000000000062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF0000000000010022006204FF000F00660000
      0000000000000000000000000000000000000000000000000000000100220055
      04EE0015007700000000005804F10005003E003202B70001001D000000000000
      000000000000000000000000000000150076004503D500000000000000000000
      000000000000006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF00000000000000000062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF0000000000010022006204FF000F00660000
      0000000000000000000000000000000000000000000000000000000000000035
      02BB003502BB00000000004A03DD000A00530009004D00000000000000000000
      0000000000000000000000000000001B0187003402BA00000000000000000000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010022006204FF000F00660000
      000000000000000000000000000000000011003E03CC00000011000100220055
      04EE001C018800000000002C02AB002E02AF0000000000000000000000000000
      0000000000000000000000000005004A03DE0013007200000000000000000000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010022006204FF006204FF0062
      04FF006204FF006204FF004A03DD00000000003502BB006204FF006204FF0035
      02BB000000110000000000030032005E04FA0010006700000000000000000000
      0000000000000000000200230199004E03E30000000F00000000000000000000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000F0064005E04FA002E02AE000900510005
      003C000D0060003D03CA004F04E6000400380000000000000000000000000000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000040035002B01A9004903DC0057
      04F0004303D3002001930001001E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000380000001C0000000100010000000000E00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited imgBotoesAtivoLa: TImageList
    Bitmap = {
      494C01010800DC00000218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DCC7FFF1F6
      F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF4EEFF6EAAE8FF267EFFFF4B95
      DCFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9F
      EDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9F
      EDFF5198E2FF267EFFFF4A94F4FFCFE2E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3587C7FF5398
      87FF98C09AFFE8F1E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C9FEEFF267EFFFF267EFFFFDBEA
      DDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4
      EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4
      EDFFE1EDE2FF2780FFFF267EFFFF4A94F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF2A80BCFF75AB78FFF1F6F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F8F4FF609E64FF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF4C9497FFEDF5EDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
      FFFFFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF147061FF66A4B1FFDBE9F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF89B8BAFF267EFEFF64A4F5FF6FAAFFFF6FAAFFFF6FAAFFFF6FAA
      FFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF65A5F6FF3588F6FF4C9498FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF9F9F9FFC9C9C9FF879BB7FF267EFFFF267EFFFF267E
      FFFF267EFFFF526F9BFF819FCAFFC8C8C8FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFF4F9F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAF6FF66A5F6FF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEBEBEBFF838383FF3F7AD1FF2977E9FF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF3873CAFFC1C1C1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFFFFFFFFF6FAAFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF589DEAFFEAF2EAFFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE8E8E8FF666666FF267EFEFF267EFFFF267EFFFF267EFFFF304E77FF3C5A
      85FF277EFEFF277EFFFF267EFEFF5D5D5EFFF9F9F9FFF0F0F0FFECECECFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFBFDFBFFB7D4
      FFFFB6D4FFFF569CFFFF267EFFFFFFFFFFFFA0C7FFFF6FAAFFFF6FAAFFFF6FAA
      FFFF6FAAFFFF91BEF1FFF1F6F1FFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFFB6D4
      FFFFBCD6D5FFF9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFF838D9BFF2A6ED3FF267EFFFF3181F2FF7488A5FFC1C1C1FFECECECFFF7F7
      F7FFEFEFEFFFC5C5C5FF878787FFE7E7E7FFFDFDFDFF939393FF3B5884FF8FA2
      BFFFD7D7D7FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFA7C9A9FF267E
      FEFF267EFFFF267EFFFF267EFFFFFFFFFFFF9FC6FFFF6EAAFFFF6EAAFFFF6EAA
      FFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFFE2EEE3FF6FAAFFFF267EFFFF267E
      FFFF2C81D6FF79AE7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5
      C5FF3276DBFF267EFFFF267EFFFF9CB0CCFFF0F0F0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFF0F0F0FF658DC6FF267EFFFF2B79
      ECFF4985DAFF8C8C8DFFD6D6D6FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFFFFFFFFFF70AAFFFF2780FFFF2780FFFF2780
      FFFF2780FFFF2780FFFF2780FFFF2780FFFFD4E5D5FF6FAAFFFF267EFFFF267E
      FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFF4E4E
      4FFF267EFFFF267EFFFF8D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8FF4782D7FF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF7A99C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFF267E
      FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFF277E
      FFFF267EFFFF45638FFFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBBFF326DC3FF267EFFFF267E
      FFFF267EFFFF346FC5FF6188C1FFA1A1A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAA
      FFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF3E8DFFFF267EFFFF267E
      FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87AEE6FF267E
      FFFF267EFFFF7796C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A9EBAFF2876E8FF267EFFFF267E
      FFFF267EFFFF346FC6FFEBEBEBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF69A7FAFFF0F6
      F0FF277EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFCCE1
      CFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
      FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
      FFFFDDEBDFFF277EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF277EFFFF267E
      FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF95B2DDFFFFFFFFFFFCFCFCFFFAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B79A4FF34517CFF686868FF267E
      FFFF267EFFFF535355FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF529AFCFFACCE
      F5FF277EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF61A1ACFFD5E5D5FF62A1
      ACFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EA5DEFF267E
      FFFF267EFFFF70A2E9FF9CB9E4FF697D9BFFC7C7C7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFABABABFFD6D6D6FFE3E3E3FF296E
      D2FF267EFFFF326DC3FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF61A1ACFFD4E5D5FF61A1
      ACFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACACFF267E
      FFFF267EFFFF267EFFFF267EFFFF4782D8FFD7D7D7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFF296E
      D2FF267EFFFF545455FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF277EFFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780
      FFFF2780FFFF277EFFFF277EFFFF277EFFFF277EFFFF2780FFFF267EFEFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF80B183FF267E
      FDFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF408A45FFFFFFFFFFFFFFFFFFFFFFFFFFA7C4EEFF425F8BFF267E
      FEFF267EFFFF267EFFFF267EFFFF5D99EEFFEEEEEEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8AFF267E
      FFFF267EFFFF7B7B7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF569BE8FFE7F1E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE5F0FDFFAECFF6FFACCDF4FFC3DBF3FFFAFCFAFF7EB082FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFF8FAF8FF81B1
      83FF6FAAFFFF3F8DFFFF267EFFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAA
      FFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF3F8DFFFF267EFFFF6FAA
      FFFF7AAFADFFF4F8F4FFFFFFFFFFFFFFFFFF9F9F9FFF3C5984FF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF8D8D8DFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1FF395682FF267E
      FFFF2D71D5FFC9CACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF60A2F2FFF2F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D5FFFF267EFFFF267EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBFFB9C2D0FF6583AEFF267E
      FEFF267EFFFF267EFFFF267EFFFFBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEFF7B7B7BFF267EFEFF267E
      FFFF5F7DA9FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF60A2F2FFF2F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D5FFFF267EFFFF267EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCF
      CFFF55719DFF267EFFFF267EFFFFEDEDEDFFFFFFFFFFD9D9D9FFF7F7F7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FF6785B0FF267EFFFF267EFFFF3671
      C7FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF60A2F2FFF2F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D5FFFF267EFFFF267EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FF91B8F0FF6AA5FAFFFDFDFDFFCECECEFF36547EFF56739FFF8DAB
      D6FFADADADFFA4ADBBFF7A98C3FF3F5C88FF267EFFFF267EFFFF2D68BEFF8B8B
      8BFFF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF60A2F2FFF2F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D5FFFF267EFFFF267EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFF267EFFFF267EFFFF267EFFFF61A2DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFEAF2EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF4EEFF5D9FEEFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFAFAFAFFE9E9E9FF668EC7FF267EFFFF267EFFFF267E
      FFFF2D68BFFF2A6FD3FF267EFFFF267EFFFF267EFFFF3B6BB4FFA4A4A4FFEFEF
      EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF2780FFFF2780FFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFEFF267EFEFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF60A2F2FFF2F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D5FFFF267EFFFF267EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFF267EFFFF267EFFFF4993DAFFD9E8DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF95BF97FF267EFDFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF609E64FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FF9D9D9DFF3A3A3AFF267EFFFF267E
      FEFF267EFFFF267EFFFF267EFEFF277EFFFF606060FFD2D2D2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF1F78B1FF408DD1FF529685FF81B283FFC4DBC5FFF7FAF7FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF5FA1F1FFF1F6F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC7DEF7FF3688F7FF267EFFFF62A3F4FFF4F8F4FF9BC29DFF267E
      FFFF267EFFFF3F8DD1FFC0D8C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8FAF8FF96BF98FF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAA
      FFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF89B8BAFFF4F8F4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAFFB5B5B5FF9292
      92FF6FAAFEFF79A1DAFF9D9D9DFFC8C8C8FFF6F6F6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF378682FF7BB0
      C4FFAECEB0FFD1E2D2FFF1F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94BFDCFF267EFFFF267EFFFF267E
      FFFF388AF9FFADCEDEFFDAE8DAFFDAE8DAFFDAE8DAFFDAE8DAFFDAE8DAFFDAE8
      DAFFDAE8DAFFD2E3D2FFA2C7D2FF92BEDAFFA7CAD8FFCEE1CFFF4B94DCFF267E
      FFFF267EFFFFCFE2D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94BFDCFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF5299
      E4FFE3EEE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFCFFE1EDE1FFC4DB
      C5FFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4
      FFFFC1D9C2FFFDFEFDFFFFFFFFFFE4EEE4FF9BC3E4FF63A2AFFF3A8886FF5A9D
      A6FF90BDD9FFB6D4FFFFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFFE7E7E7FFD0D0
      D0FFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFD9D9D9FFCDE0
      FDFFB6D4FFFFCDE0FDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCBE0E4FF60A0ACFF116E5DFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF4A9296FFADCE
      DEFFF7FAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFCFFE1EDE1FFC4DB
      C5FFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4
      FFFFC1D9C2FFFDFEFDFFFFFFFFFFE4EEE4FF9BC3E4FF63A2AFFF3A8886FF5A9D
      A6FF90BDD9FFD5E5D6FFFEFFFEFFFFFFFFFFFFFFFFFFA8CBD9FF5097E2FF3386
      C6FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF73AA76FFFDFEFDFFC4DBC5FF5399E4FF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFFA7CAA9FFFEFEFEFFFFFFFFFFB0C3E0FF5692E7FF3F7A
      D0FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF78A0D9FF6CA7
      FCFF267EFFFF3C8BFDFF6CA8FDFFBEBEBEFFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF4792F0FF267EFFFF4B9397FF66A4B0FF66A4B0FF66A4B0FF66A4B0FF66A4
      B0FF66A4B0FF66A4B0FF66A4B0FF66A4B0FF66A4B0FF54989FFF267EFEFF408E
      D2FFD1E3D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8CBD9FF5097E2FF3386
      C6FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF73AA76FFFDFEFDFFC4DBC5FF5399E4FF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF4590D6FFA7CAA9FFFEFEFEFFD8E8DAFF267EFFFF267EFFFF277E
      FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF4B92
      95FFF9FCF9FFEAF2EBFF5A9DEBFF267EFFFF267EFFFF267EFFFF2780FFFF267E
      FFFF267EFFFF267EFFFF4590D6FFD5E5D6FFE1E1E1FF267EFFFF267EFFFF4F4F
      50FF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFFA6A6A6FF6FAA
      FFFF267EFFFFE4E4E4FF9C9C9CFF267EFFFF6AA6FCFFFCFCFCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9
      F5FF267EFFFF569AA2FFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70A873FF267E
      FFFFB0D0F8FFFFFFFFFFFFFFFFFFFFFFFFFFD8E8DAFF267EFFFF267EFFFF277E
      FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF4B92
      95FFF9FCF9FFEAF2EBFF5A9DEBFF267EFFFF6CA56FFF559AE5FF267EFEFF3B8B
      CEFF93BD96FF308134FF4590D6FFD5E5D6FF267EFFFF2980EBFF96BFC8FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAFCFF6FF267EFFFF267EFFFF267EFFFF76ADC1FFFFFFFFFF9DC4
      E5FF267EFFFF267EFFFF267EFFFF90BCDAFF5C7AA6FF267EFFFF9AB8E3FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDB
      DBFF277EFFFFEEEEEEFFCCCCCCFF277EFFFF267EFFFF81B3FAFFFBFBFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFFD9E9F2FFACCDF4FFE0EDE1FFF8FBF8FFC1DA
      F1FFACCDF4FFF1F7F1FFEBF3ECFFACCDF4FFC3DBF3FFFAFCFAFF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF469091FF267EFFFF93BEDCFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFADCEC7FF257DCFFF267EFFFFD8E8DAFFF0F6F0FF79AE7CFF9AC3
      FAFFF8FBF8FF95BE97FF267EFFFF90BCDAFF267EFFFF3E8CD0FFCFE1D0FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF87B7CFFF267EFFFF267EFFFF9DC4E5FFC2DADBFFFFFFFFFFD3E4
      EBFF9DC4E5FF277EFFFF267EFFFF5B9DA6FF267EFFFF4186EAFFD1DBE9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCFF2780FFFF609CF1FF5894E9FF267EFFFF267EFFFF267EFFFF69A6FBFFF9F9
      F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF3B8BE4FFCBE0E4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF87B7CFFF267EFFFF267EFFFF69A6CBFFE2EDE2FFFAFCFAFFFAFC
      FAFF98C2F8FF3B8ACEFF267EFFFF3F8EE9FF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF65A2AFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF3A8886FF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC6C6C6FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF69A5
      FAFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF65A2AFFF267EFFFF267EFFFF3A8ACCFFC9DECAFFFFFFFFFFFAFC
      FAFF78AD7AFF267EFDFF267EFFFF3A8886FF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF90BCD8FF267EFFFF267EFFFF76ADC1FFACCDC6FFFFFFFFFFC2DA
      DBFF76ADC1FF267EFFFF267EFFFF63A2AEFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAEC1DDFF3887F8FF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF7EB1F8FFF9FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF90BCD8FF267EFFFF267EFFFFB1CFB3FFF6FAF6FFCCE0CDFFE3EE
      E4FFF0F6F1FF6BA56FFF267EFFFF63A2AEFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB2D1F9FF267EFFFF267EFFFF267EFFFF76ADC1FFFFFFFFFF9DC4
      E5FF267EFFFF267EFFFF267EFFFF9AC3E4FF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8FFAFC2DEFF277EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFFE5E6E6FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB8D4D1FF2D82D6FF267EFFFFB5D2B7FFB2D0B3FF3C8BCDFF6AA6
      CCFFD7E7D8FF6EA671FF267EFFFF9AC3E4FF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F9F5FF64A4F5FF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF5399E5FFE4EEE4FF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6FF267EFFFF267EFFFF267EFFFF267E
      FFFFA3C0EBFF878787FF6CA8FDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F9F5FF64A4F5FF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF5399E5FFE4EEE4FF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDBE9DCFF65A4F5FF2C82D6FF267EFFFF267EFFFF267E
      FFFF267EFFFF599DEBFFC3DAC5FFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1C4E0FF3887F9FF267EFFFF85AC
      E4FF8599B6FF4F8ADFFFA9B3C1FFC9D3E1FFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDBE9DCFF65A4F5FF2C82D6FF267EFFFF267EFFFF267E
      FFFF267EFFFF599DEBFFC3DAC5FFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9F5FFB8D4D1FF8FBCD8FF65A2AFFF87B7
      D0FFAFCFF6FFEAF2EBFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFB3C6E2FFA3C0EBFF8699
      B6FF6790C9FFBCBCBCFF4A90F3FF4186EAFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9F5FFB8D4D1FF8FBCD8FF65A2AFFF87B7
      D0FFAFCFF6FFEAF2EBFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9FF518C
      E1FFBEBEBEFF277EFFFF267EFFFF91AFDAFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F7F2FF5F9FABFFB9D5D2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FF708FBAFFC2CCDBFFFFFFFFFFE5E5
      E5FF5F9AEFFF267EFFFF82A9E2FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F7F2FF5F9FABFFB9D5D2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5EFFF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FF267EFFFF83A1CCFFFFFFFFFFFBFB
      FBFFCBDEFBFFB6D3FEFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5EFFF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5EFFF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FF267EFFFF83A1CCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFFB3D0B4FF4F9352FFC8DDC9FFF2F7F3FF7DB0
      80FF4F9352FFE6F0E6FFDAE8DBFF4F9352FF80B183FFF6F9F6FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5EFFF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8E7D9FF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0FF267EFFFF83A1CCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8E7D9FF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCADFCCFF74AD
      D6FF6EAAFFFF6EAAFFFF6EAAFFFF5299E4FF267EFFFF88B8D2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5FF7DA5
      DEFF6EAAFFFF6EAAFFFF6EAAFFFF5894E9FF267EFFFF92AFDAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F0E6FF85B6E6FF67A3
      6AFF267EFFFF418EEAFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAA
      FFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF4E96E0FF267E
      FFFF5299FBFF6EAAFFFFCCE0CDFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCADFCCFF74AD
      D6FF6EAAFFFF6EAAFFFF6EAAFFFF5299E4FF267EFFFF88B8D2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BA6B6FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A98C3FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E3D3FF418ED2FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFEFFA4C8A6FFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF61A2F2FFF2F7F2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7694BFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF88AFE7FFF4F4F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF4ECFF87B68AFF267E
      FEFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF65A26AFFD9E8DAFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF82B5E2FFF2F7F2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF7CB1C7FFCFE3FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7694BFFF267E
      FFFF267EFFFF267EFFFF267EFFFF89A6D1FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F0E6FF2278
      6CFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF237A9DFFD8E8D9FFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF7CB1C7FFEFF5EFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFEFF3788C9FFC7DDC8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF62A1ACFF267E
      FFFF267EFFFF267EFFFF7CB1C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFEFF427CD3FFD2D2D2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7391BCFF267E
      FFFF267EFFFF267EFFFF89A6D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE
      FDFFEFF5EFFFEFF5EFFFEFF5EFFF8BB9D3FF267EFFFF89B78BFFEFF5EFFFEFF5
      EFFFEFF5EFFFEFF5EFFFABCCADFF267EFFFF579CE9FFDEEBDEFFEFF5EFFFEFF5
      EFFFF8FBF8FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF7CB1C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BA56EFF267EFFFF78AFF2FFC7DD
      C9FFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFD1E3D3FF418EBCFF267E
      FFFF267EFFFF78B0DAFFEBF3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8AFF267EFFFF7BADF4FFD2D2
      D3FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDADADAFF267EFFFF267E
      FFFF267EFFFF81A8E1FFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBCD7EDFF2F84F0FF267EFFFFBED8EFFFD3E4
      D4FFD4E5D5FFC7DDE0FF569BFEFF267EFFFF7DB2DEFFFDFEFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF569BE7FF267EFFFF78AFF2FFB6D4
      FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFF267EFFFF267E
      FFFF267EFFFF78B0DAFFEBF3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F0E7FF4993C4FF267EFFFF3788
      C9FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF418ED3FF267EFFFF267E
      FFFF89B8D2FFEDF4EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFF5588CEFF267EFFFF427C
      D3FF4E8ADFFF4E8ADFFF4E8ADFFF4E8ADFFF4E8ADFFF4A85DBFF267EFFFF267E
      FFFF92B0DAFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F1E8FF579CE8FF267EFFFF2F84F0FF428F
      D5FF4390D5FF3789E1FF267EFFFF267EFFFFD0E2D1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F0E7FF4993C4FF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF89B8D2FFEDF4EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F0E7FF569BE7FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF3C8BCFFFB4D1
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFF8A8A8AFF267E
      FEFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF4682D7FFC3C3
      C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F7F2FF8AB78CFF23796DFF267E
      FFFF267EFFFF267EFFFF68A4B3FFECF3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F0E7FF569BE7FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF3C8BCFFFB4D1
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited ImgPequenaLa: TImageList
    Bitmap = {
      494C01010600000138020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000380000001C00000001002000000000008018
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FF267EFFFFA2A2A2FFE4E4E4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFFB3B3B3FF267EFFFF267EFFFF267EFFFF727272FFBCBCBCFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF828282FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF898989FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF898989FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF8A8A8AFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF828282FF888888FF6A6A6AFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF828282FF888888FF6A6A6AFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF8A8A8AFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF898989FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF898989FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF828282FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFFB3B3B3FF267EFFFF267EFFFF267EFFFF267EFFFF747474FFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FF267EFFFF868686FFBEBEBEFFEDEDEDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A1FF267EFFFF267E
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCFCFFF267E
      FFFF267EFFFF267EFFFFE2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A1FF267EFFFF267EFFFF267E
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000DFDFDFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A2A2FF267EFFFF267EFFFF267EFFFFA1A1
      A1FF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000F5F5F5FF267E
      FFFFC4C4C4FFFFFFFFFF267EFFFF267EFFFF267EFFFFFBFBFBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000277FFF000000
      0000000000000000000000000000DBFFFF00277FFF00277FFF00277FFF00FFDB
      90000000000000000000FFFFFFFFFFFFFFFFF2F2F2FFA5A5A5FF267EFFFF267E
      FFFF267EFFFFBCBCBCFFE4E4E4FF267EFFFF267EFFFF267EFFFFA1A1A1FFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFF267E
      FFFF267EFFFFE4E4E4FF267EFFFF267EFFFF267EFFFF267EFFFFFBFBFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000277FFF000000
      000000000000000000000000000000000000000000000000000090DBFF00277F
      FF00FFDB900000000000FFFFFFFFD1D1D1FF267EFFFF267EFFFF9E9E9EFFADAD
      ADFF8A8A8AFF267EFFFF267EFFFF267EFFFF267EFFFFA2A2A2FFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFFCECE
      CEFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFF6F6
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000277FFF000000
      0000000000000000000000000000000000000000000000000000277FFF00277F
      FF00FFFFB60000000000E9E9E9FF267EFFFF8A8A8AFF267EFFFF939393FF9090
      90FFD9D9D9FFE8E8E8FF267EFFFF267EFFFFE4E4E4FFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF0000000000FFFFFFFFFDFD
      FDFFA4A4A4FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000277FFF00277F
      FF00277FFF00277FFF00277FFF000000000066B6FF00277FFF00277FFF000000
      00000000000000000000267EFFFF267EFFFFDADADAFF267EFFFF267EFFFF267E
      FFFFE8E8E8FFFFFFFFFFECECECFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF0000000000FFFFFFFFFFFF
      FFFFFFFFFFFFA7A7A7FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000277FFF000000
      0000000000000000000000000000000000000000000000000000277FFF00277F
      FF000000000000000000267EFFFFBBBBBBFF267EFFFF267EFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF0000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA7A7A7FF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFFD3D3D3FFECECECFFFFFFFFFF0000000000000000277FFF000000
      00000000000000000000000000000000000000000000000000003A90DB00277F
      FF00FFFFDB0000000000267EFFFFCDCDCDFF267EFFFFE8E8E8FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF0000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FF267EFFFF267EFFFF267EFFFF267E
      FFFFBABABAFF267EFFFFBEBEBEFFFFFFFFFF0000000000000000277FFF000000
      0000000000000000000000000000B6FFFF00277FFF00FFFFDB00277FFF00277F
      FF000000000000000000267EFFFFBDBDBDFFC1C1C1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9FF267EFFFF267EFFFFBEBE
      BEFF267EFFFF989898FF959595FFA3A3A3FF0000000000000000277FFF00277F
      FF00277FFF00277FFF00277FFF00000000003A90DB00277FFF00277FFF00FFFF
      B6000000000000000000267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFBFBFF267EFFFFA4A4A4FFFFFFFFFFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBFFB4B4B4FF267E
      FFFF9A9A9AFF9F9F9FFF267EFFFF267EFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D7FF267EFFFFADADADFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDFF267EFFFF267EFFFFF3F3F3FFFFFFFFFFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAFF9393
      93FF999999FF267EFFFF267EFFFFC5C5C5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFAFAFAFFF267EFFFF267EFFFFBEBEBEFFCFCF
      CFFFB2B2B2FF267EFFFF267EFFFFD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6
      E6FF267EFFFF267EFFFF267EFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFD5D5D5FF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFFE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCFFDDDDDDFFDFDFDFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      28000000380000001C0000000100010000000000E00000000000000000000000
      000000000000000000000000FFFFFF000003FFF0000000000003FFF000000000
      0003FFF0000000000003FFF0000000000003FFF0000000000002001000000000
      0002001000000000000200100000000000020010000000000003FFF000000000
      0003FFF0000000000003FFF0000000000003FFF0000000000003FFF000000000
      FFFC000FFFC00000FFFC000F87C00000FFFC000F87C00000DE0C000F87C00000
      DFC4000F87C00000DFC4000800400000C11C000800400000DFCC000800400000
      DFC4000800400000DE0C000F87C00000C10C000F87C00000FFFC000F87C00000
      FFFC000F87C00000FFFC000FFFC0000000000000000000000000000000000000
      000000000000}
  end
  object FAT_FR_R_ORC: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41822.420257245400000000
    ReportOptions.LastChange = 45763.412664826400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      
        '  vlr_desc_especial: String;                                    ' +
        '                                               '
      'begin'
      ''
      '   vlr_desc_especial := <FAT_DB_M_ORC1."vlr_desc_especial">;'
      '                                        '
      
        '  if (trim(vlr_desc_especial) = '#39#39') or (<FAT_DB_M_ORC1."vlr_desc' +
        '_especial"> = 0) then'
      '    begin'
      '      mmDescEsp.Visible := false;'
      '      mmTotDescEsp.Visible := false;            '
      '    end;      '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                        '
      'end;'
      ''
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 1082
    Top = 240
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = FAT_DB_M_ORC_ITE1
        DataSetName = 'FAT_DB_M_ORC_ITE1'
      end
      item
        DataSet = FAT_DB_M_ORC1
        DataSetName = 'FAT_DB_M_ORC1'
      end>
    Variables = <
      item
        Name = ' Externo'
        Value = Null
      end
      item
        Name = 'ft_codlme'
        Value = Null
      end
      item
        Name = 'ft_desc_item'
        Value = Null
      end
      item
        Name = 'ft_texto_cond_pgto'
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
      OnAfterPrint = 'Page1OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 219.212740000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 296.693105000000000000
          Top = 22.897652440000000000
          Width = 124.724490000000000000
          Height = 27.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OR'#199'AMENTO')
          ParentFont = False
        end
        object ft_codlme: TfrxMemoView
          Left = 400.629916380000000000
          Width = 170.078740160000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ft_codlme]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 64.252010000000000000
          Width = 718.110700000000000000
          Height = 98.267780000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
        end
        object Memo5: TfrxMemoView
          Left = 1.779530000000000000
          Top = 66.031540000000000000
          Width = 384.362090000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Raz'#227'o Social : [CAD_DB_C_PAR."emp_razao"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 2.000000000000000000
          Top = 84.484309030000000000
          Width = 713.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              'Endere'#231'o .....: [CAD_DB_C_PAR."emp_endereco"] - [CAD_DB_C_PAR."e' +
              'mp_numero"] - [CAD_DB_C_PAR."emp_bairro"] - [CAD_DB_C_PAR."int_n' +
              'omecid"] - [CAD_DB_C_PAR."int_uf"] - [CAD_DB_C_PAR."emp_cep"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          Left = 1.779530000000000000
          Top = 102.937078050000000000
          Width = 346.566790000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ ...........: [CAD_DB_C_PAR."emp_cnpj"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 431.512060000000000000
          Top = 102.937078050000000000
          Width = 278.535250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Insc. Estadual : [CAD_DB_C_PAR."emp_ie"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 1.000000000000000000
          Top = 121.389847080000000000
          Width = 350.346320000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Telefone .......: [CAD_DB_C_PAR."emp_telefone"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 480.661720000000000000
          Top = 121.389847080000000000
          Width = 225.621830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Fax : [CAD_DB_C_PAR."emp_fax"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 3.779530000000000000
          Top = 139.842616100000000000
          Width = 136.363018100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'www.colchoesglobo.com.br')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 259.126160000000000000
          Top = 139.842610000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Picture.Data = {
            07544269746D617076480000424D764800000000000036000000280000004400
            0000440000000100200000000000404800000000000000000000000000000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDF6
            FE00BADAFD0089BFFA0073B1F9005FA5F9004E9AF8004D98F7004B95F7004992
            F7004790F700468DF600448AF6004288F6004085F6003F83F5003D80F5003B7D
            F5003A7BF5003878F4003676F4003473F4003371F400346FF300356EF200376D
            F000386CEF003A6AEE003B69ED003D68EC003E67EB004065EA004164E9004363
            E8004462E7004660E600485FE400495EE3004B5CE2004C5BE1004E5AE0004F59
            DF005F66E1007376E300898AE700BAB9F000EEEDFB00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00DFEFFE0086C0FB0055A4F90053A2F800529FF800509DF8004E9A
            F8004D98F7004B95F7004992F7004790F700468DF600448AF6004288F6004186
            F6003F83F5003D80F5003B7DF5003A7BF5003878F4003676F4003473F4003371
            F400346FF300356EF200376DF000386CEF003A6AEE003B69ED003D68EC003E67
            EB004065EA004164E9004363E8004462E7004660E600485FE400495EE3004B5C
            E2004C5BE1004D5AE0004F59DF005058DE005256DD005355DC005554DB005653
            DA005851D9008881E300E0DEF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F7FBFF0097CAFB0057A7F90055A4F90053A2
            F800529FF800509DF8004E9AF8004D98F7004B95F7004992F7004790F700468D
            F600448AF6004288F6004186F6003F83F5003D80F5003B7DF5003A7BF5003878
            F4003676F4003473F4003371F400346FF300356EF200376DF000386CEF003A6A
            EE003B69ED003D68EC003E67EB004065EA004164E9004363E8004462E7004660
            E600485FE400495EE3004B5CE2004C5BE1004D5AE0004F59DF005058DE005256
            DD005355DC005554DB005653DA005851D9005950D8005B4FD7005D4FD6009A8F
            E400F7F7FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAF5FE0076B9
            FA0057A7F90055A4F90054A2F800529FF800509DF8004E9AF8004D98F7004B95
            F7004992F7004790F700468DF600448BF6004288F6004186F6003F83F5003D80
            F5003B7DF5003A7BF5003878F4003676F4003473F4003371F400346FF300356E
            F200376DF000386CEF003A6AEE003B69ED003D68EC003E67EB004065EA004164
            E9004363E8004462E7004660E600485FE400495EE3004A5DE2004C5BE1004D5A
            E0004F59DF005058DE005256DD005355DC005554DB005653DA005852D9005950
            D8005B4FD7005C4ED6005E4CD4005F4BD3007D6ADA00EBE8F900FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00EAF5FE0067B1FA0057A7F90055A4F90054A2F800529FF800509D
            F8004E9AF8004D98F7004B95F7004992F7004790F700468DF600448BF6004288
            F6004186F6003F83F5003D80F5003B7DF5003A7BF5003878F4003676F4003473
            F4003371F400346FF300356EF200376DF000386CEF003A6AEE003B69ED003D68
            EC003E67EB004065EA004164E9004363E8004462E7004660E600485FE400495E
            E4004A5DE2004C5BE1004D5AE0004F59DF005058DE005256DD005355DC005554
            DB005653DA005852D9005950D8005B4FD7005C4ED6005E4CD4005F4BD300614A
            D2006249D1007157D400ECE8F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FBFF0076B9FA0057A7F90055A4
            F90054A2F800529FF800509DF8004E9AF8004D98F7004B95F7004992F7004890
            F700468DF600448BF6004288F6004186F6003F83F5003D80F5003B7DF5003A7B
            F5003879F4003676F4003473F4003371F400346FF300356EF200376DF000386C
            EF003A6AEE003B69ED003D68EC003E67EB004065EA004164E9004363E8004462
            E7004660E600485FE400495EE4004A5DE2004C5BE1004D5AE0004F59DF005058
            DE005256DD005355DC005554DB005653DA005852D9005950D8005B4FD7005C4E
            D6005E4CD4005F4BD300614AD2006249D1006447D0006546CF008266D700F8F6
            FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0096C9FB0057A7F90055A4F90054A2F800529FF800509DF8004E9AF8004D98
            F7004B95F7004992F7004890F700468DF600448BF6004288F6004186F6003F83
            F5003D80F5003B7DF5003A7BF5003879F4003676F4003473F4003371F400346F
            F300356EF200376DF000386CEF003A6AEE003B69ED003D68EC003E67EB004065
            EA004164E9004363E8004462E7004660E600475FE500495EE4004A5DE2004C5B
            E1004D5AE0004F59DF005058DE005256DD005355DC005554DB005653DA005852
            D9005950D8005B4FD7005C4ED6005E4CD4005F4BD300614AD2006249D1006447
            D0006546CF006745CE006844CD00A288DF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00DFEFFE0057A7F90055A4F90054A2F800529F
            F800509DF8004E9AF8004D98F7004B95F7004992F7004890F700468DF600448B
            F6004288F6004186F6003F83F5003D80F5003B7EF5003A7BF5003879F4003676
            F4003473F4003371F400346FF300356EF200376DF000386CEF003A6AEE003B69
            ED003D68EC003E67EB004065EA004164E9004363E8004462E7004661E600475F
            E500495EE4004A5DE2004C5BE1004D5AE0004F59DF005058DE005256DD005355
            DC005554DB005653DA005852D9005950D8005B4FD7005C4ED6005E4CD4005F4B
            D300614AD2006249D1006447D0006546CF006745CE006844CD006A42CC006B41
            CB00E4DBF500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0086C0
            FB0055A4F90054A2F800529FF800509DF8004E9AF8004D98F7004B95F7004992
            F7004890F700468DF600448BF6004288F6004186F6003F83F5003D81F5003B7E
            F5003A7BF5003879F4003676F4003473F4003371F400346FF300356EF200376D
            F000386CEF003A6AEE003B69ED003D68EC003E67EB004065EA004164E9004363
            E8004462E7004661E600475FE500495EE4004A5DE2004C5BE1004D5AE0004F59
            DF005058DE005257DD005355DC005554DB005653DA005852D9005950D8005B4F
            D7005C4ED6005E4CD4005F4BD300614AD2006249D1006447D0006546CF006745
            CE006844CD006A42CC006B41CB006D40CA009674D800FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00EDF6FE0055A4F90054A2F800529FF800509DF8004F9A
            F8004D98F7004B95F7004992F7004890F700468DF600448BF6004288F6004186
            F6003F83F5003D81F5003B7EF5003A7BF5003879F4003676F4003473F4003371
            F400346FF300356EF200376DF000386CEF003A6AEE003B69ED003D68EC003E67
            EB004065EA004164E9004363E8004462E7004661E600475FE500495EE4004A5D
            E2004C5BE1004D5AE0004F59DF005058DE005257DD005355DC005554DB005653
            DA005852D9005950D8005B4FD7005C4ED6005E4CD4005F4BD300614AD2006249
            D1006447D0006546CF006745CE006844CD006A43CC006B41CB006D40CA006E3F
            C900703DC800F1EBF900FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9DAFD0054A2
            F800529FF800509DF8004F9AF8004D98F7004B95F7004992F7004890F700468D
            F600448BF6004288F6004186F6003F83F5003D81F5003B7EF5003A7BF5003879
            F4003676F4003473F4003371F400346FF300356EF200376DF000386CEF003A6A
            EE003B69ED003D68EC003E67EB004065EA004164E9004363E8004462E7004661
            E600475FE500495EE4004A5DE2004C5BE1004D5AE0004F59DF005058DE005257
            DD005355DC005554DB005653DA005852D9005950D8005B4FD7005C4ED6005E4C
            D4005F4BD300614AD2006249D1006447D0006546CF006745CE006844CD006A43
            CC006B41CB006D40CA006E3FC900703DC800713CC600C6AFE700FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0089BFFA00529FF800509DF8004F9AF8004D98F7004B95
            F7004992F7004890F700468DF600448BF6004288F6004186F6003F83F5003D81
            F5003B7EF5003A7BF5003879F4003676F4003876F4006996F70098B6F900BDD0
            FB00C8D7FB00D0DCFB00D1DDFB00D2DCFB00D2DCFB00D2DCFA00D3DCFA00D3DB
            FA00D4DBFA00D4DBF900D4DAF900D4DAF900D5DAF900D5DAF800D6D9F800D6D9
            F800D6D9F800D7D8F700D4D5F600CACAF400C1C1F200A2A0EB00726CDF005A51
            D8005B4FD7005C4ED6005E4CD4005F4BD300614AD2006249D1006447D0006546
            CF006745CE006844CD006A43CC006B41CB006D40CA006E3FC900703DC800713C
            C600733BC500A078D700FFFFFF00FFFFFF00FFFFFF00FFFFFF0072B2F900509D
            F8004F9AF8004D98F7004B95F7004992F7004890F700468DF600448BF6004288
            F6004186F6003F83F5003D81F5003B7EF5003A7BF5003879F4003E7BF40094B5
            F900E9EFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00E5E3F9009087E3005F4DD4005F4BD300614A
            D2006249D1006447D0006546CF006745CE006844CD006A43CC006B41CB006D40
            CA006E3FC900703DC800713CC600733BC500743AC400905ECE00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF005EA5F9004F9AF8004D98F7004B95F7004992F7004890
            F700468DF600448BF6004288F6004186F6003F83F5003D81F5003B7EF5003A7B
            F5003879F4006596F700E2EBFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00D8D3F4007561D8006249D1006447D0006546CF006745CE006844
            CD006A43CC006B41CB006D40CA006E3FC900703DC800713CC600723BC600743A
            C4007639C3008348C700FFFFFF00FFFFFF00FFFFFF00FFFFFF004F9AF8004D98
            F7004B95F7004992F7004890F700468EF600448BF6004288F6004186F6003F83
            F5003D81F5003B7EF5003A7BF5003879F4006E9CF700FBFCFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFF00FFFFFF00FFFFFF00FCFD
            FF00F8FAFE00F5F6FE00F0F3FD00EDF0FD00E9ECFC00E6E9FB00E5E8FB00E9EB
            FB00EDEEFC00F1F1FC00F4F5FD00F8F8FE00FBFBFE00FEFEFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFECFA007E67
            D8006546CF006745CE006844CD006A43CC006B41CB006D40CA006E3FC900703D
            C800713CC700723BC600743AC4007639C3007737C2007936C100FFFFFF00FFFF
            FF00FFFFFF00FFFFFF004D98F7004B95F7004992F7004890F700468EF600448B
            F6004288F6004186F6003F83F5003D81F5003B7EF5003A7BF5003879F4006294
            F600F7FAFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2DEFB0082A0F4005179
            EF003E69EC004068EB004167EA004164E9004363E8004462E7004661E600475F
            E500485EE4004A5DE3004B5CE2004D5AE0004F59DF005058DE005257DD005355
            DC005554DB005653DA005A54D9005F56D9007369DD00968DE500D0CBF300FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F5F3FC007C5FD5006844CD006A43CC006B41
            CB006D40CA006E3FC9006F3EC800713CC700723BC600743AC4007639C3007737
            C2007936C1007A35C000FFFFFF00FFFFFF00FFFFFF00FFFFFF004B95F7004A93
            F7004890F700468EF600448BF6004288F6004186F6003F83F5003D81F5003B7E
            F5003A7CF5003879F4003C7AF400E6EEFE00FFFFFF00FFFFFF00FFFFFF00FAFC
            FF0086A6F5003B6CEE003B69ED003D68EC003E67EB004066EA004164E9004363
            E8004462E7004661E600475FE500485EE4004A5DE3004B5CE2004D5AE0004F59
            DF005058DE005257DD005355DC005554DB005653DA005852D9005950D8005B4F
            D7005C4ED6005E4CD4005F4BD3008675DD00EDEAFA00FFFFFF00FFFFFF00FFFF
            FF00CBBFEE006A43CC006B41CB006D40CA006E3FC9006F3EC800713CC700723B
            C600743AC4007639C3007737C2007936C1007A35C0007B34BF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF004A93F7004890F700468EF600448BF6004288F6004186
            F6003F83F5003D81F5003C7EF5003A7CF5003879F4003676F40095B6F900FFFF
            FF00FFFFFF00FFFFFF00FDFEFF006F94F4003A6BEE003B69ED003D68EC003E67
            EB004066EA004164E9004363E8004462E7004561E600475FE500485EE4004A5D
            E3004B5CE2004D5AE0004F59DF005058DE005257DD005355DC005554DB005653
            DA005852D9005950D8005B4FD7005C4ED6005E4CD4005F4BD400614AD2006249
            D100775ED600F1EEFA00FFFFFF00FFFFFF00FFFFFF008866D5006C40CA006E3F
            C9006F3EC800713CC700723BC600743AC4007639C3007737C2007936C1007A35
            C0007B34BF007D33BE00FFFFFF00FFFFFF00FFFFFF00FFFFFF004890F700468E
            F600448BF6004288F6004186F6003F83F5003D81F5003C7EF5003A7CF5003879
            F4003676F4003D79F400F5F8FE00FFFFFF00FFFFFF00FFFFFF0097B2F7003A6B
            EE003B69ED003D68EC003E67EB004066EA004164E9004363E8004462E7004561
            E600475FE500485EE4004A5DE3004B5CE2004D5AE0004F59DF005058DE005257
            DD005355DC005554DB005653DA005852D9005950D8005B4FD7005C4ED6005D4D
            D5005F4BD400614AD2006249D1006448D0006546CF00937BDC00FFFFFF00FFFF
            FF00FFFFFF00D5C9F0006E3FC9006F3EC800713CC700723BC600743AC4007639
            C3007737C2007836C1007A35C0007B34BF007D33BE007E31BD00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00468EF600448BF6004288F6004186F6003F84F5003D81
            F5003C7EF5003A7CF5003879F4003676F4003574F400719CF700FFFFFF00FFFF
            FF00FFFFFF00EBF1FE003F6EEE003B69ED003D68EC003E67EB004066EA004164
            E9004263E8004462E7004561E600475FE500485EE4004A5DE3004B5CE2004D5A
            E0004F59DF005058DE005257DD005355DC005554DB005653DA005852D9005950
            D8005B4FD7005C4ED6005D4DD5005F4BD400614AD2006249D1006448D0006546
            CF006745CE006945CD00DFD7F400FFFFFF00FFFFFF00FEFDFF007749CB00713C
            C700723BC600743AC4007639C3007738C3007836C1007A35C0007B34BF007D33
            BE007E31BD008030BC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00448BF6004288
            F6004186F6003F84F5003D81F5003C7EF5003A7CF5003879F4003676F4003574
            F4003371F400AEC6FA00FFFFFF00FFFFFF00FFFFFF00A8BEF8003B69ED003D68
            EC003E67EB004066EA004165E9004263E8004462E7004561E600475FE500485E
            E4004A5DE3004B5CE2004D5AE0004F59DF005058DE00555ADE005E60DE005655
            DB005653DA005852D9005950D8005B4FD7005C4ED6005D4DD5005F4BD400614A
            D2006249D1006448D0006546CF006745CE006844CD006943CC00AB94E200FFFF
            FF00FFFFFF00FFFFFF009B76D800723BC600743AC4007539C4007738C3007836
            C1007A35C0007B34BF007D33BE007E31BD008030BC008130BA00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF004389F6004186F6003F84F5003D81F5003C7EF5003A7C
            F5003879F4003676F4003574F4003372F4003370F300D3E0FC00FFFFFF00FFFF
            FF00FFFFFF007F9DF3003D68EC003E67EB003F66EA004165E9004263E8004462
            E7004561E600475FE500485EE4004A5DE3004B5CE200525FE1008A91EA00C4C7
            F400EDEEFC00FEFEFF00FFFFFF00FAFAFE00E3E3F900B2AEED007A71DF005C4E
            D6005D4DD5005F4BD400614AD2006249D1006448D0006546CF006745CE006844
            CD006943CC006B42CB008966D500FFFFFF00FFFFFF00FFFFFF00C1A8E600743A
            C5007539C4007738C3007836C1007A35C0007B34BF007D33BE007E31BD008030
            BC008130BB008331B800FFFFFF00FFFFFF00FFFFFF00FFFFFF004186F6003F84
            F5003D81F5003C7EF5003A7CF5003879F4003676F4003574F4003372F4003370
            F300356EF200E0E9FD00FFFFFF00FFFFFF00FFFFFF007291F1003E67EB003F66
            EA004165E9004263E8004462E7004561E600475FE500485EE4004A5DE3004B5C
            E2008790EA00E8E9FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C9C4F1007462DA00614AD2006249D1006448
            D0006546CF006645CE006844CD006943CC006B42CB006C40CA00774BCC00FFFF
            FF00FFFFFF00FFFFFF00DDCFF1007539C4007738C3007836C1007A35C0007B34
            BF007D33BE007E31BD008030BC008130BB008331B8008432B700FFFFFF00FFFF
            FF00FFFFFF00FFFFFF003F84F5003D81F5003C7EF5003A7CF5003879F4003777
            F4003574F4003372F4003370F300356EF200366DF100EDF2FE00FFFFFF00FFFF
            FF00FFFFFF007894F1003F66EA004165E9004263E8004462E7004561E600475F
            E500485EE4004A5DE3004F5FE300B4BAF200FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00F4F3FC008B78DD006448D0006547CF006645CE006844CD006943CC006B42
            CB006C40CA006E3FC9007140C900FFFFFF00FFFFFF00FFFFFF00DFD1F1007738
            C3007836C1007A35C0007B34BF007D33BE007E31BD008030BC008130BB008331
            B8008432B7008633B500FFFFFF00FFFFFF00FFFFFF00FFFFFF003D81F5003C7E
            F5003A7CF5003879F4003777F4003574F4003372F4003370F300356EF200366D
            F100386CF000F0F4FE00FFFFFF00FFFFFF00FFFFFF007894F0004165E9004263
            E8004462E7004561E600475FE500485EE4004A5DE3004C5DE200C4C8F500FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFCFE008D77DB006645
            CE006844CD006943CC006B42CB006C40CA006E3FC9006F3EC800713DC700FEFE
            FF00FFFFFF00FFFFFF00E0D1F1007836C1007A35C0007B34BF007D33BE007E31
            BD008030BC008130BB008331B8008432B7008633B5008733B300FFFFFF00FFFF
            FF00FFFFFF00FFFFFF003C7EF5003A7CF5003979F4003777F4003574F4003372
            F4003370F300356EF200366DF100386CF0003A6BEE00F0F4FE00FFFFFF00FFFF
            FF00FFFFFF007A93F0004263E8004462E7004561E600475FE500485EE4004A5D
            E3004B5CE200A5ACEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFF00D1D0
            F5009692E700736CDE007168DD00938AE400BFB8EE00FBFAFE00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00F5F3FC007C5CD3006943CC006B42CB006C40CA006E3F
            C9006F3EC800713DC700723BC600FCFAFE00FFFFFF00FFFFFF00E0D0F1007A35
            C0007B34BF007D33BE007E31BD008030BC008130BB008331B8008432B7008633
            B5008733B3008834B100FFFFFF00FFFFFF00FFFFFF00FFFFFF003A7CF5003979
            F4003777F4003574F4003372F4003370F300356EF200366DF100386CF000396B
            EF003B6AEE00F0F4FE00FFFFFF00FFFFFF00FFFFFF007A91EF004462E7004561
            E600475FE500485EE4004A5DE3004B5CE2006772E400FCFCFE00FFFFFF00FFFF
            FF00FFFFFF00EEEEFB008280E4005752D9005951D8005A4FD7005C4ED6005D4D
            D5005F4BD4007664D900D8D2F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC1
            EE006B42CB006C40CA006E3FC9006F3EC800713DC700723BC600743AC500F9F6
            FC00FFFFFF00FFFFFF00E0D0F0007B34BF007D33BE007E31BD008030BC008130
            BB008331B8008432B7008633B5008733B3008834B1008A35AF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF003979F4003777F4003574F4003372F4003370F300356E
            F200366DF100386CF000396BEF003B6AEE003C68ED00F1F4FE00FFFFFF00FFFF
            FF00FFFFFF007C91EE004561E600475FE500485EE4004A5DE3004B5CE2004D5A
            E000C3C6F400FFFFFF00FFFFFF00FFFFFF00F4F4FD006B68DE005752D9005951
            D8005A4FD7005C4ED6005D4DD5005F4CD400604AD3006249D200694FD300DDD7
            F400FFFFFF00FFFFFF00FFFFFF00FFFFFF008866D4006E3FC9006F3EC800713D
            C700723BC600743AC5007539C400F6F3FB00FFFFFF00FFFFFF00E0D0F0007D33
            BE007E31BD008030BC008130BB008331B8008432B7008633B5008733B3008834
            B1008A35AF008B36AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF003777F4003574
            F4003372F4003370F300356EF200366DF100386CF000396BEF003B6AEE003C68
            ED003E67EB00F1F4FD00FFFFFF00FFFFFF00FFFFFF007C90ED00475FE500485E
            E4004A5DE3004B5CE2004D5AE0005962E100FBFBFE00FFFFFF00FFFFFF00FFFF
            FF008C8AE6005752D9005951D8005A4FD7005C4ED6005D4DD5005F4CD400604A
            D3006249D2006348D1006547CF007658D300FBFBFE00FFFFFF00FFFFFF00FFFF
            FF00BCA6E6006F3EC800713DC700723BC600743AC5007539C4007738C300F4EE
            FA00FFFFFF00FFFFFF00E1D0F0007E31BD008030BC008130BB008331B8008432
            B7008532B5008733B3008834B1008A35AF008B36AD008D37AB00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF003574F4003372F4003370F300356FF200366DF100386C
            F000396BEF003B6AEE003C68ED003E67EB003F66EA00F1F4FD00FFFFFF00FFFF
            FF00FFFFFF007E8FED00485EE4004A5DE3004B5CE2004D5AE0004F59DF008A8F
            EA00FFFFFF00FFFFFF00FFFFFF00E8E8FA005853D9005951D8005A4FD7005C4E
            D6005D4DD5005F4CD400604AD3006249D2006348D1006547CF006645CE006844
            CD00C5B7EB00FFFFFF00FFFFFF00FFFFFF00E7DFF600713DC700723BC600743A
            C5007539C4007738C3007836C100F1EAF900FFFFFF00FFFFFF00E1CFF0008030
            BC008130BB008331B8008432B7008532B5008733B3008834B1008A35AF008B36
            AD008D37AB008E38A900FFFFFF00FFFFFF00FFFFFF00FFFFFF003372F4003370
            F300356FF200366DF100386CF000396BEF003B6AEE003C68ED003E67EB003F66
            EA004165E900F1F3FD00FFFFFF00FFFFFF00FFFFFF007F8EEC004A5DE3004B5C
            E2004D5AE0004E59E0005058DF00A5A8ED00FFFFFF00FFFFFF00FFFFFF00B1AE
            ED005951D8005A4FD7005C4ED6005D4DD5005F4CD400604AD3006249D2006348
            D1006547CF006645CE006844CD006943CC009B7FDC00FFFFFF00FFFFFF00FFFF
            FF00FBF9FD00733CC600743AC5007539C4007738C3007836C1007A35C000EFE6
            F700FFFFFF00FFFFFF00E2CFEF008130BB008231B9008432B7008532B5008733
            B3008834B1008A35AF008B36AD008D37AB008E38A9008F39A700FFFFFF00FFFF
            FF00FFFFFF00FFFFFF003370F300356FF200366DF100386CF000396BEF003B6A
            EE003C68ED003E67EB003F66EA004165E9004263E800F1F3FD00FFFFFF00FFFF
            FF00FFFFFF00808DEB004B5CE2004D5BE1004E59E0005058DF005157DD00B9BA
            F100FFFFFF00FFFFFF00FFFFFF009893E7005A4FD7005C4ED6005D4DD5005F4C
            D400604AD3006249D2006348D1006547CF006646CF006844CD006943CC006B42
            CB008763D400FFFFFF00FFFFFF00FFFFFF00FFFFFF007D46C9007539C4007738
            C3007836C1007A35C0007B34BF00EDE2F600FFFFFF00FFFFFF00E2CFEF008231
            B9008432B7008532B5008733B3008834B1008A35AF008B36AD008D37AB008E38
            A9008F39A700913AA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00356FF200366D
            F100386CF000396BEF003B6AEE003C68ED003E67EB003F66EA004165E9004263
            E8004462E700F1F3FD00FFFFFF00FFFFFF00FFFFFF00818DEB004D5BE1004E59
            E0005058DF005157DD005356DC00B3B3EF00FFFFFF00FFFFFF00FFFFFF009E97
            E7005C4ED6005D4DD5005F4CD400604AD3006249D2006348D1006547CF006646
            CF006844CD006943CC006B42CB006C41CA00845CD100FFFFFF00FFFFFF00FFFF
            FF00FEFEFF00783DC5007738C3007836C1007A35C0007B34BF007D33BE00EDE3
            F600FFFFFF00FFFFFF00E2CFEF008432B7008532B5008733B3008834B1008A35
            AF008B36AD008C37AB008E38A9008F39A700913AA500923AA300FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00366DF100386CF000396BEF003B6AEE003C68ED003E67
            EB003F66EA004165E9004263E8004462E7004561E600F1F3FD00FFFFFF00FFFF
            FF00FFFFFF00828CEA004E59E0005058DF005157DD005356DC005454DB00A3A1
            EB00FFFFFF00FFFFFF00FFFFFF00C3BEF0005D4DD5005F4CD400604AD3006249
            D2006348D1006447D0006646CF006844CD006943CC006B42CB006C41CA006E3F
            C9009A78D800FFFFFF00FFFFFF00FFFFFF00F1EBF9007738C3007836C1007A35
            C0007B34BF007D33BE007E32BD00F0E7F700FFFFFF00FFFFFF00E3D0EE008532
            B5008733B3008834B1008A35AF008B36AD008C37AB008E38A9008F39A700913A
            A500923AA300933BA100FFFFFF00FFFFFF00FFFFFF00FFFFFF00386CF000396B
            EF003B6AEE003C68ED003E67EB003F66EA004165E9004263E8004462E7004561
            E600475FE500F1F3FD00FFFFFF00FFFFFF00FFFFFF00838AE9005058DF005157
            DD005356DC005454DB005653DA007F7BE200FFFFFF00FFFFFF00FFFFFF00F0EE
            FB006452D500604AD3006249D2006348D1006447D0006646CF006844CD006943
            CC006B42CB006C41CA006E3FC9006F3EC800CCB9EB00FFFFFF00FFFFFF00FFFF
            FF00D1BCEB007836C1007A35C0007B34BF007D33BE007E32BD008030BC00F3EB
            F800FFFFFF00FFFFFF00E3D0EE008733B3008834B1008935AF008B36AD008C37
            AB008E38A9008F39A700913AA500923AA300933BA100953CA000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00396BEF003B6AEE003C68ED003E67EB003F66EA004165
            E9004263E8004462E7004561E6004760E500485EE400F2F3FD00FFFFFF00FFFF
            FF00FFFFFF00848AE9005157DD005356DC005455DB005653DA005752D9005B53
            D800F1F0FC00FFFFFF00FFFFFF00FFFFFF00AFA4E9006149D2006348D1006447
            D0006646CF006844CD006943CC006B42CB006C41CA006E3FC9006F3EC8009771
            D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00A67AD6007A35C0007B34BF007D33
            BE007E32BD008030BC008130BB00F5EFFA00FFFFFF00FFFFFF00E3D0ED008834
            B1008935AF008B36AD008C37AB008E38A9008F39A700913AA500923AA300933B
            A100943CA000963D9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF003B6AEE003C68
            ED003E67EB003F66EA004165E9004263E8004462E7004561E6004760E500485E
            E4004A5DE300F2F3FD00FFFFFF00FFFFFF00FFFFFF008589E7005256DD005455
            DB005653DA005752D9005951D8005A4FD700ACA5EA00FFFFFF00FFFFFF00FFFF
            FF00FBFBFE00917FDF006447D0006646CF006844CD006943CC006B42CB006C41
            CA006E3FC9006F3EC8007F50CC00EFE9F900FFFFFF00FFFFFF00FFFFFF00EDE4
            F7007D3AC1007B34BF007D33BE007E32BD008030BC008130BB008231B900F8F4
            FB00FFFFFF00FFFFFF00E3D0ED008935AF008B36AD008C37AB008E38A9008F39
            A700913AA500923AA300933BA200943CA000963D9E00973E9C00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF003C68ED003E67EB003F66EA004165E9004263E8004462
            E7004561E6004760E500485EE4004A5DE3004B5CE200F2F3FD00FFFFFF00FFFF
            FF00FFFFFF008688E7005455DB005653DA005752D9005951D8005A4FD7005C4E
            D6006455D700EFEDFB00FFFFFF00FFFFFF00FFFFFF00FEFEFF00AD9CE5006F4C
            CF006943CC006B42CB006C41CA006E3FC900703FC800A280DA00F5F1FB00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00A577D5007B34BF007D33BE007E32BD008030
            BC008130BB008231B9008432B700FBF8FC00FFFFFF00FFFFFF00E4D0EC008B36
            AD008C37AB008E38A9008F39A700913AA500923AA400933BA200943CA000963D
            9E00973E9C00993F9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E67EB003F66
            EA004165E9004263E8004462E7004561E6004760E500485EE4004A5DE3004B5C
            E2004D5BE100F2F3FD00FFFFFF00FFFFFF00FFFFFF008788E6005653DA005752
            D9005951D8005A4FD7005C4ED6005D4DD5005E4CD4008676DE00FCFBFE00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F4F1FB00C4B3EA00AF97E200A587DD00B69D
            E300DFD4F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7AAE5007B34
            BF007D33BE007E32BD008030BC008130BB008231B9008432B7008532B500FDFC
            FE00FFFFFF00FFFFFF00E4D0EC008C37AB008E38A9008F39A700913AA500923A
            A400933BA200943CA000963D9E00973E9C00993F9A009A409800FFFFFF00FFFF
            FF00FFFFFF00FFFFFF003F66EA004165E9004264E8004462E7004561E6004760
            E500485EE4004A5DE3004B5CE2004D5BE1004E5AE000EFF0FC00FFFFFF00FFFF
            FF00FFFFFF008886E5005752D9005951D8005A4FD7005B4ED6005D4DD5005E4C
            D400604BD3006149D2009A89E100FCFBFE00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00D2BCEA007E38C0007D33BE007E32BD008030BC008130BB008231
            B9008431B7008532B5008734B300FFFFFF00FFFFFF00FFFFFF00E4D1EC008E38
            A9008F39A7009039A600923AA400933BA200943CA000963D9E00973E9C00993F
            9A009A4098009B409600FFFFFF00FFFFFF00FFFFFF00FFFFFF004165E9004264
            E8004462E7004561E6004760E500485EE4004A5DE3004B5CE2004D5BE1004E5A
            E0004F58DF00E4E5FA00FFFFFF00FFFFFF00FFFFFF008884E4005951D8005A50
            D7005B4ED6005D4DD5005E4CD400604BD3006149D2006348D1006447D0008B72
            DA00F0EDFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FDFCFE00BB99E0007C36BF007D33BE00843C
            C000B88CDA00C9A6E200A66DCD008431B7008532B5008733B3008936B200FFFF
            FF00FFFFFF00FFFFFF00E5D1EB008F38A8009039A600923AA400933BA200943C
            A000963D9E00973E9C00993F9A009A4098009B4096009D419400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF004264E8004462E7004561E6004760E500485EE4004A5D
            E3004B5CE2004C5BE1004E5AE0004F58DF005157DE00D8D9F700FFFFFF00FFFF
            FF00FFFFFF008983E3005A50D7005B4ED6005D4DD5005E4CD400604BD3006149
            D2006348D1006447D0006646CF006844CD00704CCE00B49FE400F2EFFA00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFAFD00D1BBEA008C52
            CA007B34BF007D33BE008035BE00E4D3F100FFFFFF00FFFFFF00FFFFFF00BB8C
            D6008733B3008834B1008C3BB100FFFFFF00FFFFFF00FFFFFF00E5D1EB009039
            A600923AA400933BA200943CA000963D9E00973E9C00993F9A009A4098009B40
            96009D4194009E429200FFFFFF00FFFFFF00FFFFFF00FFFFFF004462E7004561
            E6004760E500485EE4004A5DE3004B5CE2004C5BE1004E5AE0004F58DF005157
            DE005256DD00CCCCF400FFFFFF00FFFFFF00FFFFFF009B95E7005B4ED6005D4D
            D5005E4CD400604BD3006149D2006348D1006447D0006646CF006844CD006943
            CC006B42CB006C41CA007041CA00916CD500B295E000C1A9E600C6AFE700B899
            E000A37AD7007F42C5007935C1007B34BF007D33BE007E32BD00A269CE00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F3EBF8008834B1008935AF009F58BB00FFFF
            FF00FFFFFF00FFFFFF00D6B6DE00923AA400933BA200943CA000963D9E00973E
            9C00993F9A009A4098009B4096009D4194009E429200A0439000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF004561E6004760E500485EE400495DE3004B5CE2004C5B
            E1004E5AE0004F58DF005157DE005256DD005455DB00B7B5EF00FFFFFF00FFFF
            FF00FFFFFF00C6C1F1005D4DD5005E4CD400604BD3006149D2006348D1006447
            D0006646CF006844CD006943CC006B42CB006C41CA006E3FC9006F3EC800703D
            C700723CC600733AC5007539C4007638C3007837C2007935C1007B34BF007D33
            BE007E32BD007F31BC00A870D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4EC
            F8008935AF008B36AE00BF90D100FFFFFF00FFFFFF00FFFFFF00C18ECB00933B
            A200943CA000963D9E00973E9C00993F9A009A4098009B4096009D4194009E42
            9200A0439000A1448E00FFFFFF00FFFFFF00FFFFFF00FFFFFF004760E500485F
            E400495DE3004B5CE2004C5BE1004E5AE0004F58DF005157DE005256DD005455
            DB005554DB00908DE600FFFFFF00FFFFFF00FFFFFF00FBFAFE006D5DD800604B
            D3006149D2006348D1006447D0006646CF006844CD006943CC006B42CB006C41
            CA006E3FC9006F3EC800703DC700723CC600733AC5007539C4007638C3007837
            C2007935C1007B34BF007C33BF007E32BD007F31BC008130BB00883CBD00F2EA
            F800FFFFFF00FFFFFF00FFFFFF00BF92D4008B36AE008E3BAE00EFE4F300FFFF
            FF00FFFFFF00FFFFFF00AC68B700943CA000963D9E00973E9C00993F9A009A40
            98009B4096009D4194009E429200A0439000A1448E00A2458D00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00485FE400495DE3004B5CE2004C5BE1004E5AE0004F58
            DF005157DE005256DD005455DC005554DB005752D900615BDA00F9F8FD00FFFF
            FF00FFFFFF00FFFFFF00CCC6F100624AD2006348D1006447D0006646CF006844
            CD006943CC006B42CB006C41CA006E3FC9006F3EC800703DC700723CC600733A
            C5007539C4007638C3007837C2007935C1007B34C0007C33BF007E32BD007F31
            BC008130BB008231B9008431B700964EBF00D1B1E200DCC2E800B47FCD008B37
            AE008C37AC00CAA3D800FFFFFF00FFFFFF00FFFFFF00F5EDF6009741A300963D
            9E00973E9C00993F9A009A4098009B4096009D4194009E429200A0439000A144
            8F00A2458D00A4468B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00495DE3004B5C
            E2004C5BE1004E5AE0004F58DF005157DE005256DD005455DC005554DB005752
            D9005851D8005A50D700A9A2E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5A8
            E9006548D0006646CF006844CD006943CC006B42CB006C41CA006D3FC9006F3E
            C800703DC700723CC600733AC5007539C4007638C3007837C2007935C1007B34
            C0007C33BF007E32BD007F31BC008130BB008231B9008431B7008532B5008633
            B4008834B1008935B0008B36AE008C37AC00BD8CCE00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00C595CC00963D9E00973E9C00993F9A009A4098009B4096009D41
            94009E429200A0439100A1448F00A2458D00A4468B00A5478900FFFFFF00FFFF
            FF00FFFFFF00FFFFFF004B5CE2004C5BE1004E5AE0004F58DF005157DE005256
            DD005455DC005554DB005752D9005851D8005A50D7005B4ED6006050D600E3DF
            F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC4F0007656D2006943CC006B42
            CB006C41CA006D3FC9006F3EC800703DC700723CC600733AC5007539C4007638
            C3007837C2007936C1007B34C0007C33BF007E32BD007F31BC008130BB008231
            B9008431B7008532B5008633B4008834B1008935B0008B36AE009547B300D3B3
            DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F2F9009C48A300973E9C00993F
            9A009A4098009B4096009D4194009E429300A0439100A1448F00A2458D00A446
            8B00A5478900A6478700FFFFFF00FFFFFF00FFFFFF00FFFFFF004C5BE1004E5A
            E0004F59DF005157DE005256DD005455DC005554DB005752D9005851D8005A50
            D7005B4ED6005D4DD5005E4CD4008272DC00FCFBFE00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FBFAFE00CBBDED00A68CDF009776D8009875D8009873D700966E
            D5009469D3009364D100915FCF00905ACD008E56CB008D50C9008D4EC8009251
            C7009555C8009958C8009C5DC800A061C800A465C800A76AC800AB6FC800AC71
            C800BA87CF00D6B8E100FAF6FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFC
            FE00B271B800973E9C00993F9A009A4098009B4096009D4195009E429300A043
            9100A1448F00A2458D00A4468B00A5478900A6478700A8488500FFFFFF00FFFF
            FF00FFFFFF00FFFFFF004E5AE0004F59DF005157DE005256DD005455DC005554
            DB005752D9005851D8005A50D7005B4ED6005D4DD5005E4CD400604BD3006149
            D2008873DC00F2F0FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BE86C300973E9C00993F9A009A4098009B40
            96009D4195009E429300A0439100A1448F00A2458D00A4468B00A5478900A647
            8700A8488500A9498300FFFFFF00FFFFFF00FFFFFF00FFFFFF005D67E2005157
            DE005256DD005455DC005554DB005752D9005851D8005A50D7005B4ED6005D4D
            D5005E4CD400604BD3006149D2006348D1006447D000795CD500E2DCF600FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4EAF500B576BB00973E
            9C00993F9A009A3F99009B4096009D4195009E429300A0439100A1448F00A245
            8D00A4468B00A5478900A6478700A8488500A9498300B25A8C00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF007176E4005256DD005455DC005554DB005752D9005851
            D8005A50D7005B4ED6005D4DD5005E4CD400604BD3006149D2006348D1006447
            D0006646CF006745CE006B46CE00A086DE00E3DAF500FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4EC
            F600D0A9D5009C48A400973E9C00993F9A009A3F99009B4096009D4195009E42
            9300A0439100A1448F00A2458D00A4468B00A5468900A6478700A8488500A949
            8300AB4A8100BC6D9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00888AE8005455
            DC005554DB005752D9005851D8005A50D7005B4ED6005D4DD5005E4CD400604B
            D3006149D2006348D1006447D0006646CF006745CE006943CD006A42CB006C41
            CA006D3FC9007F53CE00A98BDD00D7C8EF00F4F0FA00F5F0FB00F5F0FB00F5F0
            FA00F5F0FA00F5F0FA00F5F0FA00F5F0FA00F5F0FA00F6F0FA00F6F0FA00F6F0
            FA00F6F0F900F6F0F900F6F0F900F6F0F900F6F0F900F6F0F900F7F0F900F7F0
            F900E8D7ED00CDA4D500AA65B600953EA100963D9E00973E9C00993F9A009A3F
            99009B4096009D4195009E429300A0439100A1448F00A2458D00A4468B00A546
            8900A6478700A8488500A9498300AB4A8100AC4B7F00C784A600FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00B9B9F1005554DB005752D9005851D8005A50D7005B4E
            D6005D4DD5005E4CD400604BD3006149D2006348D1006447D0006646CF006745
            CE006943CD006A42CB006C41CA006D3FC9006F3EC800703DC700723CC600733B
            C5007539C4007638C3007837C2007936C1007B34C0007C33BF007E32BD007F31
            BC008130BB008230B9008431B7008532B5008633B4008834B1008935B0008A36
            AE008C37AC008D37AA008F38A8009039A600923AA400933BA200943CA000963D
            9E00973E9C00993F9A009A3F99009B4096009D4195009E429300A0439100A144
            8F00A2458D00A4468B00A5468900A6478700A8488500A9498300AB4A8100AC4B
            7F00AD4C7D00DEB6CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDFB005752
            D9005851D8005A50D7005B4ED6005D4DD5005E4CD400604BD3006149D2006348
            D1006447D0006646CF006745CE006943CD006A42CB006C41CA006D3FC9006F3E
            C800703DC700723CC600733BC5007539C4007638C3007837C2007936C1007B34
            C0007C33BF007E32BD007F31BC008130BB008230B9008431B7008532B5008633
            B4008834B1008935B0008A36AE008C37AC008D37AA008F38A8009039A600923A
            A400933BA200943CA000963D9E00973E9C00993F9A009A3F99009B4096009D41
            95009E429300A0439100A1448F00A2458D00A4468B00A5468900A6478700A848
            8500A9498300AB4A8100AC4B7F00AD4C7D00AF4D7C00F7EDF100FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF008681E3005A50D7005B4ED6005D4DD5005E4C
            D400604BD300614AD2006348D1006447D0006646CF006745CE006943CD006A42
            CB006C41CA006D3FC9006F3EC800703DC700723CC600733BC5007539C4007638
            C3007837C2007936C1007B34C0007C33BF007E32BD007F31BC008130BB008230
            B9008431B7008532B5008633B4008734B2008935B0008A36AE008C37AC008D37
            AA008F38A8009039A600923AA400933BA200943CA000963D9E00973E9C00993F
            9A009A3F99009B4096009D4195009E429300A0439100A1448F00A2458D00A446
            8B00A5468900A6478700A8488500A9498300AB4A8100AC4B7F00AD4C7D00AF4D
            7C00C67F9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFDD
            F7005B4ED6005D4DD5005E4CD400604BD300614AD2006348D1006447D0006646
            CF006745CE006943CD006A42CB006C41CA006D40CA006F3EC800703DC700723C
            C600733BC5007539C4007638C3007837C2007936C1007B34C0007C33BF007E32
            BD007F31BC008130BB008230B9008431B7008532B5008633B4008734B2008935
            B0008A36AE008C37AC008D37AA008F38A8009039A600923AA400933BA200943C
            A000963D9E00973E9C00993F9A009A3F99009B4096009D4195009E4293009F43
            9100A1448F00A2458D00A4468B00A5468900A6478700A8488500A9498300AB4A
            8100AC4B8000AD4C7D00AF4D7C00B04E7900F0DDE500FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00998FE4005E4CD400604BD300614A
            D2006348D1006447D0006646CF006745CE006943CD006A42CB006B41CB006D40
            CA006F3EC800703DC700723CC600733BC5007539C4007638C3007837C2007936
            C1007B34C0007C33BF007E32BD007F31BC008130BB008230B9008431B7008532
            B6008633B4008734B2008935B0008A36AE008C37AC008D37AA008F38A8009039
            A600913AA400933BA200943CA000963D9E00973E9C00993F9A009A3F99009B40
            96009D4195009E4293009F439100A1448F00A2458D00A4468B00A5468900A647
            8700A8488500A9498300AB4A8100AC4B8000AD4C7D00AF4D7C00B04E7900CF90
            AA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00F7F6FD007C6BDB00614AD2006348D1006447D0006646CF006745CE006943
            CD006A42CC006B41CB006D40CA006F3EC800703DC700723CC600733BC5007539
            C4007638C3007837C2007936C1007B34C0007C33BF007E32BD007F31BC008130
            BB008230B9008331B8008532B6008633B4008734B2008935B0008A36AE008C37
            AC008D37AA008F38A8009039A600913AA400933BA200943CA000963D9E00973E
            9C00993F9A009A3F99009B4096009C4195009E4293009F439100A1448F00A245
            8D00A4468B00A5468900A6478700A8488500A9498400AB4A8100AC4B8000AD4C
            7D00AF4D7C00B04E7900C06D9000FBF7F900FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBE8F9007058D5006447
            D0006646CF006745CE006844CD006A42CC006B41CB006D40CA006F3EC800703D
            C700723CC600733BC5007539C4007638C3007837C2007936C1007B34C0007C33
            BF007E32BD007F31BC008130BB008230B9008331B8008532B6008633B4008734
            B2008935B0008A36AE008C37AC008D37AA008E38A8009039A600913AA400933B
            A200943CA000963D9E00973E9C00993F9A009A3F99009B4097009C4195009E42
            93009F439100A1448F00A2458D00A4468B00A5468900A6478700A8488500A949
            8400AB4A8100AC4B8000AD4C7D00AF4D7C00B04E7900B95D8400F5E9EE00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00EBE7F9008167D7006745CE006844CD006A42CC006B41
            CB006D40CA006F3EC800703DC700723CC600733BC5007539C4007638C3007837
            C2007936C1007B34C0007C33BF007E32BD007F31BC008130BB008230BA008331
            B8008532B6008633B4008734B2008935B0008A36AE008C37AC008D37AA008E38
            A8009039A600913AA400933BA200943CA000963D9E00973E9C00993F9A00993F
            99009B4097009C4195009E4293009F439100A1448F00A2458D00A4468B00A546
            8900A6478700A8488500A9498400AB4A8100AC4B8000AD4C7D00AF4D7C00B04E
            7900C06D9000F5E9EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F6
            FD00A089DF006A42CC006B41CB006D40CA006F3EC800703DC700723CC600733B
            C5007539C4007638C3007837C2007936C1007B34C0007C33BF007E32BD007F31
            BC008130BC008230BA008331B8008532B6008633B4008734B2008935B0008A36
            AE008C37AC008D37AA008E38A8009039A600913AA400933BA200943CA000963D
            9E00973E9C00983E9B00993F99009B4097009C4195009E4293009F439100A144
            8F00A2458D00A4468B00A5468900A6478700A8488500A9498400AB4A8100AC4B
            8000AD4C7D00AF4D7C00B04E7900CE90AA00FBF7F900FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3DAF5009675D9006F3E
            C800703DC700723CC600733BC5007539C4007638C3007837C2007936C1007B34
            C0007C33BF007E32BD007F31BD008130BC008230BA008331B8008532B6008633
            B4008734B2008935B0008A36AE008C36AC008D37AA008E38A8009039A600913A
            A400933BA200943CA000963D9E00973E9C00983E9B00993F99009B4097009C41
            95009E4293009F439100A1448F00A2458D00A3458B00A5468900A6478700A848
            8500A9498400AB4A8100AC4B8000AD4C7D00AF4D7C00C67F9F00F0DDE500FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F0EAF900C5AFE8009E78D7008E5DCF008148
            C8007837C2007936C1007B34C0007C33BF007D32BE007F31BD008130BC008230
            BA008331B8008532B6008633B4008734B2008935B0008A36AE008C36AC008D37
            AA008E38A8009039A600913AA400933BA200943CA000963D9E00973D9D00983E
            9B00993F99009B4097009C4195009E4293009F439100A1448F00A2458D00A345
            8B00A5468900A6478700A8488500A9498400B2598B00BB6C9700C683A500DEB5
            C900F7ECF100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          Left = 146.960730000000000000
          Top = 140.063080000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Picture.Data = {
            07544269746D6170964A0000424D964A00000000000036000000280000004600
            0000440000000100200000000000604A00000000000000000000000000000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F0EC00E4C7
            B600D2A18400CA906E00C4825B00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00C482
            5B00CA906E00D2A18400E4C7B600F8F1ED00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00F3E5DD00D09C7E00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00D09C7E00F3E5DD00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF9F700D6A9
            8F00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE774D00D6A98F00FCF9F700FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F7EEE900C98E6C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00C98E6C00F7EEE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00F7EEE900C4825B00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00C4825B00F7EEE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF9F700C98E6C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00C98E
            6C00FCF9F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00D6A98E00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00D6A98F00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00F3E5DD00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00F3E5DD00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D09C7E00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00D09C7E00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F8F0EC00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00F8F1ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00E4C7B500BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00E4C7B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2A0
            8300BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00D2A18400FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CA8F6D00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00CA906E00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C3815B00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00C4825B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00D3A28600DBB29B00DBB2
            9B00DBB29B00DBB29B00DBB29B00D4A48800BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00EEDBD000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00F0DFD600BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00EEDBD000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0DF
            D600BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00EEDB
            D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0DFD600BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00EEDBD000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F0DFD600BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00EEDBD000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00F0DFD600BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00EEDBD000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0DF
            D600BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00EEDB
            D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0DFD600BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00EEDBD000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F0DFD600BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00EEDBD000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00F0DFD600BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00EEDBD000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0DF
            D600BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00EEDB
            D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0DFD600BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00EEDBD000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F0DFD600BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00EEDBD000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00F0DFD600BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00EEDBD000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0DF
            D600BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00EEDB
            D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0DFD600BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00C17C
            5400F0DFD600F0DFD600F0DFD600F0DFD600F0DFD600FBF7F400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FBF7F400EEDBD000EEDBD000EEDBD000EEDB
            D000EEDBD000C3815A00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00C27F5700FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC94
            7300BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00C27F5700FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5A68A00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00C27F5700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00DDB8A200BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00C27F
            5700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00E6CABA00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00C27F5700FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEDC
            D100BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00C07A5100DDB6A000DDB6A000DDB6A000DDB6
            A000DDB6A000F5EBE400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7ED
            E800E1BFAB00E1BFAB00E1BFAB00E1BFAB00E1BFAB00DBB39C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00EDD9
            CD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDD9CD00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00EDD9CD00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00EDD9CD00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00EDD9CD00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00EDD9CD00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00EDD8CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDD9
            CD00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00E9D0
            C100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2E3DA00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00E3C4B200FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00CE987800BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00DAB29A00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FEFDFC00ECD8CC00E5C8B700E5C8B700E5C8B700E5C8
            B700BF784F00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00C88B6700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C07A5200BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00EBD5C800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C07A5200BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00C5845E00F9F2
            ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00C07A5200BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00C88A6700F4E7E000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00C07A5200BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BF774D00D4A48800F1E1D800FDFB
            F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C07A5200BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BF774D00C6876200CA90
            6E00CA906E00CA906E00C88B6800C17C5400BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00C3815B00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00C4825B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CA8F
            6D00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00CA906E00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2A08300BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00D2A18400FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00E4C7B500BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00E4C7B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00F8F0EC00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00F8F1ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00D09C7E00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00D09C7E00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3E5DD00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00F3E5DD00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6A98E00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00D6A98F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FCF8F600C98E6C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00C98E6C00FCF9F700FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00F7EEE900C4825B00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00C4825B00F7EEE900FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00F7EDE800C98E6C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00C98E
            6C00F7EEE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FCF9F700D6A98E00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00D6A98F00FCF9F700FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00F3E5DD00D09C7E00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00D09C7E00F3E5DD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00F8F0EC00E4C7B500D2A08300CA8F6D00C3815B00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE764C00BE76
            4C00BE764C00C3815B00CA8F6D00D2A08300E4C7B500F8F0EC00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo60: TfrxMemoView
          Left = 277.803340000000000000
          Top = 139.842616100000000000
          Width = 87.229128100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '@colchoesglobo')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 164.637910000000000000
          Top = 140.063086100000000000
          Width = 87.229128100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '/colchoesglobo')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 205.315090000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo2: TfrxMemoView
          Top = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 203.716535430000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.425170000000000000
          Top = 28.456710000000000000
          Width = 44.204390000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 523.338900000000000000
          Top = 51.942280000000000000
          Width = 191.606060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."id_orcamento"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 122.606370000000000000
          Top = 46.832045000000000000
          Width = 176.487940000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."dta_orcamento"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 122.606370000000000000
          Top = 65.207380000000000000
          Width = 191.606060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."dta_validade"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 122.606370000000000000
          Top = 83.582715000000000000
          Width = 304.991960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[FAT_DB_M_ORC1."int_endercli"] - N'#186' [FAT_DB_M_ORC1."int_numeroen' +
              'd"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo16: TfrxMemoView
          Left = 3.425170000000000000
          Top = 138.708720000000000000
          Width = 93.338280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Cond. Pagamento')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 523.457020000000000000
          Top = 72.207380000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."dta_entrega"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 1.779530000000000000
          Top = 183.567100000000000000
          Width = 45.354318500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 49.370130000000000000
          Top = 183.567100000000000000
          Width = 211.653560390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 339.716760000000000000
          Top = 183.567100000000000000
          Width = 30.236203390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 382.866420000000000000
          Top = 183.567100000000000000
          Width = 30.236205830000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 416.779891260000000000
          Top = 183.567100000000000000
          Width = 68.031488740000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Unitario')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 536.031850000000000000
          Top = 183.567100000000000000
          Width = 56.692898740000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desc. unit.')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 659.858690000000000000
          Top = 183.567100000000000000
          Width = 56.692898740000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Total')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 487.897960000000000000
          Top = 183.567100000000000000
          Width = 45.354308740000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '% Desc.')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 594.047620000000000000
          Top = 183.567100000000000000
          Width = 68.031488740000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Liq. unit'#225'rio')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Top = 22.456710000000000000
          Width = 718.110236220000000000
          Color = clBlack
          ArrowSolid = True
          Frame.Typ = [ftTop]
        end
        object Memo28: TfrxMemoView
          Left = 287.819265000000000000
          Top = 0.779530000000000000
          Width = 142.472170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DADOS DO CLIENTE')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 428.307360000000000000
          Top = 24.811045590000000000
          Width = 179.149537950000000000
          Height = 20.409448820000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total cubagem .: [FAT_DB_M_ORC1."cubagem"] m'#179)
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 523.338900000000000000
          Top = 127.333385000000000000
          Width = 180.267470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."int_nomefun"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 122.606370000000000000
          Top = 120.333385000000000000
          Width = 210.503710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."int_nomeatendente"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 180.685220000000000000
          Width = 718.110700000000000000
          Color = clBlack
          ArrowSolid = True
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          Left = 523.338900000000000000
          Top = 90.582715000000000000
          Width = 191.606060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."int_bairrocli"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 122.606370000000000000
          Top = 101.958050000000000000
          Width = 297.432900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."int_nomecid"] - [FAT_DB_M_ORC1."int_nomeest"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo43: TfrxMemoView
          Left = 523.338900000000000000
          Top = 108.958050000000000000
          Width = 187.826530000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."int_tel_fixo"] / [FAT_DB_M_ORC1."int_tel_movel"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo44: TfrxMemoView
          Left = 265.126160000000000000
          Top = 183.567100000000000000
          Width = 26.456673390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 48.015770000000000000
          Top = 28.456710000000000000
          Width = 70.661100000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '...................:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 122.606370000000000000
          Top = 28.456710000000000000
          Width = 312.551020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."int_nomecli"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 3.425170000000000000
          Top = 46.832045000000000000
          Width = 74.440630000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Data Emiss'#227'o')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 74.472480000000000000
          Top = 46.832045000000000000
          Width = 44.204390000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '............:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 429.409710000000000000
          Top = 72.207380000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Prev. da entrega : [FAT_DB_M_ORC1."dta_entrega"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 506.338900000000000000
          Top = 72.207386100000000000
          Width = 13.968150000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '.:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 3.425170000000000000
          Top = 83.582715000000000000
          Width = 59.322510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo52: TfrxMemoView
          Left = 59.354360000000000000
          Top = 83.582721100000000000
          Width = 59.322510000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '.................:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 3.425170000000000000
          Top = 101.958050000000000000
          Width = 47.983920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo54: TfrxMemoView
          Left = 48.015770000000000000
          Top = 101.958056100000000000
          Width = 70.661100000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '.....................:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 3.425170000000000000
          Top = 120.333385000000000000
          Width = 55.542980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Atendente')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 55.574830000000000000
          Top = 120.333391100000000000
          Width = 63.102040000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '..................:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 122.606370000000000000
          Top = 138.708720000000000000
          Width = 308.771490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[ft_texto_cond_pgto]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 93.370130000000000000
          Top = 138.708726100000000000
          Width = 25.306740000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '......:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 426.850650000000000000
          Top = 50.052515000000000000
          Width = 74.440630000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Or'#231'amento')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 498.779840000000000000
          Top = 51.942286100000000000
          Width = 21.527210000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '...:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 3.425170000000000000
          Top = 65.207380000000000000
          Width = 47.983920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Validade')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 48.307360000000000000
          Top = 65.207386100000000000
          Width = 70.661100000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '....................:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 429.409710000000000000
          Top = 90.582715000000000000
          Width = 36.645330000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 460.984540000000000000
          Top = 90.582721100000000000
          Width = 59.322510000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '................:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 429.409710000000000000
          Top = 108.958050000000000000
          Width = 63.102040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Fixo/Celular')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo69: TfrxMemoView
          Left = 491.220780000000000000
          Top = 108.958056100000000000
          Width = 29.086270000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '.......:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 429.409710000000000000
          Top = 127.333385000000000000
          Width = 78.220160000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Representante')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 502.559370000000000000
          Top = 127.333391100000000000
          Width = 17.747680000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '....:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 19.897650000000000000
        Top = 525.354670000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = FAT_DB_M_ORC_ITE1
        DataSetName = 'FAT_DB_M_ORC_ITE1'
        RowCount = 0
        Stretched = True
        object Memo72: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 19.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = clWhite
          ParentFont = False
        end
        object FAT_DP_M_ORC_ITEid_item: TfrxMemoView
          Left = 1.779530000000000000
          Top = 1.000000000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataSet = FAT_DB_M_ORC_ITE1
          DataSetName = 'FAT_DB_M_ORC_ITE1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_ORC_ITE1."id_item"]')
          ParentFont = False
        end
        object FAT_DP_M_ORC_ITEint_descitem: TfrxMemoView
          Left = 49.370130000000000000
          Top = 1.000000000000000000
          Width = 211.653560390000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = FAT_DB_M_ORC_ITE1
          DataSetName = 'FAT_DB_M_ORC_ITE1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[ft_desc_item]')
          ParentFont = False
        end
        object FAT_DP_M_ORC_ITEint_unidade: TfrxMemoView
          Left = 339.716760000000000000
          Top = 1.000000000000000000
          Width = 30.236203390000000000
          Height = 15.118120000000000000
          DataField = 'int_unidade'
          DataSet = FAT_DB_M_ORC_ITE1
          DataSetName = 'FAT_DB_M_ORC_ITE1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_ORC_ITE1."int_unidade"]')
          ParentFont = False
        end
        object FAT_DP_M_ORC_ITEqtde: TfrxMemoView
          Left = 371.527830000000000000
          Top = 1.000000000000000000
          Width = 41.574795830000000000
          Height = 15.118120000000000000
          DataField = 'qtde'
          DataSet = FAT_DB_M_ORC_ITE1
          DataSetName = 'FAT_DB_M_ORC_ITE1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_ORC_ITE1."qtde"]')
          ParentFont = False
        end
        object FAT_DP_M_ORC_ITEvlr_unitario: TfrxMemoView
          Left = 420.559370000000000000
          Top = 1.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = FAT_DB_M_ORC_ITE1
          DataSetName = 'FAT_DB_M_ORC_ITE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_ORC_ITE1."vlr_unitario"]')
          ParentFont = False
        end
        object FAT_DP_M_ORC_ITEvlr_desconto: TfrxMemoView
          Left = 536.031798740000000000
          Top = 1.000000000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = FAT_DB_M_ORC_ITE1
          DataSetName = 'FAT_DB_M_ORC_ITE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<FAT_DB_M_ORC_ITE1."vlr_desconto">/<FAT_DB_M_ORC_ITE1."qtde">]')
          ParentFont = False
        end
        object FAT_DP_M_ORC_ITEvlr_liquido: TfrxMemoView
          Left = 659.858690000000000000
          Top = 1.000000000000000000
          Width = 56.692898740000000000
          Height = 15.118120000000000000
          DataSet = FAT_DB_M_ORC_ITE1
          DataSetName = 'FAT_DB_M_ORC_ITE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_ORC_ITE1."vlr_liquido"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 265.126160000000000000
          Top = 1.000000000000000000
          Width = 71.810950390000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = FAT_DB_M_ORC_ITE1
          DataSetName = 'FAT_DB_M_ORC_ITE1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_ORC_ITE1."int_nomecor"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 491.677438740000000000
          Top = 1.000000000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = FAT_DB_M_ORC_ITE1
          DataSetName = 'FAT_DB_M_ORC_ITE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_ORC_ITE1."per_desconto"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 601.606628740000000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = FAT_DB_M_ORC_ITE1
          DataSetName = 'FAT_DB_M_ORC_ITE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<FAT_DB_M_ORC_ITE1."vlr_liquido">/<FAT_DB_M_ORC_ITE1."qtde">]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 786.142240000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 264.567100000000000000
          Top = 0.897650000000000000
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
          Top = 0.897650000000000000
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
        Height = 158.740260000000000000
        Top = 566.929500000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        Stretched = True
        object Line5: TfrxLineView
          Left = 3.779530000000000000
          Top = 135.708720000000000000
          Width = 245.669450000000000000
          Color = clBlack
          ArrowSolid = True
          Frame.Typ = [ftTop]
        end
        object Memo33: TfrxMemoView
          Left = 88.031599800000000000
          Top = 137.724490000000000000
          Width = 56.692830390000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Assinatura')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 548.031850000000000000
          Top = 6.779530000000000000
          Width = 79.370078740000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total :')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 637.181510000000000000
          Top = 6.779530000000000000
          Width = 79.370078740000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_DB_M_ORC_ITE1."vlr_liquido">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 1.000000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          ArrowSolid = True
          Frame.Typ = [ftTop]
        end
        object mmDescEsp: TfrxMemoView
          Left = 457.323130000000000000
          Top = 27.015770000000000000
          Width = 170.078798740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'Desc. especial de [FAT_DB_M_ORC1."per_desc_especial" #n%2,2f] % ' +
              ':')
          ParentFont = False
        end
        object mmTotDescEsp: TfrxMemoView
          Left = 637.181510000000000000
          Top = 27.015770000000000000
          Width = 79.370078740000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."vlr_desc_especial"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 532.913730000000000000
          Top = 55.913420000000000000
          Width = 94.488198740000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total l'#237'quido :')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 629.622450000000000000
          Top = 57.803185000000000000
          Width = 86.929138740000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_ORC1."vlr_liquido"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 631.181510000000000000
          Top = 56.133890000000000000
          Width = 86.929190000000000000
          Color = clBlack
          ArrowSolid = True
          Frame.Typ = [ftTop]
        end
        object Memo32: TfrxMemoView
          Left = 2.149660000000000000
          Top = 12.559060000000000000
          Width = 445.984420390000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Observa'#231#245'es : [FAT_DB_M_ORC1."obs"]')
          ParentFont = False
        end
      end
      object imgEmpresa1: TfrxPictureView
        Left = 592.047620000000000000
        Top = -2.661410000000000000
        Width = 124.724490000000000000
        Height = 71.811070000000000000
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
  object FAT_DB_M_ORC1: TfrxDBDataset
    UserName = 'FAT_DB_M_ORC1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_orcamento=id_orcamento'
      'id_empresa=id_empresa'
      'id_cliente=id_cliente'
      'dta_orcamento=dta_orcamento'
      'id_funcionario=id_funcionario'
      'dta_entrega=dta_entrega'
      'dta_validade=dta_validade'
      'id_forma_pag=id_forma_pag'
      'id_condicao_pag=id_condicao_pag'
      'obs=obs'
      'status=status'
      'id_pedido=id_pedido'
      'vlr_servicos_bru=vlr_servicos_bru'
      'vlr_produtos_bru=vlr_produtos_bru'
      'vlr_desconto_pro=vlr_desconto_pro'
      'vlr_desconto_ser=vlr_desconto_ser'
      'vlr_servicos_liq=vlr_servicos_liq'
      'vlr_produtos_liq=vlr_produtos_liq'
      'vlr_total=vlr_total'
      'int_nomecli=int_nomecli'
      'int_nomefun=int_nomefun'
      'int_nomecpg=int_nomecpg'
      'int_nomefpg=int_nomefpg'
      'FAT_SQ_M_ORC_ITE=FAT_SQ_M_ORC_ITE'
      'int_id_perfil=int_id_perfil'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'vlr_bruto=vlr_bruto'
      'vlr_desc_basico=vlr_desc_basico'
      'per_desc_basico=per_desc_basico'
      'per_desc_especial=per_desc_especial'
      'vlr_desconto=vlr_desconto'
      'per_desconto=per_desconto'
      'vlr_liquido=vlr_liquido'
      'vlr_frete=vlr_frete'
      'separa_prod_serv=separa_prod_serv'
      'vlr_desc_especial=vlr_desc_especial'
      'vlr_icm_desn=vlr_icm_desn'
      'cubagem=cubagem'
      'id_atendente=id_atendente'
      'int_nomeatendente=int_nomeatendente'
      'int_nomecid=int_nomecid'
      'int_nomeest=int_nomeest'
      'int_cpfcnpj=int_cpfcnpj'
      'int_ie_rg_cli=int_ie_rg_cli'
      'int_tel_movel=int_tel_movel'
      'int_tel_fixo=int_tel_fixo'
      'int_endercli=int_endercli'
      'int_numeroend=int_numeroend'
      'int_cepcli=int_cepcli'
      'int_bairrocli=int_bairrocli')
    DataSet = dmGeral.FAT_CD_M_ORC
    BCDToCurrency = False
    Left = 1082
    Top = 296
  end
  object FAT_PD_R_ALM: TfrxPDFExport
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
    Left = 1082
    Top = 392
  end
  object FAT_XL_R_ALM: TfrxXLSExport
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
    Left = 1082
    Top = 448
  end
  object FAT_DB_M_ORC_ITE1: TfrxDBDataset
    UserName = 'FAT_DB_M_ORC_ITE1'
    OnCheckEOF = FAT_DB_M_ORC_ITE1CheckEOF
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_orcamento=id_orcamento'
      'id_item=id_item'
      'qtde=qtde'
      'vlr_unitario=vlr_unitario'
      'vlr_bruto=vlr_bruto'
      'vlr_desconto=vlr_desconto'
      'per_desconto=per_desconto'
      'vlr_liquido=vlr_liquido'
      'id_seq_item=id_seq_item'
      'id_busca_item=id_busca_item'
      'id_cor=id_cor'
      'id_tamanho=id_tamanho'
      'int_descitem=int_descitem'
      'int_unidade=int_unidade'
      'vlr_unitario_orig=vlr_unitario_orig'
      'int_tipo_item=int_tipo_item'
      'int_nomecor=int_nomecor'
      'int_nometam=int_nometam'
      'pcp_obs_item=pcp_obs_item')
    DataSet = dmGeral.FAT_CD_M_ORC_ITE
    BCDToCurrency = False
    Left = 1082
    Top = 344
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 389
    Top = 97
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 232
    Top = 311
  end
end
