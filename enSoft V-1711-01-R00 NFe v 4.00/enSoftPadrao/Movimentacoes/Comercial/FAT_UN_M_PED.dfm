inherited FAT_FM_M_PED: TFAT_FM_M_PED
  Caption = 'Movimenta'#231#227'o'
  ClientHeight = 563
  ClientWidth = 1121
  OnKeyDown = FormKeyDown
  ExplicitWidth = 1127
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlEsquerda: TPanel
    Height = 533
    ExplicitHeight = 533
    inherited pnlFiltro: TPanel
      Top = 483
      ExplicitTop = 483
      inherited gbxFiltro: TGroupBox
        inherited cbbPesquisa: TComboBox
          Width = 146
          DropDownCount = 13
          ItemIndex = 0
          Text = 'C'#243'digo do pedido'
          OnChange = cbbPesquisaChange
          Items.Strings = (
            'C'#243'digo do pedido'
            'Nome do cliente'
            'Nome do vendedor'
            'Desc. condi'#231#227'o pagto'
            'Desc. tipo de estoque'
            'Data'
            'Cnpj/Cpf'
            #218'ltimos 15 dias'
            'Cidade'
            'Nome fantasia cliente'
            'C'#243'digo do cliente')
          ExplicitWidth = 146
        end
        inherited txtPesquisa: TEdit
          Left = 154
          Width = 124
          NumbersOnly = True
          OnKeyDown = txtPesquisaKeyDown
          ExplicitLeft = 154
          ExplicitWidth = 124
        end
        inherited btnFiltro: TcxButton
          Top = 17
          OnClick = btnFiltroClick
          ExplicitTop = 17
        end
        object txtPesquisaData: TJvDateEdit
          Left = 150
          Top = 17
          Width = 121
          Height = 21
          ShowNullDate = False
          TabOrder = 3
          Visible = False
        end
      end
    end
    inherited pnlDatagrid: TPanel
      Top = 105
      Height = 322
      ExplicitTop = 105
      ExplicitHeight = 322
      inherited dbGrid: TwwDBGrid
        Height = 322
        ControlInfoInDataset = False
        ControlType.Strings = (
          'int_hora;RichEdit;;F'
          'imgAprovacao;ImageIndex;Shrink To Fit')
        Selected.Strings = (
          'ID_PEDIDO'#9'10'#9'Pedido'#9'F'
          'dta_pedido'#9'10'#9'Data'#9'F'
          'hor_pedido'#9'8'#9'Hora'#9'F'
          'int_sitped2'#9'14'#9'Situa'#231#227'o'#9'F')
        OnRowChanged = dbGridRowChanged
        EditCalculated = True
        Font.Height = -11
        KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = pmVisualisarRestricoes
        RowHeightPercent = 120
        TitleAlignment = taCenter
        TitleLines = 2
        OnCalcCellColors = dbGridCalcCellColors
        ImageList = ImageList1
        ExplicitHeight = 322
      end
    end
    inherited pnlBotoes: TPanel
      Height = 105
      ExplicitHeight = 105
      inherited btnIncluir: TcxButton
        Left = 2
        ExplicitLeft = 2
      end
      inherited btnImprime: TcxButton
        Left = 89
        Top = 58
        Width = 66
        Height = 45
        TabOrder = 7
        ExplicitLeft = 89
        ExplicitTop = 58
        ExplicitWidth = 66
        ExplicitHeight = 45
      end
      inherited btnAtualiza: TcxButton
        TabOrder = 6
      end
      object btnImpRomaneio: TBitBtn
        Left = 155
        Top = 53
        Width = 155
        Height = 50
        Caption = 'Imprimir Romaneio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = btnImpRomaneioClick
      end
      object Panel2: TPanel
        Left = 0
        Top = 52
        Width = 310
        Height = 53
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 9
        object btnAtualizaCont: TBitBtn
          Left = 0
          Top = 0
          Width = 216
          Height = 53
          Align = alClient
          Caption = 'Visualizar pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = pmImpressaoPed
          TabOrder = 0
          OnClick = btnAtualizaContClick
        end
        object btnGerarPDF: TBitBtn
          Left = 216
          Top = 0
          Width = 94
          Height = 53
          Align = alRight
          Caption = 'Gerar PDF'
          TabOrder = 1
          OnClick = btnGerarPDFClick
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 427
      Width = 310
      Height = 56
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object lblEmAberto: TLabel
        Left = 36
        Top = 28
        Width = 75
        Height = 13
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Digitado'
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
      object Label27: TLabel
        Left = 191
        Top = 28
        Width = 75
        Height = 13
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Em Produ'#231#227'o'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label29: TLabel
        Left = 36
        Top = 43
        Width = 75
        Height = 13
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cancelado'
        Color = clMaroon
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
        Left = 191
        Top = 43
        Width = 75
        Height = 13
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Faturado'
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
      object Label26: TLabel
        Left = 114
        Top = 43
        Width = 75
        Height = 13
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Reprovado'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label16: TLabel
        Left = 114
        Top = 28
        Width = 75
        Height = 13
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aprovado'
        Color = 28637
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lblGeracaoPedido: TLabel
        Left = 2
        Top = 3
        Width = 136
        Height = 13
        Alignment = taCenter
        Caption = 'Pedido gerado manualmente'
      end
    end
  end
  inherited pnlDireita: TPanel
    Width = 811
    Height = 533
    ExplicitWidth = 811
    ExplicitHeight = 533
    inherited pnlDados: TPanel
      Left = 7
      Top = -2
      Width = 769
      Height = 531
      ExplicitLeft = 7
      ExplicitTop = -2
      ExplicitWidth = 769
      ExplicitHeight = 531
      object Label5: TLabel
        Left = 65
        Top = 11
        Width = 42
        Height = 13
        Caption = 'Cliente :'
      end
      object Label7: TLabel
        Left = 47
        Top = 35
        Width = 59
        Height = 13
        Caption = 'Cond. Pag :'
      end
      object lblVendedor: TLabel
        Left = 51
        Top = 57
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vendedor :'
      end
      object Label9: TLabel
        Left = 459
        Top = 57
        Width = 60
        Height = 13
        Caption = 'Atendente :'
      end
      object Label14: TLabel
        Left = 18
        Top = 80
        Width = 90
        Height = 13
        Caption = 'Tipo de Estoque :'
      end
      object Label1: TLabel
        Left = 40
        Top = 102
        Width = 66
        Height = 13
        Caption = 'Observa'#231#227'o :'
      end
      object txtClienteNome: TDBText
        Left = 183
        Top = 8
        Width = 127
        Height = 21
        Color = 14342874
        DataField = 'INT_NOMECLI'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object lblOutrasObs: TLabel
        Left = 454
        Top = 100
        Width = 65
        Height = 13
        Caption = 'Outras Obs :'
      end
      object Label53: TLabel
        Left = 656
        Top = 12
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
      object Label18: TLabel
        Left = 456
        Top = 35
        Width = 63
        Height = 13
        Caption = 'Or'#231'amento :'
      end
      object lblDtaEntrega: TLabel
        Left = 449
        Top = 11
        Width = 70
        Height = 13
        Caption = 'Prev. Entrega:'
      end
      object lblNumOrdPro: TLabel
        Left = 438
        Top = 80
        Width = 81
        Height = 13
        Caption = 'Ord. Produ'#231#227'o :'
      end
      object lblDiasPrazo: TLabel
        Left = 354
        Top = 34
        Width = 28
        Height = 13
        Caption = 'Dias :'
      end
      object lblPropriedade: TLabel
        Left = 316
        Top = 12
        Width = 30
        Height = 13
        Caption = 'Prop :'
        Visible = False
      end
      object lblTipoFrete: TLabel
        Left = 315
        Top = 79
        Width = 62
        Height = 13
        Caption = 'Mod. Frete :'
      end
      object lblMotorista: TLabel
        Left = 48
        Top = 123
        Width = 56
        Height = 13
        Caption = 'Motorista :'
      end
      object lblPlaca: TLabel
        Left = 319
        Top = 123
        Width = 32
        Height = 13
        Caption = 'Placa :'
      end
      object txtDescMotorista: TDBText
        Left = 186
        Top = 122
        Width = 127
        Height = 21
        Color = 14342874
        DataField = 'int_nomemta'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object Label8: TLabel
        Left = 475
        Top = 124
        Width = 44
        Height = 13
        Caption = 'Cr'#233'dito :'
      end
      object lblCredUtil: TLabel
        Left = 615
        Top = 124
        Width = 54
        Height = 13
        Caption = 'Cr'#233'd. Util.:'
      end
      object lblComissao: TLabel
        Left = 313
        Top = 101
        Width = 55
        Height = 13
        Caption = 'Comiss'#227'o :'
      end
      object lblComPer: TLabel
        Left = 423
        Top = 101
        Width = 9
        Height = 13
        Caption = '%'
      end
      object lblTextoCondPgto: TLabel
        Left = 173
        Top = 27
        Width = 66
        Height = 26
        Alignment = taRightJustify
        Caption = 'Texto a imprimir da condi'#231#227'o de pgto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object txtTextoCondPgto: TwwDBEdit
        Left = 245
        Top = 31
        Width = 103
        Height = 21
        DataField = 'sgq_texto_cond_pgto'
        DataSource = dso
        TabOrder = 5
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnExit = txtTextoCondPgtoExit
      end
      object GroupBox1: TGroupBox
        Left = 18
        Top = 140
        Width = 721
        Height = 231
        Caption = 'Itens'
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 22
        object lblBruto: TLabel
          Left = 390
          Top = 194
          Width = 56
          Height = 13
          Caption = 'Total Bruto'
        end
        object lblVlrDesc: TLabel
          Left = 482
          Top = 194
          Width = 52
          Height = 13
          Caption = 'Desconto '
        end
        object lblPerDesc: TLabel
          Left = 461
          Top = 194
          Width = 9
          Height = 13
          Caption = '%'
        end
        object lblTotalPed: TLabel
          Left = 646
          Top = 194
          Width = 42
          Height = 13
          Caption = 'Vlr.Total'
        end
        object lblSaldo: TLabel
          Left = 347
          Top = 194
          Width = 29
          Height = 13
          Caption = 'Saldo'
        end
        object lblCubagem: TLabel
          Left = 3
          Top = 194
          Width = 64
          Height = 13
          Caption = 'Cubag. total'
        end
        object lblItemSobMed: TLabel
          Left = 3
          Top = 161
          Width = 109
          Height = 13
          Caption = 'Obs item sob medida'
          Visible = False
        end
        object lblFrete: TLabel
          Left = 593
          Top = 194
          Width = 46
          Height = 13
          Caption = 'Vlr. Frete'
        end
        object lblDescEspecial: TLabel
          Left = 272
          Top = 194
          Width = 71
          Height = 13
          Caption = 'Desc. especial'
        end
        object lblDescBasc: TLabel
          Left = 142
          Top = 194
          Width = 63
          Height = 13
          Caption = 'Desc. b'#225'sico'
        end
        object lblIcmDesn: TLabel
          Left = 534
          Top = 193
          Width = 54
          Height = 13
          Caption = 'Icms Desn.'
        end
        object lblPerDescBasc: TLabel
          Left = 74
          Top = 194
          Width = 65
          Height = 13
          Caption = '% Desc b'#225'sic'
        end
        object lblPerDescEspecial: TLabel
          Left = 208
          Top = 194
          Width = 60
          Height = 13
          Caption = '% Desc esp.'
        end
        object grdItens: TwwDBGrid
          Left = 3
          Top = 51
          Width = 709
          Height = 110
          TabStop = False
          Selected.Strings = (
            'ID_ITEM'#9'10'#9'C'#243'digo'#9'F'
            'INT_NOMEITE'#9'25'#9'Descri'#231#227'o'#9'F'
            'int_nomecor'#9'10'#9'Cor'#9'F'
            'int_nometam'#9'8'#9'Tamanho'#9'F'
            'int_nomecul'#9'15'#9'Cultura'#9'T'
            'QTDE'#9'5'#9'Qtde'#9'F'
            'VLR_UNITARIO'#9'10'#9'Vlr.Unit'#225'rio'#9'F'
            'VLR_BRUTO'#9'10'#9'Vlr. Bruto'#9'F'
            'PER_DESCONTO'#9'6'#9'%Desc.'#9'F'
            'VLR_DESCONTO'#9'8'#9'Vlr.Desc.'#9'F'
            'VLR_LIQUIDO'#9'10'#9'Vlr.Liquido'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsPedtIten
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 1
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
          Left = 27
          Top = 7
          Width = 678
          Height = 40
          BevelOuter = bvNone
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 2
          OnExit = pnItensExit
          object lblItem: TLabel
            Left = 7
            Top = 2
            Width = 80
            Height = 13
            Caption = '<F7> C'#243'd. item'
          end
          object Label21: TLabel
            Left = 374
            Top = 2
            Width = 23
            Height = 13
            Caption = 'Qtde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 425
            Top = 2
            Width = 54
            Height = 13
            Caption = 'Vlr. Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 491
            Top = 2
            Width = 39
            Height = 13
            Caption = '% Desc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 536
            Top = 2
            Width = 61
            Height = 13
            Caption = 'Vlr.Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 604
            Top = 2
            Width = 39
            Height = 13
            Caption = 'Vlr.Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 102
            Top = 2
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object txtItemDescricao: TDBText
            Left = 104
            Top = 17
            Width = 236
            Height = 21
            Color = 14342874
            DataField = 'int_nomeite'
            DataSource = dsPedtIten
            ParentColor = False
            Transparent = False
          end
          object Label13: TLabel
            Left = 343
            Top = 2
            Width = 22
            Height = 13
            Caption = 'Und'
          end
          object txtUnidade: TDBText
            Left = 343
            Top = 16
            Width = 29
            Height = 21
            Color = 14342874
            DataField = 'int_id_und_venda'
            DataSource = dsPedtIten
            ParentColor = False
            Transparent = False
          end
          object txtQtde: TwwDBEdit
            Left = 374
            Top = 16
            Width = 50
            Height = 21
            Color = clWhite
            DataField = 'QTDE'
            DataSource = dsPedtIten
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtQtdeEnter
            OnExit = txtQtdeExit
          end
          object txtVlrUnitario: TwwDBEdit
            Left = 425
            Top = 16
            Width = 63
            Height = 21
            Color = clWhite
            DataField = 'VLR_UNITARIO'
            DataSource = dsPedtIten
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = txtVlrUnitarioExit
          end
          object txtPerDesconto: TwwDBEdit
            Left = 491
            Top = 16
            Width = 41
            Height = 21
            Color = clWhite
            DataField = 'PER_DESCONTO'
            DataSource = dsPedtIten
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtPerDescontoEnter
            OnExit = txtPerDescontoExit
          end
          object txtVlrDesconto: TwwDBEdit
            Left = 536
            Top = 16
            Width = 65
            Height = 21
            Color = clWhite
            DataField = 'VLR_DESCONTO'
            DataSource = dsPedtIten
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtVlrDescontoEnter
            OnExit = txtVlrDescontoExit
          end
          object txtBuscaItem: TJvDBComboEdit
            Left = 7
            Top = 17
            Width = 95
            Height = 21
            Hint = 'Tecle <F3> para consultar as culturas cadastradas.'
            ClickKey = 114
            DataField = 'id_busca_item'
            DataSource = dsPedtIten
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
            TabOrder = 5
            OnButtonClick = txtBuscaItemButtonClick
            OnEnter = txtBuscaItemEnter
            OnExit = txtBuscaItemExit
            OnKeyDown = txtBuscaItemKeyDown
          end
          object txtVlrTotal: TwwDBEdit
            Left = 603
            Top = 16
            Width = 74
            Height = 21
            Color = 16376287
            DataField = 'VLR_LIQUIDO'
            DataSource = dsPedtIten
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object btn_Add_Itens: TBitBtn
          Left = 3
          Top = 23
          Width = 25
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
          Layout = blGlyphTop
          TabOrder = 0
          WordWrap = True
          OnClick = btn_Add_ItensClick
          OnKeyDown = btn_Add_ItensKeyDown
        end
        object txtVlrBruto: TwwDBEdit
          Left = 391
          Top = 207
          Width = 60
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'VLR_BRUTO'
          DataSource = dso
          ReadOnly = True
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtPerDesc: TwwDBEdit
          Left = 449
          Top = 207
          Width = 34
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'PER_DESCONTO'
          DataSource = dso
          ReadOnly = True
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtTotalVlrDesc: TwwDBEdit
          Tag = 1
          Left = 482
          Top = 207
          Width = 42
          Height = 21
          TabStop = False
          Color = clWhite
          DataField = 'VLR_DESCONTO'
          DataSource = dso
          TabOrder = 9
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = txtTotalVlrDescEnter
          OnExit = txtTotalVlrDescExit
        end
        object wwDBEdTotalLiqItens: TwwDBEdit
          Left = 646
          Top = 207
          Width = 69
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'VLR_LIQUIDO'
          DataSource = dso
          ReadOnly = True
          TabOrder = 11
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object pnlCorTamanho: TPanel
          Left = 128
          Top = 80
          Width = 545
          Height = 73
          TabOrder = 12
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
            Width = 229
            Height = 13
            Caption = 'Medida (Para a Produ'#231#227'o) F3-Itens ou F4-Est.'
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
            DataSource = dsPedtIten
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
            DataSource = dsPedtIten
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
            Left = 272
            Top = 18
            Width = 264
            Height = 47
            Hint = 
              '<F3> Para consultar itens;   <F4> Para consultar o item personal' +
              'izado no estoque'
            DataField = 'pcp_obs_item'
            DataSource = dsPedtIten
            MaxLength = 100
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Visible = False
            OnEnter = mmPcpObsIteEnter
            OnExit = mmPcpObsIteExit
            OnKeyDown = mmPcpObsIteKeyDown
          end
        end
        object txtSaldo: TEdit
          Left = 346
          Top = 207
          Width = 46
          Height = 21
          TabStop = False
          Alignment = taRightJustify
          Color = 14342874
          ReadOnly = True
          TabOrder = 13
          Text = 'txtSaldo'
        end
        object txtCubagem: TDBEdit
          Left = 3
          Top = 207
          Width = 68
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'cubagem'
          DataSource = dso
          ReadOnly = True
          TabOrder = 15
        end
        object txtPcpObsItem: TDBMemo
          Left = 3
          Top = 174
          Width = 711
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'pcp_obs_item'
          DataSource = dsPedtIten
          ReadOnly = True
          TabOrder = 14
          Visible = False
        end
        object pnlCultura: TPanel
          Left = 47
          Top = 43
          Width = 186
          Height = 49
          TabOrder = 16
          Visible = False
          object lblCultura: TLabel
            Left = 14
            Top = 4
            Width = 38
            Height = 13
            Caption = 'Cultura'
          end
          object cbbCultura: TwwDBLookupCombo
            Left = 14
            Top = 20
            Width = 163
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'descricao'#9'30'#9'descricao'#9'T')
            DataField = 'id_cultura'
            DataSource = dsPedtIten
            LookupTable = dmGeral.BUS_CD_C_CUL
            LookupField = 'id_cultura'
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbCulturaEnter
            OnExit = cbbCulturaExit
          end
        end
        object txtFrete: TwwDBEdit
          Left = 592
          Top = 207
          Width = 51
          Height = 21
          DataField = 'vlr_frete'
          DataSource = dso
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = txtFreteExit
        end
        object txtDescBasc: TwwDBEdit
          Tag = 1
          Left = 142
          Top = 207
          Width = 63
          Height = 21
          TabStop = False
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
        object txtDescEspecial: TwwDBEdit
          Tag = 1
          Left = 272
          Top = 207
          Width = 72
          Height = 21
          TabStop = False
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
        object txtIcmsDesn: TwwDBEdit
          Left = 534
          Top = 207
          Width = 57
          Height = 21
          Color = 14342874
          DataField = 'vlr_icm_desn'
          DataSource = dso
          ReadOnly = True
          TabOrder = 17
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = txtIcmsDesnExit
        end
        object pnlDescPecServ: TPanel
          Left = 24
          Top = 114
          Width = 448
          Height = 41
          BevelOuter = bvNone
          TabOrder = 18
          Visible = False
          object lblDescPec: TLabel
            Left = 222
            Top = 1
            Width = 58
            Height = 13
            Caption = 'Desc. Pe'#231'as'
          end
          object Label20: TLabel
            Left = 293
            Top = 1
            Width = 71
            Height = 13
            Caption = 'Desc. Servi'#231'os'
          end
          object Label30: TLabel
            Left = 369
            Top = 1
            Width = 70
            Height = 13
            Caption = 'Desc. Terceiro'
          end
          object Label31: TLabel
            Left = 5
            Top = 1
            Width = 48
            Height = 13
            Caption = 'Vlr. Pe'#231'as'
          end
          object Label32: TLabel
            Left = 75
            Top = 1
            Width = 61
            Height = 13
            Caption = 'Vlr. Servi'#231'os'
          end
          object Label33: TLabel
            Left = 149
            Top = 3
            Width = 60
            Height = 13
            Caption = 'Vlr. Terceiro'
          end
          object txtDescPec: TwwDBEdit
            Left = 222
            Top = 16
            Width = 68
            Height = 21
            DataField = 'vlr_desc_produtos'
            DataSource = dso
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object txtDescServ: TwwDBEdit
            Left = 292
            Top = 15
            Width = 74
            Height = 21
            DataField = 'vlr_desc_servicos'
            DataSource = dso
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object txtDescTer: TwwDBEdit
            Left = 369
            Top = 15
            Width = 72
            Height = 21
            DataField = 'vlr_desc_terceiro'
            DataSource = dso
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object txtVlrPec: TwwDBEdit
            Left = 5
            Top = 16
            Width = 70
            Height = 21
            Color = 14342874
            DataField = 'vlr_produtos'
            DataSource = dso
            ReadOnly = True
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object txtVlrServ: TwwDBEdit
            Left = 75
            Top = 16
            Width = 73
            Height = 21
            Color = 14342874
            DataField = 'vlr_serv_bruto'
            DataSource = dso
            ReadOnly = True
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object txtVlrTer: TwwDBEdit
            Left = 149
            Top = 16
            Width = 70
            Height = 21
            Color = 14342874
            DataField = 'vlr_terceiro'
            DataSource = dso
            ReadOnly = True
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object pnlMecTer: TPanel
          Left = 566
          Top = 98
          Width = 171
          Height = 41
          TabOrder = 19
          Visible = False
          object Label15: TLabel
            Left = 6
            Top = 3
            Width = 49
            Height = 13
            Caption = 'Mec'#226'nico'
          end
          object cbbMecanico: TwwDBLookupCombo
            Left = 6
            Top = 17
            Width = 155
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'nome'#9'50'#9'nome'#9'F'
              'id_funcionario'#9'10'#9'id_funcionario'#9'F')
            DataField = 'id_mecanico'
            DataSource = dsPedtIten
            LookupTable = dmGeral.BUS_CD_C_FUN_MEC
            LookupField = 'id_funcionario'
            Style = csDropDownList
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbMecanicoEnter
            OnExit = cbbMecanicoExit
          end
        end
        object txtPercDescBasc: TwwDBEdit
          Tag = 1
          Left = 74
          Top = 207
          Width = 66
          Height = 21
          TabStop = False
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
        object txtPercDescEspecial: TwwDBEdit
          Tag = 1
          Left = 208
          Top = 207
          Width = 59
          Height = 21
          TabStop = False
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
      end
      object gbGerTitulos: TGroupBox
        Left = 16
        Top = 368
        Width = 724
        Height = 156
        Caption = 'Titulos'
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 23
        object Label3: TLabel
          Left = 12
          Top = 36
          Width = 126
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'Entrada'
          Color = clSilver
          ParentColor = False
          Transparent = False
        end
        object Label4: TLabel
          Left = 10
          Top = 90
          Width = 126
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'Gera'#231#227'o do Titulos'
          Color = clSilver
          ParentColor = False
          Transparent = False
        end
        object Label6: TLabel
          Left = 9
          Top = 104
          Width = 60
          Height = 13
          Caption = 'Forma pgto'
        end
        object Label10: TLabel
          Left = 72
          Top = 104
          Width = 63
          Height = 13
          Caption = 'Qtd Parcelas'
        end
        object Label11: TLabel
          Left = 10
          Top = 50
          Width = 60
          Height = 13
          Caption = 'Forma pgto'
        end
        object Label12: TLabel
          Left = 79
          Top = 50
          Width = 57
          Height = 13
          Caption = 'Vlr.Entrada'
        end
        object txtFpgEntrada: TJvComboEdit
          Left = 10
          Top = 65
          Width = 58
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
          Text = 'txtfpgentrada'
          OnButtonClick = txtFpgEntradaButtonClick
          OnEnter = txtFpgEntradaEnter
          OnExit = txtFpgEntradaExit
          NumbersOnly = True
        end
        object txtVlrEntrada: TJvValidateEdit
          Left = 74
          Top = 65
          Width = 62
          Height = 21
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfCurrency
          DecimalPlaces = 2
          EditText = '0'
          TabOrder = 1
          OnExit = txtVlrEntradaExit
        end
        object txtGerFpg: TJvComboEdit
          Left = 11
          Top = 119
          Width = 58
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
          Text = 'txtFpgEntrada'
          OnButtonClick = txtGerFpgButtonClick
          OnExit = txtGerFpgExit
          NumbersOnly = True
        end
        object txtQtdeParc: TEdit
          Left = 74
          Top = 118
          Width = 61
          Height = 21
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 3
          Text = '0'
          OnExit = txtQtdeParcExit
        end
        object gbFormasPgt: TGroupBox
          Left = 107
          Top = 3
          Width = 26
          Height = 29
          Caption = ' '
          TabOrder = 4
          Visible = False
        end
        object cbbTitPecaServico: TComboBox
          Left = 9
          Top = 13
          Width = 92
          Height = 21
          AutoDropDown = True
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Text = 'Pe'#231'as'
          Visible = False
          Items.Strings = (
            'Pe'#231'as'
            'Servicos')
        end
        object pcTitulos: TPageControl
          Left = 140
          Top = 9
          Width = 581
          Height = 143
          ActivePage = tsPeca
          Align = alCustom
          TabOrder = 6
          object tsPeca: TTabSheet
            Caption = 'Pe'#231'as'
            object pnTitulos: TPanel
              Left = 27
              Top = -2
              Width = 539
              Height = 55
              Align = alCustom
              BevelOuter = bvNone
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              OnExit = pnTitulosExit
              object lbl6: TLabel
                Left = 0
                Top = 15
                Width = 82
                Height = 13
                Caption = 'Forma de pagto'
              end
              object lb2: TLabel
                Left = 93
                Top = 15
                Width = 22
                Height = 13
                Caption = 'Dias'
              end
              object lbl8: TLabel
                Left = 123
                Top = 15
                Width = 60
                Height = 13
                Caption = 'Vencimento'
              end
              object lbl7: TLabel
                Left = 211
                Top = 15
                Width = 48
                Height = 13
                Caption = 'Vlr. t'#237'tulo'
              end
              object txtFormaPgto: TwwDBLookupCombo
                Left = 0
                Top = 30
                Width = 91
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
                DataField = 'id_forma_pag'
                DataSource = dsPedTitulos
                LookupTable = dmGeral.BUS_CD_C_FPG
                LookupField = 'id_forma_pag'
                Style = csDropDownList
                Color = clWhite
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = txtFormaPgtoEnter
                OnExit = txtFormaPgtoExit
                OnKeyDown = txtFormaPgtoKeyDown
              end
              object txtDias: TDBEdit
                Left = 93
                Top = 30
                Width = 30
                Height = 21
                Color = clWhite
                DataField = 'DIAS'
                DataSource = dsPedTitulos
                TabOrder = 1
                OnExit = txtDiasExit
              end
              object txtVlrTitulo: TDBEdit
                Left = 212
                Top = 30
                Width = 54
                Height = 21
                Color = clWhite
                DataField = 'VLR_TITULO'
                DataSource = dsPedTitulos
                TabOrder = 3
                OnExit = txtVlrTituloExit
              end
              object gbCheque: TGroupBox
                Left = 269
                Top = -1
                Width = 272
                Height = 54
                Caption = ' Dados do cheque'
                TabOrder = 4
                object lblEmitente: TLabel
                  Left = 203
                  Top = 17
                  Width = 45
                  Height = 13
                  Caption = 'Emitente'
                end
                object lblBanco: TLabel
                  Left = 3
                  Top = 17
                  Width = 31
                  Height = 13
                  Caption = 'Banco'
                end
                object lblAgencia: TLabel
                  Left = 39
                  Top = 17
                  Width = 41
                  Height = 13
                  Caption = 'Ag'#234'ncia'
                end
                object lblContaCorrente: TLabel
                  Left = 83
                  Top = 17
                  Width = 58
                  Height = 13
                  Caption = 'C. Corrente'
                end
                object lblNCheque: TLabel
                  Left = 143
                  Top = 17
                  Width = 56
                  Height = 13
                  Caption = 'N'#186' Cheque'
                end
                object txtEmitenteChq: TDBEdit
                  Left = 203
                  Top = 31
                  Width = 66
                  Height = 21
                  Color = clWhite
                  DataField = 'che_emitente'
                  DataSource = dsPedTitulos
                  TabOrder = 4
                  OnExit = txtEmitenteChqExit
                end
                object txtBanco: TDBEdit
                  Left = 3
                  Top = 31
                  Width = 35
                  Height = 21
                  Color = clWhite
                  DataField = 'che_banco'
                  DataSource = dsPedTitulos
                  TabOrder = 0
                  OnExit = txtBancoExit
                end
                object txtAgencia: TDBEdit
                  Left = 39
                  Top = 31
                  Width = 42
                  Height = 21
                  Color = clWhite
                  DataField = 'che_agencia'
                  DataSource = dsPedTitulos
                  TabOrder = 1
                  OnExit = txtAgenciaExit
                end
                object txtContaCorrente: TDBEdit
                  Left = 83
                  Top = 31
                  Width = 59
                  Height = 21
                  Color = clWhite
                  DataField = 'che_conta'
                  DataSource = dsPedTitulos
                  TabOrder = 2
                  OnExit = txtContaCorrenteExit
                end
                object txtNCheque: TDBEdit
                  Left = 143
                  Top = 31
                  Width = 60
                  Height = 21
                  Color = clWhite
                  DataField = 'che_numero'
                  DataSource = dsPedTitulos
                  TabOrder = 3
                  OnExit = txtNChequeExit
                end
              end
              object txtVencimento: TJvDBDateEdit
                Left = 123
                Top = 30
                Width = 89
                Height = 21
                DataField = 'dta_vencimento'
                DataSource = dsPedTitulos
                ShowNullDate = False
                TabOrder = 2
                OnExit = txtVencimentoExit
              end
            end
            object btn_Add_Fpg: TBitBtn
              Left = 2
              Top = 27
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
              Layout = blGlyphTop
              TabOrder = 1
              WordWrap = True
              OnClick = btn_Add_FpgClick
              OnKeyDown = btn_Add_FpgKeyDown
            end
            object grdFpg: TwwDBGrid
              Left = 1
              Top = 51
              Width = 569
              Height = 64
              Selected.Strings = (
                'int_nomefpg'#9'18'#9'Forma de pagamento'#9'F'
                'DTA_VENCIMENTO'#9'10'#9'Vencimento'#9'F'
                'VLR_TITULO'#9'9'#9'Vlr.T'#237'tulo'#9'F'
                'che_banco'#9'7'#9'Banco'#9'F'
                'che_agencia'#9'8'#9'Ag'#234'ncia'#9'F'
                'che_conta'#9'7'#9'Conta'#9'F'
                'che_numero'#9'10'#9'Nro cheque'#9'F'
                'che_emitente'#9'11'#9'Emitente'#9'F')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              OnRowChanged = grdFpgRowChanged
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alCustom
              DataSource = dsPedTitulos
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              TabOrder = 2
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              UseTFields = False
              OnMouseUp = grdFpgMouseUp
              object grdFpgIButton: TwwIButton
                Left = -1
                Top = -1
                Width = 21
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
                OnClick = grdFpgIButtonClick
              end
            end
          end
          object tsServico: TTabSheet
            Caption = 'Servi'#231'os'
            ImageIndex = 1
            object pnlTitSer: TPanel
              Left = 28
              Top = -2
              Width = 541
              Height = 54
              BevelOuter = bvNone
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              OnExit = pnlTitSerExit
              object Label34: TLabel
                Left = 0
                Top = 15
                Width = 82
                Height = 13
                Caption = 'Forma de pagto'
              end
              object Label35: TLabel
                Left = 93
                Top = 15
                Width = 22
                Height = 13
                Caption = 'Dias'
              end
              object Label36: TLabel
                Left = 123
                Top = 15
                Width = 60
                Height = 13
                Caption = 'Vencimento'
              end
              object Label37: TLabel
                Left = 215
                Top = 15
                Width = 48
                Height = 13
                Caption = 'Vlr. t'#237'tulo'
              end
              object txtFormaPgtoSer: TwwDBLookupCombo
                Left = 0
                Top = 30
                Width = 91
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
                DataField = 'id_forma_pag'
                DataSource = dsPedTitSer
                LookupTable = dmGeral.BUS_CD_C_FPG
                LookupField = 'id_forma_pag'
                Style = csDropDownList
                Color = clWhite
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = txtFormaPgtoSerEnter
                OnExit = txtFormaPgtoSerExit
                OnKeyDown = txtFormaPgtoSerKeyDown
              end
              object txtDiasSer: TDBEdit
                Left = 93
                Top = 30
                Width = 30
                Height = 21
                Color = clWhite
                DataField = 'DIAS'
                DataSource = dsPedTitSer
                TabOrder = 1
                OnExit = txtDiasSerExit
              end
              object txtVlrTituloSer: TDBEdit
                Left = 215
                Top = 29
                Width = 56
                Height = 21
                Color = clWhite
                DataField = 'VLR_TITULO'
                DataSource = dsPedTitSer
                TabOrder = 3
                OnExit = txtVlrTituloSerExit
              end
              object gbChequeSer: TGroupBox
                Left = 271
                Top = -1
                Width = 271
                Height = 54
                Caption = ' Dados do cheque'
                TabOrder = 4
                object Label38: TLabel
                  Left = 203
                  Top = 17
                  Width = 45
                  Height = 13
                  Caption = 'Emitente'
                end
                object Label39: TLabel
                  Left = 3
                  Top = 17
                  Width = 31
                  Height = 13
                  Caption = 'Banco'
                end
                object Label40: TLabel
                  Left = 38
                  Top = 17
                  Width = 41
                  Height = 13
                  Caption = 'Ag'#234'ncia'
                end
                object Label41: TLabel
                  Left = 83
                  Top = 17
                  Width = 58
                  Height = 13
                  Caption = 'C. Corrente'
                end
                object Label42: TLabel
                  Left = 143
                  Top = 17
                  Width = 56
                  Height = 13
                  Caption = 'N'#186' Cheque'
                end
                object txtEmitenteChqSer: TDBEdit
                  Left = 203
                  Top = 31
                  Width = 66
                  Height = 21
                  Color = clWhite
                  DataField = 'che_emitente'
                  DataSource = dsPedTitSer
                  TabOrder = 4
                  OnExit = txtEmitenteChqSerExit
                end
                object txtBancoSer: TDBEdit
                  Left = 3
                  Top = 31
                  Width = 34
                  Height = 21
                  Color = clWhite
                  DataField = 'che_banco'
                  DataSource = dsPedTitSer
                  TabOrder = 0
                  OnExit = txtBancoSerExit
                end
                object txtAgenciaSer: TDBEdit
                  Left = 38
                  Top = 31
                  Width = 44
                  Height = 21
                  Color = clWhite
                  DataField = 'che_agencia'
                  DataSource = dsPedTitSer
                  TabOrder = 1
                  OnExit = txtAgenciaSerExit
                end
                object txtContaCorrenteSer: TDBEdit
                  Left = 83
                  Top = 31
                  Width = 59
                  Height = 21
                  Color = clWhite
                  DataField = 'che_conta'
                  DataSource = dsPedTitSer
                  TabOrder = 2
                  OnExit = txtContaCorrenteSerExit
                end
                object txtNChequeSer: TDBEdit
                  Left = 143
                  Top = 31
                  Width = 60
                  Height = 21
                  Color = clWhite
                  DataField = 'che_numero'
                  DataSource = dsPedTitSer
                  TabOrder = 3
                  OnExit = txtNChequeSerExit
                end
              end
              object txtVencimentoSer: TJvDBDateEdit
                Left = 124
                Top = 30
                Width = 89
                Height = 21
                DataField = 'dta_vencimento'
                DataSource = dsPedTitSer
                ShowNullDate = False
                TabOrder = 2
                OnExit = txtVencimentoSerExit
              end
            end
            object btn_Add_Fpg_ser: TBitBtn
              Left = -1
              Top = 27
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
              Layout = blGlyphTop
              TabOrder = 1
              WordWrap = True
              OnClick = btn_Add_Fpg_serClick
              OnKeyDown = btn_Add_FpgKeyDown
            end
            object grdFpgSer: TwwDBGrid
              Left = 0
              Top = 50
              Width = 569
              Height = 65
              Selected.Strings = (
                'int_nomefpg'#9'18'#9'Forma de pagamento'#9'F'
                'DTA_VENCIMENTO'#9'10'#9'Vencimento'#9'F'
                'VLR_TITULO'#9'9'#9'Vlr.T'#237'tulo'#9'F'
                'che_banco'#9'7'#9'Banco'#9'F'
                'che_agencia'#9'8'#9'Ag'#234'ncia'#9'F'
                'che_conta'#9'7'#9'Conta'#9'F'
                'che_numero'#9'10'#9'Nro cheque'#9'F'
                'che_emitente'#9'11'#9'Emitente'#9'F')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              OnRowChanged = grdFpgSerRowChanged
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = dsPedTitSer
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              TabOrder = 2
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              UseTFields = False
              OnMouseUp = grdFpgSerMouseUp
              object grdFpgSerIButton: TwwIButton
                Left = -1
                Top = -1
                Width = 21
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
                OnClick = grdFpgSerIButtonClick
              end
            end
          end
        end
      end
      object cbbCondicaoPagamento: TwwDBLookupCombo
        Left = 112
        Top = 31
        Width = 198
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
        DataField = 'ID_CONDICAO_PAG'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CPG
        LookupField = 'ID_CONDICAO_PAG'
        Style = csDropDownList
        Color = clWhite
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbCondicaoPagamentoEnter
        OnExit = cbbCondicaoPagamentoExit
      end
      object cbbTipoEstoque: TwwDBLookupCombo
        Left = 112
        Top = 76
        Width = 197
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
        DataField = 'ID_TIPO_MOV_ESTOQUE'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_TME
        LookupField = 'ID_TIPO_MOV_ESTOQUE'
        Style = csDropDownList
        Color = clWhite
        TabOrder = 9
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbTipoEstoqueEnter
      end
      object cbbVendedor: TwwDBLookupCombo
        Left = 112
        Top = 54
        Width = 320
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'30'#9'nome'#9'F'
          'id_funcionario'#9'5'#9'Responsavel'#9'F')
        DataField = 'id_vendedor'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FUN
        LookupField = 'id_funcionario'
        Options = [loTitles]
        Style = csDropDownList
        Color = clWhite
        TabOrder = 7
        AutoDropDown = False
        ShowButton = False
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbVendedorEnter
        OnExit = cbbVendedorExit
      end
      object cbbAtendente: TwwDBLookupCombo
        Left = 525
        Top = 54
        Width = 209
        Height = 21
        TabStop = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'30'#9'nome'#9'F')
        DataField = 'ID_ATENDENTE'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FU2
        LookupField = 'id_funcionario'
        Style = csDropDownList
        Color = clWhite
        ReadOnly = True
        TabOrder = 8
        AutoDropDown = False
        ShowButton = False
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbAtendenteEnter
      end
      object txtOutrasObs: TDBMemo
        Left = 525
        Top = 97
        Width = 209
        Height = 22
        DataField = 'pcp_obs'
        DataSource = dso
        MaxLength = 150
        TabOrder = 21
      end
      object btnImportar: TcxButton
        Left = 613
        Top = 30
        Width = 121
        Height = 23
        Caption = '&Importar or'#231'amento'
        TabOrder = 24
        OnClick = btnImportarClick
      end
      object txtCodRev: TDBEdit
        Left = 694
        Top = 8
        Width = 41
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'rev_lme'
        DataSource = dso
        Enabled = False
        ReadOnly = True
        TabOrder = 3
      end
      object txtCodOrc: TDBEdit
        Left = 525
        Top = 31
        Width = 87
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'id_orcamento'
        DataSource = dso
        Enabled = False
        ReadOnly = True
        TabOrder = 25
      end
      object txtCliente: TJvDBComboEdit
        Left = 113
        Top = 8
        Width = 71
        Height = 21
        Hint = 'Tecle <F3> para consultar as culturas cadastradas.'
        ClickKey = 114
        DataField = 'id_cliente'
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
        OnEnter = txtClienteEnter
        OnExit = txtClienteExit
      end
      object chbEnviaCarga: TDBCheckBox
        Left = 630
        Top = 78
        Width = 104
        Height = 17
        Caption = 'Envia para Carga'
        DataField = 'envia_carga'
        DataSource = dso
        TabOrder = 13
      end
      object txtDtaEntrega: TJvDBDateEdit
        Left = 525
        Top = 8
        Width = 105
        Height = 21
        DataField = 'dta_prev_entrega'
        DataSource = dso
        ReadOnly = True
        Color = 14342874
        ShowNullDate = False
        TabOrder = 2
      end
      object txtOrdProd: TwwDBEdit
        Left = 525
        Top = 76
        Width = 96
        Height = 21
        DataField = 'int_numloteopr'
        DataSource = dso
        TabOrder = 11
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        NumbersOnly = True
      end
      object txtDiasPrazo: TwwDBEdit
        Left = 384
        Top = 31
        Width = 48
        Height = 21
        DataField = 'dias_cpg_prazo'
        DataSource = dso
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = txtDiasPrazoExit
      end
      object cbbPropriedade: TwwDBLookupCombo
        Left = 349
        Top = 7
        Width = 83
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'30'#9'nome'#9'F'
          'id_propriedade'#9'10'#9'id_propriedade'#9'F')
        DataField = 'id_propriedade'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CLI_PRO
        LookupField = 'id_propriedade'
        Style = csDropDownList
        TabOrder = 1
        Visible = False
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbPropriedadeEnter
        OnExit = cbbPropriedadeExit
      end
      object cbbModFrete: TwwDBComboBox
        Left = 380
        Top = 76
        Width = 52
        Height = 21
        ShowButton = True
        Style = csDropDownList
        MapList = True
        AllowClearKey = False
        DataField = 'mod_frete'
        DataSource = dso
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'CIF'#9'1'
          'FOB'#9'2')
        Sorted = False
        TabOrder = 10
        UnboundDataType = wwDefault
        OnEnter = cbbModFreteEnter
        OnExit = cbbModFreteExit
      end
      object txtIdPlaca: TwwDBEdit
        Left = 356
        Top = 120
        Width = 76
        Height = 21
        CharCase = ecUpperCase
        DataField = 'id_placa'
        DataSource = dso
        TabOrder = 17
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = txtIdPlacaExit
      end
      object txtCodMotorista: TJvDBComboEdit
        Left = 110
        Top = 120
        Width = 71
        Height = 21
        Hint = 'Tecle <F3> para consultar as culturas cadastradas.'
        ClickKey = 114
        DataField = 'id_motorista'
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
        TabOrder = 16
        OnButtonClick = txtCodMotoristaButtonClick
        OnExit = txtCodMotoristaExit
      end
      object txtCredDisp: TEdit
        Left = 525
        Top = 121
        Width = 68
        Height = 21
        TabStop = False
        Color = 14342874
        ReadOnly = True
        TabOrder = 18
      end
      object txtCreditoUtil: TwwDBEdit
        Left = 674
        Top = 120
        Width = 60
        Height = 21
        DataField = 'vlr_credito'
        DataSource = dso
        TabOrder = 19
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = txtCreditoUtilExit
      end
      object txtComissao: TwwDBEdit
        Left = 371
        Top = 98
        Width = 46
        Height = 21
        DataField = 'sgq_per_comissao'
        DataSource = dso
        TabOrder = 14
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = txtComissaoExit
      end
      object gbCredito: TGroupBox
        Left = 525
        Top = 73
        Width = 287
        Height = 37
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 20
        Visible = False
        object lblCredPecas: TLabel
          Left = 5
          Top = 16
          Width = 64
          Height = 13
          Caption = 'Cred. Pe'#231'as :'
        end
        object lblCredServico: TLabel
          Left = 148
          Top = 17
          Width = 57
          Height = 13
          Caption = 'Cred. Serv.:'
        end
        object txtCredPecas: TwwDBEdit
          Left = 75
          Top = 13
          Width = 65
          Height = 21
          DataField = 'vlr_cred_produtos'
          DataSource = dso
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = txtCredPecasExit
        end
        object txtCredServico: TwwDBEdit
          Left = 210
          Top = 13
          Width = 64
          Height = 21
          DataField = 'vlr_cred_servicos'
          DataSource = dso
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = txtCredServicoExit
        end
      end
      object txtObservacao: TwwDBEdit
        Left = 112
        Top = 98
        Width = 197
        Height = 21
        Color = clWhite
        DataField = 'OBS'
        DataSource = dso
        MaxLength = 150
        TabOrder = 12
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = txtObservacaoEnter
        OnExit = txtObservacaoExit
      end
      object pnlMec: TPanel
        Left = 510
        Top = 86
        Width = 229
        Height = 28
        BevelOuter = bvNone
        TabOrder = 15
        Visible = False
        object Label43: TLabel
          Left = 4
          Top = 4
          Width = 55
          Height = 13
          Caption = 'Mec'#226'nico :'
        end
        object cbbMecPai: TwwDBLookupCombo
          Left = 67
          Top = 1
          Width = 155
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'nome'#9'50'#9'nome'#9'F'
            'id_funcionario'#9'10'#9'id_funcionario'#9'F')
          DataField = 'id_mecanico'
          DataSource = dso
          LookupTable = dmGeral.BUS_CD_C_FUN_MEC
          LookupField = 'id_funcionario'
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = cbbMecPaiEnter
          OnExit = cbbMecPaiExit
        end
      end
    end
  end
  inherited pnlTop: TJvPanel
    Width = 1121
    ExplicitWidth = 1121
    inherited pnlCima: TJvPanel
      Width = 1121
      ExplicitWidth = 1121
      inherited lblCodificacaoLMestre: TLabel
        Width = 1116
        ExplicitWidth = 1045
      end
      inherited lblTitulo: TLabel
        Width = 1121
        Caption = 'Pedido de Cliente'
        ExplicitWidth = 1600
      end
      inherited pnlBaixo: TPanel
        Width = 1121
        ExplicitWidth = 1121
      end
    end
  end
  object pnlDesn: TPanel [3]
    Left = 792
    Top = 195
    Width = 249
    Height = 51
    TabOrder = 3
    Visible = False
    object Label17: TLabel
      Left = 8
      Top = 9
      Width = 98
      Height = 13
      Caption = 'Motivo Desonera'#231#227'o'
    end
    object Label19: TLabel
      Left = 158
      Top = 9
      Width = 72
      Height = 13
      Caption = 'Vlr. Imcs Desn.'
    end
    object cbbMotDesn: TwwDBLookupCombo
      Left = 8
      Top = 22
      Width = 143
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DESCRICAO'#9'50'#9'DESCRICAO'#9'F'
        'CODIGO'#9'3'#9'CODIGO'#9'F')
      DataField = 'motivo_icms_des'
      DataSource = dsPedtIten
      LookupTable = dmGeral.BUS_CD_X_MDS
      LookupField = 'CODIGO'
      Style = csDropDownList
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      OrderByDisplay = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = cbbMotDesnEnter
    end
    object txtIcmsDesnIte: TwwDBEdit
      Left = 158
      Top = 22
      Width = 86
      Height = 21
      DataField = 'vlr_icm_desn'
      DataSource = dsPedtIten
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = txtIcmsDesnIteExit
    end
  end
  inherited acBotoes: TActionList
    Left = 1379
  end
  object dsPedtIten: TwwDataSource [5]
    DataSet = dmGeral.FAT_CD_M_PED_ITE
    Left = 23
    Top = 247
  end
  object dsPedTitulos: TwwDataSource [6]
    DataSet = dmGeral.FAT_CD_M_PED_TIT
    Left = 23
    Top = 296
  end
  object ImageList7: TImageList [7]
    Height = 21
    Width = 21
    Left = 1058
    Top = 308
    Bitmap = {
      494C01010200F000A00615001500FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000054000000150000000100200000000000901B
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B004A4A4A003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131000000
      00000000000000000000000000007B7B7B007B7B7B004A4A4A00313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A500949494008C8C8C007B7B7B004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A003131310031313100313131000000000000000000ADADAD009494
      9400848484007B7B7B004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00313131003131
      3100313131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00B5B5B500949494009494
      94007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B004A4A4A00313131003131
      310031313100BDBDBD00ADADAD0094949400949494007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B004A4A4A00313131003131310031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD00CECECE00F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7008C8C8C004A4A4A003131310031313100BDBDBD00CECECE00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484004A4A
      4A00313131003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00DEDEDE00F7F7F700DEDE
      DE007B7B7B0094949400DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00FFFFFF007B7B7B004A4A
      4A0031313100CECECE00CECECE00FFFFFF00CECECE009494940008AD100008AD
      100008AD100008AD100008AD100008AD100008AD100008AD100008AD100008AD
      100008AD1000FFFFFF00FFFFFF007B7B7B004A4A4A0031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00F7F7F700FFFFFF00313131007B7B7B008C8C8C00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500DEDEDE00FFFFFF007B7B7B004A4A4A0031313100CECECE00FFFFFF00FFFF
      FF008484840000CE390000CE390000E75A0000E75A0000E75A0000E75A0000E7
      5A0000E75A0000E75A0000E75A0000E75A0000CE390000CE3900FFFFFF007B7B
      7B004A4A4A003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00F7F7F700FFFFFF003131
      31004A4A4A008C8C8C00B5B5B500CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00B5B5B500DEDEDE00F7F7F7007B7B7B004A4A
      4A0031313100CECECE00FFFFFF00FFFFFF008484840000E75A0000FF940000FF
      940000FF940000FF940000CE390000E75A0000FF940000FF940000FF940000FF
      940000FF940000E75A00FFFFFF007B7B7B004A4A4A0031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00F7F7F700FFFFFF00313131004A4A4A007B7B7B00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00B5B5
      B500DEDEDE00F7F7F7007B7B7B004A4A4A0031313100CECECE00FFFFFF00FFFF
      FF008484840000E75A0000FF940000FF940000FF940000CE39000042000008AD
      100000E75A0000FF940000FF940000FF940000FF940000E75A00FFFFFF007B7B
      7B004A4A4A003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00F7F7F700FFFFFF003131
      31004A4A4A007B7B7B00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00B5B5B500DEDEDE00F7F7F7007B7B7B004A4A
      4A0031313100CECECE00FFFFFF00FFFFFF008484840000CE390000FF940000FF
      940000CE390000420000004200000042000008AD100000E75A0000FF940000FF
      940000FF940000E75A00FFFFFF007B7B7B004A4A4A0031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00F7F7F700FFFFFF00313131004A4A4A007B7B7B00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00B5B5
      B500DEDEDE00F7F7F7007B7B7B004A4A4A0031313100CECECE00FFFFFF00FFFF
      FF008484840000CE390000FF940000CE3900004200000042000000E75A000042
      00000042000008AD100000E75A0000FF940000E75A0000E75A00FFFFFF007B7B
      7B004A4A4A003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00F7F7F700FFFFFF003131
      31004A4A4A007B7B7B00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00B5B5B500DEDEDE00F7F7F7007B7B7B004A4A
      4A0031313100CECECE00FFFFFF00FFFFFF008484840000CE390000E75A000042
      00000042000000E75A0000E75A0000E75A00004200000042000008AD100000E7
      5A0000E75A0000CE3900FFFFFF007B7B7B004A4A4A0031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00F7F7F700FFFFFF00313131004A4A4A007B7B7B00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00B5B5
      B500DEDEDE00F7F7F7007B7B7B004A4A4A0031313100CECECE00FFFFFF00FFFF
      FF008484840000CE390000E75A0000E75A0000CE390000E75A0000CE390000E7
      5A0000CE3900004200000042000008AD100000CE390000CE3900FFFFFF007B7B
      7B004A4A4A003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00F7F7F700FFFFFF003131
      31004A4A4A007B7B7B00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00B5B5B500DEDEDE00F7F7F7007B7B7B004A4A
      4A0031313100CECECE00FFFFFF00FFFFFF008484840008AD100000CE390000CE
      390000CE390000CE390000CE390000CE390000CE390000CE3900004200000042
      000008AD100000CE3900FFFFFF007B7B7B004A4A4A0031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00F7F7F700FFFFFF00313131004A4A4A007B7B7B00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00B5B5
      B500DEDEDE00F7F7F7007B7B7B004A4A4A0031313100CECECE00FFFFFF00FFFF
      FF008484840008AD100000CE390000CE390000CE390000CE390000CE390000CE
      390000CE390000CE390000CE3900004200000042000008AD1000FFFFFF007B7B
      7B004A4A4A003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00F7F7F700FFFFFF003131
      31004A4A4A004A4A4A007B7B7B00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00B5B5B500B5B5B500DEDEDE00F7F7F7007B7B7B004A4A
      4A0031313100CECECE00FFFFFF00FFFFFF008484840008AD100000E75A0000E7
      5A0000E75A0000E75A0000E75A0000E75A0000E75A0000E75A0000E75A0000E7
      5A000042000000420000FFFFFF007B7B7B004A4A4A0031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00F7F7F700FFFFFF007B7B7B00313131004A4A4A004A4A4A007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B009494
      940094949400CECECE007B7B7B004A4A4A0031313100CECECE00FFFFFF00FFFF
      FF0084848400188C000000CE390000FF940000FF940000FF940000FF940000FF
      940000FF940000FF940000FF940000FF940000CE3900188C0000FFFFFF007B7B
      7B004A4A4A003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00F7F7F700FFFFFF00FFFF
      FF0031313100313131004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A008C8C8C00CECECE007B7B7B004A4A
      4A004A4A4A00CECECE00FFFFFF00FFFFFF00FFFFFF0084848400188C0000188C
      0000188C0000188C0000188C0000188C0000188C0000188C0000188C0000188C
      0000188C0000ADADAD00FFFFFF007B7B7B004A4A4A004A4A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE00F7F7F700FFFFFF00FFFFFF00F7F7F7007B7B7B00313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100CECECE00CECECE00949494008C8C8C004A4A4A00CECECE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0094949400FFFFFF009494
      9400848484004A4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700F7F7F700F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00B5B5B500949494009494
      94007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CECECE00ADADAD0094949400949494007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700CECECE00B5B5B500A5A5A500949494000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00ADADAD00ADAD
      AD00949494000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700F7F7
      F700F7F7F700CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00BDBDBD00B5B5B500A5A5A5000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00BDBDBD00ADADAD00ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E00000028000000540000001500000001000100
      00000000FC0000000000000000000000000000000000000000000000FFFFFF00
      C0001E0000C000000000000080000C0000400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000C000040000000000000C0001E0000C000000000000000000000
      000000000000000000000000000000000000}
  end
  object ImageList4: TImageList [8]
    Left = 1314
    Top = 236
    Bitmap = {
      494C010102003801E80610001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F0008383
      8300303030002B2B2B00272727003737370037373700272727002B2B2B003030
      300083838300F0F0F00000000000000000000000000000000000F0F0F0008383
      83002F2F2F002F2D31002F2A33003E3A42003E3A42002F2A33002F2D31002F2F
      2F0083838300F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080003131
      3100282828006E6E6E00AAAAAA00BDBDBD00BDBDBD00AAAAAA006E6E6E002828
      2800313131008080800000000000000000000000000000000000808080002F30
      2E002F2A33006F6E6F00A2A79E00B8BBB400B8BBB400A2A79E006F6E6F002F2A
      33002F302E008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9B9B900303030002828
      280098989800D2D2D200B4B4B4009595950095959500B4B4B400D2D2D2009898
      98002828280030303000B9B9B9000000000000000000B9B9B9002F2F2F002E2A
      330095969300BECBB2007DA15C0047791900477919007DA15C00BECBB2009596
      93002E2A33002F2F2F00B9B9B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000626262002C2C2C006C6C
      6C00D1D1D100979797008181810082828200828282008181810097979700D1D1
      D1006C6C6C002C2C2C00626262000000000000000000626262002F2D31006D6C
      6E00BDCAB0003F780E00336600003366000033660000336600003F780E00BDCA
      B0006D6C6E002F2D310062626200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003939390027272700ABAB
      AB00B1B1B100818181008282820082828200828282008282820081818100B1B1
      B100ABABAB0027272700393939000000000000000000393939002F2A3300A4A9
      9F00779D5500336600003366000033660000336600003366000033660000779D
      5500A4A99F002F2A330039393900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002F2F2F0036363600BEBE
      BE00949494008282820082828200828282008282820082828200828282009494
      9400BEBEBE00363636002F2F2F0000000000000000002F2F2F003E394100B8BC
      B500467918003366000033660000336600003366000033660000336600004679
      1800B8BCB5003E3941002F2F2F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002F2F2F0036363600BEBE
      BE00949494008282820082828200828282008282820082828200828282009494
      9400BEBEBE00363636002F2F2F0000000000000000002F2F2F003E394100B8BC
      B500467918003366000033660000336600003366000033660000336600004679
      1800B8BCB5003E3941002F2F2F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003939390027272700ABAB
      AB00B1B1B100818181008282820082828200828282008282820081818100B1B1
      B100ABABAB0027272700393939000000000000000000393939002F2A3300A4A9
      9F00779D5500336600003366000033660000336600003366000033660000779D
      5500A4A99F002F2A330039393900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000626262002C2C2C006C6C
      6C00D1D1D100979797008181810082828200828282008181810097979700D1D1
      D1006C6C6C002C2C2C00626262000000000000000000626262002F2D31006D6C
      6E00BDCAB0003F780E00336600003366000033660000336600003F780E00BDCA
      B0006D6C6E002F2D310062626200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9B9B900303030002828
      280098989800D2D2D200B4B4B4009595950095959500B4B4B400D2D2D2009898
      98002828280030303000B9B9B9000000000000000000B9B9B9002F2F2F002E2A
      330095969300BECBB2007DA15C0047791900477919007DA15C00BECBB2009596
      93002E2A33002F2F2F00B9B9B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080003131
      3100282828006E6E6E00AAAAAA00BDBDBD00BDBDBD00AAAAAA006E6E6E002828
      2800313131008080800000000000000000000000000000000000808080002F30
      2E002F2A33006F6E6F00A2A79E00B8BBB400B8BBB400A2A79E006F6E6F002F2A
      33002F302E008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F0008383
      8300303030002B2B2B00272727003737370037373700272727002B2B2B003030
      300083838300F0F0F00000000000000000000000000000000000F0F0F0008383
      83002F2F2F002F2D31002F2A33003E3A42003E3A42002F2A33002F2D31002F2F
      2F0083838300F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F00FF00F00000000
      C003C00300000000C003C0030000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      80018001000000008001800100000000C003C00300000000C003C00300000000
      F00FF00F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ImageList1: TImageList [9]
    Left = 1306
    Top = 284
    Bitmap = {
      494C010105004001F00610001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F0008383
      83002F3031003128260033201C0042312D0042312D0033201C00312826002F30
      310083838300F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080002E32
      330033211C006F6D70009EB1B400B4C2C500B4C2C5009EB1B4006F6D70003321
      1C002E3233008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9B9B9002F3031003320
      1C00939B9D00B2E4EC005CE8FF0019DDFF0019DDFF005CE8FF00B2E4EC00939B
      9D0033201C002F303100B9B9B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000062626200312826006E6C
      6B00B0E3F0000EE9FF0000CBFF0000CCFF0000CCFF0000CBFF000EE9FF00B0E3
      F0006E6C6B003128260062626200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039393900331F1B009FB2
      B70055E7FF0000CBFF0000CCFF0000CCFF0000CCFF0000CCFF0000CBFF0055E7
      FF009FB2B700331F1B0039393900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002F2F2F0041302C00B5C3
      C70018DDFF0000CBFF0000CCFF0000CCFF0000CCFF0000CCFF0000CBFF0018DD
      FF00B5C3C70041302C002F2F2F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002F2F2F0041302C00B5C3
      C70018DDFF0000CBFF0000CCFF0000CCFF0000CCFF0000CCFF0000CBFF0018DD
      FF00B5C3C70041302C002F2F2F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039393900331F1B009FB2
      B70055E7FF0000CBFF0000CCFF0000CCFF0000CCFF0000CCFF0000CBFF0055E7
      FF009FB2B700331F1B0039393900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000062626200312826006E6C
      6B00B0E3F0000EE9FF0000CBFF0000CCFF0000CCFF0000CBFF000EE9FF00B0E3
      F0006E6C6B003128260062626200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9B9B9002F3031003320
      1C00939B9D00B2E4EC005CE8FF0019DDFF0019DDFF005CE8FF00B2E4EC00939B
      9D0033201C002F303100B9B9B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080002E32
      330033211C006F6D70009EB1B400B4C2C500B4C2C5009EB1B4006F6D70003321
      1C002E3233008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F0008383
      83002F3031003128260033201C0042312D0042312D0033201C00312826002F30
      310083838300F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000F0F0F0008383
      83002F2F2F003131310033333300424242004242420033333300313131002F2F
      2F0083838300F0F0F00000000000000000000000000000000000F0F0F0008383
      83002F2F3000302F280030301E003F3F30003F3F300030301E00302F28002F2F
      300083838300F0F0F00000000000000000000000000000000000F0F0F0008383
      83002F2F2F002F2D31002F2A33003E3A42003E3A42002F2A33002F2D31002F2F
      2F0083838300F0F0F00000000000000000000000000000000000F0F0F0008383
      8300302F2F00283131002033330031424200314242002033330028313100302F
      2F0083838300F0F0F00000000000000000000000000000000000808080002E2E
      2E00333333006F6F6F009E9E9E00B4B4B400B4B4B4009E9E9E006F6F6F003333
      33002E2E2E008080800000000000000000000000000000000000808080002F2F
      330030301F006F6F6D00A1A1B300B6B7C400B6B7C400A1A1B3006F6F6D003030
      1F002F2F33008080800000000000000000000000000000000000808080002F30
      2E002F2A33006F6E6F00A2A79E00B8BBB400B8BBB400A2A79E006F6E6F002F2A
      33002F302E00808080000000000000000000000000000000000080808000322E
      2E00213333006D6F6F00B19E9E00C2B4B400C2B4B400B19E9E006D6F6F002133
      3300322E2E0080808000000000000000000000000000B9B9B9002F2F2F003333
      330093939300B2B2B2005C5C5C0019191900191919005C5C5C00B2B2B2009393
      9300333333002F2F2F00B9B9B9000000000000000000B9B9B9002F2F30003030
      1F0094949B00B9BAE8006F72F4003539EE003539EE006F72F400B9BAE8009494
      9B0030301F002F2F3000B9B9B9000000000000000000B9B9B9002F2F2F002E2A
      330095969300BECBB2007DA15C0047791900477919007DA15C00BECBB2009596
      93002E2A33002F2F2F00B9B9B9000000000000000000B9B9B900302F2F002033
      33009B939300E4B2B200E85C5C00DD191900DD191900E85C5C00E4B2B2009B93
      930020333300302F2F00B9B9B900000000000000000062626200313131006E6E
      6E00B0B0B0000E0E0E00000000000000000000000000000000000E0E0E00B0B0
      B0006E6E6E003131310062626200000000000000000062626200303028006D6D
      6C00B8B9E800292EFC002024DC002024DD002024DD002024DC00292EFC00B8B9
      E8006D6D6C0030302800626262000000000000000000626262002F2D31006D6C
      6E00BDCAB0003F780E00336600003366000033660000336600003F780E00BDCA
      B0006D6C6E002F2D310062626200000000000000000062626200283131006C6E
      6E00E3B0B000E90E0E00CB000000CC000000CC000000CB000000E90E0E00E3B0
      B0006C6E6E002831310062626200000000000000000039393900333333009F9F
      9F00555555000000000000000000000000000000000000000000000000005555
      55009F9F9F00333333003939390000000000000000003939390030301E00A2A3
      B400696CF4002024DC002024DD002024DD002024DD002024DD002024DC00696C
      F400A2A3B40030301E00393939000000000000000000393939002F2A3300A4A9
      9F00779D5500336600003366000033660000336600003366000033660000779D
      5500A4A99F002F2A3300393939000000000000000000393939001F333300B29F
      9F00E7555500CB000000CC000000CC000000CC000000CC000000CB000000E755
      5500B29F9F001F3333003939390000000000000000002F2F2F0041414100B5B5
      B500181818000000000000000000000000000000000000000000000000001818
      1800B5B5B500414141002F2F2F0000000000000000002F2F2F003F3F2F00B7B7
      C4003438ED002024DC002024DD002024DD002024DD002024DD002024DC003438
      ED00B7B7C4003F3F2F002F2F2F0000000000000000002F2F2F003E394100B8BC
      B500467918003366000033660000336600003366000033660000336600004679
      1800B8BCB5003E3941002F2F2F0000000000000000002F2F2F0030414100C3B5
      B500DD181800CB000000CC000000CC000000CC000000CC000000CB000000DD18
      1800C3B5B500304141002F2F2F0000000000000000002F2F2F0041414100B5B5
      B500181818000000000000000000000000000000000000000000000000001818
      1800B5B5B500414141002F2F2F0000000000000000002F2F2F003F3F2F00B7B7
      C4003438ED002024DC002024DD002024DD002024DD002024DD002024DC003438
      ED00B7B7C4003F3F2F002F2F2F0000000000000000002F2F2F003E394100B8BC
      B500467918003366000033660000336600003366000033660000336600004679
      1800B8BCB5003E3941002F2F2F0000000000000000002F2F2F0030414100C3B5
      B500DD181800CB000000CC000000CC000000CC000000CC000000CB000000DD18
      1800C3B5B500304141002F2F2F00000000000000000039393900333333009F9F
      9F00555555000000000000000000000000000000000000000000000000005555
      55009F9F9F00333333003939390000000000000000003939390030301E00A2A3
      B400696CF4002024DC002024DD002024DD002024DD002024DD002024DC00696C
      F400A2A3B40030301E00393939000000000000000000393939002F2A3300A4A9
      9F00779D5500336600003366000033660000336600003366000033660000779D
      5500A4A99F002F2A3300393939000000000000000000393939001F333300B29F
      9F00E7555500CB000000CC000000CC000000CC000000CC000000CB000000E755
      5500B29F9F001F33330039393900000000000000000062626200313131006E6E
      6E00B0B0B0000E0E0E00000000000000000000000000000000000E0E0E00B0B0
      B0006E6E6E003131310062626200000000000000000062626200303028006D6D
      6C00B8B9E800292EFC002024DC002024DD002024DD002024DC00292EFC00B8B9
      E8006D6D6C0030302800626262000000000000000000626262002F2D31006D6C
      6E00BDCAB0003F780E00336600003366000033660000336600003F780E00BDCA
      B0006D6C6E002F2D310062626200000000000000000062626200283131006C6E
      6E00E3B0B000E90E0E00CB000000CC000000CC000000CB000000E90E0E00E3B0
      B0006C6E6E0028313100626262000000000000000000B9B9B9002F2F2F003333
      330093939300B2B2B2005C5C5C0019191900191919005C5C5C00B2B2B2009393
      9300333333002F2F2F00B9B9B9000000000000000000B9B9B9002F2F30003030
      1F0094949B00B9BAE8006F72F4003539EE003539EE006F72F400B9BAE8009494
      9B0030301F002F2F3000B9B9B9000000000000000000B9B9B9002F2F2F002E2A
      330095969300BECBB2007DA15C0047791900477919007DA15C00BECBB2009596
      93002E2A33002F2F2F00B9B9B9000000000000000000B9B9B900302F2F002033
      33009B939300E4B2B200E85C5C00DD191900DD191900E85C5C00E4B2B2009B93
      930020333300302F2F00B9B9B900000000000000000000000000808080002E2E
      2E00333333006F6F6F009E9E9E00B4B4B400B4B4B4009E9E9E006F6F6F003333
      33002E2E2E008080800000000000000000000000000000000000808080002F2F
      330030301F006F6F6D00A1A1B300B6B7C400B6B7C400A1A1B3006F6F6D003030
      1F002F2F33008080800000000000000000000000000000000000808080002F30
      2E002F2A33006F6E6F00A2A79E00B8BBB400B8BBB400A2A79E006F6E6F002F2A
      33002F302E00808080000000000000000000000000000000000080808000322E
      2E00213333006D6F6F00B19E9E00C2B4B400C2B4B400B19E9E006D6F6F002133
      3300322E2E008080800000000000000000000000000000000000F0F0F0008383
      83002F2F2F003131310033333300424242004242420033333300313131002F2F
      2F0083838300F0F0F00000000000000000000000000000000000F0F0F0008383
      83002F2F3000302F280030301E003F3F30003F3F300030301E00302F28002F2F
      300083838300F0F0F00000000000000000000000000000000000F0F0F0008383
      83002F2F2F002F2D31002F2A33003E3A42003E3A42002F2A33002F2D31002F2F
      2F0083838300F0F0F00000000000000000000000000000000000F0F0F0008383
      8300302F2F00283131002033330031424200314242002033330028313100302F
      2F0083838300F0F0F00000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700666666003B3B3B002F2F2F002F2F2F003B3B3B0066666600B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E9E9
      E90000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F00F000000000000
      C003000000000000C00300000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      80010000000000008001000000000000C003000000000000C003000000000000
      F00F000000000000FFFF000000000000FFFFFFFFFFFFFFFFF00FF00FF00FF00F
      C003C003C003C003C003C003C003C00380018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      80018001800180018001800180018001C003C003C003C003C003C003C003C003
      F00FF00FF00FF00FFFFFFFFFFFFFFFEF00000000000000000000000000000000
      000000000000}
  end
  object BUS_DS_C_CLI: TDataSource [10]
    DataSet = dmGeral.BUS_CD_C_CLI
    Left = 23
    Top = 346
  end
  object FAT_FR_M_PED_SGQ: TfrxReport [11]
    Version = '5.1.9'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'EPSON LX-300+ /II'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42475.445938634300000000
    ReportOptions.LastChange = 42475.445938634300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 108
    Top = 282
    Datasets = <
      item
        DataSet = BUS_FD_C_CLI
        DataSetName = 'BUS_FD_C_CLI'
      end
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
      end
      item
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
      end
      item
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 210.819863845504600000
      PaperHeight = 139.435326614684900000
      PaperSize = 256
      LeftMargin = 2.539998359584393000
      RightMargin = 2.539998359584393000
      TopMargin = 4.497913761764029000
      BottomMargin = 4.497913761764029000
      FontStyle = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Top = 323.000000000000000000
        Width = 777.600000000000000000
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
        RowCount = 0
        StartNewPage = True
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 340.000000000000000000
        Width = 777.600000000000000000
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
        RowCount = 0
        object FAT_FD_M_PED_ITEid_item: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'id_item'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."id_item"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEint_nomeite: TfrxDMPMemoView
          Left = 76.800000000000000000
          Width = 240.000000000000000000
          Height = 17.000000000000000000
          DataField = 'int_nomeite'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomeite"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEint_id_und_venda: TfrxDMPMemoView
          Left = 326.400000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          DataField = 'int_id_und_venda'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_id_und_venda"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEqtde: TfrxDMPMemoView
          Left = 364.800000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'qtde'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."qtde"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEvlr_unitario: TfrxDMPMemoView
          Left = 432.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_unitario"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEvlr_bruto: TfrxDMPMemoView
          Left = 518.400000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_bruto"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEvlr_desconto: TfrxDMPMemoView
          Left = 604.800000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_desconto"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEvlr_liquido: TfrxDMPMemoView
          Left = 691.200000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_liquido"]')
          TruncOutboundText = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 170.000000000000000000
        Top = 136.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo23: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 136.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          TruncOutboundText = False
        end
        object DMPMemo24: TfrxDMPMemoView
          Left = 76.800000000000000000
          Top = 136.000000000000000000
          Width = 240.000000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o dos Produtos')
          TruncOutboundText = False
        end
        object DMPMemo26: TfrxDMPMemoView
          Left = 326.400000000000000000
          Top = 136.000000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'UND')
          TruncOutboundText = False
        end
        object DMPMemo27: TfrxDMPMemoView
          Left = 364.800000000000000000
          Top = 136.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Quant')
          TruncOutboundText = False
        end
        object DMPMemo28: TfrxDMPMemoView
          Left = 432.000000000000000000
          Top = 136.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr.Unit')
          TruncOutboundText = False
        end
        object DMPMemo29: TfrxDMPMemoView
          Left = 518.400000000000000000
          Top = 136.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Bruto')
          TruncOutboundText = False
        end
        object DMPMemo30: TfrxDMPMemoView
          Left = 691.200000000000000000
          Top = 136.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Liquido')
          TruncOutboundText = False
        end
        object DMPMemo31: TfrxDMPMemoView
          Left = 604.800000000000000000
          Top = 136.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          TruncOutboundText = False
        end
        object DMPMemo1: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 758.400000000000000000
          Height = 119.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo4: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente:')
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 34.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o:')
          TruncOutboundText = False
        end
        object DMPMemo14: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 68.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Resp.:')
          TruncOutboundText = False
        end
        object DMPMemo15: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 102.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Cond. Pag.:')
          TruncOutboundText = False
        end
        object DMPMemo16: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 51.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Fone/Fax:')
          TruncOutboundText = False
        end
        object DMPMemo17: TfrxDMPMemoView
          Left = 480.000000000000000000
          Top = 51.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          TruncOutboundText = False
        end
        object DMPMemo18: TfrxDMPMemoView
          Left = 480.000000000000000000
          Top = 34.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade:')
          TruncOutboundText = False
        end
        object DMPMemo22: TfrxDMPMemoView
          Left = 412.800000000000000000
          Top = 68.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Representante:')
          TruncOutboundText = False
        end
        object DMPMemo25: TfrxDMPMemoView
          Left = 412.800000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Prev. Entrega:')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_nomecli: TfrxDMPMemoView
          Left = 124.800000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'int_nomecli'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_nomecli"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_nomecid: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 34.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_nomecid"] - [FAT_FD_M_PED."int_nomeest"]')
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object FAT_FD_M_PEDdta_prev_entrega: TfrxDMPMemoView
          Left = 556.800000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataField = 'dta_prev_entrega'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_prev_entrega"]')
          TruncOutboundText = False
        end
        object DMPMemo19: TfrxDMPMemoView
          Left = 48.000000000000000000
          Top = 17.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'RG/IE:')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_ie_rg_cli: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 17.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_ie_rg_cli"]')
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 508.800000000000000000
          Top = 17.000000000000000000
          Width = 38.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'CPF:')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_cpfcnpj: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 17.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataField = 'int_cpfcnpj'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_cpfcnpj"]')
          TruncOutboundText = False
        end
        object BUS_FD_C_CLIendereco: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 34.000000000000000000
          Width = 345.600000000000000000
          Height = 17.000000000000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Memo.UTF8W = (
            
              '[Trim(<BUS_FD_C_CLI."endereco">)], N'#186'[Trim(<BUS_FD_C_CLI."numero' +
              '">)], [Trim(<BUS_FD_C_CLI."bairro">)]')
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object BUS_FD_C_CLIcep: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 51.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataField = 'cep'
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."cep"]')
          TruncOutboundText = False
        end
        object BUS_FD_C_CLItel_fixo: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 51.000000000000000000
          Width = 316.800000000000000000
          Height = 17.000000000000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."tel_fixo"] / [BUS_FD_C_CLI."fax"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_nomecpg: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 102.000000000000000000
          Width = 220.800000000000000000
          Height = 17.000000000000000000
          DataField = 'int_nomecpg'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_nomecpg"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_nomeres: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'int_nomeres'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_nomeres"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDid_vendedor: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 68.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_vendedor"] - [FAT_FD_M_PED."int_nomefun"]')
          TruncOutboundText = False
        end
        object DMPMemo20: TfrxDMPMemoView
          Left = 355.200000000000000000
          Top = 85.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Libera'#231#227'o de Pedido:')
          TruncOutboundText = False
        end
        object DMPMemo13: TfrxDMPMemoView
          Left = 19.200000000000000000
          Top = 85.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o:')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_sitped: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 85.000000000000000000
          Width = 220.800000000000000000
          Height = 17.000000000000000000
          DataField = 'int_sitped'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_sitped"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_sitaprov: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 85.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataField = 'int_sitaprov'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_sitaprov"]')
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          Left = 364.800000000000000000
          Top = 102.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Total cubagem (M'#179'):')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDcubagem: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 102.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataField = 'cubagem'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."cubagem"]')
          TruncOutboundText = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 391.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo2: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 499.200000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Totais:')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEvlr_bruto1: TfrxDMPMemoView
          Left = 518.400000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_bruto">,DetailData1)]')
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 604.800000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_desconto">,DetailData1)]')
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 691.200000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_liquido">,DetailData1)]')
          TruncOutboundText = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 442.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo9: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Forma de Pagamento')
          TruncOutboundText = False
        end
        object DMPMemo32: TfrxDMPMemoView
          Left = 201.600000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          TruncOutboundText = False
        end
        object DMPMemo33: TfrxDMPMemoView
          Left = 316.800000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          TruncOutboundText = False
        end
        object DMPMemo34: TfrxDMPMemoView
          Left = 412.800000000000000000
          Width = 355.200000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          TruncOutboundText = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 493.000000000000000000
        Width = 777.600000000000000000
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
        RowCount = 0
        object FAT_FD_M_PED_TITint_nomefpg: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          DataField = 'int_nomefpg'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."int_nomefpg"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_TITdta_vencimento: TfrxDMPMemoView
          Left = 201.600000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'dta_vencimento'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."dta_vencimento"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_TITvlr_titulo: TfrxDMPMemoView
          Left = 316.800000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."vlr_titulo"]')
          TruncOutboundText = False
        end
        object DMPMemo40: TfrxDMPMemoView
          Left = 412.800000000000000000
          Width = 355.200000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          TruncOutboundText = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 102.000000000000000000
        Top = 544.000000000000000000
        Width = 777.600000000000000000
        Stretched = True
        object DMPMemo39: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 85.000000000000000000
          Width = 758.400000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8W = (
            '_____________________________________'
            'Ass. Cliente')
          TruncOutboundText = False
          VAlign = vaBottom
        end
        object FAT_FD_M_PEDobs: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 758.400000000000000000
          Height = 17.000000000000000000
          StretchMode = smActualHeight
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  Observa'#231#227'o do pedido: [FAT_FD_M_PED."obs"]')
          TruncOutboundText = False
        end
        object DMPMemo38: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 34.000000000000000000
          Width = 758.400000000000000000
          Height = 17.000000000000000000
          StretchMode = smActualHeight
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Observa'#231#227'o da produ'#231#227'o: [FAT_FD_M_PED."pcp_obs"]')
          TruncOutboundText = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 85.000000000000000000
        Top = 17.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo3: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 758.400000000000000000
          Height = 68.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object CAD_DB_C_PARemp_fantasia: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_fantasia"]')
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object CAD_DB_C_PARemp_endereco: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 652.800000000000000000
          Height = 17.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Memo.UTF8W = (
            
              '[CAD_DB_C_PAR."emp_endereco"], [CAD_DB_C_PAR."emp_numero"], [CAD' +
              '_DB_C_PAR."emp_bairro"]')
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object CAD_DB_C_PARemp_telefone: TfrxDMPMemoView
          Left = 316.800000000000000000
          Top = 34.000000000000000000
          Width = 345.600000000000000000
          Height = 17.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Memo.UTF8W = (
            
              'Fone/Fax: [CAD_DB_C_PAR."emp_telefone"] / [CAD_DB_C_PAR."emp_fax' +
              '"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDid_pedido: TfrxDMPMemoView
          Left = 662.400000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          HAlign = haRight
          Memo.UTF8W = (
            'No. [FAT_FD_M_PED."id_pedido"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDdta_pedido: TfrxDMPMemoView
          Left = 662.400000000000000000
          Top = 34.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataField = 'dta_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_pedido"]')
          TruncOutboundText = False
        end
        object CAD_DB_C_PARid_cidade: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 34.000000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Memo.UTF8W = (
            
              '[CAD_DB_C_PAR."int_nomecid"] - [CAD_DB_C_PAR."int_uf"] - CEP: [C' +
              'AD_DB_C_PAR."emp_cep"]')
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 51.000000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            'CNPJ: [CAD_DB_C_PAR."emp_cnpj"]')
          TruncOutboundText = False
        end
        object DMPMemo11: TfrxDMPMemoView
          Left = 326.400000000000000000
          Top = 51.000000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            'I.E.: [CAD_DB_C_PAR."emp_ie"]')
          TruncOutboundText = False
        end
      end
    end
  end
  object FAT_FD_M_PED: TfrxDBDataset [12]
    UserName = 'FAT_FD_M_PED'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_pedido=id_pedido'
      'id_empresa=id_empresa'
      'dta_pedido=dta_pedido'
      'id_tipo_mov_estoque=id_tipo_mov_estoque'
      'id_vendedor=id_vendedor'
      'vlr_bruto=vlr_bruto'
      'vlr_desconto=vlr_desconto'
      'per_desconto=per_desconto'
      'vlr_liquido=vlr_liquido'
      'id_condicao_pag=id_condicao_pag'
      'pcp_id_opr=pcp_id_opr'
      'situacao=situacao'
      'situacao_aprovacao=situacao_aprovacao'
      'id_atendente=id_atendente'
      'id_responsavel=id_responsavel'
      'id_cliente=id_cliente'
      'tipo_restricao=tipo_restricao'
      'id_almoxarifado=id_almoxarifado'
      'int_nomecli=int_nomecli'
      'int_nometme=int_nometme'
      'int_nomefun=int_nomefun'
      'int_nomecpg=int_nomecpg'
      'int_nomeate=int_nomeate'
      'int_nomeres=int_nomeres'
      'FAT_SQ_M_PED_TIT=FAT_SQ_M_PED_TIT'
      'FAT_SQ_M_PED_ITE=FAT_SQ_M_PED_ITE'
      'int_nomeest=int_nomeest'
      'int_cpfcnpj=int_cpfcnpj'
      'int_id_perfil=int_id_perfil'
      'justificativa=justificativa'
      'id_usuario_lib=id_usuario_lib'
      'hor_pedido=hor_pedido'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'origem=origem'
      'dispositivo=dispositivo'
      'gps_latitude=gps_latitude'
      'gps_longitude=gps_longitude'
      'cubagem=cubagem'
      'int_pessoacli=int_pessoacli'
      'id_orcamento=id_orcamento'
      'int_sitaprov=int_sitaprov'
      'int_sitped=int_sitped'
      'envia_carga=envia_carga'
      'dta_prev_entrega=dta_prev_entrega'
      'id_ors=id_ors'
      'int_nomecid=int_nomecid'
      'id_abertura=id_abertura'
      'int_ie_rg_cli=int_ie_rg_cli'
      'int_selecao=int_selecao'
      'dias_cpg_prazo=dias_cpg_prazo'
      'int_nomereg=int_nomereg'
      'offline=offline'
      'conferido=conferido'
      'id_conf=id_conf'
      'dta_conf=dta_conf'
      'hor_conf=hor_conf'
      'resultado_conf=resultado_conf'
      'id_resp_conf=id_resp_conf'
      'int_nome_rcn=int_nome_rcn'
      'id_propriedade=id_propriedade'
      'mod_frete=mod_frete'
      'vlr_frete=vlr_frete'
      'id_mkt=id_mkt'
      'int_numloteopr=int_numloteopr'
      'id_motorista=id_motorista'
      'id_placa=id_placa'
      'int_nomemta=int_nomemta'
      'vlr_credito=vlr_credito'
      'vlr_desc_especial=vlr_desc_especial'
      'vlr_desc_basico=vlr_desc_basico'
      'sgq_per_comissao=sgq_per_comissao'
      'int_sitped2=int_sitped2'
      'qtde_volume=qtde_volume'
      'vlr_icm_desn=vlr_icm_desn'
      'int_sitord=int_sitord'
      'vlr_desc_produtos=vlr_desc_produtos'
      'per_desc_produtos=per_desc_produtos'
      'vlr_produtos=vlr_produtos'
      'vlr_serv_bruto=vlr_serv_bruto'
      'vlr_desc_servicos=vlr_desc_servicos'
      'per_desc_servicos=per_desc_servicos'
      'vlr_ser_liquido=vlr_ser_liquido'
      'vlr_terceiro=vlr_terceiro'
      'vlr_desc_terceiro=vlr_desc_terceiro'
      'per_desc_terceiro=per_desc_terceiro'
      'vlr_terc_liquido=vlr_terc_liquido'
      'ped_gera_fin_separado=ped_gera_fin_separado'
      'FAT_SQ_M_PED_TIT_SER=FAT_SQ_M_PED_TIT_SER'
      'vlr_prod_liquido=vlr_prod_liquido'
      'separa_prod_serv=separa_prod_serv'
      'vlr_cred_produtos=vlr_cred_produtos'
      'vlr_cred_servicos=vlr_cred_servicos'
      'obs=obs'
      'id_mecanico=id_mecanico'
      'sgq_texto_cond_pgto=sgq_texto_cond_pgto'
      'per_desc_basico=per_desc_basico'
      'per_desc_especial=per_desc_especial'
      'dta_liberacao=dta_liberacao'
      'int_nomelib=int_nomelib'
      'pcp_obs=pcp_obs'
      'pedido_origem_aut=pedido_origem_aut'
      'pedido_automatico=pedido_automatico'
      'gerar_pedido_diferenca=gerar_pedido_diferenca'
      'id_pedido_gerado=id_pedido_gerado'
      'can_usuario=can_usuario'
      'can_data=can_data'
      'can_motivo=can_motivo'
      'can_hora=can_hora'
      'per_desconto_fat=per_desconto_fat'
      'id_func_pri_impressao=id_func_pri_impressao'
      'dta_pri_impressao=dta_pri_impressao'
      'hor_pri_impressao=hor_pri_impressao'
      'id_func_seg_impressao=id_func_seg_impressao'
      'dta_seg_impressao=dta_seg_impressao'
      'hor_seg_impressao=hor_seg_impressao'
      'id_func_ter_impressao=id_func_ter_impressao'
      'dta_ter_impressao=dta_ter_impressao'
      'hor_ter_impressao=hor_ter_impressao'
      'motivo_seg_impressao=motivo_seg_impressao'
      'motivo_ter_impressao=motivo_ter_impressao'
      'int_nomepri_impres=int_nomepri_impres'
      'int_nomeseg_impres=int_nomeseg_impres'
      'int_nometer_impres=int_nometer_impres'
      'int_telmovel_ven=int_telmovel_ven'
      'int_telfixo_ven=int_telfixo_ven')
    DataSet = dmGeral.FAT_CD_M_PED
    BCDToCurrency = False
    Left = 110
    Top = 368
  end
  object FAT_FD_M_PED_ITE: TfrxDBDataset [13]
    UserName = 'FAT_FD_M_PED_ITE'
    OnCheckEOF = FAT_FD_M_PED_ITECheckEOF
    CloseDataSource = False
    FieldAliases.Strings = (
      'int_nomeite=int_nomeite'
      'vlr_unitario=vlr_unitario'
      'qtde=qtde'
      'vlr_liquido=vlr_liquido'
      'id_pedido=id_pedido'
      'id_sequencia=id_sequencia'
      'id_item=id_item'
      'vlr_bruto=vlr_bruto'
      'per_desconto=per_desconto'
      'vlr_desconto=vlr_desconto'
      'id_cor=id_cor'
      'id_tamanho=id_tamanho'
      'id_busca_item=id_busca_item'
      'int_nomecor=int_nomecor'
      'int_id_und_venda=int_id_und_venda'
      'int_nometam=int_nometam'
      'vlr_unitario_orig=vlr_unitario_orig'
      'int_tipo_item=int_tipo_item'
      'int_seqitem=int_seqitem'
      'int_rua=int_rua'
      'int_prateleira=int_prateleira'
      'int_escaninho=int_escaninho'
      'per_desc_max=per_desc_max'
      'qtde_conferida=qtde_conferida'
      'pcp_obs_item=pcp_obs_item'
      'int_nomecul=int_nomecul'
      'id_cultura=id_cultura'
      'int_selecao=int_selecao'
      'vlr_frete=vlr_frete'
      'int_rua2=int_rua2'
      'int_prateleira2=int_prateleira2'
      'int_escaninho2=int_escaninho2'
      'vlr_icm_desn=vlr_icm_desn'
      'num_lote=num_lote'
      'int_lote_gru=int_lote_gru'
      'motivo_icms_des=motivo_icms_des'
      'int_serterceiro=int_serterceiro'
      'id_mecanico=id_mecanico'
      'int_nomemec=int_nomemec'
      'per_desc_basico=per_desc_basico'
      'vlr_desc_basico=vlr_desc_basico'
      'per_desc_especial=per_desc_especial'
      'vlr_desc_especial=vlr_desc_especial')
    DataSet = dmGeral.FAT_CD_M_PED_ITE
    BCDToCurrency = False
    Left = 110
    Top = 416
  end
  object FAT_FD_M_PED_TIT: TfrxDBDataset [14]
    UserName = 'FAT_FD_M_PED_TIT'
    CloseDataSource = False
    DataSet = dmGeral.FAT_CD_M_PED_TIT
    BCDToCurrency = False
    Left = 278
    Top = 408
  end
  object FAT_FR_M_PED_SGQ2: TfrxReport [15]
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41800.997059467600000000
    ReportOptions.LastChange = 41801.026114062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure fstCabItem1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<ativado_cor> = false) then'
      '  begin'
      
        '    mmlblCor.Visible := false;                                  ' +
        '                                   '
      '    mmlblUnd.Left := mmlblCor.Left;            '
      '  end;            '
      'end;'
      ''
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<ativado_cor> = false) then'
      '   begin'
      
        '    mmCor.Visible := false;                                     ' +
        '                                '
      '    mmUnd.Left := mmCor.Left;                 '
      
        '    mmIte.Width := mmIte.Width + mmUnd.Width;                   ' +
        '                                                                ' +
        '               '
      '   end;  '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<ativado_sgq> = false) then'
      '    begin'
      '      mmDtaEntrega.Visible := false;'
      '      FAT_FD_M_PEDdta_prev_entrega.Visible := false;'
      '      mmOrdProd.Visible := false;'
      
        '      FAT_FD_M_PEDpcp_id_opr.Visible := false;                  ' +
        '                                                                ' +
        '        '
      '      mmOrdFat.Visible := false;'
      '      FAT_FD_M_PEDid_ors.Visible := false;'
      '      mmLibPed.Visible := false;'
      
        '      FAT_FD_M_PEDint_sitaprov.Visible := false                 ' +
        '                                                                ' +
        '           '
      '    end;              '
      'end;'
      ''
      'procedure mmCpfCnpjOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  mmCpfCnpj.Text := '#39'CPF:'#39';'
      '  if (<FAT_FD_M_PED."int_pessoacli"> = 1) then'
      '    begin'
      '      mmCpfCnpj.Text := '#39'CNPJ:'#39';  '
      '    end;              '
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<FAT_FD_M_PED."vlr_desc_especial"> = 0) then'
      '    begin'
      '      mmDescEsp.Visible := false;'
      '      mmTotDescEsp.Visible := false;            '
      '    end;  '
      'end;'
      ''
      'procedure mmTotDescEspOnAfterData(Sender: TfrxComponent);'
      'begin'
      ''
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
    OnAfterPrintReport = FAT_FR_M_PED_SGQ2AfterPrintReport
    Left = 110
    Top = 232
    Datasets = <
      item
        DataSet = BUS_FD_C_CLI
        DataSetName = 'BUS_FD_C_CLI'
      end
      item
        DataSet = CAD_FD_C_PAR
        DataSetName = 'CAD_FD_C_PAR'
      end
      item
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
      end
      item
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
      end
      item
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
      end>
    Variables = <
      item
        Name = ' Externas'
        Value = Null
      end
      item
        Name = 'SituacaoPed'
        Value = Null
      end
      item
        Name = 'ativado_cor'
        Value = Null
      end
      item
        Name = 'ativado_sgq'
        Value = Null
      end
      item
        Name = 'ft_desc_item'
        Value = Null
      end
      item
        Name = 'ft_data_ped'
        Value = Null
      end
      item
        Name = 'ft_hor_ped'
        Value = Null
      end
      item
        Name = 'ft_texto_cond_pgto'
        Value = Null
      end
      item
        Name = 'ft_impresso_por'
        Value = Null
      end
      item
        Name = 'ft_nro_pedidos'
        Value = Null
      end
      item
        Name = 'ft_versao'
        Value = Null
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
      ColumnWidth = 95.000000000000000000
      OnAfterPrint = 'Page1OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 408.189240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Shape2: TfrxShapeView
          Top = 152.740260000000000000
          Width = 718.110236220000000000
          Height = 253.228510000000000000
        end
        object Memo31: TfrxMemoView
          Left = 517.937230000000000000
          Top = 178.196970000000000000
          Width = 132.283550000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            ' Total de Cubagem (m'#179') :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 126.614173230000000000
          Fill.BackColor = clWhite
        end
        object Memo52: TfrxMemoView
          Left = 1.000000000000000000
          Top = 155.078850000000000000
          Width = 145.133489690000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.LeftLine.Color = clNone
          Frame.RightLine.Color = clNone
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'DADOS DO CLIENTE')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 285.567100000000000000
          Top = 1.000000000000000000
          Width = 170.078850000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO DE VENDA')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 5.605636450000000000
          Top = 203.976500000000000000
          Width = 41.882383120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 5.605636450000000000
          Top = 241.992270000000000000
          Width = 51.305942020000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 5.605636450000000000
          Top = 260.889920000000000000
          Width = 55.921345690000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Municipio')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 348.480520000000000000
          Top = 260.889920000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object frxBusClinome: TfrxMemoView
          Left = 102.826840000000000000
          Top = 202.976500000000000000
          Width = 277.716760000000000000
          Height = 18.897640240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."id_cliente"] - [BUS_FD_C_CLI."nome"]')
          ParentFont = False
        end
        object frxBusCliendereco: TfrxMemoView
          Left = 102.826840000000000000
          Top = 241.992270000000000000
          Width = 612.283860000000000000
          Height = 18.897640240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[BUS_FD_C_CLI."endereco"]  N'#186' [BUS_FD_C_CLI."numero"],[BUS_FD_C_' +
              'CLI."end_complemento"], [BUS_FD_C_CLI."bairro"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object frxBusClibairro: TfrxMemoView
          Left = 102.826840000000000000
          Top = 260.889924880000000000
          Width = 241.889920000000000000
          Height = 18.897640240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."int_nomecid"]  -  [BUS_FD_C_CLI."int_uf"]')
          ParentFont = False
        end
        object frxBusCliint_nomecid: TfrxMemoView
          Left = 423.359188460000000000
          Top = 260.889920000000000000
          Width = 83.149660000000000000
          Height = 18.897640240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            ' [BUS_FD_C_CLI."cep"]')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 594.504330000000000000
          Top = 53.133890000000000000
          Width = 109.606370000000000000
          Height = 41.574830000000000000
          Center = True
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo30: TfrxMemoView
          Left = 650.181510000000000000
          Top = 178.196970000000000000
          Width = 67.653543310000000000
          Height = 22.677170240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_FD_M_PED."cubagem"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 519.272918460000000000
          Top = 201.976495120000000000
          Width = 89.570001540000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' do pedido:')
          ParentFont = False
        end
        object frxPedid_pedido: TfrxMemoView
          Left = 609.945270000000000000
          Top = 202.207269230000000000
          Width = 62.740157480000000000
          Height = 18.897640240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_pedido"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 423.071120000000000000
          Top = 181.858389760000000000
          Width = 90.708720000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[SituacaoPed]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 367.378170000000000000
          Top = 181.858380000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 423.359188460000000000
          Top = 278.320565650000000000
          Width = 228.122616150000000000
          Height = 18.897640240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_vendedor"] - [FAT_FD_M_PED."int_nomefun"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo5: TfrxMemoView
          Left = 336.023810000000000000
          Top = 278.320560770000000000
          Width = 84.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Representante :')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 5.605636450000000000
          Top = 279.708410960000000000
          Width = 63.510399500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Fixo/Celular')
          ParentFont = False
        end
        object frxBusClitel_fixo: TfrxMemoView
          Left = 102.826840000000000000
          Top = 279.669450000000000000
          Width = 235.385900000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."tel_fixo"]  /  [BUS_FD_C_CLI."tel_movel"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Top = 27.236240000000000000
          Width = 146.319110000000000000
          Height = 22.677167800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'DADOS DA EMPRESA')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 595.913730000000000000
          Top = 98.206370000000000000
          Width = 90.000000000000000000
          Height = 48.195300000000000000
          BarType = bcCodeEAN128
          DataField = 'id_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Bahnschrift SemiBold SemiConden'
          Font.Style = []
        end
        object Memo54: TfrxMemoView
          Left = 324.311878460000000000
          Top = 222.771804880000000000
          Width = 106.708720000000000000
          Height = 18.897640240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=11,FormatMaskTe' +
              'xt('#39'000\.000\.000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)),' +
              'IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=14,FormatMaskTex' +
              't('#39'00\.000\.000\/0000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf"' +
              '>)),trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)))]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo56: TfrxMemoView
          Left = 5.605636450000000000
          Top = 223.330855120000000000
          Width = 48.148047280000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Fantasia')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 102.826840000000000000
          Top = 223.330860000000000000
          Width = 172.510390000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."apelido"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object FAT_FD_M_PEDint_nomeres: TfrxMemoView
          Left = 102.826840000000000000
          Top = 300.260050000000000000
          Width = 199.020523080000000000
          Height = 15.118110240000000000
          DataField = 'int_nomeres'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_nomeres"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 5.605636450000000000
          Top = 299.260050000000000000
          Width = 67.906633610000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Respons'#225'vel')
          ParentFont = False
        end
        object mmDtaEntrega: TfrxMemoView
          Left = 5.605636450000000000
          Top = 181.858389760000000000
          Width = 86.929190000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Prev. de entrega')
          ParentFont = False
        end
        object FAT_FD_M_PEDdta_prev_entrega: TfrxMemoView
          Left = 102.826840000000000000
          Top = 181.858389760000000000
          Width = 98.805779160000000000
          Height = 18.897640240000000000
          DataField = 'dta_prev_entrega'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_prev_entrega"]')
          ParentFont = False
        end
        object mmOrdProd: TfrxMemoView
          Left = 5.605636450000000000
          Top = 316.548921580000000000
          Width = 54.432747900000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Ordem')
          ParentFont = False
        end
        object mmOrdFat: TfrxMemoView
          Left = 261.551330000000000000
          Top = 332.386055000000000000
          Width = 158.740260000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' Ordem Faturamento :')
          ParentFont = False
        end
        object FAT_FD_M_PEDpcp_id_opr: TfrxMemoView
          Left = 102.826840000000000000
          Top = 330.496290000000000000
          Width = 79.370130000000000000
          Height = 18.897640240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_numloteopr"]')
          ParentFont = False
        end
        object FAT_FD_M_PEDid_ors: TfrxMemoView
          Left = 423.359188460000000000
          Top = 332.386055000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataField = 'id_ors'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_ors"]')
          ParentFont = False
        end
        object mmLibPed: TfrxMemoView
          Left = 5.605636450000000000
          Top = 347.860306920000000000
          Width = 57.140774230000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Libera'#231#227'o')
          ParentFont = False
        end
        object FAT_FD_M_PEDint_sitaprov: TfrxMemoView
          Left = 102.826840000000000000
          Top = 361.089493160000000000
          Width = 158.740260000000000000
          Height = 18.897640240000000000
          DataField = 'int_sitaprov'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_sitaprov"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 2.000000000000000000
          Top = 53.472480000000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa..........:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 2.000000000000000000
          Top = 72.370130000000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o.........:')
          ParentFont = False
        end
        object frxCadParemp_endereco: TfrxMemoView
          Left = 88.929190000000000000
          Top = 72.370130000000000000
          Width = 498.897960000000000000
          Height = 18.897637800000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[CAD_FD_C_PAR."emp_endereco"], N'#186' [CAD_FD_C_PAR."emp_numero"], [' +
              'CAD_FD_C_PAR."emp_complemento"]   Bairro: [CAD_FD_C_PAR."emp_bai' +
              'rro"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object frxCadParemp_razao: TfrxMemoView
          Left = 88.929190000000000000
          Top = 53.472480000000000000
          Width = 464.882190000000000000
          Height = 18.897637800000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_razao"]')
          ParentFont = False
        end
        object frxCadParemp_bairro: TfrxMemoView
          Left = 88.929190000000000000
          Top = 90.267780000000000000
          Width = 249.448980000000000000
          Height = 18.897637800000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."int_nomecid"]  -  [CAD_FD_C_PAR."int_uf"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo42: TfrxMemoView
          Left = 2.000000000000000000
          Top = 91.267780000000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Munic'#237'pio.........:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 341.857761900000000000
          Top = 90.267780000000000000
          Width = 83.449598100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP.................:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 429.086890000000000000
          Top = 90.267780000000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cep"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 1.504020000000000000
          Top = 109.165430000000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL .................:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 88.433210000000000000
          Top = 109.165430000000000000
          Width = 219.212740000000000000
          Height = 18.897637800000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_telefone"] / [CAD_FD_C_PAR."emp_fax"]')
          ParentFont = False
        end
        object mmCpfCnpj: TfrxMemoView
          Left = 275.987570000000000000
          Top = 222.771800000000000000
          Width = 47.256710000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'mmCpfCnpjOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CPF :')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 289.551330000000000000
          Top = 361.089493160000000000
          Width = 130.740260000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cond. de pagto :')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 423.359188460000000000
          Top = 361.089493160000000000
          Width = 179.606370000000000000
          Height = 18.897640240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[ft_texto_cond_pgto]')
          ParentFont = False
        end
        object mmCabVlrFrete: TfrxMemoView
          Left = 672.585995320000000000
          Top = 343.188930000000000000
          Width = 29.875907400000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. Frete..........:')
          ParentFont = False
        end
        object FAT_FD_M_PEDvlr_frete: TfrxMemoView
          Left = 659.858690000000000000
          Top = 361.089493160000000000
          Width = 49.133890000000000000
          Height = 18.897640240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_frete"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 5.605636450000000000
          Top = 330.496290000000000000
          Width = 57.064326840000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produ'#231#227'o')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 5.605636450000000000
          Top = 361.089493160000000000
          Width = 53.887560020000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'de Pedido')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 0.833333330000000000
          Top = 51.435683330000000000
          Width = 715.833333330000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object mvCabCom: TfrxMemoView
          Left = 592.000000000000000000
          Top = 300.984230000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CT:')
          ParentFont = False
        end
        object FAT_FD_M_PEDsgq_per_comissao: TfrxMemoView
          Left = 650.000000000000000000
          Top = 300.984230000000000000
          Width = 65.267780000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."sgq_per_comissao"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 524.640940000000000000
          Top = 29.502350000000000000
          Width = 103.682260300000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Data : [ft_data_ped]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 628.699763530000000000
          Top = 29.502350000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[ft_hor_ped]')
          ParentFont = False
        end
        object mmCabVlrIcmsDesn: TfrxMemoView
          Left = 621.921460000000000000
          Top = 343.188930000000000000
          Width = 35.897650000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. Icms Desonerado:')
          ParentFont = False
        end
        object FAT_FD_M_PEDvlr_icm_desn: TfrxMemoView
          Left = 620.535560000000000000
          Top = 361.089493160000000000
          Width = 34.015770000000000000
          Height = 18.897640240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_icm_desn"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 5.220470000000000000
          Top = 131.063080000000000000
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
          Left = 260.567100000000000000
          Top = 131.063073900000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000004400
            0000440802000000B77104E50000000467414D410000B18F0BFC610500000009
            7048597300000EBC00000EBC0195BC724900000F6F4944415478DAEDDB095C14
            F51E00F099D97B97631717509104A1C0B35094C38BA759DAD3B2527B59988A24
            1EA582228AE6F12412CF481133CB5799A61DBEAC3C112151E470014B1F96203C
            50EE7397BD67DECCCEECCCECCE2114BD4FBDCFDB0F9F61989D9DF97D67FEFFFF
            EFFFFFEF00220802FCAFBCC087624C8DEDAD793FB55E2F37D4B6191B3B4DAD7A
            04011118C296D80FBA02C1000883E80F645BDA5700C73FED4B84D8D979BBED23
            B4DD4050A294B9F491B9792B0247F60D0EEBE7D647FAEB315D3FD7D41C3A8D32
            EC4193066A1D4620C0B6A5471E748900DDF2588925888050C048EFA7E60DE93F
            C8BD6718586FAC7EEF78F3B9023C74986170F2A04B80CB033A6DEF8687F61127
            0FBA0C99F4C8738B878BA5C26E614C754D159B33F415F7E9A177C7836DE9A1C7
            56EA809E7ABC072AE76D18ADF2923F0463AA6FFA65658AB9554BC4DA730F1A04
            D2630F472DE2F628DC654B778E73F2386060BDA1624D8ABEB2166189BBB73C9C
            AD822DD09EDD9F256963E9E5CD0153BBF7FDB6AC3CD65861AC56F4CC8347D073
            CF436EA963FD19387BC5132C1843C5BDCA551B10843356D8B68E927AE48189EB
            CDEA718EFB577896EF8922DB370A53B33555ABF91181C1877AF8F7E9550FED5D
            962A87ED3668A4F782CD110E184B4B4B45EC5284192B23EEDFE2B15205AF373D
            6B8E4C75F39052988EF3E71B0E7D40959F3F9567C6D290D1D3FC294CFD8EEDDA
            C222845E1FBAE711A93DDCC387788C1FA108F60501103D145B8702C47F71BDA5
            7DD05E575C5B9573B7B1BCD18A803DF50445F8BC9C1C4E616AD7C61BEF55E1B1
            76C703804265D468EF5993E58F0E007AEFA56FD65566FDA2F9A8C8D065EEBEC7
            2B4015973E99C2FC3B6E9EA54D4BC6CAEF11797AFA6F5E220BF0ED4506FDD5D5
            A8BBBA33A72ABF9ACF43EBC5C954B284A333284CD52BCF39957B2E8F7C48D0C0
            8D4B85EEAEBF93847C5D49CD2E3F5B4EC6CDEFD9F0FD1C0A53FDEA0C663D667A
            A48F050EDABE1E140AC85322664BEB0F251D9A9F8D0DED58568501D80CDB7E10
            6269816113826E470422EC8302212012004221F683AE888400044ABCDC3C4206
            F49F10289489A8235BE1F36BBEAB29AEED8E67FD999768C52C7A3A6BDDA07B00
            48E4BFE7EF523FAA92B4E769AAD38F9B9A3BED1782AFCD7068DFECA3035AFB06
            8954F2A1CB27F84F1F461EDFD4693C31E753A3ADFE9071236C9EA4B32F53989A
            79CF70C5417A3C5E78CE2B7A0E79A686CFBF7F70E414BAB3638780C3635FE7F7
            A07F0E9A1D129230893C4B71C6D5B2E3A5CC72E5D44B483C3B97C2D4CE9FC673
            5DD17041993CE070262411E3E7E8B8565CB52DC3B61B5787ADBB1EA9AF4740CC
            58B14A519BF5AFAAB3B7D170872D9F10F4EA68A27D6BE9FA72D6C7660BC2357A
            C357569F7B85C2DC5F3095EBBAE2634945C4D87EF12BC87A722726DEDCD249DF
            BF9B1EFC68A40772918CFD6AA9C493684E7E7AEFF29D4F8BD0BA34E5F3052E3E
            4A7CE3D9255FD6FF58C7351AC5EF6DFCF9680AF360E153F613B37BD4F36394CF
            4C256E4BEEB59A9D0798B176DF430E96D413073FBEE725B250199B7567A6EDC7
            46C8734347AC88C23716EDC9BDFD6519CFE81A5DAEBA308FC2D4C54C619CD8E1
            4FEFC4F58A51A3F0A3D7657CD07AEE326B99A47B0040A818EAAF18EC2F56BB83
            6291B1A1435FD5D892FF8BA5D3447A5461812119D114A6497B6EDA7E34389700
            AF278FCDC737569EB97D75DB45965103CDB3E2E26B14A63E7632C29258A83FFB
            6D4D953E16841FBD665B9AB6B894AB8E61154C2AF57AF149AF9913444AE77404
            9B2DCD39B7EE1DB8A0AB6EC506149060D4878BDC86F9E0EFDEDE75F1EEB12234
            3E40227CF64A02BEB1A9ECFE85B893ECA320BBE78DAC0514A6E1F5490E49C6B9
            61057D76ED17F5274E599BB21DC370D431F9D020BFE4589107E71C0A9E43AA0F
            5FAA3C9C83A00D994CD27F66A8B4BFAAF1DADD862B1544CD164033AE279298AC
            C527D8A716EC9E6597165298C6C551CE49D3D13320E31F0277A246DE4FDDAE2D
            D2B0D631F7A808DFF885F4ACCAF36ACCBA796BC317686225CE8BF7B8F0D92908
            9A5E9884EFD65C568B631080D3B3247B1185698A9BC8DFB91C9079147221CACC
            83EDEF680B35CC32291F12EC97924897583A74ADB925869A46735B97D84BE51E
            36D875A81FDD73FF64FE9DB46FA9EB08505DC9690549A000C230A5B5D98B8FF3
            CF7E2CCE8EA5302D4BC6C3085FB2F339708CC4D46D4FD516DF70BA87A0441A98
            B943E8A1B49724E4FE875F379CCAB5EA4DB458218FBF8CF45FF5A2D08D9A55B9
            95F45943D62DA667CAD5B5028910C7E4BC7E8C7F3627F6F2EB14A675D9387BA3
            C9EEE99F719CC2A4BDDD555C8CED4CF3F499F382E7DC170988C582A6D4F6FC9B
            ACED350A1E7E70A5D88B601B6A5B0AE6EC85D116CED133E98744A142825DE8D2
            9ADCD8CF98B336F4A1784C4E1C85695B1E494B022C9E7EFB4F9098861D29DAE2
            62873A060A030F6708DCDD881D8E9EAA3FFA0D4FFE711B153C78771C79736E27
            1F6BB8F0A3C33E0038317BB54829C73157161DE59A55C3FB410B72975098F637
            221C939AA30786FAEE4331F658776CEBBA514C1F3C4B8307FB6EDB4CD493D6F6
            3B8B56C3060BBD7D677A0292A3D54F1189AB29ABECD6FA634E1DD3711712246A
            17ACD494D6E4C57CCA334B8826D9D77E584A613ADE0C632469C7A499FE058969
            DCF5F7AEE2222C44FB3ECA19CFA9E7BD8ABFDB9E7DA576CFFBCC7CE5E4718F18
            16941A8B7FC4D4D45130E36DD8B1FD8CFC2E5EDAD71DC75C5BF831D76C01EE99
            77653985E95C3986ADD34179BCDEFD92C434EDDEDA75A308DF8E7BFA44CF574E
            9F4ED4A8CC8F5ACF5C62EDE0D13D129FBE233E49265B8BAB13D763831F5A0CE1
            A756CA06786055A0E4DFF9311FF3CC7EA06FBD9AF70685D1AE0AE5E84411EB9E
            7BBFA661B6E83585E4FEA8471D13E736E52902B3EF60DBC55CAE0E2BE991F90F
            18FA4112596D0A9E7ECBDC69B0DD4062FFB0AFE265BE04A660E111B6D91C4A35
            37EF4D0AA34B08C50683DC1EF5EE5324A679CF661B068B0C9FB3759B39DBE3A5
            B9F8BB2D5F7FD3F8C971CECEBF7D5D396E64C0E645441FC764B93E398936A0C0
            9661FF5C23EDA7C431450B3EE2989D223C7FBBBA928659330680611E4F9FDDDF
            400A02D3B277935E53401BBA418A31633D57AEC1DF35D7D7572E5B891D84D7F3
            4842B47A6A24FE11FDBDBAD279698E1D3C30FCDB75624FEC8CED25D528C636B3
            611BC0B079E65C5B45C32485035698F0D06BAADDE3B1EB34857977A3C17667A8
            A19BD4C5F7E0C7A09098907FB06357677E21F3BA901EA14A35F493146AFF6359
            D599A79DF60FFB7EA348A5C030A5D5C50B0E2308C4E399951F4FC3AC8F44253C
            1ED5CEEF403BA6357DA3A1E4BAD3D4877A79A222621C516C74BAAAD56BCD0D4D
            AC1E502CF17F67B522781059617E5ABC5D577EDFC91C767E8BD04566C354DD88
            394C6C0768636CDAECD90BD7575398AE8D63112BC2E351A6A118A223DC969E6C
            282D709ACA81BC06F44FDB0F0A04F66CD35A9FBE4F57F69353BE12F5F3F67973
            A16278102969CDD5DCDD7298690EBB98229089718C66D121EA386C9E99056B68
            984DE3310387072D18CAEDDF9398F67DC986927CE6D494EBCCB9CA17E752BD48
            04E92ABBD9919BA7BF7317B1C0924183E4238629278D0345D4D743566DD7ED25
            A9C607CDCC7B189E9D068AB04BD3816262DF77B86F0CCFB3856B6998AD13009B
            04C12408D3E3F6CE590AB37F9DB1F43AFD7A136702A03ECB92E4616381EEBDD0
            73DD4DDEDB79A39CB59F1E9EB30B00B199E88EB2AA92D84CE77D1C3DD38B9268
            9894280CC0ED714D3903BA7AE04174A098B26B4EE5073F130089DC5F89759DF2
            D7874AAC5A5D55CA81CE9272D6411E000AC664EF264E5776AF6C7126CC6C4B68
            9E678AD651187DEA24042F60A40727D93D8AE49390D740E2E8E909A65B45CCFE
            1B59DEA4A1E3542F2F107A7973493AF20AEA3F3C69A86BA61DC4215648A118F5
            ED3BC4CE2515379766D2F329D333B5389986497B128D9EC7235B79443090986B
            D47EB8D958788965F285DE660824B291E1F23191D2A0C102A50A2D3088D98CA6
            207454D7F143BEFE6EB5FDAB11F6890779E023430E12C3E6079FE756A69FA6E7
            53A6E7E91B1B68989D53F0D0D93D56583C3B5914F13C7E7463F6E7BA93EF394D
            12303D783EC5A669201120965975064652E6F4783D3FC977D92CFC74E56B3F68
            C9BB4D3D0AC2F0A075668AE62D1A66CFD3803D74568F20789C348628C4484753
            DBC65988D9E278503E0FF7809CCD034041E9898A603F5BCE428AA6AFB3749AEC
            53A17807CFF95093359B288CE1DD697683CD63ABFD0E1E8144BEE92C282186BB
            86D399FA739FF0C4F75B3CAEA347046C5B4EB49C05B7CA130F3A4EBDB3D4B149
            37B6D030FBFE4AAB33EC1E51D46BE2694BEDCD2AACCB8837DD2EEC150FDE61C5
            3D224FCFC0BDEB452AA2B7710BED1CDCA9A1DF739A87AA637F29DA4AC3644CC7
            EB069BC7BE0E0AE5AB4F80AA7EF6C6D5DC7562A7F1EA778815E08EB5071EDBFC
            4E90EF9AC5224F2207B45E2EAAD8F611F31A313D5185DB689883CF32EA8CA3C7
            8A6D877C86C85EDF0F88A8E7BE2C95378DB9A7CCE51A6B5B337168671BAF0714
            A2CD83B08F5A1A18E03621D225F4717AE7A07C79AAA1B689F59E3B792616A450
            18E3A1990E066E8F20608C74FE2EEC0B30E77C8EE0091B80AD88D50258D0A519
            B05A118B05B1623EF42320FA29742914D8560458470E04591391B9B9AD22798F
            BEF2018BDF3E254FF74CB8FE3685317DF61AA26BE72B63748FEF70F1EC8D90FA
            F7FA8256F76379CDEEC34634A5323AEFA4077F9607F708DD5DC3CFD0F28CE974
            02D25881C7DA1D0F00894591734491B341A5572F324C35F71B3E3DD97E554364
            24A744CCF0E0EBF2C00121FF584161CC97D3E07BD7F1E6ABBB1E740580047E21
            90DFE350FF47018902AB4B2076C100E2F905D0F60B4400F279067CDDFE8C0356
            C1ACB0AE0BD6EB8D9555DAA212636D1D5ECD389F3562F3788C1F1E9C4AFB4A03
            FEF9BC39FF10606F8E7BE021EA185988599E3B714ED83CF131DAB7EE78FC1366
            F79D194161107D8BF9AB38C4DE59FE737942BEDA2256BB01F447B42C39A9708D
            86E68189F53FA6871C68850E0EDAB1C45E88ED18A4ED9EF96C126578A887F51E
            FE160F878DDF33E4FD75F2401F670C76730A0EC015393DF330F352773CD480FC
            37793C9E8CF45B4B7D25EA80012C06F3A54D484BD57FC763FF1AFD577AA47EBE
            8FED4D8464120E0C5AD8BA1A2D1737225D6DDC1EFABC87A387EEFC9D3D0237F7
            47DF4D167BF7A1070F321FD2C63C5776F2DE9F5EF6303BDAFC1EC9C04706BEF5
            A6D85BED1439C8FEBF001683457304BE7BD9DE8F46D83D78E8BDE571F867098E
            FD01C82D6A7CBFB86848CAF24F0E20CF3F36A0ED9BB5F498ADBDFE4378E44F3C
            A18EFE9BD47F2057C07C1882A46F416A8AADB51AA4A301D03621BA56760F4F3B
            F16B3CB659525725A4540BD55EB2C74314A1A1420F157FA80FC7FC895EFFC7FC
            515FFF01C3C28DE11BE268FF0000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          Left = 148.401670000000000000
          Top = 131.283543900000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000004600
            0000440802000000B384D4D80000000467414D410000B18F0BFC610500000009
            7048597300000EBC00000EBC0195BC72490000035D4944415478DA63FCFFFF3F
            C3F0028CC478E9EDC79F27AFBF3977F3DDABF73FDE7DFAF9F1EB6FBAB98F9F9B
            55888F5D4C90C3485DC85C5344989F9D522FDD7BF665E1F6BBE76EBDA39B1FF0
            032335A1784F6525291E72BCF4E3D7DFE91B6EED3BFB62A07D8105381B4B6404
            A871B03193E0A597EF7EB42CBCF4E0C5D781763C4EA020C15D9BA0074C904479
            0998618AA69CFDF8E5D7403B9B00E0E761EBCB31C6F415BA97BEFFFC5B36EDEC
            608E1F64008CABEE6C63B41488EEA5FE55D70767FEC10580F9AA204C13A79780
            E55BFEC4D303ED4892C1C47C53E43210C54BF5732F0E9EF29A78002CD91B93F5
            B17809589F26B41D1B68E7910916565B016B64742F6D3BF174FAFA5B03ED3632
            4156A09AA78534BA975A165E3E79EDCD40BB8D4C60A12D521DA78BEEA5BC09A7
            EF3FFF32D06E2313008B07602181EEA598A623F46C8F521700ABDD25B5D6E85E
            F22DDF4F07BB1919194505D879385920DC5FBFFFBDF9F813D89EA4DCE4CD9D8E
            74F512D027D6BAA201B6B28A523C6C2C4C68B2C1D5077FFDF93794BC242DC255
            19AB232FC18D4BC110F312B0BAE8CF3311E265C3A3668879A9265ED75C4B04BF
            9AA1E4256951AE1925E604950D252FF9D9C8A4FAAAA209FEFDF7FFC2ED77AF3F
            FC848BCCD8700B283834BC94E6A7EA6B2D832C02B4AD6AD6F92BF73E50DD2E3A
            79A9344ADB4E5F0C59E4F693CF4593CF50DD22FA79A92149DF585D085904D879
            01766186B09780DD18606766D44BA35EA2A997585998FC6D6491455C4C2580AD
            21649197EF7E1CBEF40A59E4E3975F1B0E3F1EA45EE2E66459D1604BAAAE4B77
            DF57CFBA30ACBCB4FBF4F3496B6E0C2B2F2DDE796FD5BE87C3CA4BDDCBAF1DBA
            F0725879A964EAD99B8F3E0D522F71B03137210D1102819C043737070BB2C8D7
            1F7FEE3CF98C2CD2B5ECEA276A8C79D0A95E6A4935D057114416B9FEE063D9F4
            7354B768D44BA35E1AF5D2A89746BD34EAA5512F8D7A69D44BA35E1AF5D2F0F6
            92958EA8A800CAB2A5B79F7E1E411D21A2A19786E1F4F3305C24300C97720CC3
            0537C3705914C3F05BBCC6302C9718320CBF85A00CE0E5E1A55387D7725D86E1
            B7A81AEEABE605C368E93B040053E08C0DB7F60EBE7CC5C8C8E06444FA060538
            1856DB489001B0163E75FD0DD063C004F9F6D32F7A6633608611E663036DF651
            1332D71281D7A7947A696881512F0D050000851407A6979793F2000000004945
            4E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo60: TfrxMemoView
          Left = 279.244280000000000000
          Top = 131.063080000000000000
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
          Left = 166.078850000000000000
          Top = 131.283550000000000000
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
        object Memo16: TfrxMemoView
          Left = 433.425480000000000000
          Top = 222.992270000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift SemiLight Condensed'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IE :')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 460.102660000000000000
          Top = 222.992270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift SemiLight Condensed'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_ie_rg_cli"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 592.000000000000000000
          Top = 325.039580000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NP:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 650.000000000000000000
          Top = 325.039580000000000000
          Width = 65.267780000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[ft_nro_pedidos]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 309.567100000000000000
          Top = 298.370280120000000000
          Width = 110.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fone representante :')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 423.359188460000000000
          Top = 298.582870000000000000
          Width = 163.870606150000000000
          Height = 18.897640240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[FAT_FD_M_PED."int_telmovel_ven"] / [FAT_FD_M_PED."int_telfixo_v' +
              'en"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo84: TfrxMemoView
          Left = 555.590910000000000000
          Top = 12.559060000000000000
          Width = 158.740260000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vers'#227'o: [ft_versao]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 177.637910000000000000
          Width = 715.833333330000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo64: TfrxMemoView
          Left = 83.913420000000000000
          Top = 182.315090000000000000
          Width = 18.897650000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '...:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 42.338590000000000000
          Top = 203.976504880000000000
          Width = 60.472480000000000000
          Height = 18.897640240000000000
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
        object Memo66: TfrxMemoView
          Left = 49.897650000000000000
          Top = 223.330860000000000000
          Width = 52.913420000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '...............:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 49.897650000000000000
          Top = 241.992274880000000000
          Width = 52.913420000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '.............:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 49.897650000000000000
          Top = 260.889924880000000000
          Width = 52.913420000000000000
          Height = 18.897640240000000000
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
        object Memo69: TfrxMemoView
          Left = 68.795300000000000000
          Top = 277.818650840000000000
          Width = 34.015770000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '.........:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 68.795300000000000000
          Top = 299.260050000000000000
          Width = 34.015770000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '........:')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 57.456710000000000000
          Top = 332.496290000000000000
          Width = 45.354360000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '.............:')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 57.456710000000000000
          Top = 361.089493160000000000
          Width = 45.354360000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '.............:')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 2.307050000000000000
          Top = 381.732530000000000000
          Width = 100.504020000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nome respons'#225'vel :')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 308.448980000000000000
          Top = 381.732530000000000000
          Width = 111.842610000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF respons'#225'vel :')
          ParentFont = False
        end
        object BUS_FD_C_CLInome_proprietario: TfrxMemoView
          Left = 102.826840000000000000
          Top = 381.732530000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'nome_proprietario'
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."nome_proprietario"]')
          ParentFont = False
        end
        object BUS_FD_C_CLIdoc_cnpj_cpf_proprietario: TfrxMemoView
          Left = 423.359188460000000000
          Top = 381.732530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'doc_cnpj_cpf_proprietario'
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."doc_cnpj_cpf_proprietario"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 1058.268400000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 283.464750000000000000
          Top = 20.456710000000100000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 585.827150000000000000
          Top = 20.456710000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] / [Time]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 517.795610000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ft_impresso_por]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 487.559370000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
        RowCount = 0
        Stretched = True
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677167800000000000
        ParentFont = False
        Top = 555.590910000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
        RowCount = 0
        Stretched = True
        object frxPedIteid_item: TfrxMemoView
          Left = 0.220470000000000000
          Top = 1.000006100000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          DataField = 'id_item'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."id_item"]')
          ParentFont = False
        end
        object mmIte: TfrxMemoView
          Left = 39.472480000000000000
          Top = 1.000006100000000000
          Width = 241.889920000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[ft_desc_item]')
          ParentFont = False
        end
        object mmUnd: TfrxMemoView
          Left = 282.771800000000000000
          Top = 1.000006100000000000
          Width = 26.456710000000000000
          Height = 18.897637800000000000
          DataField = 'int_id_und_venda'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_id_und_venda"]')
          ParentFont = False
        end
        object mmCor: TfrxMemoView
          Left = 310.567100000000000000
          Top = 1.000006100000000000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'int_nomecor'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomecor"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 376.055350000000000000
          Top = 1.000006100000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          DataField = 'qtde'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."qtde"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 424.748300000000000000
          Top = 1.000006100000000000
          Width = 52.913420000000000000
          Height = 18.897637800000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_unitario"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 483.441250000000000000
          Top = 1.000006100000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."per_desconto"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 523.575140000000000000
          Top = 1.000006100000000000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<FAT_FD_M_PED_ITE."vlr_desconto">/<FAT_FD_M_PED_ITE."qtde">]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Top = 0.110241100000053000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo14: TfrxMemoView
          Left = 647.299630000000000000
          Top = 1.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_liquido"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 593.606680000000000000
          Top = 1.000000000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<FAT_FD_M_PED_ITE."vlr_liquido">/<FAT_FD_M_PED_ITE."qtde">]')
          ParentFont = False
        end
      end
      object fstCabItem1: TfrxHeader
        FillType = ftBrush
        Height = 20.409448820000000000
        Top = 514.016080000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'fstCabItem1OnBeforePrint'
        object Shape14: TfrxShapeView
          Top = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Fill.BackColor = clWhite
        end
        object Memo13: TfrxMemoView
          Left = 0.220470000000000000
          Top = 0.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object mmlblIte: TfrxMemoView
          Left = 39.472480000000000000
          Top = 0.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object mmlblUnd: TfrxMemoView
          Left = 282.771800000000000000
          Top = 0.779530000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object mmlblCor: TfrxMemoView
          Left = 310.567100000000000000
          Top = 0.779530000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 379.834880000000000000
          Top = 0.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
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
        object Memo18: TfrxMemoView
          Left = 417.189240000000000000
          Top = 0.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. unit'#225'rio')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 479.661720000000000000
          Top = 0.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '% Desc')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 523.575140000000000000
          Top = 0.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
        object Memo22: TfrxMemoView
          Left = 651.079160000000000000
          Top = 0.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 589.827150000000000000
          Top = 0.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
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
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 710.551640000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        Stretched = True
        object Memo39: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897637800000000000
          Fill.BackColor = clWhite
        end
        object Memo4: TfrxMemoView
          Left = 1.000000000000000000
          Width = 128.504020000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 185.756030000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 275.244280000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 364.393940000000000000
          Width = 120.944960000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 545.811380000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 635.299630000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object mmFpg1: TfrxMemoView
          Left = 3.118120000000000000
          Top = 21.236240000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object mmVenctoFpg1: TfrxMemoView
          Left = 185.756030000000000000
          Top = 21.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object mmValorFpg1: TfrxMemoView
          Left = 275.905690000000000000
          Top = 21.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object mmFpg2: TfrxMemoView
          Left = 366.614410000000000000
          Top = 21.236240000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object mmVenctoFpg2: TfrxMemoView
          Left = 547.693260000000000000
          Top = 21.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object mmValorFpg2: TfrxMemoView
          Left = 638.401980000000000000
          Top = 21.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 87.503902640000000000
        Top = 600.945270000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        Stretched = True
        object Shape4: TfrxShapeView
          Left = 0.666666670000000000
          Top = 0.559060000000000000
          Width = 716.976377950000000000
          Height = 77.480314960000000000
        end
        object Memo23: TfrxMemoView
          Left = 643.914082060000000000
          Top = 39.236244880000000000
          Width = 70.417087940000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_liquido"]'
            ''
            ''
            '')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 501.091836670000000000
          Top = 39.506183330000000000
          Width = 139.837353330000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total l'#237'quido....:')
          ParentFont = False
        end
        object mmDescEsp: TfrxMemoView
          Left = 454.553685980000000000
          Top = 22.119046670000000000
          Width = 186.375504020000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desc. especial de [FAT_FD_M_PED."per_desc_especial" #n%2,2f] % :')
          ParentFont = False
        end
        object mmTotDescEsp: TfrxMemoView
          Left = 643.923519730000000000
          Top = 22.119046670000000000
          Width = 70.407650270000000000
          Height = 18.897637800000000000
          OnAfterData = 'mmTotDescEspOnAfterData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_desc_especial"]')
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = ','
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo78: TfrxMemoView
          Left = 648.058326640000000000
          Top = 2.300439310000000000
          Width = 66.272843360000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_liquido">,DetailData1)')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Top = 67.692950000000000000
          Width = 718.110700000000000000
          Height = 18.897637800000000000
          Fill.BackColor = clWhite
        end
        object Memo79: TfrxMemoView
          Left = 345.819110000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."qtde">,DetailData1)]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 805.039890000000000000
        Width = 718.110700000000000000
        Child = FAT_FR_M_PED_SGQ2.Child1
        Stretched = True
        object Shape5: TfrxShapeView
          Width = 718.110700000000000000
          Height = 90.708720000000000000
        end
        object frxPedpcp_obs: TfrxMemoView
          Left = 76.811070000000000000
          Top = 23.456710000000000000
          Width = 634.961040000000000000
          Height = 30.236220470000000000
          DataField = 'obs'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."obs"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 15.118120000000000000
          Top = 23.677180000000000000
          Width = 60.472480000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Do Pedido :')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 76.811070000000000000
          Top = 57.133890000000000000
          Width = 634.961040000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."pcp_obs"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Top = 57.354360000000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Da Produ'#231#227'o :')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Top = 21.897650000000000000
          Width = 715.833333330000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object mmBonifAssistenciaReforma: TfrxMemoView
          Left = 151.181200000000000000
          Top = 37.795300000000000000
          Width = 495.118430000000000000
          Height = 34.015770000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'BONIFICA'#199#195'O / ASSIST'#202'NCIA / REFORMA')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 1.000000000000000000
          Width = 139.842610000000000000
          Height = 22.677167800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 74.370130000000000000
        Top = 922.205320000000000000
        Width = 718.110700000000000000
        object Shape6: TfrxShapeView
          Left = 400.023810000000000000
          Top = 2.559060000000000000
          Width = 317.480520000000000000
          Height = 68.031540000000000000
          Frame.Style = fsDashDot
        end
        object Memo53: TfrxMemoView
          Left = 5.779530000000000000
          Top = 38.000000000000000000
          Width = 260.787570000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '_____________________________________'
            '                        Ass. cliente')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 407.291590000000000000
          Top = 6.338590000000000000
          Width = 306.141930000000000000
          Height = 60.472480000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'S'#211' ACEITAMOS RECLAMA'#199#213'ES DE'
            'FALTAS E AVARIAS NO ATO DA ENTREGA '
            'COMUNICANDO DIRETAMENTE '#192' F'#193'BRICA')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 778.583180000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
        RowCount = 0
        Stretched = True
      end
    end
  end
  object BUS_FD_C_CLI: TfrxDBDataset [16]
    UserName = 'BUS_FD_C_CLI'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nome=nome'
      'id_cliente=id_cliente'
      'pessoa=pessoa'
      'endereco=endereco'
      'end_complemento=end_complemento'
      'cep=cep'
      'numero=numero'
      'tel_fixo=tel_fixo'
      'tel_movel=tel_movel'
      'fax=fax'
      'doc_cnpj_cpf=doc_cnpj_cpf'
      'doc_ie_identidade=doc_ie_identidade'
      'doc_ip=doc_ip'
      'doc_im=doc_im'
      'bairro=bairro'
      'id_cidade=id_cidade'
      'ativo=ativo'
      'email=email'
      'lim_valor=lim_valor'
      'lim_saldo=lim_saldo'
      'lim_validade=lim_validade'
      'sexo=sexo'
      'situacao=situacao'
      'dta_nascimento=dta_nascimento'
      'dta_cadastro=dta_cadastro'
      'tipo_cliente=tipo_cliente'
      'cob_endereco=cob_endereco'
      'cob_bairro=cob_bairro'
      'cob_cidade=cob_cidade'
      'cob_estado=cob_estado'
      'cob_cep=cob_cep'
      'dta_ult_compra=dta_ult_compra'
      'dta_pri_compra=dta_pri_compra'
      'filiacao=filiacao'
      'cod_sufrana=cod_sufrana'
      'cod_pais=cod_pais'
      'id_perfil_cli=id_perfil_cli'
      'id_rota=id_rota'
      'int_uf=int_uf'
      'int_nomecid=int_nomecid'
      'doc_rg_orgao=doc_rg_orgao'
      'apelido=apelido'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'CAD_SQ_C_CLI_BCO=CAD_SQ_C_CLI_BCO'
      'CAD_SQ_C_CLI_REC=CAD_SQ_C_CLI_REC'
      'CAD_SQ_C_CLI_INF=CAD_SQ_C_CLI_INF'
      'CAD_SQ_C_CLI_CTO=CAD_SQ_C_CLI_CTO'
      'int_situacao=int_situacao'
      'int_sexo=int_sexo'
      'id_regiao=id_regiao'
      'int_nomereg=int_nomereg'
      'contribuinte=contribuinte'
      'id_vendedor=id_vendedor'
      'int_reg_desc_perc=int_reg_desc_perc'
      'dias_prazo_financeiro=dias_prazo_financeiro'
      'profissao=profissao'
      'renda=renda'
      'int_nomepai=int_nomepai'
      'id_responsavel=id_responsavel'
      'int_nomeresp=int_nomeresp'
      'int_pessoa=int_pessoa'
      'int_nomepec=int_nomepec'
      'id_controle_fpg_hrq=id_controle_fpg_hrq'
      'permitir_alterar_dias_tit_ped=permitir_alterar_dias_tit_ped'
      'int_selecao=int_selecao'
      'gps_latitude=gps_latitude'
      'gps_longitude=gps_longitude'
      'substituto_tributario=substituto_tributario'
      'CAD_SQ_C_CLI_CRD=CAD_SQ_C_CLI_CRD'
      'aval_nro=aval_nro'
      'aval_bairro=aval_bairro'
      'aval_id_cidade=aval_id_cidade'
      'aval_cep=aval_cep'
      'aval_fone=aval_fone'
      'aval_email=aval_email'
      'int_aval_uf=int_aval_uf'
      'int_aval_nomecid=int_aval_nomecid'
      'aval_doc_cnpj_cpf=aval_doc_cnpj_cpf'
      'aval_nome=aval_nome'
      'aval_logradouro=aval_logradouro'
      'int_unif_desc_reg=int_unif_desc_reg'
      'nome_proprietario=nome_proprietario'
      'doc_cnpj_cpf_proprietario=doc_cnpj_cpf_proprietario')
    DataSet = dmGeral.BUS_CD_C_CLI
    BCDToCurrency = False
    Left = 206
    Top = 416
  end
  object CAD_FD_C_PAR: TfrxDBDataset [17]
    UserName = 'CAD_FD_C_PAR'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'emp_cnpj=emp_cnpj'
      'id_ramo=id_ramo'
      'emp_razao=emp_razao'
      'emp_endereco=emp_endereco'
      'emp_numero=emp_numero'
      'emp_complemento=emp_complemento'
      'emp_bairro=emp_bairro'
      'id_cidade=id_cidade'
      'emp_cep=emp_cep'
      'emp_telefone=emp_telefone'
      'emp_fax=emp_fax'
      'emp_email=emp_email'
      'emp_site=emp_site'
      'emp_fantasia=emp_fantasia'
      'emp_im=emp_im'
      'emp_ie=emp_ie'
      'emp_suframa=emp_suframa'
      'emp_numero_junta=emp_numero_junta'
      'res_nome=res_nome'
      'res_qualificacao=res_qualificacao'
      'res_cpf=res_cpf'
      'res_cep=res_cep'
      'res_endereco=res_endereco'
      'res_numero=res_numero'
      'res_complemento=res_complemento'
      'res_cidade=res_cidade'
      'res_id_cidade=res_id_cidade'
      'res_bairro=res_bairro'
      'res_cp=res_cp'
      'res_telefone=res_telefone'
      'res_fax=res_fax'
      'res_email=res_email'
      'cnt_nome=cnt_nome'
      'cnt_cpf=cnt_cpf'
      'cnt_crc=cnt_crc'
      'cnt_cnpj=cnt_cnpj'
      'cnt_cep=cnt_cep'
      'cnt_endereco=cnt_endereco'
      'cnt_numero=cnt_numero'
      'cnt_complemento=cnt_complemento'
      'cnt_bairro=cnt_bairro'
      'cnt_telefone=cnt_telefone'
      'cnt_fax=cnt_fax'
      'cnt_email=cnt_email'
      'cnt_id_cidade=cnt_id_cidade'
      'cnt_qualificacao=cnt_qualificacao'
      'cnt_cp=cnt_cp'
      'int_uf=int_uf'
      'int_reg_tributario=int_reg_tributario'
      'CAD_SQ_C_PAR_SER=CAD_SQ_C_PAR_SER'
      'CAD_SQ_C_PAR_MOD=CAD_SQ_C_PAR_MOD'
      'CAD_SQ_C_PAR_CTR=CAD_SQ_C_PAR_CTR'
      'int_nomecid=int_nomecid'
      'CAD_SQ_C_PAR_NFE=CAD_SQ_C_PAR_NFE'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'int_id_cnae=int_id_cnae'
      'CAD_SQ_C_PAR_CPG=CAD_SQ_C_PAR_CPG'
      'CAD_SQ_C_PAR_BXP=CAD_SQ_C_PAR_BXP'
      'CAD_SQ_C_PAR_RST=CAD_SQ_C_PAR_RST'
      'CAD_SQ_C_PAR_BXR=CAD_SQ_C_PAR_BXR'
      'banco=banco'
      'agencia=agencia'
      'conta_corrente=conta_corrente'
      'agencia_dig=agencia_dig'
      'conta_corrente_dig=conta_corrente_dig')
    DataSet = dmGeral.CAD_CD_C_PAR
    BCDToCurrency = False
    Left = 206
    Top = 368
  end
  object frxPDFExport: TfrxPDFExport [18]
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
    Left = 207
    Top = 320
  end
  inherited dso: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_PED
    Left = 23
    Top = 199
  end
  inherited imgBotoesAtivo: TImageList
    Left = 1291
    Bitmap = {
      494C010108004001F00618001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 1307
    Bitmap = {
      494C010108009401440718001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 1379
    Bitmap = {
      494C01011200900140070E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 1291
    Bitmap = {
      494C010108003801E80618001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 1379
    Bitmap = {
      494C01010600880138070E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 1291
    Bitmap = {
      494C010108004801F80618001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 1379
    Bitmap = {
      494C01010600980148070E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
  inherited BUS_CD_C_AUS_PAD: TClientDataSet
    Left = 1060
    Top = 188
  end
  inherited BUS_CD_C_AUS_PRG_PAD: TClientDataSet
    Left = 1056
    Top = 264
  end
  inherited imgBotoesAtivoLa: TImageList
    Left = 1075
    Top = 235
    Bitmap = {
      494C01010800DC00F40318001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 1075
    Top = 419
    Bitmap = {
      494C0101060000012C040E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
  object pmVisualisarRestricoes: TPopupMenu
    Left = 1094
    Top = 350
    object btnVisualizarRest: TMenuItem
      Caption = 'Visualizar Restri'#231#245'es/Cancelamento'
      OnClick = btnVisualizarRestClick
    end
    object mpAlterarComRepr: TMenuItem
      Caption = 'Alterar a comiss'#227'o do representante'
      Visible = False
      OnClick = mpAlterarComReprClick
    end
    object Visualizarinformaesdaimpresso1: TMenuItem
      Caption = 'Visualizar informa'#231#245'es da impress'#227'o'
      OnClick = Visualizarinformaesdaimpresso1Click
    end
  end
  object FAT_FR_M_PED_REV: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41800.997059467600000000
    ReportOptions.LastChange = 41801.026114062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      'cont: integer;'
      'nomeite_width:Currency=5.5; //em cm                      '
      'conversaoCmParaPixel:Currency=37.7953;    '
      '  '
      'procedure fstCabItem1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<ativado_cor> = false) then'
      '  begin'
      
        '    mmlblCor.Visible := false;                                  ' +
        '                                   '
      '    mmlblUnd.Left := mmlblCor.Left;            '
      '  end;            '
      'end;'
      ''
      
        'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);      ' +
        '                            '
      'begin'
      '  if (<ativado_cor> = false) then'
      '   begin'
      
        '    mmCor.Visible := false;                                     ' +
        '                                '
      '    mmUnd.Left := mmCor.Left;                 '
      
        '    mmIte.Width := nomeite_width*conversaoCmParaPixel + mmUnd.Wi' +
        'dth;                       '
      '   end;'
      '  cont := cont + 1;'
      '  memo8.Text := '#39'Total de Itens : '#39' + IntToStr(cont);           '
      'end;'
      '  '
      'procedure mmCpfCnpjOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  mmCpfCnpj.Text := '#39'CPF:'#39';'
      '  if (<FAT_FD_M_PED."int_pessoacli"> = 1) then'
      '    begin'
      '      mmCpfCnpj.Text := '#39'CNPJ:'#39';  '
      '    end;              '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 110
    Top = 184
    Datasets = <
      item
        DataSet = BUS_FD_C_CLI
        DataSetName = 'BUS_FD_C_CLI'
      end
      item
        DataSet = CAD_FD_C_PAR
        DataSetName = 'CAD_FD_C_PAR'
      end
      item
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
      end
      item
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
      end
      item
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
      end
      item
        DataSet = FAT_FD_M_PED_TIT_SER
        DataSetName = 'FAT_FD_M_PED_TIT_SER'
      end>
    Variables = <
      item
        Name = ' Externas'
        Value = Null
      end
      item
        Name = 'SituacaoPed'
        Value = Null
      end
      item
        Name = 'ativado_cor'
        Value = Null
      end
      item
        Name = 'ativado_sgq'
        Value = Null
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
      ColumnWidth = 95.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 220.315090000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Shape1: TfrxShapeView
          Top = 25.377860000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object Shape2: TfrxShapeView
          Left = -1.000000000000000000
          Top = 111.960730000000000000
          Width = 718.110700000000000000
          Height = 102.047310000000000000
        end
        object Memo28: TfrxMemoView
          Left = 275.905690000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO DE VENDA')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 11.559060000000000000
          Top = 132.976500000000000000
          Width = 71.811070000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente :')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 11.559060000000000000
          Top = 162.551330000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 582.606680000000000000
          Top = 162.551330000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object frxBusClinome: TfrxMemoView
          Left = 87.149660000000000000
          Top = 132.976500000000000000
          Width = 201.859664620000000000
          Height = 15.118110236220500000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."id_cliente"] - [BUS_FD_C_CLI."nome"]')
          ParentFont = False
        end
        object frxBusCliendereco: TfrxMemoView
          Left = 87.149660000000000000
          Top = 162.551330000000000000
          Width = 457.323130000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[Trim(<BUS_FD_C_CLI."endereco">)]  N'#186' [Trim(<BUS_FD_C_CLI."numer' +
              'o">)], [Trim(<BUS_FD_C_CLI."bairro">)], [Trim(<BUS_FD_C_CLI."int' +
              '_nomecid">)]  -  [Trim(<BUS_FD_C_CLI."int_uf">)]')
          ParentFont = False
        end
        object frxBusCliint_nomecid: TfrxMemoView
          Left = 620.181510000000000000
          Top = 162.551330000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            ' [BUS_FD_C_CLI."cep"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 7.559060000000000000
          Top = 35.133890000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 7.559060000000000000
          Top = 66.708720000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object frxCadParemp_endereco: TfrxMemoView
          Left = 83.149660000000000000
          Top = 66.708720000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[CAD_FD_C_PAR."emp_endereco"] N'#186' [CAD_FD_C_PAR."emp_numero"], [C' +
              'AD_FD_C_PAR."emp_bairro"], [CAD_FD_C_PAR."int_nomecid"]-[CAD_FD_' +
              'C_PAR."int_uf"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object frxCadParemp_razao: TfrxMemoView
          Left = 83.149660000000000000
          Top = 35.133890000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          DataField = 'emp_fantasia'
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_fantasia"]')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 585.827150000000000000
          Top = 31.133890000000000000
          Width = 128.504020000000000000
          Height = 56.692950000000000000
          Center = True
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object frxPeddta_pedido: TfrxMemoView
          Left = 87.315090000000000000
          Top = 119.417444880000000000
          Width = 71.811035830000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_pedido"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 40.960730000000000000
          Top = 119.417444880000000000
          Width = 41.574830000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 393.732530000000000000
          Top = 119.417444880000000000
          Width = 94.488250000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[SituacaoPed]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 345.819110000000000000
          Top = 119.417444880000000000
          Width = 45.354360000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 323.141930000000000000
          Top = 176.202440770000000000
          Width = 68.031540000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendedor :')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 45.354360000000000000
          Top = 80.504020000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 83.149660000000000000
          Top = 80.504020000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cep"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 170.078850000000000000
          Top = 80.504020000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 204.094620000000000000
          Top = 80.504020000000000000
          Width = 219.212740000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_telefone"] / [CAD_FD_C_PAR."emp_fax"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 52.354360000000000000
          Top = 176.202440770000000000
          Width = 30.236240000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object frxBusClitel_fixo: TfrxMemoView
          Left = 87.370130000000000000
          Top = 176.202440770000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."tel_fixo"]  /  [BUS_FD_C_CLI."tel_movel"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 478.071120000000000000
          Top = 30.354360000000000000
          Width = 101.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCodeCodabar
          DataField = 'id_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo56: TfrxMemoView
          Left = 11.559060000000000000
          Top = 147.889915120000000000
          Width = 71.811070000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fantasia :')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 87.149660000000000000
          Top = 147.889920000000000000
          Width = 347.716760000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."apelido"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Left = 209.992270000000000000
          Top = 119.417444880000000000
          Width = 37.795300000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hor'#225'rio:')
          ParentFont = False
        end
        object FAT_FD_M_PEDhor_pedido: TfrxMemoView
          Left = 250.228510000000000000
          Top = 119.417444880000000000
          Width = 37.795275590000000000
          Height = 15.118110236220500000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."hor_pedido"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 527.052448460000000000
          Top = 115.637905120000000000
          Width = 89.570001540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' do pedido :')
          ParentFont = False
        end
        object frxPedid_pedido: TfrxMemoView
          Left = 620.181510000000000000
          Top = 115.637914880000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataField = 'id_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_pedido"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 620.181510000000000000
          Top = 131.976500000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=11,FormatMaskTe' +
              'xt('#39'000\.000\.000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)),' +
              'IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=14,FormatMaskTex' +
              't('#39'00\.000\.000\/0000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf"' +
              '>)),trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)))]')
          ParentFont = False
        end
        object mmCpfCnpj: TfrxMemoView
          Left = 586.386210000000000000
          Top = 131.976500000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'mmCpfCnpjOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF :')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 354.382998460000000000
          Top = 132.976500000000000000
          Width = 36.892821540000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/IE :')
          ParentFont = False
        end
        object FAT_FD_M_PEDint_ie_rg_cli: TfrxMemoView
          Left = 393.911803080000000000
          Top = 132.976500000000000000
          Width = 87.668165380000000000
          Height = 15.118110240000000000
          DataField = 'int_ie_rg_cli'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_ie_rg_cli"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 393.850650000000000000
          Top = 176.202440770000000000
          Width = 148.752486150000000000
          Height = 15.118110236220500000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_vendedor"] - [FAT_FD_M_PED."int_nomefun"]')
          ParentFont = False
        end
        object mmCabVlrFrete: TfrxMemoView
          Left = 560.149970000000000000
          Top = 177.858380000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Frete :')
          ParentFont = False
        end
        object FAT_FD_M_PEDvlr_frete: TfrxMemoView
          Left = 619.842920000000000000
          Top = 177.858380000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_frete"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 50.913420000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 83.149660000000000000
          Top = 50.913420000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cnpj"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 196.535560000000000000
          Top = 50.913420000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'I.E. :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 234.330860000000000000
          Top = 50.913420000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_ie"]')
          ParentFont = False
        end
        object mmCabVlrIcmsDesn: TfrxMemoView
          Left = 507.000000000000000000
          Top = 196.102350000000000000
          Width = 111.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. Icms Desonerado:')
          ParentFont = False
        end
        object FAT_FD_M_PEDvlr_icm_desn: TfrxMemoView
          Left = 620.000000000000000000
          Top = 196.102350000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_icm_desn"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 748.346940000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 283.464750000000000000
          Top = 7.559060000000050000
          Width = 151.181200000000000000
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
          Left = 616.063390000000000000
          Top = 7.559060000000050000
          Width = 94.488250000000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
        RowCount = 0
        Stretched = True
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118115120000000000
        ParentFont = False
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
        RowCount = 0
        Stretched = True
        object frxPedIteid_item: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'id_item'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."id_item"]')
          ParentFont = False
        end
        object mmIte: TfrxMemoView
          Left = 63.811070000000000000
          Width = 207.874150000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataField = 'int_nomeite'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomeite"]')
          ParentFont = False
        end
        object mmCor: TfrxMemoView
          Left = 300.685220000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomecor'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomecor"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 344.157700000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataField = 'qtde'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."qtde"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 396.071120000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_unitario"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 464.102660000000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_bruto"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 534.913730000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."per_desconto"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 580.827150000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_desconto"]')
          ParentFont = False
        end
        object frxPedItevlr_liquido: TfrxMemoView
          Left = 645.079160000000000000
          Top = 0.000004880000000013
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_liquido"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object mmUnd: TfrxMemoView
          Left = 274.905690000000000000
          Width = 22.677180000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Trim(<FAT_FD_M_PED_ITE."int_id_und_venda">)]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 498.897960000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
        RowCount = 0
        object Line2: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line1: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object frxPedTitid_titulo: TfrxMemoView
          Left = 191.417440000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataField = 'dta_vencimento'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."dta_vencimento"]')
          ParentFont = False
        end
        object frxPedTitint_nomefpg: TfrxMemoView
          Left = 7.559060000000000000
          Width = 177.637910000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomefpg'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."int_nomefpg"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 279.685220000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."vlr_titulo"]')
          ParentFont = False
        end
      end
      object fstCabItem1: TfrxHeader
        FillType = ftBrush
        Height = 20.409448820000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'fstCabItem1OnBeforePrint'
        object Shape14: TfrxShapeView
          Top = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 14342874
        end
        object Memo13: TfrxMemoView
          Left = 5.000000000000000000
          Top = 2.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object mmlblIte: TfrxMemoView
          Left = 65.031540000000000000
          Top = 2.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object mmlblUnd: TfrxMemoView
          Left = 274.889920000000000000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object mmlblCor: TfrxMemoView
          Left = 300.850393700787400000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 360.496290000000000000
          Top = 2.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 397.291590000000000000
          Top = 2.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. unit'#225'rio')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 465.323130000000000000
          Top = 2.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. bruto')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 536.134200000000000000
          Top = 2.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '% Desc')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 582.047620000000000000
          Top = 2.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. desc')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 646.299630000000000000
          Top = 2.779530000000020000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. l'#237'quido')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897637800000000000
          Fill.BackColor = 14342874
        end
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 2.000000000000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 192.756030000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 279.685220000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 19.456710000000000000
        Top = 415.748300000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Top = 0.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo12: TfrxMemoView
          Left = 536.693260000000000000
          Top = 2.559064880000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_desconto">,DetailData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 646.299630000000000000
          Top = 2.559064880000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_liquido">,DetailData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 401.630180000000000000
          Top = 2.779530000000000000
          Width = 132.283550000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_bruto">,DetailData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 321.260050000000000000
          Top = 2.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 2.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 151.181200000000000000
        Top = 536.693260000000000000
        Width = 718.110700000000000000
        object Shape5: TfrxShapeView
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object frxPedpcp_obs: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.456710000000000000
          Width = 702.992580000000000000
          Height = 49.133890000000000000
          DataField = 'obs'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."obs"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 1.000000000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 14342874
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 236.330860000000000000
          Top = 113.826840000000000000
          Width = 275.905690000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Memo.UTF8W = (
            '_____________________________________'
            '                        Ass. cliente')
        end
      end
    end
  end
  object rdPedCompleto: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'POINT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0615/01649'
    RegistroUsuario.AutorizacaoKey = '5E33-1QQQ-385V-ASCD-RRJM'
    About = 'RDprint 5.0 - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 208
    Top = 199
  end
  object FAT_FR_M_PED_ROM: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41800.997059467600000000
    ReportOptions.LastChange = 41801.026114062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      'cont: integer;'
      '  '
      'procedure fstCabItem1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<ativado_cor> = false) then'
      '  begin'
      
        '    mmlblCor.Visible := false;                                  ' +
        '                                   '
      '    mmlblUnd.Left := mmlblCor.Left;            '
      '  end;            '
      'end;'
      ''
      
        'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);      ' +
        '                            '
      'begin'
      '  if (<ativado_cor> = false) then'
      '   begin'
      
        '    mmCor.Visible := false;                                     ' +
        '                                '
      '    mmUnd.Left := mmCor.Left;                 '
      
        '    mmIte.Width := mmIte.Width + mmUnd.Width;                   ' +
        '    '
      '   end;'
      '  cont := cont + 1;'
      '  memo8.Text := '#39'Total de Itens : '#39' + IntToStr(cont);           '
      'end;'
      '  '
      'procedure mmCpfCnpjOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  mmCpfCnpj.Text := '#39'CPF:'#39';'
      '  if (<FAT_FD_M_PED."int_pessoacli"> = 1) then'
      '    begin'
      '      mmCpfCnpj.Text := '#39'CNPJ:'#39';  '
      '    end;              '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 238
    Top = 248
    Datasets = <
      item
        DataSet = BUS_FD_C_CLI
        DataSetName = 'BUS_FD_C_CLI'
      end
      item
        DataSet = BUS_FD_C_MTA
        DataSetName = 'BUS_FD_C_MTA'
      end
      item
        DataSet = CAD_FD_C_PAR
        DataSetName = 'CAD_FD_C_PAR'
      end
      item
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
      end
      item
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
      end
      item
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
      end>
    Variables = <
      item
        Name = ' Externas'
        Value = Null
      end
      item
        Name = 'SituacaoPed'
        Value = Null
      end
      item
        Name = 'ativado_cor'
        Value = Null
      end
      item
        Name = 'ativado_sgq'
        Value = Null
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
      ColumnWidth = 95.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 332.598640000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Shape1: TfrxShapeView
          Top = 26.377860000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object Shape2: TfrxShapeView
          Top = 107.740260000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PEDIDO DE VENDA')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 7.559060000000000000
          Top = 35.133890000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 7.559060000000000000
          Top = 66.708720000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object frxCadParemp_endereco: TfrxMemoView
          Left = 83.149660000000000000
          Top = 66.708720000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[CAD_FD_C_PAR."emp_endereco"] N'#186' [CAD_FD_C_PAR."emp_numero"], [C' +
              'AD_FD_C_PAR."emp_bairro"], [CAD_FD_C_PAR."int_nomecid"]-[CAD_FD_' +
              'C_PAR."int_uf"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object frxCadParemp_razao: TfrxMemoView
          Left = 83.149660000000000000
          Top = 35.133890000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          DataField = 'emp_fantasia'
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_fantasia"]')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 585.827150000000000000
          Top = 31.133890000000000000
          Width = 128.504020000000000000
          Height = 56.692950000000000000
          Center = True
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object frxPeddta_pedido: TfrxMemoView
          Left = 87.315090000000000000
          Top = 111.196974880000000000
          Width = 71.811035830000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_pedido"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 40.960730000000000000
          Top = 111.196974880000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 393.732530000000000000
          Top = 111.196974880000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[SituacaoPed]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 345.819110000000000000
          Top = 111.196974880000000000
          Width = 45.354360000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o :')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 45.354360000000000000
          Top = 80.504020000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 83.149660000000000000
          Top = 80.504020000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cep"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 170.078850000000000000
          Top = 80.504020000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 204.094620000000000000
          Top = 80.504020000000000000
          Width = 219.212740000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_telefone"] / [CAD_FD_C_PAR."emp_fax"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 209.992270000000000000
          Top = 111.196974880000000000
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hor'#225'rio:')
          ParentFont = False
        end
        object FAT_FD_M_PEDhor_pedido: TfrxMemoView
          Left = 250.228510000000000000
          Top = 111.196974880000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."hor_pedido"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 527.052448460000000000
          Top = 111.417435120000000000
          Width = 89.570001540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' do pedido :')
          ParentFont = False
        end
        object frxPedid_pedido: TfrxMemoView
          Left = 620.181510000000000000
          Top = 111.417444880000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataField = 'id_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_pedido"]')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Left = -0.220470000000000000
          Top = 219.874150000000000000
          Width = 718.110700000000000000
          Height = 105.826840000000000000
        end
        object Memo9: TfrxMemoView
          Left = 14.677180000000000000
          Top = 247.653680000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nome :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 14.677180000000000000
          Top = 265.110390000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade :')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 14.795300000000000000
          Top = 282.346630000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 14.677180000000000000
          Top = 300.346630000000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor do Frete :')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 523.409710000000000000
          Top = 263.551330000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Placa :')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 336.968770000000000000
          Top = 283.228510000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Telefone :')
          ParentFont = False
        end
        object FAT_FD_M_PEDid_placa: TfrxMemoView
          Left = 606.457020000000000000
          Top = 262.771800000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataField = 'id_placa'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_placa"]')
          ParentFont = False
        end
        object FAT_FD_M_PEDvlr_frete1: TfrxMemoView
          Left = 86.504020000000000000
          Top = 300.567100000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_frete"]')
          ParentFont = False
        end
        object BUS_FD_C_MTAnome: TfrxMemoView
          Left = 86.267780000000000000
          Top = 247.653680000000000000
          Width = 238.110390000000000000
          Height = 15.118110240000000000
          DataField = 'nome'
          DataSet = BUS_FD_C_MTA
          DataSetName = 'BUS_FD_C_MTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_MTA."nome"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 86.267780000000000000
          Top = 265.551330000000000000
          Width = 302.362400000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_MTA."end_cidade"] - [BUS_FD_C_MTA."end_estado"]')
          ParentFont = False
        end
        object BUS_FD_C_MTAdoc_cpf: TfrxMemoView
          Left = 87.488250000000000000
          Top = 282.669450000000000000
          Width = 185.196970000000000000
          Height = 15.118110240000000000
          DataField = 'doc_cpf'
          DataSet = BUS_FD_C_MTA
          DataSetName = 'BUS_FD_C_MTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_MTA."doc_cpf"]')
          ParentFont = False
        end
        object BUS_FD_C_MTAfone: TfrxMemoView
          Left = 416.338900000000000000
          Top = 283.669450000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DataField = 'fone'
          DataSet = BUS_FD_C_MTA
          DataSetName = 'BUS_FD_C_MTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_MTA."fone"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 531.031850000000000000
          Top = 283.448980000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Celular :')
          ParentFont = False
        end
        object BUS_FD_C_MTAcelular: TfrxMemoView
          Left = 604.842920000000000000
          Top = 283.448980000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          DataField = 'celular'
          DataSet = BUS_FD_C_MTA
          DataSetName = 'BUS_FD_C_MTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_MTA."celular"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 2.000000000000000000
          Top = 222.653680000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'DADOS DO MOTORISTA')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Top = 135.653680000000000000
          Width = 718.110700000000000000
          Height = 79.370130000000000000
        end
        object Memo73: TfrxMemoView
          Left = 2.220470000000000000
          Top = 138.433210000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'DADOS DO CLIENTE')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 7.559060000000000000
          Top = 159.330860000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente :')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 7.559060000000000000
          Top = 175.905690000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 578.606680000000000000
          Top = 175.905690000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 83.149660000000000000
          Top = 159.330860000000000000
          Width = 201.859664620000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."id_cliente"] - [BUS_FD_C_CLI."nome"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 83.149660000000000000
          Top = 175.905690000000000000
          Width = 457.323130000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[Trim(<BUS_FD_C_CLI."endereco">)]  N'#186' [Trim(<BUS_FD_C_CLI."numer' +
              'o">)], [Trim(<BUS_FD_C_CLI."bairro">)], [Trim(<BUS_FD_C_CLI."int' +
              '_nomecid">)]  -  [Trim(<BUS_FD_C_CLI."int_uf">)]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 616.181510000000000000
          Top = 175.905690000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            ' [BUS_FD_C_CLI."cep"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 48.354360000000000000
          Top = 194.556800770000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 83.370130000000000000
          Top = 194.556800770000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."tel_fixo"]  /  [BUS_FD_C_CLI."tel_movel"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 616.181510000000000000
          Top = 158.330860000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=11,FormatMaskTe' +
              'xt('#39'000\.000\.000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)),' +
              'IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=14,FormatMaskTex' +
              't('#39'00\.000\.000\/0000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf"' +
              '>)),trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)))]')
          ParentFont = False
        end
        object mmCpfCnpj: TfrxMemoView
          Left = 582.386210000000000000
          Top = 158.330860000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'mmCpfCnpjOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF :')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 350.382998460000000000
          Top = 159.330860000000000000
          Width = 36.892821540000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/IE :')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 389.911803080000000000
          Top = 159.330860000000000000
          Width = 87.668165380000000000
          Height = 15.118110240000000000
          DataField = 'int_ie_rg_cli'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_ie_rg_cli"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 7.559060000000000000
          Top = 50.913420000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ :')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 83.149660000000000000
          Top = 50.913420000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cnpj"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 192.756030000000000000
          Top = 50.913420000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'I.E. :')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 230.551330000000000000
          Top = 50.913420000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_ie"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 827.717070000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 283.464750000000000000
          Top = 7.559060000000050000
          Width = 151.181200000000000000
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
          Left = 616.063390000000000000
          Top = 7.559060000000050000
          Width = 94.488250000000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
        RowCount = 0
        Stretched = True
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118115120000000000
        ParentFont = False
        Top = 559.370440000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
        RowCount = 0
        Stretched = True
        object frxPedIteid_item: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'id_item'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."id_item"]')
          ParentFont = False
        end
        object mmIte: TfrxMemoView
          Left = 63.811070000000000000
          Width = 207.874150000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataField = 'int_nomeite'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomeite"]')
          ParentFont = False
        end
        object mmCor: TfrxMemoView
          Left = 300.685220000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomecor'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomecor"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 344.157700000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataField = 'qtde'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."qtde"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 396.071120000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_unitario"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 464.102660000000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_bruto"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 534.913730000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."per_desconto"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 580.827150000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_desconto"]')
          ParentFont = False
        end
        object frxPedItevlr_liquido: TfrxMemoView
          Left = 645.079160000000000000
          Top = 0.000004879999999985
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_liquido"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object mmUnd: TfrxMemoView
          Left = 275.905690000000000000
          Width = 22.677180000000000000
          Height = 15.118110240000000000
          DataField = 'int_id_und_venda'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_id_und_venda"]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 752.126470000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
        RowCount = 0
        object Line2: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line1: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object frxPedTitid_titulo: TfrxMemoView
          Left = 191.417440000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataField = 'dta_vencimento'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."dta_vencimento"]')
          ParentFont = False
        end
        object frxPedTitint_nomefpg: TfrxMemoView
          Left = 7.559060000000000000
          Width = 177.637910000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomefpg'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."int_nomefpg"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 279.685220000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."vlr_titulo"]')
          ParentFont = False
        end
      end
      object fstCabItem1: TfrxHeader
        FillType = ftBrush
        Height = 20.409448820000000000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'fstCabItem1OnBeforePrint'
        object Shape14: TfrxShapeView
          Top = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 14342874
        end
        object Memo13: TfrxMemoView
          Left = 5.000000000000000000
          Top = 2.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object mmlblIte: TfrxMemoView
          Left = 65.031540000000000000
          Top = 2.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object mmlblUnd: TfrxMemoView
          Left = 275.889920000000000000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object mmlblCor: TfrxMemoView
          Left = 304.905690000000000000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 360.496290000000000000
          Top = 2.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 397.291590000000000000
          Top = 2.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. unit'#225'rio')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 465.323130000000000000
          Top = 2.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. bruto')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 536.134200000000000000
          Top = 2.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '% Desc')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 582.047620000000000000
          Top = 2.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. desc')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 646.299630000000000000
          Top = 2.779530000000020000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. l'#237'quido')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 710.551640000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897637800000000000
          Fill.BackColor = 14342874
        end
        object Memo4: TfrxMemoView
          Left = 7.929430370000000000
          Top = 2.000000000000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 192.756030000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 279.685220000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 597.165740000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Top = 0.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo12: TfrxMemoView
          Left = 536.693260000000000000
          Top = 2.559064880000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_desconto">,DetailData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 646.299630000000000000
          Top = 2.559064880000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_liquido">,DetailData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 401.630180000000000000
          Top = 2.779530000000000000
          Width = 132.283550000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_bruto">,DetailData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 321.260050000000000000
          Top = 2.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 2.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 534.591220000000000000
          Top = 29.799630000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 614.197590000000000000
          Top = 29.799630000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[<FAT_FD_M_PED."vlr_bruto">-<FAT_FD_M_PED."vlr_desconto">]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 534.591220000000000000
          Top = 49.035870000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Defict Frete :')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 613.859000000000000000
          Top = 49.035870000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[IIF(<FAT_FD_M_PED."mod_frete">=1,<FAT_FD_M_PED."vlr_frete">,0)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 534.811690000000000000
          Top = 68.390230000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Liquido :')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 613.859000000000000000
          Top = 67.610700000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_liquido"]')
          ParentFont = False
        end
        object Shape8: TfrxShapeView
          Left = 524.134200000000000000
          Top = 19.897650000000000000
          Width = 192.500000000000000000
          Height = 70.000000000000000000
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        object Line6: TfrxLineView
          Align = baWidth
          Top = 0.377952760000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo24: TfrxMemoView
          Left = 83.149660000000000000
          Top = 7.338590000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Favorecido :')
          ParentFont = False
        end
        object CAD_FD_C_PARemp_razao: TfrxMemoView
          Left = 139.622140000000000000
          Top = 7.559060000000000000
          Width = 566.929500000000000000
          Height = 15.118110240000000000
          DataField = 'emp_razao'
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_razao"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 75.370130000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Banco :')
          ParentFont = False
        end
        object CAD_FD_C_PARbanco: TfrxMemoView
          Left = 139.960730000000000000
          Top = 26.677180000000000000
          Width = 86.929190000000000000
          Height = 15.118110240000000000
          DataField = 'banco'
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."banco"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 259.685220000000000000
          Top = 26.236240000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ag'#234'ncia :')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 353.732530000000000000
          Top = 26.236240000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[Trim(<CAD_FD_C_PAR."agencia">)][IIF(IntToStr(<CAD_FD_C_PAR."age' +
              'ncia_dig">)='#39#39','#39#39','#39'-'#39'+IntToStr(<CAD_FD_C_PAR."agencia_dig">))]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo54: TfrxMemoView
          Left = 487.559370000000000000
          Top = 26.236240000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conta Corrente :')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 582.165740000000000000
          Top = 26.236240000000000000
          Width = 124.724490000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[CAD_FD_C_PAR."conta_corrente"][IIF(IntToStr(<CAD_FD_C_PAR."cont' +
              'a_corrente_dig">)='#39#39','#39#39','#39'-'#39'+IntToStr(<CAD_FD_C_PAR."conta_corren' +
              'te_dig">))]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object BUS_FD_C_MTA: TfrxDBDataset
    UserName = 'BUS_FD_C_MTA'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_motorista=id_motorista'
      'nome=nome'
      'placa=placa'
      'end_endereco=end_endereco'
      'end_numero=end_numero'
      'end_cidade=end_cidade'
      'end_bairro=end_bairro'
      'end_cep=end_cep'
      'end_estado=end_estado'
      'fone=fone'
      'celular=celular'
      'email=email'
      'observacao=observacao'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'doc_cpf=doc_cpf')
    DataSet = dmSgq.PCP_CD_C_MTA
    BCDToCurrency = False
    Left = 278
    Top = 304
  end
  object pmImpressaoPed: TPopupMenu
    Left = 40
    Top = 407
    object btnImpPedLoc: TMenuItem
      Caption = 'Com Localiza'#231#227'o'
      OnClick = btnImpPedLocClick
    end
    object btnImpPedPreco: TMenuItem
      Caption = 'Com Pre'#231'o'
      Visible = False
      OnClick = btnImpPedPrecoClick
    end
  end
  object FAT_FR_M_PED_REV_LOC: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41800.997059467600000000
    ReportOptions.LastChange = 41801.026114062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      'cont: integer;'
      'nomeite_width:Currency=5.5; //em cm                      '
      'conversaoCmParaPixel:Currency=37.7953;    '
      '  '
      'procedure fstCabItem1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<ativado_cor> = false) then'
      '  begin'
      
        '    mmlblCor.Visible := false;                                  ' +
        '                                   '
      '    mmlblUnd.Left := mmlblCor.Left;            '
      '  end;            '
      'end;'
      ''
      
        'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);      ' +
        '                            '
      'begin'
      '  if (<ativado_cor> = false) then'
      '   begin'
      
        '    mmCor.Visible := false;                                     ' +
        '                                '
      '    mmUnd.Left := mmCor.Left;                 '
      
        '    mmIte.Width := nomeite_width*conversaoCmParaPixel + mmUnd.Wi' +
        'dth;                       '
      '   end;'
      '  cont := cont + 1;'
      '  memo8.Text := '#39'Total de Itens : '#39' + IntToStr(cont);           '
      'end;'
      '  '
      'procedure mmCpfCnpjOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  mmCpfCnpj.Text := '#39'CPF:'#39';'
      '  if (<FAT_FD_M_PED."int_pessoacli"> = 1) then'
      '    begin'
      '      mmCpfCnpj.Text := '#39'CNPJ:'#39';  '
      '    end;              '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 110
    Top = 328
    Datasets = <
      item
        DataSet = BUS_FD_C_CLI
        DataSetName = 'BUS_FD_C_CLI'
      end
      item
        DataSet = CAD_FD_C_PAR
        DataSetName = 'CAD_FD_C_PAR'
      end
      item
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
      end
      item
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
      end
      item
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
      end>
    Variables = <
      item
        Name = ' Externas'
        Value = Null
      end
      item
        Name = 'SituacaoPed'
        Value = Null
      end
      item
        Name = 'ativado_cor'
        Value = Null
      end
      item
        Name = 'ativado_sgq'
        Value = Null
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
      ColumnWidth = 95.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Shape1: TfrxShapeView
          Top = 25.377860000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object Shape2: TfrxShapeView
          Left = -1.000000000000000000
          Top = 111.960730000000000000
          Width = 718.110700000000000000
          Height = 83.149660000000000000
        end
        object Memo28: TfrxMemoView
          Left = 275.905690000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO DE VENDA')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 11.559060000000000000
          Top = 132.976500000000000000
          Width = 71.811070000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente :')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 11.559060000000000000
          Top = 162.551330000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 582.606680000000000000
          Top = 162.551330000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object frxBusClinome: TfrxMemoView
          Left = 87.149660000000000000
          Top = 132.976500000000000000
          Width = 201.859664620000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."id_cliente"] - [BUS_FD_C_CLI."nome"]')
          ParentFont = False
        end
        object frxBusCliendereco: TfrxMemoView
          Left = 87.149660000000000000
          Top = 162.551330000000000000
          Width = 457.323130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[Trim(<BUS_FD_C_CLI."endereco">)]  N'#186' [Trim(<BUS_FD_C_CLI."numer' +
              'o">)], [Trim(<BUS_FD_C_CLI."bairro">)], [Trim(<BUS_FD_C_CLI."int' +
              '_nomecid">)]  -  [Trim(<BUS_FD_C_CLI."int_uf">)]')
          ParentFont = False
        end
        object frxBusCliint_nomecid: TfrxMemoView
          Left = 620.181510000000000000
          Top = 162.551330000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            ' [BUS_FD_C_CLI."cep"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 7.559060000000000000
          Top = 35.133890000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 7.559060000000000000
          Top = 66.708720000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object frxCadParemp_endereco: TfrxMemoView
          Left = 83.149660000000000000
          Top = 66.708720000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[CAD_FD_C_PAR."emp_endereco"] N'#186' [CAD_FD_C_PAR."emp_numero"], [C' +
              'AD_FD_C_PAR."emp_bairro"], [CAD_FD_C_PAR."int_nomecid"]-[CAD_FD_' +
              'C_PAR."int_uf"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object frxCadParemp_razao: TfrxMemoView
          Left = 83.149660000000000000
          Top = 35.133890000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          DataField = 'emp_fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_fantasia"]')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 585.827150000000000000
          Top = 31.133890000000000000
          Width = 128.504020000000000000
          Height = 56.692950000000000000
          Center = True
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object frxPeddta_pedido: TfrxMemoView
          Left = 87.315090000000000000
          Top = 119.417444880000000000
          Width = 71.811035830000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_pedido"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 40.960730000000000000
          Top = 119.417444880000000000
          Width = 41.574830000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 393.732530000000000000
          Top = 119.417444880000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[SituacaoPed]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 345.819110000000000000
          Top = 119.417444880000000000
          Width = 45.354360000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 323.141930000000000000
          Top = 176.202440770000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendedor :')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 45.354360000000000000
          Top = 80.504020000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 83.149660000000000000
          Top = 80.504020000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cep"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 170.078850000000000000
          Top = 80.504020000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 204.094620000000000000
          Top = 80.504020000000000000
          Width = 219.212740000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_telefone"] / [CAD_FD_C_PAR."emp_fax"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 52.354360000000000000
          Top = 176.202440770000000000
          Width = 30.236240000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object frxBusClitel_fixo: TfrxMemoView
          Left = 87.370130000000000000
          Top = 176.202440770000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."tel_fixo"]  /  [BUS_FD_C_CLI."tel_movel"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 478.071120000000000000
          Top = 30.354360000000000000
          Width = 101.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCodeCodabar
          DataField = 'id_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo56: TfrxMemoView
          Left = 11.559060000000000000
          Top = 147.889915120000000000
          Width = 71.811070000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fantasia :')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 87.149660000000000000
          Top = 146.889920000000000000
          Width = 347.716760000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."apelido"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Left = 209.992270000000000000
          Top = 119.417444880000000000
          Width = 37.795300000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hor'#225'rio:')
          ParentFont = False
        end
        object FAT_FD_M_PEDhor_pedido: TfrxMemoView
          Left = 250.228510000000000000
          Top = 119.417444880000000000
          Width = 37.795275590000000000
          Height = 15.118110236220500000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."hor_pedido"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 527.052448460000000000
          Top = 115.637905120000000000
          Width = 89.570001540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' do pedido :')
          ParentFont = False
        end
        object frxPedid_pedido: TfrxMemoView
          Left = 620.181510000000000000
          Top = 115.637914880000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataField = 'id_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_pedido"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 620.181510000000000000
          Top = 131.976500000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=11,FormatMaskTe' +
              'xt('#39'000\.000\.000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)),' +
              'IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=14,FormatMaskTex' +
              't('#39'00\.000\.000\/0000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf"' +
              '>)),trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)))]')
          ParentFont = False
        end
        object mmCpfCnpj: TfrxMemoView
          Left = 586.386210000000000000
          Top = 131.976500000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'mmCpfCnpjOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF :')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 354.382998460000000000
          Top = 132.976500000000000000
          Width = 36.892821540000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/IE :')
          ParentFont = False
        end
        object FAT_FD_M_PEDint_ie_rg_cli: TfrxMemoView
          Left = 393.911803080000000000
          Top = 132.976500000000000000
          Width = 87.668165380000000000
          Height = 15.118110240000000000
          DataField = 'int_ie_rg_cli'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_ie_rg_cli"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 393.850650000000000000
          Top = 176.202440770000000000
          Width = 148.752486150000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_vendedor"] - [FAT_FD_M_PED."int_nomefun"]')
          ParentFont = False
        end
        object mmCabVlrFrete: TfrxMemoView
          Left = 560.149970000000000000
          Top = 177.858380000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Frete :')
          ParentFont = False
        end
        object FAT_FD_M_PEDvlr_frete: TfrxMemoView
          Left = 619.842920000000000000
          Top = 178.858380000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_frete"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 50.913420000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 83.149660000000000000
          Top = 50.913420000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cnpj"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 196.535560000000000000
          Top = 50.913420000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'I.E. :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 234.330860000000000000
          Top = 50.913420000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_ie"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 672.756340000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 283.464750000000000000
          Top = 7.559060000000050000
          Width = 151.181200000000000000
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
          Left = 616.063390000000000000
          Top = 7.559060000000050000
          Width = 94.488250000000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
        RowCount = 0
        Stretched = True
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118115120000000000
        ParentFont = False
        Top = 555.590910000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
        RowCount = 0
        Stretched = True
        object frxPedIteid_item: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'id_item'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."id_item"]')
          ParentFont = False
        end
        object mmIte: TfrxMemoView
          Left = 69.811070000000000000
          Width = 226.315090000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataField = 'int_nomeite'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomeite"]')
          ParentFont = False
        end
        object mmCor: TfrxMemoView
          Left = 332.685220000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomecor'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomecor"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 380.157700000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          DataField = 'qtde'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."qtde"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object mmUnd: TfrxMemoView
          Left = 306.905690000000000000
          Width = 22.677180000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Trim(<FAT_FD_M_PED_ITE."int_id_und_venda">)]')
          ParentFont = False
        end
        object FAT_FD_M_PED_ITEint_rua2: TfrxMemoView
          Left = 552.188976377952800000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'int_rua2'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_rua2"]')
          ParentFont = False
        end
        object FAT_FD_M_PED_ITEint_prateleira2: TfrxMemoView
          Left = 611.149606300000000000
          Width = 52.913385826771650000
          Height = 15.118120000000000000
          DataField = 'int_prateleira2'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_prateleira2"]')
          ParentFont = False
        end
        object FAT_FD_M_PED_ITEint_escaninho2: TfrxMemoView
          Left = 668.220472440000000000
          Width = 45.354330708661420000
          Height = 15.118120000000000000
          DataField = 'int_escaninho2'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_escaninho2"]')
          ParentFont = False
        end
        object FAT_FD_M_PED_ITEnum_lote: TfrxMemoView
          Left = 487.181102360000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          DataField = 'num_lote'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."num_lote"]')
          ParentFont = False
        end
        object FAT_FD_M_PED_ITEqtde_conferida: TfrxMemoView
          Left = 418.015748031496100000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'qtde_conferida'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."qtde_conferida"]')
          ParentFont = False
        end
      end
      object fstCabItem1: TfrxHeader
        FillType = ftBrush
        Height = 20.409448820000000000
        Top = 514.016080000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'fstCabItem1OnBeforePrint'
        object Shape14: TfrxShapeView
          Top = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 14342874
        end
        object Memo13: TfrxMemoView
          Left = 5.000000000000000000
          Top = 2.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object mmlblIte: TfrxMemoView
          Left = 69.921259842519690000
          Top = 2.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object mmlblUnd: TfrxMemoView
          Left = 306.889920000000000000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object mmlblCor: TfrxMemoView
          Left = 332.850393700000000000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 380.496290000000000000
          Top = 2.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 552.291590000000000000
          Top = 2.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Rua')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 611.323130000000000000
          Top = 2.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Prateleira')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 668.134200000000000000
          Top = 2.779530000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Escaninho')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 487.000000000000000000
          Top = 3.519480000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' Lote')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 418.000000000000000000
          Top = 2.519480000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde Conf.')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 593.386210000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Top = 0.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo8: TfrxMemoView
          Left = 3.000000000000000000
          Top = 2.149350000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 151.181200000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Shape5: TfrxShapeView
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object frxPedpcp_obs: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.456710000000000000
          Width = 702.992580000000000000
          Height = 49.133890000000000000
          DataField = 'obs'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."obs"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 1.000000000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 14342874
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 236.330860000000000000
          Top = 113.826840000000000000
          Width = 275.905690000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Memo.UTF8W = (
            '_____________________________________'
            '                        Ass. cliente')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 0.677180000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object dsPedTitSer: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_PED_TIT_SER
    Left = 192
    Top = 151
  end
  object FAT_FD_M_PED_TIT_SER: TfrxDBDataset
    UserName = 'FAT_FD_M_PED_TIT_SER'
    CloseDataSource = False
    DataSet = dmGeral.FAT_CD_M_PED_TIT_SER
    BCDToCurrency = False
    Left = 278
    Top = 352
  end
  object FAT_FR_M_PED_OFI: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41800.997059467600000000
    ReportOptions.LastChange = 41801.026114062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      'cont: integer;'
      'nomeite_width:Currency=5.5; //em cm                      '
      'conversaoCmParaPixel:Currency=37.7953;    '
      '  '
      'procedure fstCabItem1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<ativado_cor> = false) then'
      '  begin'
      
        '    mmlblCor.Visible := false;                                  ' +
        '                                   '
      '    mmlblUnd.Left := mmlblCor.Left;            '
      '  end;            '
      'end;'
      ''
      
        'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);      ' +
        '                            '
      'begin'
      '  if (<ativado_cor> = false) then'
      '   begin'
      
        '    mmCor.Visible := false;                                     ' +
        '                                '
      '    mmUnd.Left := mmCor.Left;                 '
      
        '    mmIte.Width := nomeite_width*conversaoCmParaPixel + mmUnd.Wi' +
        'dth;                       '
      '   end;'
      '  cont := cont + 1;'
      '  memo8.Text := '#39'Total de Itens : '#39' + IntToStr(cont);           '
      'end;'
      '  '
      'procedure mmCpfCnpjOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  mmCpfCnpj.Text := '#39'CPF:'#39';'
      '  if (<FAT_FD_M_PED."int_pessoacli"> = 1) then'
      '    begin'
      '      mmCpfCnpj.Text := '#39'CNPJ:'#39';  '
      '    end;              '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 278
    Top = 168
    Datasets = <
      item
        DataSet = BUS_FD_C_CLI
        DataSetName = 'BUS_FD_C_CLI'
      end
      item
        DataSet = CAD_FD_C_PAR
        DataSetName = 'CAD_FD_C_PAR'
      end
      item
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
      end
      item
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
      end
      item
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
      end
      item
        DataSet = FAT_FD_M_PED_TIT_SER
        DataSetName = 'FAT_FD_M_PED_TIT_SER'
      end>
    Variables = <
      item
        Name = ' Externas'
        Value = Null
      end
      item
        Name = 'SituacaoPed'
        Value = Null
      end
      item
        Name = 'ativado_cor'
        Value = Null
      end
      item
        Name = 'ativado_sgq'
        Value = Null
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
      ColumnWidth = 95.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 220.315090000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Shape1: TfrxShapeView
          Top = 25.377860000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object Shape2: TfrxShapeView
          Left = -1.000000000000000000
          Top = 111.960730000000000000
          Width = 718.110700000000000000
          Height = 102.047310000000000000
        end
        object Memo28: TfrxMemoView
          Left = 275.905690000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO DE VENDA')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 11.559060000000000000
          Top = 132.976500000000000000
          Width = 71.811070000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente :')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 11.559060000000000000
          Top = 162.551330000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 582.606680000000000000
          Top = 162.551330000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object frxBusClinome: TfrxMemoView
          Left = 87.149660000000000000
          Top = 132.976500000000000000
          Width = 201.859664620000000000
          Height = 15.118110236220500000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."id_cliente"] - [BUS_FD_C_CLI."nome"]')
          ParentFont = False
        end
        object frxBusCliendereco: TfrxMemoView
          Left = 87.149660000000000000
          Top = 162.551330000000000000
          Width = 457.323130000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[Trim(<BUS_FD_C_CLI."endereco">)]  N'#186' [Trim(<BUS_FD_C_CLI."numer' +
              'o">)], [Trim(<BUS_FD_C_CLI."bairro">)], [Trim(<BUS_FD_C_CLI."int' +
              '_nomecid">)]  -  [Trim(<BUS_FD_C_CLI."int_uf">)]')
          ParentFont = False
        end
        object frxBusCliint_nomecid: TfrxMemoView
          Left = 620.181510000000000000
          Top = 162.551330000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            ' [BUS_FD_C_CLI."cep"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 7.559060000000000000
          Top = 35.133890000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 7.559060000000000000
          Top = 66.708720000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object frxCadParemp_endereco: TfrxMemoView
          Left = 83.149660000000000000
          Top = 66.708720000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[CAD_FD_C_PAR."emp_endereco"] N'#186' [CAD_FD_C_PAR."emp_numero"], [C' +
              'AD_FD_C_PAR."emp_bairro"], [CAD_FD_C_PAR."int_nomecid"]-[CAD_FD_' +
              'C_PAR."int_uf"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object frxCadParemp_razao: TfrxMemoView
          Left = 83.149660000000000000
          Top = 35.133890000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          DataField = 'emp_fantasia'
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_fantasia"]')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 585.827150000000000000
          Top = 31.133890000000000000
          Width = 128.504020000000000000
          Height = 56.692950000000000000
          Center = True
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object frxPeddta_pedido: TfrxMemoView
          Left = 87.315090000000000000
          Top = 119.417444880000000000
          Width = 71.811035830000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_pedido"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 40.960730000000000000
          Top = 119.417444880000000000
          Width = 41.574830000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 393.732530000000000000
          Top = 119.417444880000000000
          Width = 94.488250000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[SituacaoPed]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 345.819110000000000000
          Top = 119.417444880000000000
          Width = 45.354360000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 323.141930000000000000
          Top = 176.202440770000000000
          Width = 68.031540000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendedor :')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 45.354360000000000000
          Top = 80.504020000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 83.149660000000000000
          Top = 80.504020000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cep"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 170.078850000000000000
          Top = 80.504020000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 204.094620000000000000
          Top = 80.504020000000000000
          Width = 219.212740000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_telefone"] / [CAD_FD_C_PAR."emp_fax"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 52.354360000000000000
          Top = 176.202440770000000000
          Width = 30.236240000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object frxBusClitel_fixo: TfrxMemoView
          Left = 87.370130000000000000
          Top = 176.202440770000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."tel_fixo"]  /  [BUS_FD_C_CLI."tel_movel"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 478.071120000000000000
          Top = 30.354360000000000000
          Width = 101.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCodeCodabar
          DataField = 'id_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo56: TfrxMemoView
          Left = 11.559060000000000000
          Top = 147.889915120000000000
          Width = 71.811070000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fantasia :')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 87.149660000000000000
          Top = 147.889920000000000000
          Width = 347.716760000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."apelido"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Left = 209.992270000000000000
          Top = 119.417444880000000000
          Width = 37.795300000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hor'#225'rio:')
          ParentFont = False
        end
        object FAT_FD_M_PEDhor_pedido: TfrxMemoView
          Left = 250.228510000000000000
          Top = 119.417444880000000000
          Width = 37.795275590000000000
          Height = 15.118110236220500000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."hor_pedido"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 527.052448460000000000
          Top = 115.637905120000000000
          Width = 89.570001540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' do pedido :')
          ParentFont = False
        end
        object frxPedid_pedido: TfrxMemoView
          Left = 620.181510000000000000
          Top = 115.637914880000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataField = 'id_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_pedido"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 620.181510000000000000
          Top = 131.976500000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=11,FormatMaskTe' +
              'xt('#39'000\.000\.000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)),' +
              'IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=14,FormatMaskTex' +
              't('#39'00\.000\.000\/0000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf"' +
              '>)),trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)))]')
          ParentFont = False
        end
        object mmCpfCnpj: TfrxMemoView
          Left = 586.386210000000000000
          Top = 131.976500000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'mmCpfCnpjOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF :')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 354.382998460000000000
          Top = 132.976500000000000000
          Width = 36.892821540000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/IE :')
          ParentFont = False
        end
        object FAT_FD_M_PEDint_ie_rg_cli: TfrxMemoView
          Left = 393.911803080000000000
          Top = 132.976500000000000000
          Width = 87.668165380000000000
          Height = 15.118110240000000000
          DataField = 'int_ie_rg_cli'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_ie_rg_cli"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 393.850650000000000000
          Top = 176.202440770000000000
          Width = 148.752486150000000000
          Height = 15.118110236220500000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_vendedor"] - [FAT_FD_M_PED."int_nomefun"]')
          ParentFont = False
        end
        object mmCabVlrFrete: TfrxMemoView
          Left = 560.149970000000000000
          Top = 177.858380000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Frete :')
          ParentFont = False
        end
        object FAT_FD_M_PEDvlr_frete: TfrxMemoView
          Left = 619.842920000000000000
          Top = 177.858380000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_frete"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 50.913420000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 83.149660000000000000
          Top = 50.913420000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cnpj"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 196.535560000000000000
          Top = 50.913420000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'I.E. :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 234.330860000000000000
          Top = 50.913420000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_ie"]')
          ParentFont = False
        end
        object mmCabVlrIcmsDesn: TfrxMemoView
          Left = 507.000000000000000000
          Top = 196.102350000000000000
          Width = 111.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. Icms Desonerado:')
          ParentFont = False
        end
        object FAT_FD_M_PEDvlr_icm_desn: TfrxMemoView
          Left = 620.000000000000000000
          Top = 196.102350000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_icm_desn"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 929.764380000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 283.464750000000000000
          Top = 7.559060000000050000
          Width = 151.181200000000000000
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
          Left = 616.063390000000000000
          Top = 7.559060000000050000
          Width = 94.488250000000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
        RowCount = 0
        Stretched = True
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118115120000000000
        ParentFont = False
        Top = 559.370440000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
        RowCount = 0
        Stretched = True
        object frxPedIteid_item: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'id_item'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."id_item"]')
          ParentFont = False
        end
        object mmIte: TfrxMemoView
          Left = 63.811070000000000000
          Width = 207.874150000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataField = 'int_nomeite'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomeite"]')
          ParentFont = False
        end
        object mmCor: TfrxMemoView
          Left = 299.685220000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomecor'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomecor"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 437.669291338582700000
          Width = 34.015748031496060000
          Height = 15.118110240000000000
          DataField = 'qtde'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."qtde"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 472.440944881889800000
          Width = 52.913385826771650000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_unitario"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 525.354330708661400000
          Width = 52.913385826771650000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_bruto"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 579.023622047244200000
          Width = 34.015748031496060000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."per_desconto"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 614.173228346456700000
          Width = 49.133858267716540000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_desconto"]')
          ParentFont = False
        end
        object frxPedItevlr_liquido: TfrxMemoView
          Left = 664.440944881889800000
          Top = 0.000004879999999985
          Width = 52.913385830000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_liquido"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object mmUnd: TfrxMemoView
          Left = 274.905690000000000000
          Width = 22.677180000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Trim(<FAT_FD_M_PED_ITE."int_id_und_venda">)]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 340.157700000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[FAT_FD_M_PED_ITE."id_mecanico"]-[FAT_FD_M_PED_ITE."int_nomemec"' +
              ']')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 706.772110000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
        RowCount = 0
        object Line2: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line1: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object frxPedTitid_titulo: TfrxMemoView
          Left = 191.417440000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataField = 'dta_vencimento'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."dta_vencimento"]')
          ParentFont = False
        end
        object frxPedTitint_nomefpg: TfrxMemoView
          Left = 7.559060000000000000
          Width = 177.637910000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomefpg'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."int_nomefpg"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 279.685220000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."vlr_titulo"]')
          ParentFont = False
        end
      end
      object fstCabItem1: TfrxHeader
        FillType = ftBrush
        Height = 20.409448820000000000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'fstCabItem1OnBeforePrint'
        object Shape14: TfrxShapeView
          Top = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 14342874
        end
        object Memo13: TfrxMemoView
          Left = 5.000000000000000000
          Top = 2.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object mmlblIte: TfrxMemoView
          Left = 65.031540000000000000
          Top = 2.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object mmlblUnd: TfrxMemoView
          Left = 274.889920000000000000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object mmlblCor: TfrxMemoView
          Left = 300.850393700787400000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 437.496290000000000000
          Top = 2.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 472.291590000000000000
          Top = 2.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. unit'#225'rio')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 525.323130000000000000
          Top = 2.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. bruto')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 579.134200000000000000
          Top = 2.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '% Desc')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 614.047620000000000000
          Top = 2.779530000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. desc')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 664.299630000000000000
          Top = 2.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. l'#237'quido')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 342.000000000000000000
          Top = 3.204390000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Mec'#226'nico')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 42.456697800000000000
        Top = 642.520100000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 41.574817800000000000
          Fill.BackColor = 14342874
        end
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 25.000000000000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 192.756030000000000000
          Top = 25.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 279.685220000000000000
          Top = 25.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Top = 2.676870000000000000
          Width = 717.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PE'#199'AS')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 21.314780000000000000
        Top = 597.165740000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Top = 0.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo12: TfrxMemoView
          Left = 536.693260000000000000
          Top = 2.559064880000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_desconto">,DetailData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 646.299630000000000000
          Top = 2.559064880000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_liquido">,DetailData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 401.630180000000000000
          Top = 2.779530000000000000
          Width = 132.283550000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_bruto">,DetailData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 321.260050000000000000
          Top = 2.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 2.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 0.181200000000000000
        Top = 744.567410000000000000
        Width = 718.110700000000000000
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 42.456697800000000000
        Top = 767.244590000000000000
        Width = 718.110700000000000000
        object Shape5: TfrxShapeView
          Width = 718.110700000000000000
          Height = 41.574817800000000000
          Fill.BackColor = 14342874
        end
        object Memo24: TfrxMemoView
          Left = 7.559060000000000000
          Top = 25.000000000000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 192.756030000000000000
          Top = 25.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 279.685220000000000000
          Top = 25.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Top = 2.676870000000000000
          Width = 717.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'SERVI'#199'OS')
          ParentFont = False
        end
      end
      object DetailData3: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 831.496600000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED_TIT_SER
        DataSetName = 'FAT_FD_M_PED_TIT_SER'
        RowCount = 0
        object Line5: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo58: TfrxMemoView
          Left = 191.417440000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT_SER."dta_vencimento"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 7.559060000000000000
          Width = 177.637910000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT_SER."int_nomefpg"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 279.685220000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT_SER."vlr_titulo"]')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        FillType = ftBrush
        Height = 0.181200000000000000
        Top = 869.291900000000000000
        Width = 718.110700000000000000
      end
      object Footer4: TfrxFooter
        FillType = ftBrush
        Height = 133.677180000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        object Shape6: TfrxShapeView
          Top = 2.267470000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object Memo42: TfrxMemoView
          Left = 3.779530000000000000
          Top = 24.724180000000000000
          Width = 702.992580000000000000
          Height = 49.133890000000000000
          DataField = 'obs'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."obs"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Top = 3.267470000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 14342874
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 238.330860000000000000
          Top = 103.094310000000000000
          Width = 275.905690000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Memo.UTF8W = (
            '_____________________________________'
            '                        Ass. cliente')
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 1.677180000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object BUS_CD_M_PED: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_PED'
    RemoteServer = dmGeral.pcConecao
    Left = 1061
    Top = 484
    object BUS_CD_M_PEDid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object BUS_CD_M_PEDid_func_pri_impressao: TIntegerField
      FieldName = 'id_func_pri_impressao'
    end
    object BUS_CD_M_PEDdta_pri_impressao: TDateField
      FieldName = 'dta_pri_impressao'
    end
    object BUS_CD_M_PEDhor_pri_impressao: TTimeField
      FieldName = 'hor_pri_impressao'
    end
    object BUS_CD_M_PEDid_func_seg_impressao: TIntegerField
      FieldName = 'id_func_seg_impressao'
    end
    object BUS_CD_M_PEDdta_seg_impressao: TDateField
      FieldName = 'dta_seg_impressao'
    end
    object BUS_CD_M_PEDhor_seg_impressao: TTimeField
      FieldName = 'hor_seg_impressao'
    end
    object BUS_CD_M_PEDid_func_ter_impressao: TIntegerField
      FieldName = 'id_func_ter_impressao'
    end
    object BUS_CD_M_PEDdta_ter_impressao: TDateField
      FieldName = 'dta_ter_impressao'
    end
    object BUS_CD_M_PEDhor_ter_impressao: TTimeField
      FieldName = 'hor_ter_impressao'
    end
    object BUS_CD_M_PEDmotivo_seg_impressao: TWideStringField
      FieldName = 'motivo_seg_impressao'
      Size = 100
    end
    object BUS_CD_M_PEDmotivo_ter_impressao: TWideStringField
      FieldName = 'motivo_ter_impressao'
      Size = 100
    end
    object BUS_CD_M_PEDsituacao: TIntegerField
      FieldName = 'situacao'
    end
  end
  object PCP_CD_M_ROM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_M_ROM'
    RemoteServer = dmGeral.pcConecao
    Left = 957
    Top = 509
    object PCP_CD_M_ROMid_rom: TIntegerField
      FieldName = 'id_rom'
    end
    object PCP_CD_M_ROMid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object PCP_CD_M_ROMdta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object PCP_CD_M_ROMid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object PCP_CD_M_ROMid_motorista: TIntegerField
      FieldName = 'id_motorista'
    end
    object PCP_CD_M_ROMobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object PCP_CD_M_ROMint_nomemta: TWideStringField
      FieldName = 'int_nomemta'
      ProviderFlags = []
      Size = 80
    end
    object PCP_CD_M_ROMint_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_M_ROMcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object PCP_CD_M_ROMrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object PCP_CD_M_ROMplaca: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object PCP_CD_M_ROMint_fonemta: TWideStringField
      FieldName = 'int_fonemta'
      ProviderFlags = []
      Size = 14
    end
    object PCP_CD_M_ROMint_celuar: TWideStringField
      FieldName = 'int_celuar'
      ProviderFlags = []
      Size = 14
    end
    object PCP_CD_M_ROMint_email: TWideStringField
      FieldName = 'int_email'
      ProviderFlags = []
      Size = 80
    end
    object PCP_CD_M_ROMlot_qtde_total: TFloatField
      FieldName = 'lot_qtde_total'
    end
    object PCP_CD_M_ROMhor_emissao: TTimeField
      FieldName = 'hor_emissao'
    end
    object PCP_CD_M_ROMhor_alt: TTimeField
      FieldName = 'hor_alt'
    end
    object PCP_CD_M_ROMid_resp_alt: TIntegerField
      FieldName = 'id_resp_alt'
    end
    object PCP_CD_M_ROMdta_alt: TDateField
      FieldName = 'dta_alt'
    end
    object PCP_CD_M_ROMhor_fin: TTimeField
      FieldName = 'hor_fin'
    end
    object PCP_CD_M_ROMdta_fin: TDateField
      FieldName = 'dta_fin'
    end
    object PCP_CD_M_ROMid_resp_fin: TIntegerField
      FieldName = 'id_resp_fin'
    end
    object PCP_CD_M_ROMint_nomeres_alt: TWideStringField
      FieldName = 'int_nomeres_alt'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_M_ROMint_nomeres_fin: TWideStringField
      FieldName = 'int_nomeres_fin'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_M_ROMped_ite_qtde_total: TIntegerField
      FieldName = 'ped_ite_qtde_total'
    end
    object PCP_CD_M_ROMid_pca: TIntegerField
      FieldName = 'id_pca'
    end
    object PCP_CD_M_ROMqtde_total_ite_conf: TFloatField
      FieldName = 'qtde_total_ite_conf'
    end
    object PCP_CD_M_ROMseq_pca_carreg_anual: TIntegerField
      FieldName = 'seq_pca_carreg_anual'
    end
    object PCP_CD_M_ROMPCP_SQ_M_ROM_PED: TDataSetField
      FieldName = 'PCP_SQ_M_ROM_PED'
    end
  end
  object PCP_CD_M_ROM_PED: TClientDataSet
    Aggregates = <>
    DataSetField = PCP_CD_M_ROMPCP_SQ_M_ROM_PED
    Params = <>
    Left = 853
    Top = 509
  end
end
