inherited PCP_FM_M_ORS: TPCP_FM_M_ORS
  ClientHeight = 540
  ClientWidth = 1032
  ExplicitWidth = 1038
  ExplicitHeight = 569
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlEsquerda: TPanel
    Height = 510
    ExplicitHeight = 510
    inherited pnlFiltro: TPanel
      Top = 460
      ExplicitTop = 460
      inherited gbxFiltro: TGroupBox
        inherited cbbPesquisa: TComboBox
          ItemIndex = 1
          Text = 'Respons'#225'vel'
          OnChange = cbbPesquisaChange
          Items.Strings = (
            'Controle'
            'Respons'#225'vel'
            'Data de Emiss'#227'o'
            'Observa'#231#227'o'
            'Pedido')
        end
        inherited txtPesquisa: TEdit
          OnKeyDown = txtPesquisaKeyDown
        end
        inherited btnFiltro: TcxButton
          OnClick = btnFiltroClick
        end
      end
    end
    inherited pnlDatagrid: TPanel
      Top = 95
      Height = 365
      ExplicitTop = 95
      ExplicitHeight = 365
      inherited dbGrid: TwwDBGrid
        Height = 365
        Selected.Strings = (
          'id_ors'#9'10'#9'Controle'#9'F'
          'int_nomeres'#9'43'#9'Respons'#225'vel'#9'F')
        ExplicitHeight = 365
      end
    end
    inherited pnlBotoes: TPanel
      Height = 95
      ExplicitHeight = 95
      inherited btnIncluir: TcxButton
        Top = 1
        Width = 51
        ExplicitTop = 1
        ExplicitWidth = 51
      end
      inherited btnAlterar: TcxButton
        Left = 149
        Width = 51
        Visible = False
        ExplicitLeft = 149
        ExplicitWidth = 51
      end
      inherited btnExcluir: TcxButton
        Left = 206
        Top = 1
        Width = 51
        Visible = False
        ExplicitLeft = 206
        ExplicitTop = 1
        ExplicitWidth = 51
      end
      inherited btnCancelar: TcxButton
        Left = 53
        Top = 1
        Width = 51
        ExplicitLeft = 53
        ExplicitTop = 1
        ExplicitWidth = 51
      end
      inherited btnGrava: TcxButton
        Left = 105
        Top = 1
        Width = 48
        ExplicitLeft = 105
        ExplicitTop = 1
        ExplicitWidth = 48
      end
      inherited btnSair: TButton
        Left = 257
        Top = 0
        Width = 51
        Height = 52
        ExplicitLeft = 257
        ExplicitTop = 0
        ExplicitWidth = 51
        ExplicitHeight = 52
      end
      inherited btnImprime: TcxButton
        Width = 152
        Height = 36
        Action = nil
        Caption = 'Imprimir Relat'#243'rio de Carga'
        OptionsImage.ImageIndex = -1
        OnClick = btnImprimeClick
        ExplicitWidth = 152
        ExplicitHeight = 36
      end
      inherited btnAtualiza: TcxButton
        Left = 284
        Top = 88
        Width = 26
        Height = 15
        Enabled = False
        Visible = False
        ExplicitLeft = 284
        ExplicitTop = 88
        ExplicitWidth = 26
        ExplicitHeight = 15
      end
      object btnImprimeOrdFat: TcxButton
        Left = 154
        Top = 53
        Width = 153
        Height = 36
        Caption = 'Imprimir ord. de faturamento'
        OptionsImage.Images = imgBotoesAtivo
        OptionsImage.Layout = blGlyphTop
        TabOrder = 8
        OnClick = btnImprimeOrdFatClick
      end
    end
  end
  inherited pnlDireita: TPanel
    Width = 722
    Height = 510
    ExplicitWidth = 722
    ExplicitHeight = 510
    inherited pnlDados: TPanel
      Left = 14
      Top = 16
      Width = 691
      Height = 492
      ParentCtl3D = False
      ExplicitLeft = 14
      ExplicitTop = 16
      ExplicitWidth = 691
      ExplicitHeight = 492
      object lblEmissao: TLabel
        Left = 424
        Top = 45
        Width = 47
        Height = 13
        Caption = 'Emiss'#227'o :'
      end
      object lblResponsavel: TLabel
        Left = 101
        Top = 68
        Width = 70
        Height = 13
        Caption = 'Respons'#225'vel :'
        FocusControl = txtResponsavelNome
      end
      object lblObservacao: TLabel
        Left = 105
        Top = 113
        Width = 66
        Height = 13
        Caption = 'Observa'#231#227'o :'
        FocusControl = txtObservacao
      end
      object Label53: TLabel
        Left = 283
        Top = 45
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
        Left = 140
        Top = 45
        Width = 31
        Height = 13
        Caption = 'Cod.:'
        Color = 15921906
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label1: TLabel
        Left = 129
        Top = 137
        Width = 42
        Height = 13
        Caption = 'Pedido :'
        FocusControl = txtObservacao
      end
      object lblMotorista: TLabel
        Left = 115
        Top = 90
        Width = 56
        Height = 13
        Caption = 'Motorista :'
      end
      object Label2: TLabel
        Left = 71
        Top = 182
        Width = 100
        Height = 13
        Caption = 'Relat'#243'rio de carga :'
        FocusControl = txtObservacao
      end
      object Label5: TLabel
        Left = 263
        Top = 182
        Width = 30
        Height = 13
        Caption = 'Data :'
        FocusControl = txtObservacao
      end
      object Label7: TLabel
        Left = 368
        Top = 182
        Width = 70
        Height = 13
        Caption = 'Respons'#225'vel :'
        FocusControl = txtObservacao
      end
      object Label8: TLabel
        Left = 116
        Top = 204
        Width = 54
        Height = 13
        Caption = 'Vlr. Bruto :'
        FocusControl = txtObservacao
      end
      object Label9: TLabel
        Left = 283
        Top = 205
        Width = 53
        Height = 13
        Caption = 'Vlr. Desc. :'
        FocusControl = txtObservacao
      end
      object Label13: TLabel
        Left = 440
        Top = 204
        Width = 44
        Height = 13
        Caption = 'Vlr. Liq. :'
        FocusControl = txtObservacao
      end
      object Label14: TLabel
        Left = 90
        Top = 160
        Width = 81
        Height = 13
        Caption = 'Representante :'
        FocusControl = txtObservacao
      end
      object txtResponsavelNome: TDBEdit
        Left = 177
        Top = 64
        Width = 392
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'int_nomeres'
        DataSource = dso
        ReadOnly = True
        TabOrder = 1
      end
      object txtObservacao: TDBEdit
        Left = 177
        Top = 110
        Width = 391
        Height = 21
        DataField = 'observacao'
        DataSource = dso
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 217
        Width = 681
        Height = 143
        Caption = 'Itens do Pedido'
        TabOrder = 12
        object dgItems: TwwDBGrid
          Left = 8
          Top = 18
          Width = 668
          Height = 119
          Selected.Strings = (
            'id_item'#9'10'#9'C'#243'digo'#9'F'
            'int_nomeite'#9'23'#9'Descri'#231#227'o'#9'F'
            'int_nomecor'#9'10'#9'Cor'#9'F'
            'int_nometam'#9'9'#9'Tamanho'#9'F'
            'qtde'#9'10'#9'Qtde'#9'F'
            'vlr_unitario'#9'11'#9'Vlr.Unit'#225'rio'#9'F'
            'vlr_desconto'#9'10'#9'Vlr. Desc'#9'F'
            'vlr_liquido'#9'16'#9'Vlr. Total'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clWhite
          DataSource = dsoItens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
      end
      object txtCodRev: TDBEdit
        Left = 321
        Top = 41
        Width = 60
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'rev_lme'
        DataSource = dso
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object txtcod: TDBEdit
        Left = 177
        Top = 41
        Width = 60
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'id_ors'
        DataSource = dso
        Enabled = False
        ReadOnly = True
        TabOrder = 15
      end
      object txtPedido: TJvDBComboEdit
        Left = 177
        Top = 133
        Width = 79
        Height = 21
        ClickKey = 114
        DataField = 'id_pedido'
        DataSource = dso
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
        TabOrder = 4
        OnButtonClick = txtPedidoButtonClick
        OnEnter = txtPedidoEnter
        OnExit = txtPedidoExit
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 60
        Width = 52
        Height = 139
        TabOrder = 14
        Visible = False
        object lblEntradas: TLabel
          Left = 7
          Top = 25
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
          Left = 83
          Top = 41
          Width = 57
          Height = 13
          Caption = 'Vlr.Entrada'
        end
        object Label11: TLabel
          Left = 7
          Top = 41
          Width = 60
          Height = 13
          Caption = 'Forma pgto'
        end
        object Label3: TLabel
          Left = 7
          Top = 77
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
          Left = 6
          Top = 96
          Width = 60
          Height = 13
          Caption = 'Forma pgto'
        end
        object Label10: TLabel
          Left = 83
          Top = 96
          Width = 69
          Height = 13
          Caption = 'Qtde.Parcelas'
        end
        object dgFormaPagamento: TwwDBGrid
          Left = 165
          Top = 48
          Width = 451
          Height = 95
          Selected.Strings = (
            'int_nomefpg'#9'25'#9'Forma de Pagamento'#9'F'
            'dias'#9'10'#9'Dias'#9'F'
            'dta_vencimento'#9'15'#9'Vencimento'#9'F'
            'vlr_titulo'#9'14'#9'Vlr. T'#237'tulo'#9'F')
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
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
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
          Left = 87
          Top = 56
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
          Left = 9
          Top = 56
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
          Left = 9
          Top = 115
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
          Left = 87
          Top = 115
          Width = 72
          Height = 21
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 3
          Text = '0'
          OnExit = txtQtdeParcExit
        end
        object pnTitulos: TPanel
          Left = 192
          Top = 3
          Width = 430
          Height = 42
          BevelOuter = bvNone
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 5
          object lblFormaPagamento: TLabel
            Left = 0
            Top = 3
            Width = 109
            Height = 13
            Caption = 'Forma de Pagamento'
          end
          object lblDias: TLabel
            Left = 221
            Top = 3
            Width = 22
            Height = 13
            Caption = 'Dias'
            FocusControl = txtDias
          end
          object lblVencimento: TLabel
            Left = 272
            Top = 3
            Width = 60
            Height = 13
            Caption = 'Vencimento'
            FocusControl = txtDias
          end
          object Label4: TLabel
            Left = 362
            Top = 3
            Width = 50
            Height = 13
            Caption = 'Vlr. T'#237'tulo'
          end
          object cbbFormaPagamento: TwwDBLookupCombo
            Left = 0
            Top = 18
            Width = 215
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
            Left = 219
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
            Left = 272
            Top = 18
            Width = 87
            Height = 21
            Ctl3D = True
            DataField = 'dta_vencimento'
            DataSource = dsoTitulos
            ParentCtl3D = False
            TabOrder = 2
            OnExit = txtVencimentoExit
          end
          object txtVlrTitulos: TwwDBEdit
            Left = 362
            Top = 18
            Width = 62
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
        end
        object btnAddFormaPagamento: TBitBtn
          Left = 165
          Top = 21
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
      end
      object dpkEmissao: TDBEdit
        Left = 477
        Top = 41
        Width = 91
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'dta_emissao'
        DataSource = dso
        Enabled = False
        ReadOnly = True
        TabOrder = 16
      end
      object txtCliente: TDBEdit
        Left = 258
        Top = 133
        Width = 310
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'int_nomecli'
        DataSource = dso
        ReadOnly = True
        TabOrder = 17
      end
      object cbbMotorista: TwwDBLookupCombo
        Left = 177
        Top = 87
        Width = 391
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'30'#9'Nome'#9'F'
          'id_motorista'#9'10'#9'Cod'#9'F')
        DataField = 'id_motorista'
        DataSource = dso
        LookupTable = dmSgq.BUS_CD_C_MTA
        LookupField = 'id_motorista'
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbMotoristaEnter
        OnExit = cbbMotoristaExit
      end
      object txtDataRom: TDBEdit
        Left = 296
        Top = 178
        Width = 66
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'int_dta_rom'
        DataSource = dso
        ReadOnly = True
        TabOrder = 7
      end
      object txtRomaneio: TDBEdit
        Left = 177
        Top = 178
        Width = 78
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'id_rom'
        DataSource = dso
        ReadOnly = True
        TabOrder = 6
      end
      object txtRespRom: TDBEdit
        Left = 440
        Top = 178
        Width = 129
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'int_nomeresp_rom'
        DataSource = dso
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit1: TDBEdit
        Left = 177
        Top = 201
        Width = 78
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'vlr_bruto'
        DataSource = dso
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit2: TDBEdit
        Left = 342
        Top = 202
        Width = 78
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'vlr_desconto'
        DataSource = dso
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit3: TDBEdit
        Left = 490
        Top = 201
        Width = 79
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'vlr_liquido'
        DataSource = dso
        ReadOnly = True
        TabOrder = 11
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 373
        Width = 681
        Height = 119
        Caption = 'Itens conferido (Inserido na carga)'
        TabOrder = 13
        object dgItensConf: TwwDBGrid
          Left = 8
          Top = 18
          Width = 668
          Height = 95
          Selected.Strings = (
            'id_item'#9'10'#9'C'#243'digo'#9'F'
            'int_nomeite'#9'57'#9'Descri'#231#227'o'#9'F'
            'int_nomecor'#9'16'#9'Cor'#9'F'
            'int_nometam'#9'8'#9'Tamanho'#9'F'
            'qtde'#9'10'#9'Qtde'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clWhite
          DataSource = dsItensConf
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
      end
      object txtRepresentante: TDBEdit
        Left = 177
        Top = 156
        Width = 392
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'int_nomeven'
        DataSource = dso
        ReadOnly = True
        TabOrder = 5
      end
    end
  end
  inherited pnlTop: TJvPanel
    Width = 1032
    ExplicitWidth = 1032
    inherited pnlCima: TJvPanel
      Width = 1032
      ExplicitWidth = 1032
      inherited lblCodificacaoLMestre: TLabel
        Width = 1027
        ExplicitWidth = 1505
      end
      inherited lblTitulo: TLabel
        Width = 1032
        Caption = 'Ordem de Faturamento'
        ExplicitWidth = 1510
      end
      inherited pnlBaixo: TPanel
        Width = 1032
        ExplicitWidth = 1032
      end
    end
  end
  inherited acBotoes: TActionList
    Left = 1027
    Top = 179
  end
  object dsoItens: TwwDataSource [4]
    DataSet = dmGeral.PCP_CD_M_ORS_ITE
    OnStateChange = dsoStateChange
    Left = 48
    Top = 187
  end
  object dsoTitulos: TwwDataSource [5]
    DataSet = dmGeral.PCP_CD_M_ORS_TIT
    OnStateChange = dsoStateChange
    Left = 48
    Top = 235
  end
  inherited dso: TwwDataSource
    DataSet = dmGeral.PCP_CD_M_ORS
    Left = 48
    Top = 139
  end
  inherited imgBotoesAtivo: TImageList
    Left = 939
    Top = 35
    Bitmap = {
      494C01010800AC019C0218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 939
    Top = 179
    Bitmap = {
      494C010108003001D80218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited ImgPequena: TImageList
    Left = 1027
    Top = 35
    Bitmap = {
      494C01010200FC01EC020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000380000000E0000000100200000000000400C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A0A
      0A72313131FC272727DF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A0A0A72313131FC2727
      27DF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B0B0B783131
      31FC323232FF313131FC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B78313131FC323232FF3131
      31FC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A0A0A75323232FC3232
      32FF313131FC0A0A0A7200000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A75323232FC323232FF313131FC0A0A
      0A72000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000180E0E
      0E87222222D4323232FF272727E0151515A40101012B232323D6323232FF3232
      32FC0B0B0B78000000000000000000000000000000180E0E0E87222222D43232
      32FF272727E0151515A40101012B232323D6323232FF323232FC0B0B0B780000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101272B2B2BEB1E1E
      1EC5050505520101012E0303033F171717AF313131FB323232FF232323D60B0B
      0B76000000000000000000000000010101272B2B2BEB1E1E1EC5050505520101
      012E0303033F171717AF313131FB323232FF232323D60B0B0B76000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A2A2AE90C0C0C800101
      0126191919B62B2B2BED0D0D0D830000000003030346313131FB0101012B0000
      00000000000000000000000000002A2A2AE90C0C0C8001010126191919B62B2B
      2BED0D0D0D830000000003030346313131FB0101012B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000070707602D2D2DF10000001B3030
      30F8151515A400000000000000000000000000000000171717AF151515A40000
      00000000000000000000070707602D2D2DF10000001B303030F8151515A40000
      0000000000000000000000000000171717AF151515A400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F1F1FC80A0A0A71141414A21212
      129700000001000000000000000000000000000000000202023F262626E00000
      000000000000000000001F1F1FC80A0A0A71141414A212121297000000010000
      00000000000000000000000000000202023F262626E000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000323232FF0606065C191919B50101
      012C00000000000000000000000000000000000000000101012E323232FF0000
      00000000000000000000323232FF0606065C191919B50101012C000000000000
      00000000000000000000000000000101012E323232FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000191919B30E0E0E880404044F0000
      0003000000000000000000000000000000000000000005050553222222D40000
      00000000000000000000191919B30E0E0E880404044F00000003000000000000
      000000000000000000000000000005050553222222D400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202372E2E2EF5000000170000
      000000000000000000000000000000000000000000001E1E1EC50E0E0E870000
      00000000000000000000020202372E2E2EF50000001700000000000000000000
      00000000000000000000000000001E1E1EC50E0E0E8700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000202020CB171717AF0000
      0016000000000000000000000000000000050C0C0C802B2B2BEB000000180000
      0000000000000000000000000000202020CB171717AF00000016000000000000
      000000000000000000050C0C0C802B2B2BEB0000001800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000202020CA2E2E
      2EF50E0E0E880606065C0A0A0A712D2D2DF12A2A2AE901010127000000000000
      000000000000000000000000000000000000202020CA2E2E2EF50E0E0E880606
      065C0A0A0A712D2D2DF12A2A2AE9010101270000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0237191919B3323232FF1F1F1FC8070707600000000000000000000000000000
      0000000000000000000000000000000000000000000002020237191919B33232
      32FF1F1F1FC80707076000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000380000000E0000000100010000000000700000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
  end
  inherited imgBotoesAtivoAz: TImageList
    Left = 939
    Top = 83
    Bitmap = {
      494C01010800DC007C0218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited ImgPequenaAz: TImageList
    Left = 1027
    Top = 83
    Bitmap = {
      494C010106000001CC020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000380000001C00000001002000000000008018
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      28000000380000001C0000000100010000000000E00000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFF000000000FFFFFFF000000000
      FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000
      FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000
      FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFF0000000000000000000000000000000000
      000000000000}
  end
  inherited imgBotoesAtivoVe: TImageList
    Left = 939
    Top = 131
    Bitmap = {
      494C01010800DC008C0218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited ImgPequenaVe: TImageList
    Left = 1027
    Top = 131
    Bitmap = {
      494C010106000001DC020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000380000001C00000001002000000000008018
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      28000000380000001C0000000100010000000000E00000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFF000000000FFFFFFF000000000
      FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000
      FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000
      FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000FFFFFFF000000000
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFF0000000000000000000000000000000000
      000000000000}
  end
  inherited imgBotoesAtivoLa: TImageList
    Bitmap = {
      494C01010800DC00BC0118001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      494C010106000001F4010E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
  object PCP_PD_M_ORS: TfrxPDFExport
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
    Left = 121
    Top = 195
  end
  object PCP_XL_M_ORS: TfrxXLSExport
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
    Left = 121
    Top = 243
  end
  object PCP_DB_M_ORS: TfrxDBDataset
    UserName = 'PCP_DB_M_ORS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_ors=id_ors'
      'dta_emissao=dta_emissao'
      'int_nomeres=int_nomeres'
      'id_empresa=id_empresa'
      'id_responsavel=id_responsavel'
      'observacao=observacao'
      'id_pedido=id_pedido'
      'PCP_SQ_M_ORS_TIT=PCP_SQ_M_ORS_TIT'
      'PCP_SQ_M_ORS_ITE=PCP_SQ_M_ORS_ITE'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'id_motorista=id_motorista'
      'int_nomemta=int_nomemta'
      'int_nomecli=int_nomecli'
      'int_telfixo=int_telfixo'
      'id_rom=id_rom'
      'int_nomeresp_rom=int_nomeresp_rom'
      'int_dta_rom=int_dta_rom'
      'int_id_opr=int_id_opr'
      'int_nomeven=int_nomeven'
      'id_tipo_mov_estoque=id_tipo_mov_estoque'
      'id_almoxarifado=id_almoxarifado'
      'vlr_bruto=vlr_bruto'
      'vlr_desconto=vlr_desconto'
      'per_desconto=per_desconto'
      'vlr_liquido=vlr_liquido'
      'hor_emissao=hor_emissao'
      'id_abertura=id_abertura'
      'fin_gerado=fin_gerado'
      'int_id_condicao_pag=int_id_condicao_pag'
      'int_desc_cpg=int_desc_cpg'
      'PCP_SQ_M_ORS_ICO=PCP_SQ_M_ORS_ICO'
      'int_numloteopr=int_numloteopr'
      'int_id_cliente=int_id_cliente')
    DataSet = dmGeral.PCP_CD_M_ORS
    BCDToCurrency = False
    Left = 216
    Top = 145
  end
  object PCP_DB_M_ORS_ITE: TfrxDBDataset
    UserName = 'PCP_DB_M_ORS_ITE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_ors=id_ors'
      'id_item=id_item'
      'id_cor=id_cor'
      'id_tamanho=id_tamanho'
      'qtde=qtde'
      'vlr_unitario=vlr_unitario'
      'vlr_total=vlr_total'
      'int_nomeite=int_nomeite'
      'int_nomecor=int_nomecor'
      'int_nometam=int_nometam'
      'id_sequencia=id_sequencia'
      'id_sequencia_ped=id_sequencia_ped')
    DataSet = dmGeral.PCP_CD_M_ORS_ITE
    BCDToCurrency = False
    Left = 216
    Top = 193
  end
  object PCP_DB_M_ORS_TIT: TfrxDBDataset
    UserName = 'PCP_DB_M_ORS_TIT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_ors=id_ors'
      'id_ors_tit=id_ors_tit'
      'id_forma_pag=id_forma_pag'
      'num_parcela=num_parcela'
      'dias=dias'
      'dta_vencimento=dta_vencimento'
      'che_banco=che_banco'
      'che_agencia=che_agencia'
      'che_conta=che_conta'
      'che_numero=che_numero'
      'che_emitente=che_emitente'
      'vlr_titulo=vlr_titulo'
      'int_nomefpg=int_nomefpg')
    DataSet = dmGeral.PCP_CD_M_ORS_TIT
    BCDToCurrency = False
    Left = 216
    Top = 241
  end
  object PCP_XL_M_ROM: TfrxXLSExport
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
    Left = 304
    Top = 370
  end
  object PCP_PD_M_ROM: TfrxPDFExport
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
    Left = 304
    Top = 314
  end
  object PCP_DB_M_ROM: TfrxDBDataset
    UserName = 'PCP_DB_M_ROM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_rom=id_rom'
      'id_empresa=id_empresa'
      'dta_emissao=dta_emissao'
      'id_responsavel=id_responsavel'
      'id_motorista=id_motorista'
      'observacao=observacao'
      'int_nomemta=int_nomemta'
      'int_nomeres=int_nomeres'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'placa=placa'
      'int_fonemta=int_fonemta'
      'int_celuar=int_celuar'
      'int_email=int_email'
      'PCP_SQ_M_ROM_PED=PCP_SQ_M_ROM_PED'
      'PCP_SQ_M_ROM_LOT=PCP_SQ_M_ROM_LOT')
    DataSet = dmGeral.BUS_CD_M_PCP_ROM
    BCDToCurrency = False
    Left = 56
    Top = 298
  end
  object PCP_DB_M_ROM_PED: TfrxDBDataset
    UserName = 'PCP_DB_M_ROM_PED'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_rom=id_rom'
      'id_pedido=id_pedido'
      'int_nomecli=int_nomecli'
      'int_dtapedido=int_dtapedido'
      'int_codigoregcli=int_codigoregcli'
      'int_nomereg=int_nomereg'
      'int_cubagemped=int_cubagemped'
      'PCP_SQ_M_ROM_PED_ITE=PCP_SQ_M_ROM_PED_ITE')
    DataSet = dmGeral.BUS_CD_M_PCP_ROM_PED
    BCDToCurrency = False
    Left = 192
    Top = 298
  end
  object PCP_DB_M_ROM_ITE: TfrxDBDataset
    UserName = 'PCP_DB_M_ROM_ITE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_rom=id_rom'
      'id_pedido=id_pedido'
      'id_ped_ite=id_ped_ite'
      'id_item=id_item'
      'id_cor=id_cor'
      'id_tamanho=id_tamanho'
      'qtde=qtde'
      'int_nomeite=int_nomeite'
      'int_nomecor=int_nomecor'
      'int_nometam=int_nometam')
    DataSet = dmGeral.BUS_CD_M_PCP_ROM_PED_ITE
    BCDToCurrency = False
    Left = 56
    Top = 354
  end
  object PCP_DB_M_ROM_LOT: TfrxDBDataset
    UserName = 'PCP_DB_M_ROM_LOT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_rom=id_rom'
      'nro_lote_caminhao=nro_lote_caminhao'
      'qtde=qtde'
      'observacao=observacao')
    DataSet = dmGeral.BUS_CD_M_PCP_ROM_LOT
    BCDToCurrency = False
    Left = 192
    Top = 354
  end
  object PCP_DB_M_ROM_REG: TfrxDBDataset
    UserName = 'PCP_DB_M_ROM_REG'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_regiao=id_regiao'
      'int_nomereg=int_nomereg'
      'qtde_ped=qtde_ped')
    DataSet = dmGeral.BUS_CD_M_ROM_REG
    BCDToCurrency = False
    Left = 56
    Top = 410
  end
  object BUS_DB_M_ROM_PED: TfrxDBDataset
    UserName = 'BUS_DB_M_ROM_PED'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_pedido=id_pedido'
      'sum=sum')
    DataSet = dmGeral.BUS_CD_M_ROM_PED
    BCDToCurrency = False
    Left = 192
    Top = 410
  end
  object PCP_FR_M_ROM: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42219.606493761600000000
    ReportOptions.LastChange = 42221.593913912000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      'cont : integer;                                  '
      'procedure Memo30OnBeforePrint(Sender: TfrxComponent);'
      ' begin'
      '   if cont = 1 then'
      '     begin              '
      '       Memo30.Color:= $00EAEAEA;'
      '       cont := 0;                              '
      '     end            '
      '   else'
      '     begin                                              '
      '       Memo30.Color:= clwhite;'
      '       cont := 1;                              '
      '     end;    '
      ' end;'
      ''
      'procedure Memo37OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if cont = 1 then'
      '     begin              '
      '       Memo37.Color:= $00EAEAEA;'
      '       cont := 0;                              '
      '     end            '
      '   else'
      '     begin                                              '
      '       Memo37.Color:= clwhite;'
      '       cont := 1;                              '
      '     end;  '
      'end;'
      'procedure Memo65OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if cont = 1 then'
      '     begin              '
      '       Memo65.Color:= $00EAEAEA;'
      '       cont := 0;                              '
      '     end            '
      '   else'
      '     begin                                              '
      '       Memo65.Color:= clwhite;'
      '       cont := 1;                              '
      '     end  '
      'end;'
      ''
      'procedure Memo39OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if cont = 1 then'
      '     begin              '
      '       Memo39.Color:= $00EAEAEA;'
      '       cont := 0;                              '
      '     end            '
      '   else'
      '     begin                                              '
      '       Memo39.Color:= clwhite;'
      '       cont := 1;                              '
      '     end  '
      'end;'
      ''
      'begin'
      '               '
      'end.')
    Left = 304
    Top = 424
    Datasets = <
      item
        DataSet = BUS_DB_M_ROM_PED
        DataSetName = 'BUS_DB_M_ROM_PED'
      end
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = PCP_DB_M_ROM
        DataSetName = 'PCP_DB_M_ROM'
      end
      item
        DataSet = PCP_DB_M_ROM_ITE
        DataSetName = 'PCP_DB_M_ROM_ITE'
      end
      item
        DataSet = PCP_DB_M_ROM_LOT
        DataSetName = 'PCP_DB_M_ROM_LOT'
      end
      item
        DataSet = PCP_DB_M_ROM_PED
        DataSetName = 'PCP_DB_M_ROM_PED'
      end
      item
        DataSet = PCP_DB_M_ROM_REG
        DataSetName = 'PCP_DB_M_ROM_REG'
      end>
    Variables = <
      item
        Name = ' Externa'
        Value = Null
      end
      item
        Name = 'Qtde'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 252.047310000000000000
          Top = 18.897650000000000000
          Width = 400.630180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."id_empresa"] - [CAD_DB_C_PAR."emp_fantasia"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          Left = 252.047310000000000000
          Top = 37.795300000000000000
          Width = 400.630180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_endereco"] - [CAD_DB_C_PAR."emp_numero"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 252.047310000000000000
          Top = 56.692949999999990000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_bairro"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 252.047310000000000000
          Top = 75.590600000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_cep"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 181.015770000000000000
          Top = 18.897650000000000000
          Width = 68.031539999999990000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 181.015770000000000000
          Top = 37.795300000000000000
          Width = 68.031539999999990000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Emdere'#231'o : ')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 181.015770000000000000
          Top = 56.692949999999990000
          Width = 68.031539999999990000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Bairro :')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 192.354360000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 418.346630000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fone :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 485.409710000000000000
          Top = 75.590600000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_telefone"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 485.378170000000000000
          Top = 56.692949999999990000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."int_nomecid"] - [CAD_DB_C_PAR."int_uf"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 418.346630000000000000
          Top = 56.692949999999990000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade :')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 1.984230000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 328.819110000000000000
        Width = 740.409927000000000000
        Child = PCP_FR_M_ROM.Child2
        object Subreport5: TfrxSubreport
          Align = baWidth
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          Page = PCP_FR_M_ROM.Page6
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 377.953000000000000000
        Width = 740.409927000000000000
        Child = PCP_FR_M_ROM.Child3
        object Subreport1: TfrxSubreport
          Align = baLeft
          Width = 362.834645670000000000
          Height = 18.897650000000000000
          Page = PCP_FR_M_ROM.Page2
        end
        object Subreport2: TfrxSubreport
          Align = baRight
          Left = 377.575281330000000000
          Width = 362.834645670000000000
          Height = 18.897650000000000000
          Page = PCP_FR_M_ROM.Page3
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 129.078850000000000000
        Top = 177.637910000000000000
        Width = 740.409927000000000000
        Child = PCP_FR_M_ROM.Child1
        DataSet = PCP_DB_M_ROM
        DataSetName = 'PCP_DB_M_ROM'
        RowCount = 0
        object Memo19: TfrxMemoView
          Left = 411.968770000000000000
          Top = 7.559059999999988000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' da Carga : [PCP_DB_M_ROM."id_rom"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000010000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Placa :')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Top = 45.574829999999990000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Motorista :')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 11.338590000000000000
          Top = 26.456709999999990000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Responsavel :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 7.559059999999988000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 94.488250000000000000
          Top = 64.252010000000010000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM."placa"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 94.488250000000000000
          Top = 45.574829999999990000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM."id_motorista"] - [PCP_DB_M_ROM."int_nomemta"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 94.488250000000000000
          Top = 7.559059999999988000
          Width = 86.929133860000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM."dta_emissao"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 94.488250000000000000
          Top = 26.456709999999990000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM."id_responsavel"] - [PCP_DB_M_ROM."int_nomeres"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 185.196970000000000000
          Top = 64.252010000000010000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fone :')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 252.260050000000000000
          Top = 64.252010000000010000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM."int_celuar"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 343.937230000000000000
          Top = 64.252010000000010000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Email :')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 411.000310000000000000
          Top = 64.252010000000010000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM."int_email"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 343.937230000000000000
          Top = 45.574829999999990000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fone :')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 411.000310000000000000
          Top = 45.574829999999990000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM."int_fonemta"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 740.787880000000000000
          Width = -740.787880000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 740.787880000000000000
          Top = 86.929189999999970000
          Width = -740.787880000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Top = 93.929189999999970000
          Width = 740.787880000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE CARGA')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 740.787880000000000000
          Top = 125.944960000000000000
          Width = -740.787880000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Child3: TfrxChild
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 427.086890000000000000
        Width = 740.409927000000000000
        object Subreport3: TfrxSubreport
          Align = baWidth
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          Page = PCP_FR_M_ROM.Page4
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 514.016080000000000000
        Width = 740.409927000000000000
        object Memo38: TfrxMemoView
          Left = 283.464750000000000000
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
        object Memo66: TfrxMemoView
          Left = 623.622450000000000000
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
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 102.047310000000000000
        Width = 740.409927000000000000
        DataSet = BUS_DB_M_ROM_PED
        DataSetName = 'BUS_DB_M_ROM_PED'
        RowCount = 0
        object Memo30: TfrxMemoView
          Width = 362.834645670000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
        end
        object BUS_DB_M_ROM_ORSid_ors: TfrxMemoView
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = BUS_DB_M_ROM_PED
          DataSetName = 'BUS_DB_M_ROM_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[BUS_DB_M_ROM_PED."id_pedido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object BUS_DB_M_ROM_ORSsum: TfrxMemoView
          Left = 86.929190000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'sum'
          DataSet = BUS_DB_M_ROM_PED
          DataSetName = 'BUS_DB_M_ROM_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[BUS_DB_M_ROM_PED."sum"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo25: TfrxMemoView
          Left = 1.220470000000000000
          Top = 37.795300000000000000
          Width = 362.834645670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 37.795300000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pedido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Top = 15.118120000000000000
          Width = 362.834645670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade de Itens por Pedido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 86.929190000000000000
          Top = 37.795300000000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 139.842610000000000000
        Width = 740.409927000000000000
        object Memo57: TfrxMemoView
          Left = 86.929190000000000000
          Top = 7.559059999999988000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<BUS_DB_M_ROM_PED."sum">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 45.354360000000000000
          Top = 7.559059999999988000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line10: TfrxLineView
          Left = 49.913420000000000000
          Top = 4.559059999999988000
          Width = 98.267780000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo28: TfrxMemoView
          Top = 15.118120000000000000
          Width = 362.834645670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade por Lote')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = -0.953000000000000000
          Top = 37.795300000000000000
          Width = 362.834645670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Top = 37.795300000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Lote')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 301.409400000000000000
          Top = 37.795300000000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 33.062770000000000000
          Top = 37.795300000000000000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Observa'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 102.047310000000000000
        Width = 740.409927000000000000
        DataSet = PCP_DB_M_ROM_LOT
        DataSetName = 'PCP_DB_M_ROM_LOT'
        RowCount = 0
        object Memo37: TfrxMemoView
          Width = 362.834645670000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo37OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
        end
        object PCP_DB_M_ROM_LOTnro_lote_caminhao: TfrxMemoView
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DataField = 'nro_lote_caminhao'
          DataSet = PCP_DB_M_ROM_LOT
          DataSetName = 'PCP_DB_M_ROM_LOT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_ROM_LOT."nro_lote_caminhao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object PCP_DB_M_ROM_LOTqtde1: TfrxMemoView
          Left = 301.409400000000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_ROM_LOT
          DataSetName = 'PCP_DB_M_ROM_LOT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_ROM_LOT."qtde"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object PCP_DB_M_ROM_LOTobservacao: TfrxMemoView
          Left = 33.062770000000000000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          DataField = 'observacao'
          DataSet = PCP_DB_M_ROM_LOT
          DataSetName = 'PCP_DB_M_ROM_LOT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM_LOT."observacao"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer3: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 139.842610000000000000
        Width = 740.409927000000000000
        object Memo60: TfrxMemoView
          Left = 260.787570000000000000
          Top = 1.000000000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 302.362400000000000000
          Top = 1.000000000000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_ROM_LOT
          DataSetName = 'PCP_DB_M_ROM_LOT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PCP_DB_M_ROM_LOT."qtde">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line11: TfrxLineView
          Left = 264.787570000000000000
          Top = 1.000000000000000000
          Width = 98.267780000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        ReprintOnNewPage = True
        object Memo1: TfrxMemoView
          Top = 19.118120000000000000
          Width = 740.787645670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Rela'#231#227'o de Pedidos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line6: TfrxLineView
          Top = 15.118120000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line7: TfrxLineView
          Top = 41.574830000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo34: TfrxMemoView
          Top = 49.133889999999990000
          Width = 740.787880000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 45.354360000000000000
          Top = 49.133889999999990000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 105.826840000000000000
          Top = 49.133889999999990000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Top = 49.133889999999990000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pedido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 438.425480000000000000
          Top = 49.133889999999990000
          Width = 200.315050940000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Regi'#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 642.520100000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cubagem')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 109.606370000000000000
        Width = 740.409927000000000000
        DataSet = PCP_DB_M_ROM_PED
        DataSetName = 'PCP_DB_M_ROM_PED'
        RowCount = 0
        object Memo39: TfrxMemoView
          Width = 740.787880000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo39OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
        end
        object PCP_DB_M_ROM_ORSint_dtaemissaoors: TfrxMemoView
          Left = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_ROM_PED
          DataSetName = 'PCP_DB_M_ROM_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM_PED."int_dtapedido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object PCP_DB_M_ROM_ORSint_nomecli: TfrxMemoView
          Left = 105.826840000000000000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          DataField = 'int_nomecli'
          DataSet = PCP_DB_M_ROM_PED
          DataSetName = 'PCP_DB_M_ROM_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM_PED."int_nomecli"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object PCP_DB_M_ROM_ORSint_nomereg: TfrxMemoView
          Left = 438.425480000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          DataField = 'int_nomereg'
          DataSet = PCP_DB_M_ROM_PED
          DataSetName = 'PCP_DB_M_ROM_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM_PED."int_nomereg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object PCP_DB_M_ROM_ORSid_ors1: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_ROM_PED
          DataSetName = 'PCP_DB_M_ROM_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_ROM_PED."id_pedido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object PCP_DB_M_ROM_PEDint_cubagemped: TfrxMemoView
          Left = 642.520100000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_ROM_PED
          DataSetName = 'PCP_DB_M_ROM_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_ROM_PED."int_cubagemped"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        object Memo70: TfrxMemoView
          Left = 631.181510000000000000
          Top = 2.000000000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 672.756340000000000000
          Top = 2.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PCP_DB_M_ROM_PED."int_cubagemped">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header5: TfrxHeader
        FillType = ftBrush
        Height = 45.574830000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo33: TfrxMemoView
          Top = 4.000000000000000000
          Width = 740.787645670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'Regi'#245'es')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Top = 26.456710000000000000
          Width = 362.834645669291000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Top = 26.456710000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Regi'#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 204.094620000000000000
          Top = 26.456710000000000000
          Width = 124.724450940000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde de Pedidos')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer5: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 128.504020000000000000
        Width = 740.409927000000000000
        object Memo72: TfrxMemoView
          Left = 234.330860000000000000
          Top = 1.000000000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 275.905690000000000000
          Top = 1.000000000000000000
          Width = 52.913380940000010000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_ROM_LOT
          DataSetName = 'PCP_DB_M_ROM_LOT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PCP_DB_M_ROM_REG."qtde_ped">,MasterData7)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line13: TfrxLineView
          Left = 238.330860000000000000
          Top = 2.000000000000000000
          Width = 90.708720000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData7: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 86.929190000000000000
        Width = 740.409927000000000000
        DataSet = PCP_DB_M_ROM_REG
        DataSetName = 'PCP_DB_M_ROM_REG'
        RowCount = 0
        object Memo65: TfrxMemoView
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo65OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haCenter
          ParentFont = False
        end
        object PCP_DB_M_ROM_REGint_nomereg: TfrxMemoView
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          DataField = 'int_nomereg'
          DataSet = PCP_DB_M_ROM_REG
          DataSetName = 'PCP_DB_M_ROM_REG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ROM_REG."int_nomereg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object PCP_DB_M_ROM_REGqtde_ped: TfrxMemoView
          Left = 275.905690000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'qtde_ped'
          DataSet = PCP_DB_M_ROM_REG
          DataSetName = 'PCP_DB_M_ROM_REG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_ROM_REG."qtde_ped"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42450.700904733800000000
    ReportOptions.LastChange = 42450.700904733800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 342
    Top = 54
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = PCP_DB_M_ORS
        DataSetName = 'PCP_DB_M_ORS'
      end
      item
        DataSet = PCP_DB_M_ORS_TIT
        DataSetName = 'PCP_DB_M_ORS_TIT'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 98.677180000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 113.000000000000000000
          Top = 9.102350000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 113.000000000000000000
          Top = 28.102350000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 113.000000000000000000
          Top = 47.102350000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 517.142857140000000000
          Top = 9.102350000000000000
          Width = 57.345392860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 517.857142860000000000
          Top = 28.102350000000000000
          Width = 56.631107140000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'I.E.:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 516.428571430000000000
          Top = 47.102350000000000000
          Width = 58.059678570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fone :')
          ParentFont = False
        end
        object CAD_DB_C_PARemp_fantasia: TfrxMemoView
          Left = 209.285714290000000000
          Top = 8.959492860000000000
          Width = 287.773037150000000000
          Height = 18.897650000000000000
          DataField = 'emp_fantasia'
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_fantasia"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 209.285714290000000000
          Top = 28.102350000000000000
          Width = 287.058751430000000000
          Height = 18.897650000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[<CAD_DB_C_PAR."emp_endereco">, <CAD_DB_C_PAR."emp_numero"> - <C' +
              'AD_DB_C_PAR."emp_bairro">]')
          ParentFont = False
        end
        object CAD_DB_C_PARint_nomecid: TfrxMemoView
          Left = 209.285714290000000000
          Top = 47.530921430000000000
          Width = 288.487322860000000000
          Height = 18.897650000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[<CAD_DB_C_PAR."int_nomecid"> - <CAD_DB_C_PAR."int_uf">]')
          ParentFont = False
        end
        object CAD_DB_C_PARemp_cnpj: TfrxMemoView
          Left = 576.428571430000000000
          Top = 9.102350000000000000
          Width = 154.100185710000000000
          Height = 18.897650000000000000
          DataField = 'emp_cnpj'
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_cnpj"]')
          ParentFont = False
        end
        object CAD_DB_C_PARemp_ie: TfrxMemoView
          Left = 576.428571430000000000
          Top = 27.530921430000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'emp_ie'
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_ie"]')
          ParentFont = False
        end
        object CAD_DB_C_PARemp_telefone: TfrxMemoView
          Left = 576.428571430000000000
          Top = 48.245207140000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'emp_telefone'
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_telefone"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 147.121624440000000000
        Top = 177.637910000000000000
        Width = 740.409927000000000000
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 57.777777780000000000
          Top = 7.252731110000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente :')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 57.777777780000000000
          Top = 29.474953330000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fone :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 31.111111110000000000
          Top = 51.697175560000000000
          Width = 121.154916670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Entregue em :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 30.000000000000000000
          Top = 75.030508890000000000
          Width = 122.266027780000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Representante :')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 31.111111110000000000
          Top = 99.030508890000000000
          Width = 121.154916670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor da Venda :')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 426.666666660000000000
          Top = 7.252731110000000000
          Width = 147.821583340000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ord. de Faturamento :')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 427.777777780000000000
          Top = 29.474953330000000000
          Width = 146.710472220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ord. de produ'#231#227'o :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 430.000000000000000000
          Top = 75.030508890000000000
          Width = 144.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pedido :')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 428.888888890000000000
          Top = 51.697175560000000000
          Width = 145.599361110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Motorista :')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 347.716760000000000000
        Width = 740.409927000000000000
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 521.575140000000000000
        Width = 740.409927000000000000
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 438.425480000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object PCP_FR_M_ORS: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42214.358768483800000000
    ReportOptions.LastChange = 45527.667770324070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo14OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 121
    Top = 145
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = PCP_DB_M_ORS
        DataSetName = 'PCP_DB_M_ORS'
      end
      item
        DataSet = PCP_DB_M_ORS_ITE
        DataSetName = 'PCP_DB_M_ORS_ITE'
      end
      item
        DataSet = PCP_DB_M_ORS_TIT
        DataSetName = 'PCP_DB_M_ORS_TIT'
      end>
    Variables = <
      item
        Name = ' Externa'
        Value = Null
      end
      item
        Name = 'Valor_Venda'
        Value = Null
      end
      item
        Name = 'ft_impresso_por'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 432.000000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.000000000000000000
          Top = 83.149660000000000000
          Width = 710.551640000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE FATURAMENTO')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 466.993006990000000000
          Top = 0.909090910000000000
          Width = 24.917749090000000000
          Height = 28.174706360000000000
          Visible = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 95.360473080000000000
          Top = 7.559060000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_fantasia"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          Left = 95.360473080000000000
          Top = 26.456710000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_endereco"], [CAD_DB_C_PAR."emp_numero"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 95.360473080000000000
          Top = 45.354360000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."int_nomecid"] - [CAD_DB_C_PAR."int_uf"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 27.328933080000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa : ')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 27.328933080000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Emdere'#231'o : ')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 27.328933080000000000
          Top = 45.354360000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Municipio : ')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = -33.143546920000000000
          Top = 121.393785000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente :')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 403.779530000000000000
          Top = 162.868036920000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pedido :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = -33.143546920000000000
          Top = 160.944960000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Entregue em :')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = -33.143546920000000000
          Top = 200.509490770000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor da Venda :')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 95.360473080000000000
          Top = 121.393785000000000000
          Width = 298.582740630000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'Memo14OnAfterPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."int_id_cliente"] - [PCP_DB_M_ORS."int_nomecli"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 532.913730000000000000
          Top = 162.868036920000000000
          Width = 158.740130630000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."id_pedido"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 95.360473080000000000
          Top = 160.944960000000000000
          Width = 64.251880630000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."dta_emissao"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = -3.580982480000000000
          Top = 180.944960000000000000
          Width = 95.161925560000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Representante :')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 419.527830000000000000
          Top = 182.740260000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Motorista :')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 95.360473080000000000
          Top = 180.944960000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."int_nomeven"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 532.913730000000000000
          Top = 182.740260000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."int_nomemta"]')
          ParentFont = False
        end
        object Valor_Venda: TfrxMemoView
          Left = 95.360473080000000000
          Top = 198.509490770000000000
          Width = 200.314960630000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Valor_Venda]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = -18.025426920000000000
          Top = 141.871580770000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fone :')
          ParentFont = False
        end
        object PCP_DB_M_ORSint_telfixo: TfrxMemoView
          Left = 95.360473080000000000
          Top = 141.871580770000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'int_telfixo'
          DataSet = PCP_DB_M_ORS
          DataSetName = 'PCP_DB_M_ORS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."int_telfixo"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 404.409710000000000000
          Top = 119.504020000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Ord. de Faturamento :')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 532.913730000000000000
          Top = 118.504020000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."id_ors"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 403.846153850000000000
          Top = 141.871580770000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Ord. de produ'#231#227'o :')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 532.913730000000000000
          Top = 141.871580770000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."int_numloteopr"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 7.961348180000000000
          Top = 256.175016360000000000
          Width = 729.449290000000000000
          Height = 151.181200000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#227'o adicional : '
            ''
            
              '________________________________________________________________' +
              '__________________________________________________________'
            ''
            
              '________________________________________________________________' +
              '__________________________________________________________'
            ''
            
              '________________________________________________________________' +
              '__________________________________________________________'
            ''
            
              '________________________________________________________________' +
              '__________________________________________________________'
            ''
            
              '________________________________________________________________' +
              '__________________________________________________________')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 574.488560000000000000
          Top = 7.559060000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_cnpj"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 574.488560000000000000
          Top = 26.456710000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_ie"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 574.488560000000000000
          Top = 45.354360000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_telefone"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 506.457020000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ : ')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 536.693260000000000000
          Top = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'I.E. : ')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 525.354670000000000000
          Top = 45.354360000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fone : ')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 612.283860000000000000
          Top = 415.409710000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] / [Time]')
          ParentFont = False
          Formats = <
            item
              Kind = fkDateTime
            end
            item
            end>
        end
        object Memo22: TfrxMemoView
          Left = -33.143546920000000000
          Top = 218.702350000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Observa'#231#227'o :')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 95.360473080000000000
          Top = 218.702350000000000000
          Width = 590.714960630000000000
          Height = 34.097650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."observacao"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 165.078850000000000000
          Top = 160.944960000000000000
          Width = 128.503890630000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'hh:mm am/pm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."hor_emissao"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 612.283860000000000000
          Top = 402.732530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[ft_impresso_por]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 548.252320000000000000
          Top = 402.732530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Impresso por:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 548.252320000000000000
          Top = 415.748300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Impresso em:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 1.779530000000000000
          Top = 77.811070000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line1: TfrxLineView
          Left = 1.779530000000000000
          Top = 113.385900000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 1.779530000000000000
          Top = 254.669450000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 527.128016360000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo31: TfrxMemoView
          Left = 3.000000000000000000
          Top = 3.149660000000000000
          Width = 710.551640000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE FATURAMENTO')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 139.842610000000000000
          Top = 36.504020000000000000
          Width = 11.338590000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 139.842610000000000000
          Top = 62.981815770000000000
          Width = 11.338590000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 154.699063080000000000
          Top = 36.504020000000000000
          Width = 408.189110630000000000
          Height = 22.677180000000000000
          OnAfterPrint = 'Memo14OnAfterPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."int_id_cliente"] - [PCP_DB_M_ORS."int_nomecli"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 621.945270000000000000
          Top = 88.978271920000000000
          Width = 94.488120630000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."id_pedido"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 154.699063080000000000
          Top = 62.871580770000000000
          Width = 151.181070630000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."dta_emissao"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 154.699063080000000000
          Top = 90.868036920000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."int_nomeven"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 463.425480000000000000
          Top = 135.519790000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Motorista: [PCP_DB_M_ORS."int_nomemta"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 621.945270000000000000
          Top = 36.504020000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."id_ors"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 621.945270000000000000
          Top = 62.871580770000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_ORS."int_numloteopr"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 1.779530000000000000
          Top = 3.811070000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Left = 1.779530000000000000
          Top = 26.385900000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo63: TfrxMemoView
          Left = 3.961348180000000000
          Top = 143.175016360000000000
          Width = 729.449290000000000000
          Height = 321.260050000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'Observa'#231#227'o adicional: '
            ''
            
              '________________________________________________________________' +
              '__________________'
            ''
            
              '________________________________________________________________' +
              '__________________'
            ''
            
              '________________________________________________________________' +
              '__________________'
            ''
            
              '________________________________________________________________' +
              '__________________'
            ''
            
              '________________________________________________________________' +
              '__________________'
            ''
            
              '________________________________________________________________' +
              '__________________'
            ''
            
              '________________________________________________________________' +
              '__________________'
            ''
            
              '________________________________________________________________' +
              '__________________'
            ''
            
              '________________________________________________________________' +
              '__________________')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 139.842610000000000000
          Top = 90.708720000000000000
          Width = 11.338590000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 139.842610000000000000
          Top = 116.496135000000000000
          Width = 11.338590000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 155.622140000000000000
          Top = 116.385900000000000000
          Width = 196.535430630000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'R$ [Valor_Venda]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 3.961348180000000000
          Top = 36.795300000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 3.961348180000000000
          Top = 63.273095770000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'Entregue em')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 3.961348180000000000
          Top = 91.000000000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'Representante')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.961348180000000000
          Top = 116.787415000000000000
          Width = 132.283550000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'Valor de venda')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 564.929500000000000000
          Top = 36.504020000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'O.F.:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 564.929500000000000000
          Top = 62.871580770000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'O.P.:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 534.693260000000000000
          Top = 88.978271920000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pedido:')
          ParentFont = False
        end
      end
    end
  end
  object BUS_CD_M_ROM_PED_ICF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_ROM_PED_ICF'
    RemoteServer = dmGeral.pcConecao
    Left = 494
    Top = 328
  end
  object dsItensConf: TwwDataSource
    DataSet = dmGeral.PCP_CD_M_ORS_ICO
    OnStateChange = dsoStateChange
    Left = 128
    Top = 291
  end
  object ConexaoBDFat: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=18.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}'
      'DSAuthenticationUser=admin'
      'HostName=localhost')
    Left = 529
    Top = 464
    UniqueId = '{9DB98CFE-7809-45C4-AD3A-DA87030605AD}'
  end
  object pcConecaoDBFat: TDSProviderConnection
    ServerClassName = 'TSM'
    SQLConnection = ConexaoBDFat
    Left = 623
    Top = 464
  end
  object BUS_CD_M_NFE_CXA_FAT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_M_NFE'
    RemoteServer = pcConecaoDBFat
    Left = 864
    Top = 368
    object BUS_CD_M_NFE_CXA_FATid_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object BUS_CD_M_NFE_CXA_FATid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
    end
    object BUS_CD_M_NFE_CXA_FATid_pedido_compra: TIntegerField
      FieldName = 'id_pedido_compra'
    end
    object BUS_CD_M_NFE_CXA_FATid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
    end
    object BUS_CD_M_NFE_CXA_FATid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_M_NFE_CXA_FATid_emitente: TIntegerField
      FieldName = 'id_emitente'
    end
    object BUS_CD_M_NFE_CXA_FATid_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object BUS_CD_M_NFE_CXA_FATid_transportadora: TIntegerField
      FieldName = 'id_transportadora'
    end
    object BUS_CD_M_NFE_CXA_FATid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
    end
    object BUS_CD_M_NFE_CXA_FATuf_emitente: TWideStringField
      FieldName = 'uf_emitente'
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATuf_empresa: TWideStringField
      FieldName = 'uf_empresa'
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATdta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object BUS_CD_M_NFE_CXA_FATdta_documento: TDateField
      FieldName = 'dta_documento'
    end
    object BUS_CD_M_NFE_CXA_FATcpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object BUS_CD_M_NFE_CXA_FATnumero: TIntegerField
      FieldName = 'numero'
    end
    object BUS_CD_M_NFE_CXA_FATserie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object BUS_CD_M_NFE_CXA_FATsub_serie: TWideStringField
      FieldName = 'sub_serie'
      Size = 3
    end
    object BUS_CD_M_NFE_CXA_FATmodelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATstatus: TIntegerField
      FieldName = 'status'
    end
    object BUS_CD_M_NFE_CXA_FATnfe_ecf: TIntegerField
      FieldName = 'nfe_ecf'
    end
    object BUS_CD_M_NFE_CXA_FATecf_prevenda: TIntegerField
      FieldName = 'ecf_prevenda'
    end
    object BUS_CD_M_NFE_CXA_FATid_fiscal_referenciado: TIntegerField
      FieldName = 'id_fiscal_referenciado'
    end
    object BUS_CD_M_NFE_CXA_FATcanc_motivo: TWideStringField
      FieldName = 'canc_motivo'
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATcanc_data: TDateField
      FieldName = 'canc_data'
    end
    object BUS_CD_M_NFE_CXA_FATpeso_liquido: TFloatField
      FieldName = 'peso_liquido'
    end
    object BUS_CD_M_NFE_CXA_FATpeso_bruto: TFloatField
      FieldName = 'peso_bruto'
    end
    object BUS_CD_M_NFE_CXA_FATnfe_chave: TWideStringField
      FieldName = 'nfe_chave'
      Size = 44
    end
    object BUS_CD_M_NFE_CXA_FATnfe_obs: TWideStringField
      FieldName = 'nfe_obs'
      Size = 800
    end
    object BUS_CD_M_NFE_CXA_FATnfe_protocolo: TWideStringField
      FieldName = 'nfe_protocolo'
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATnfe_recibo: TWideStringField
      FieldName = 'nfe_recibo'
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATnfe_canc_protocolo: TWideStringField
      FieldName = 'nfe_canc_protocolo'
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATnfe_canc_status: TWideStringField
      FieldName = 'nfe_canc_status'
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATnfe_tipo_emissao: TWideStringField
      FieldName = 'nfe_tipo_emissao'
      Size = 1
    end
    object BUS_CD_M_NFE_CXA_FATnfe_tipo_ambiente: TWideStringField
      FieldName = 'nfe_tipo_ambiente'
      Size = 1
    end
    object BUS_CD_M_NFE_CXA_FATnfe_cod_sit: TWideStringField
      FieldName = 'nfe_cod_sit'
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATind_operacao: TIntegerField
      FieldName = 'ind_operacao'
    end
    object BUS_CD_M_NFE_CXA_FATind_emitente: TIntegerField
      FieldName = 'ind_emitente'
    end
    object BUS_CD_M_NFE_CXA_FATind_frete: TIntegerField
      FieldName = 'ind_frete'
    end
    object BUS_CD_M_NFE_CXA_FATvlr_mercadoria: TFMTBCDField
      FieldName = 'vlr_mercadoria'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATvlr_acrescimo: TFMTBCDField
      FieldName = 'vlr_acrescimo'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATicm_n_valor: TFMTBCDField
      FieldName = 'icm_n_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATicm_n_base: TFMTBCDField
      FieldName = 'icm_n_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATicm_s_valor: TFMTBCDField
      FieldName = 'icm_s_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATicm_s_base: TFMTBCDField
      FieldName = 'icm_s_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATipi_base: TFMTBCDField
      FieldName = 'ipi_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATipi_valor: TFMTBCDField
      FieldName = 'ipi_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATiss_base: TFMTBCDField
      FieldName = 'iss_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATiss_valor: TFMTBCDField
      FieldName = 'iss_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATfre_base: TFMTBCDField
      FieldName = 'fre_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATfre_valor: TFMTBCDField
      FieldName = 'fre_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATpis_valor: TFMTBCDField
      FieldName = 'pis_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATpis_valor_st: TFMTBCDField
      FieldName = 'pis_valor_st'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATcof_valor: TFMTBCDField
      FieldName = 'cof_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATcof_valor_st: TFMTBCDField
      FieldName = 'cof_valor_st'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATvlr_isenta: TFMTBCDField
      FieldName = 'vlr_isenta'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATvlr_outras: TFMTBCDField
      FieldName = 'vlr_outras'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATvlr_seguro: TFMTBCDField
      FieldName = 'vlr_seguro'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATtipo_nf: TWideStringField
      FieldName = 'tipo_nf'
      Size = 1
    end
    object BUS_CD_M_NFE_CXA_FATecf_serial_impressora: TWideStringField
      FieldName = 'ecf_serial_impressora'
      Size = 60
    end
    object BUS_CD_M_NFE_CXA_FATecf_marca_impressora: TWideStringField
      FieldName = 'ecf_marca_impressora'
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATecf_modelo_impressora: TWideStringField
      FieldName = 'ecf_modelo_impressora'
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATecf_caixa: TWideStringField
      FieldName = 'ecf_caixa'
      Size = 3
    end
    object BUS_CD_M_NFE_CXA_FATdta_movimento: TDateField
      FieldName = 'dta_movimento'
    end
    object BUS_CD_M_NFE_CXA_FATorigem_nf: TWideStringField
      FieldName = 'origem_nf'
      Size = 1
    end
    object BUS_CD_M_NFE_CXA_FATfaturada: TBooleanField
      FieldName = 'faturada'
    end
    object BUS_CD_M_NFE_CXA_FATsituacao_inspecao: TIntegerField
      FieldName = 'situacao_inspecao'
    end
    object BUS_CD_M_NFE_CXA_FATid_fiscal_frete: TIntegerField
      FieldName = 'id_fiscal_frete'
    end
    object BUS_CD_M_NFE_CXA_FATid_pedido_venda: TIntegerField
      FieldName = 'id_pedido_venda'
    end
    object BUS_CD_M_NFE_CXA_FATvlr_outras_desp: TFMTBCDField
      FieldName = 'vlr_outras_desp'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATfre_custo: TFMTBCDField
      FieldName = 'fre_custo'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATvlr_icm_ser_nao_incide: TFMTBCDField
      FieldName = 'vlr_icm_ser_nao_incide'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATcof_base: TFMTBCDField
      FieldName = 'cof_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATpis_base: TFMTBCDField
      FieldName = 'pis_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATposvenda: TBooleanField
      FieldName = 'posvenda'
    end
    object BUS_CD_M_NFE_CXA_FATid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object BUS_CD_M_NFE_CXA_FATint_id_perfil_cli: TIntegerField
      FieldName = 'int_id_perfil_cli'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_CXA_FATint_nfeecf: TWideMemoField
      FieldName = 'int_nfeecf'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_nometme: TWideStringField
      FieldName = 'int_nometme'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_NFE_CXA_FATint_nomeope: TWideMemoField
      FieldName = 'int_nomeope'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_nomecpg: TWideStringField
      FieldName = 'int_nomecpg'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_NFE_CXA_FATint_nomevnd: TWideStringField
      FieldName = 'int_nomevnd'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATint_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object BUS_CD_M_NFE_CXA_FATcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_M_NFE_CXA_FATrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_M_NFE_CXA_FATint_nometra: TWideStringField
      FieldName = 'int_nometra'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATint_endtra: TWideStringField
      FieldName = 'int_endtra'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATint_cidtra: TWideStringField
      FieldName = 'int_cidtra'
      ProviderFlags = []
      Size = 60
    end
    object BUS_CD_M_NFE_CXA_FATint_esttra: TWideStringField
      FieldName = 'int_esttra'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATint_cnptra: TWideStringField
      FieldName = 'int_cnptra'
      ProviderFlags = []
      Size = 14
    end
    object BUS_CD_M_NFE_CXA_FATint_instra: TWideStringField
      FieldName = 'int_instra'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_CXA_FATtipo_cte: TIntegerField
      FieldName = 'tipo_cte'
    end
    object BUS_CD_M_NFE_CXA_FATnfe_finalidade: TIntegerField
      FieldName = 'nfe_finalidade'
    end
    object BUS_CD_M_NFE_CXA_FATpath_xml: TWideStringField
      FieldName = 'path_xml'
      Size = 200
    end
    object BUS_CD_M_NFE_CXA_FATnfref_chave: TWideStringField
      FieldName = 'nfref_chave'
      Size = 44
    end
    object BUS_CD_M_NFE_CXA_FATint_cnpjcpf: TWideMemoField
      FieldName = 'int_cnpjcpf'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_pessoa: TIntegerField
      FieldName = 'int_pessoa'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_CXA_FATint_telefone: TWideMemoField
      FieldName = 'int_telefone'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_doc_ie: TWideMemoField
      FieldName = 'int_doc_ie'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_email: TWideMemoField
      FieldName = 'int_email'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_cep: TWideMemoField
      FieldName = 'int_cep'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_endereco: TWideMemoField
      FieldName = 'int_endereco'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_estado: TWideMemoField
      FieldName = 'int_estado'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_bairro: TWideMemoField
      FieldName = 'int_bairro'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_numero: TWideMemoField
      FieldName = 'int_numero'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_complemento: TWideMemoField
      FieldName = 'int_complemento'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_cod_cidade: TWideMemoField
      FieldName = 'int_cod_cidade'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_nom_cidade: TWideMemoField
      FieldName = 'int_nom_cidade'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATimp_valor: TFMTBCDField
      FieldName = 'imp_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATtri_valor: TFMTBCDField
      FieldName = 'tri_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATtra_placa: TWideStringField
      FieldName = 'tra_placa'
      Size = 8
    end
    object BUS_CD_M_NFE_CXA_FATtra_uf: TWideStringField
      FieldName = 'tra_uf'
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATtra_rntc: TWideStringField
      FieldName = 'tra_rntc'
      Size = 10
    end
    object BUS_CD_M_NFE_CXA_FATtra_qtde_vol: TFloatField
      FieldName = 'tra_qtde_vol'
    end
    object BUS_CD_M_NFE_CXA_FATtra_especie: TWideStringField
      FieldName = 'tra_especie'
      Size = 30
    end
    object BUS_CD_M_NFE_CXA_FATtra_marca: TWideStringField
      FieldName = 'tra_marca'
      Size = 30
    end
    object BUS_CD_M_NFE_CXA_FATtra_num_vol: TWideStringField
      FieldName = 'tra_num_vol'
      Size = 10
    end
    object BUS_CD_M_NFE_CXA_FATint_indpag: TIntegerField
      FieldName = 'int_indpag'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_CXA_FATint_cod_pais: TWideMemoField
      FieldName = 'int_cod_pais'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATint_nom_pais: TWideMemoField
      FieldName = 'int_nom_pais'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATid_iqm: TIntegerField
      FieldName = 'id_iqm'
    end
    object BUS_CD_M_NFE_CXA_FATint_nomeemp: TWideStringField
      FieldName = 'int_nomeemp'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_NFF: TDataSetField
      FieldName = 'FAT_SQ_M_NFE_NFF'
    end
    object BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_DEV: TDataSetField
      FieldName = 'FAT_SQ_M_NFE_DEV'
    end
    object BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_TIT: TDataSetField
      FieldName = 'FAT_SQ_M_NFE_TIT'
    end
    object BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_ITE: TDataSetField
      FieldName = 'FAT_SQ_M_NFE_ITE'
    end
    object BUS_CD_M_NFE_CXA_FATid_abertura: TIntegerField
      FieldName = 'id_abertura'
    end
    object BUS_CD_M_NFE_CXA_FATlegenda: TWideStringField
      FieldName = 'legenda'
    end
    object BUS_CD_M_NFE_CXA_FATint_classe: TWideStringField
      FieldName = 'int_classe'
      ProviderFlags = []
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATprevenda: TBooleanField
      FieldName = 'prevenda'
    end
    object BUS_CD_M_NFE_CXA_FATid_ordem: TIntegerField
      FieldName = 'id_ordem'
    end
    object BUS_CD_M_NFE_CXA_FATcanc_usuario: TIntegerField
      FieldName = 'canc_usuario'
    end
    object BUS_CD_M_NFE_CXA_FATvenctos_origem: TWideStringField
      FieldName = 'venctos_origem'
      Size = 400
    end
    object BUS_CD_M_NFE_CXA_FATint_baitra: TWideStringField
      FieldName = 'int_baitra'
      ProviderFlags = []
      Size = 40
    end
    object BUS_CD_M_NFE_CXA_FATint_descnat: TWideStringField
      FieldName = 'int_descnat'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATint_nomeemi: TWideStringField
      FieldName = 'int_nomeemi'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_NFE_CXA_FATnro_termo: TIntegerField
      FieldName = 'nro_termo'
    end
    object BUS_CD_M_NFE_CXA_FATint_descnfecodsit: TWideStringField
      FieldName = 'int_descnfecodsit'
      ProviderFlags = []
      Size = 80
    end
    object BUS_CD_M_NFE_CXA_FATind_nf: TIntegerField
      FieldName = 'ind_nf'
    end
    object BUS_CD_M_NFE_CXA_FATint_tipofinal: TIntegerField
      FieldName = 'int_tipofinal'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_CXA_FATint_contribuinte: TIntegerField
      FieldName = 'int_contribuinte'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_CXA_FATvlr_part_dest: TFMTBCDField
      FieldName = 'vlr_part_dest'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATvlr_part_orig: TFMTBCDField
      FieldName = 'vlr_part_orig'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATvlr_icm_desc: TFMTBCDField
      FieldName = 'vlr_icm_desc'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATid_ors: TIntegerField
      FieldName = 'id_ors'
    end
    object BUS_CD_M_NFE_CXA_FATvlr_fcp: TFMTBCDField
      FieldName = 'vlr_fcp'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATint_doc_ip: TWideMemoField
      FieldName = 'int_doc_ip'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATdi_estrangeiro: TWideStringField
      FieldName = 'di_estrangeiro'
    end
    object BUS_CD_M_NFE_CXA_FATid_fiscal_ref_comp: TIntegerField
      FieldName = 'id_fiscal_ref_comp'
    end
    object BUS_CD_M_NFE_CXA_FATid_ordem_gar: TIntegerField
      FieldName = 'id_ordem_gar'
    end
    object BUS_CD_M_NFE_CXA_FATid_seq_fat_gar: TIntegerField
      FieldName = 'id_seq_fat_gar'
    end
    object BUS_CD_M_NFE_CXA_FATdis_icm_dispensado: TFMTBCDField
      FieldName = 'dis_icm_dispensado'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATped_mod_frete: TIntegerField
      FieldName = 'ped_mod_frete'
    end
    object BUS_CD_M_NFE_CXA_FATped_vlr_frete: TFMTBCDField
      FieldName = 'ped_vlr_frete'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATint_doc_im: TWideMemoField
      FieldName = 'int_doc_im'
      ProviderFlags = []
      BlobType = ftWideMemo
    end
    object BUS_CD_M_NFE_CXA_FATnum_rps: TIntegerField
      FieldName = 'num_rps'
    end
    object BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_ARQ: TDataSetField
      FieldName = 'FAT_SQ_M_NFE_ARQ'
    end
    object BUS_CD_M_NFE_CXA_FATint_natope_nfe: TWideStringField
      FieldName = 'int_natope_nfe'
      ProviderFlags = []
      Size = 60
    end
    object BUS_CD_M_NFE_CXA_FATiss_valor_retido: TFMTBCDField
      FieldName = 'iss_valor_retido'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATint_substituto_tributario: TBooleanField
      FieldName = 'int_substituto_tributario'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_CXA_FATqtde_volume: TFloatField
      FieldName = 'qtde_volume'
    end
    object BUS_CD_M_NFE_CXA_FATint_tot_vlr_bruto: TFMTBCDField
      FieldName = 'int_tot_vlr_bruto'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATint_tot_vlr_liquido: TFMTBCDField
      FieldName = 'int_tot_vlr_liquido'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_CXA_FATvlr_fcp_ope_int: TFMTBCDField
      FieldName = 'vlr_fcp_ope_int'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATvlr_fcp_st_ope_int: TFMTBCDField
      FieldName = 'vlr_fcp_st_ope_int'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATvlr_fcp_st_ret_ope_int: TFMTBCDField
      FieldName = 'vlr_fcp_st_ret_ope_int'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATid_pedido_prod_1: TIntegerField
      FieldName = 'id_pedido_prod_1'
    end
    object BUS_CD_M_NFE_CXA_FATvlr_liquido_ped_prod_1: TFMTBCDField
      FieldName = 'vlr_liquido_ped_prod_1'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATid_pedido_prod_2: TIntegerField
      FieldName = 'id_pedido_prod_2'
    end
    object BUS_CD_M_NFE_CXA_FATvlr_liquido_ped_prod_2: TFMTBCDField
      FieldName = 'vlr_liquido_ped_prod_2'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATid_pedido_prod_3: TIntegerField
      FieldName = 'id_pedido_prod_3'
    end
    object BUS_CD_M_NFE_CXA_FATvlr_liquido_ped_prod_3: TFMTBCDField
      FieldName = 'vlr_liquido_ped_prod_3'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATid_pedido_prod_4: TIntegerField
      FieldName = 'id_pedido_prod_4'
    end
    object BUS_CD_M_NFE_CXA_FATvlr_liquido_ped_prod_4: TFMTBCDField
      FieldName = 'vlr_liquido_ped_prod_4'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_CXA_FATid_pedido_prod_5: TIntegerField
      FieldName = 'id_pedido_prod_5'
    end
    object BUS_CD_M_NFE_CXA_FATvlr_liquido_ped_prod_5: TFMTBCDField
      FieldName = 'vlr_liquido_ped_prod_5'
      Precision = 18
      Size = 4
    end
  end
  object BUS_CD_M_NFE_ITE_CXA_FAT: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_ITE
    Params = <>
    Left = 864
    Top = 480
    object BUS_CD_M_NFE_ITE_CXA_FATid_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_sequencia: TIntegerField
      FieldName = 'id_sequencia'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_inf_fisco: TIntegerField
      FieldName = 'id_inf_fisco'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_st_icm: TWideStringField
      FieldName = 'id_st_icm'
      Size = 3
    end
    object BUS_CD_M_NFE_ITE_CXA_FATqtde: TFloatField
      FieldName = 'qtde'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATqtde_devolvida: TFloatField
      FieldName = 'qtde_devolvida'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_unitario: TFMTBCDField
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_mercadoria: TFMTBCDField
      FieldName = 'vlr_mercadoria'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATper_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_custo: TFMTBCDField
      FieldName = 'vlr_custo'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_outras: TFMTBCDField
      FieldName = 'vlr_outras'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_isenta: TFMTBCDField
      FieldName = 'vlr_isenta'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_seguro: TFMTBCDField
      FieldName = 'vlr_seguro'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATicm_n_aliquota: TFloatField
      FieldName = 'icm_n_aliquota'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATicm_per_reducao: TFloatField
      FieldName = 'icm_per_reducao'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATicm_n_base: TFMTBCDField
      FieldName = 'icm_n_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATicm_n_valor: TFMTBCDField
      FieldName = 'icm_n_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATicm_s_base: TFMTBCDField
      FieldName = 'icm_s_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATicm_s_valor: TFMTBCDField
      FieldName = 'icm_s_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATipi_base: TFMTBCDField
      FieldName = 'ipi_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATipi_aliquota: TFloatField
      FieldName = 'ipi_aliquota'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATipi_valor: TFMTBCDField
      FieldName = 'ipi_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATiss_base: TFMTBCDField
      FieldName = 'iss_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATiss_aliquota: TFloatField
      FieldName = 'iss_aliquota'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATiss_valor: TFMTBCDField
      FieldName = 'iss_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfre_base: TFMTBCDField
      FieldName = 'fre_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfre_percentual: TFloatField
      FieldName = 'fre_percentual'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfre_valor: TFMTBCDField
      FieldName = 'fre_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpis_base: TFMTBCDField
      FieldName = 'pis_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpis_aliquota: TFloatField
      FieldName = 'pis_aliquota'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpis_valor: TFMTBCDField
      FieldName = 'pis_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATcof_base: TFMTBCDField
      FieldName = 'cof_base'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATcof_aliquota: TFloatField
      FieldName = 'cof_aliquota'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATcof_valor: TFMTBCDField
      FieldName = 'cof_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpeso_liquido: TFloatField
      FieldName = 'peso_liquido'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpeso_bruto: TFloatField
      FieldName = 'peso_bruto'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATnro_pedido: TIntegerField
      FieldName = 'nro_pedido'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATcof_valor_st: TFMTBCDField
      FieldName = 'cof_valor_st'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATimp_valor: TFMTBCDField
      FieldName = 'imp_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_icm_ser_nao_incide: TFMTBCDField
      FieldName = 'vlr_icm_ser_nao_incide'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_outras_desp: TFMTBCDField
      FieldName = 'vlr_outras_desp'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpis_valor_st: TFMTBCDField
      FieldName = 'pis_valor_st'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATicm_n_dif_aliq: TFMTBCDField
      FieldName = 'icm_n_dif_aliq'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATicm_n_vlr_dif_aliq: TFMTBCDField
      FieldName = 'icm_n_vlr_dif_aliq'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpara_analise_raa: TIntegerField
      FieldName = 'para_analise_raa'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfre_dif_aliq_icm: TFMTBCDField
      FieldName = 'fre_dif_aliq_icm'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfre_vlr_dif_icm: TFMTBCDField
      FieldName = 'fre_vlr_dif_icm'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfre_custo: TFMTBCDField
      FieldName = 'fre_custo'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATorigem_mercadoria: TWideStringField
      FieldName = 'origem_mercadoria'
      Size = 1
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_cor: TIntegerField
      FieldName = 'id_cor'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_desc_item: TWideStringField
      FieldName = 'int_desc_item'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_und_venda: TWideStringField
      FieldName = 'int_und_venda'
      ProviderFlags = []
      Size = 3
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_busca_item: TWideStringField
      FieldName = 'id_busca_item'
      Size = 30
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_tributo: TIntegerField
      FieldName = 'id_tributo'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATnum_lote: TWideStringField
      FieldName = 'num_lote'
      Size = 15
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_nomecor: TWideStringField
      FieldName = 'int_nomecor'
      ProviderFlags = []
      Size = 40
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_nometam: TWideStringField
      FieldName = 'int_nometam'
      ProviderFlags = []
      Size = 40
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_st_pis: TWideStringField
      FieldName = 'id_st_pis'
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_st_cof: TWideStringField
      FieldName = 'id_st_cof'
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_st_ipi: TWideStringField
      FieldName = 'id_st_ipi'
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_id_ncm: TWideStringField
      FieldName = 'int_id_ncm'
      ProviderFlags = []
      Size = 10
    end
    object BUS_CD_M_NFE_ITE_CXA_FATtri_valor: TFMTBCDField
      FieldName = 'tri_valor'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATtri_indice: TFloatField
      FieldName = 'tri_indice'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATicm_s_vlr_mva: TFMTBCDField
      FieldName = 'icm_s_vlr_mva'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATicm_s_per_mva: TFloatField
      FieldName = 'icm_s_per_mva'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_sequencia_ite_cmp_ped: TIntegerField
      FieldName = 'id_sequencia_ite_cmp_ped'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATimp_base_calculo: TFMTBCDField
      FieldName = 'imp_base_calculo'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATimp_desp_aduana: TFMTBCDField
      FieldName = 'imp_desp_aduana'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATimp_iof: TFMTBCDField
      FieldName = 'imp_iof'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_numero: TIntegerField
      FieldName = 'di_numero'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_data: TDateField
      FieldName = 'di_data'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_local_desemb: TWideStringField
      FieldName = 'di_local_desemb'
      Size = 60
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_uf_desemb: TWideStringField
      FieldName = 'di_uf_desemb'
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_data_desemb: TDateField
      FieldName = 'di_data_desemb'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_exportador: TWideStringField
      FieldName = 'di_exportador'
      Size = 60
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_numero_adicao: TIntegerField
      FieldName = 'di_numero_adicao'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_seq_adicao: TIntegerField
      FieldName = 'di_seq_adicao'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_fabricante: TWideStringField
      FieldName = 'di_fabricante'
      Size = 60
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_vlr_desconto: TFMTBCDField
      FieldName = 'di_vlr_desconto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_fci: TWideStringField
      FieldName = 'di_fci'
      Size = 36
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_sequencia_ite_iqm: TIntegerField
      FieldName = 'id_sequencia_ite_iqm'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_sldqtde: TFloatField
      FieldName = 'int_sldqtde'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_sequencia_ite_xml: TIntegerField
      FieldName = 'id_sequencia_ite_xml'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_tipo_item: TWideStringField
      FieldName = 'int_tipo_item'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_acrescimo: TFMTBCDField
      FieldName = 'vlr_acrescimo'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_ncmperimposto: TFloatField
      FieldName = 'int_ncmperimposto'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_unitario_orig: TFMTBCDField
      FieldName = 'vlr_unitario_orig'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_cod_onu: TWideStringField
      FieldName = 'int_cod_onu'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_part_dest: TFMTBCDField
      FieldName = 'vlr_part_dest'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_part_orig: TFMTBCDField
      FieldName = 'vlr_part_orig'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_icm_desc: TFMTBCDField
      FieldName = 'vlr_icm_desc'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_cest_ncm: TWideStringField
      FieldName = 'int_cest_ncm'
      ProviderFlags = []
      Size = 7
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpart_per_aliq_dest: TFloatField
      FieldName = 'part_per_aliq_dest'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpart_per_part_orig: TFloatField
      FieldName = 'part_per_part_orig'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpart_per_part_dest: TFloatField
      FieldName = 'part_per_part_dest'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp: TFMTBCDField
      FieldName = 'vlr_fcp'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATper_fcp: TFloatField
      FieldName = 'per_fcp'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_id_grupo: TWideStringField
      FieldName = 'int_id_grupo'
      ProviderFlags = []
      Size = 11
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_part_perc_fcp: TFloatField
      FieldName = 'int_part_perc_fcp'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpart_per_red_int_dest: TFloatField
      FieldName = 'part_per_red_int_dest'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_vlr_tot_custo_fix_mens: TFMTBCDField
      FieldName = 'fp_vlr_tot_custo_fix_mens'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_vlr_ven_med_mens: TFMTBCDField
      FieldName = 'fp_vlr_ven_med_mens'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_per_cust_ven_mens: TFloatField
      FieldName = 'fp_per_cust_ven_mens'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_per_icms_ven: TFloatField
      FieldName = 'fp_per_icms_ven'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_per_simples: TFloatField
      FieldName = 'fp_per_simples'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_per_comissao: TFloatField
      FieldName = 'fp_per_comissao'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_per_frete_ven: TFloatField
      FieldName = 'fp_per_frete_ven'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_per_cust_fin_ven: TFloatField
      FieldName = 'fp_per_cust_fin_ven'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_per_lucro_ven: TFloatField
      FieldName = 'fp_per_lucro_ven'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_per_total_incid: TFloatField
      FieldName = 'fp_per_total_incid'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_per_markup_div: TFloatField
      FieldName = 'fp_per_markup_div'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_per_markup_mult: TFloatField
      FieldName = 'fp_per_markup_mult'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_vlr_prc_ven_calc: TFMTBCDField
      FieldName = 'fp_vlr_prc_ven_calc'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_vlr_prc_ven_prat: TFMTBCDField
      FieldName = 'fp_vlr_prc_ven_prat'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_calculado: TBooleanField
      FieldName = 'fp_calculado'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_vlr_prc_prz_ven_prat: TFMTBCDField
      FieldName = 'fp_vlr_prc_prz_ven_prat'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATfp_per_prc_prz_ven_prat: TFloatField
      FieldName = 'fp_per_prc_prz_ven_prat'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATid_fiscal_dev: TIntegerField
      FieldName = 'id_fiscal_dev'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdre_perc_out_ded_ven: TFloatField
      FieldName = 'dre_perc_out_ded_ven'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdre_perc_ircs: TFloatField
      FieldName = 'dre_perc_ircs'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_origem: TWideStringField
      FieldName = 'int_origem'
      ProviderFlags = []
      Size = 1
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_rt_composicao: TWideStringField
      FieldName = 'int_rt_composicao'
      ProviderFlags = []
      Size = 400
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_rt_registro: TWideStringField
      FieldName = 'int_rt_registro'
      ProviderFlags = []
      Size = 25
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_draw: TWideStringField
      FieldName = 'di_draw'
      Size = 11
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_tp_viatransp: TIntegerField
      FieldName = 'di_tp_viatransp'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdi_tp_intermedio: TIntegerField
      FieldName = 'di_tp_intermedio'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_cod_fabrica: TWideStringField
      FieldName = 'int_cod_fabrica'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_cod_fab_danfe: TBooleanField
      FieldName = 'int_cod_fab_danfe'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdis_aliquota: TFloatField
      FieldName = 'dis_aliquota'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATdis_icm_dispensado: TFMTBCDField
      FieldName = 'dis_icm_dispensado'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATmotivo_icms_des: TIntegerField
      FieldName = 'motivo_icms_des'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATiss_valor_retido: TFMTBCDField
      FieldName = 'iss_valor_retido'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_base_icms_dest: TFMTBCDField
      FieldName = 'vlr_base_icms_dest'
      Precision = 18
      Size = 2
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_ope_int: TFMTBCDField
      FieldName = 'vlr_fcp_ope_int'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATper_fcp_ope_int: TFloatField
      FieldName = 'per_fcp_ope_int'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_base_ope_int: TFMTBCDField
      FieldName = 'vlr_fcp_base_ope_int'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_st_ope_int: TFMTBCDField
      FieldName = 'vlr_fcp_st_ope_int'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATper_fcp_st_ope_int: TFloatField
      FieldName = 'per_fcp_st_ope_int'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_st_base_ope_int: TFMTBCDField
      FieldName = 'vlr_fcp_st_base_ope_int'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATper_st_sup_cons_final_ope_int: TFloatField
      FieldName = 'per_st_sup_cons_final_ope_int'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_st_ret_ope_int: TFMTBCDField
      FieldName = 'vlr_fcp_st_ret_ope_int'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATper_fcp_st_ret_ope_int: TFloatField
      FieldName = 'per_fcp_st_ret_ope_int'
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_st_ret_base_ope_int: TFMTBCDField
      FieldName = 'vlr_fcp_st_ret_base_ope_int'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_base_uf_dest: TFMTBCDField
      FieldName = 'vlr_fcp_base_uf_dest'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_cod_barra: TWideStringField
      FieldName = 'int_cod_barra'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_NFE_ITE_CXA_FATint_sgq_person: TBooleanField
      FieldName = 'int_sgq_person'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_ITE_CXA_FATpcp_obs_item: TWideStringField
      FieldName = 'pcp_obs_item'
      Size = 200
    end
  end
  object BUS_CD_M_NFE_TIT_CXA_FAT: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_TIT
    Params = <>
    Left = 864
    Top = 424
    object BUS_CD_M_NFE_TIT_CXA_FATid_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object BUS_CD_M_NFE_TIT_CXA_FATid_nfe_tit: TIntegerField
      FieldName = 'id_nfe_tit'
    end
    object BUS_CD_M_NFE_TIT_CXA_FATid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
    end
    object BUS_CD_M_NFE_TIT_CXA_FATnum_parcela: TWideStringField
      FieldName = 'num_parcela'
      Size = 15
    end
    object BUS_CD_M_NFE_TIT_CXA_FATdias: TIntegerField
      FieldName = 'dias'
    end
    object BUS_CD_M_NFE_TIT_CXA_FATdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
    end
    object BUS_CD_M_NFE_TIT_CXA_FATvlr_titulo: TFMTBCDField
      FieldName = 'vlr_titulo'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_NFE_TIT_CXA_FATid_plano: TWideStringField
      FieldName = 'id_plano'
      Size = 11
    end
    object BUS_CD_M_NFE_TIT_CXA_FATid_ccusto: TIntegerField
      FieldName = 'id_ccusto'
    end
    object BUS_CD_M_NFE_TIT_CXA_FATche_banco: TWideStringField
      FieldName = 'che_banco'
      Size = 10
    end
    object BUS_CD_M_NFE_TIT_CXA_FATche_agencia: TWideStringField
      FieldName = 'che_agencia'
      Size = 10
    end
    object BUS_CD_M_NFE_TIT_CXA_FATche_conta: TIntegerField
      FieldName = 'che_conta'
    end
    object BUS_CD_M_NFE_TIT_CXA_FATche_numero: TIntegerField
      FieldName = 'che_numero'
    end
    object BUS_CD_M_NFE_TIT_CXA_FATche_emitente: TWideStringField
      FieldName = 'che_emitente'
      Size = 50
    end
    object BUS_CD_M_NFE_TIT_CXA_FATint_nomefpg: TWideStringField
      FieldName = 'int_nomefpg'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_NFE_TIT_CXA_FATint_nomepct: TWideStringField
      FieldName = 'int_nomepct'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_NFE_TIT_CXA_FATint_nomeccu: TWideStringField
      FieldName = 'int_nomeccu'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_NFE_TIT_CXA_FAThistorico_pag: TWideStringField
      FieldName = 'historico_pag'
      Size = 100
    end
    object BUS_CD_M_NFE_TIT_CXA_FATint_tipopgto: TIntegerField
      FieldName = 'int_tipopgto'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_TIT_CXA_FATid_maquineta: TIntegerField
      FieldName = 'id_maquineta'
    end
    object BUS_CD_M_NFE_TIT_CXA_FATint_carbandeira: TWideStringField
      FieldName = 'int_carbandeira'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_M_NFE_TIT_CXA_FATint_docimpresso: TIntegerField
      FieldName = 'int_docimpresso'
      ProviderFlags = []
    end
    object BUS_CD_M_NFE_TIT_CXA_FATint_cnpj_ccr: TWideStringField
      FieldName = 'int_cnpj_ccr'
      ProviderFlags = []
      Size = 14
    end
    object BUS_CD_M_NFE_TIT_CXA_FATint_nomemaq: TWideStringField
      FieldName = 'int_nomemaq'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_NFE_TIT_CXA_FATint_cardebcre: TIntegerField
      FieldName = 'int_cardebcre'
      ProviderFlags = []
    end
  end
  object FIN_CD_M_REC_FAT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FIN_DP_M_REC'
    RemoteServer = pcConecaoDBFat
    Left = 710
    Top = 368
    object FIN_CD_M_REC_FATid_empresa: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_empresa'
    end
    object FIN_CD_M_REC_FAThistorico: TWideStringField
      DisplayWidth = 100
      FieldName = 'historico'
      Size = 100
    end
    object FIN_CD_M_REC_FATid_titulo: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_titulo'
      Visible = False
    end
    object FIN_CD_M_REC_FATid_cliente: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_cliente'
      Visible = False
    end
    object FIN_CD_M_REC_FATnum_parcela: TWideStringField
      DisplayWidth = 20
      FieldName = 'num_parcela'
      Visible = False
    end
    object FIN_CD_M_REC_FATdta_emissao: TDateField
      DisplayWidth = 10
      FieldName = 'dta_emissao'
      Visible = False
    end
    object FIN_CD_M_REC_FATvlr_parcela: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_parcela'
      Visible = False
      Precision = 18
      Size = 4
    end
    object FIN_CD_M_REC_FATvlr_original: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_original'
      Visible = False
      Precision = 18
      Size = 4
    end
    object FIN_CD_M_REC_FATdta_vencimento: TDateField
      DisplayWidth = 10
      FieldName = 'dta_vencimento'
      Visible = False
    end
    object FIN_CD_M_REC_FATdta_original: TDateField
      DisplayWidth = 10
      FieldName = 'dta_original'
      Visible = False
    end
    object FIN_CD_M_REC_FATvlr_saldo: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_saldo'
      Visible = False
      Precision = 18
      Size = 4
    end
    object FIN_CD_M_REC_FATid_fiscal: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_fiscal'
      Visible = False
    end
    object FIN_CD_M_REC_FATorigem: TIntegerField
      DisplayWidth = 10
      FieldName = 'origem'
      Visible = False
    end
    object FIN_CD_M_REC_FATid_forma_pag: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_forma_pag'
      Visible = False
    end
    object FIN_CD_M_REC_FATche_conta: TIntegerField
      DisplayWidth = 10
      FieldName = 'che_conta'
      Visible = False
    end
    object FIN_CD_M_REC_FATche_cheque: TIntegerField
      DisplayWidth = 10
      FieldName = 'che_cheque'
      Visible = False
    end
    object FIN_CD_M_REC_FATche_banco: TWideStringField
      DisplayWidth = 10
      FieldName = 'che_banco'
      Visible = False
      Size = 10
    end
    object FIN_CD_M_REC_FATche_emitente: TWideStringField
      DisplayWidth = 50
      FieldName = 'che_emitente'
      Visible = False
      Size = 50
    end
    object FIN_CD_M_REC_FATche_agencia: TWideStringField
      DisplayWidth = 10
      FieldName = 'che_agencia'
      Visible = False
      Size = 10
    end
    object FIN_CD_M_REC_FATtipo_lancamento: TIntegerField
      DisplayWidth = 10
      FieldName = 'tipo_lancamento'
      Visible = False
    end
    object FIN_CD_M_REC_FATid_local_titulo: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_local_titulo'
      Visible = False
    end
    object FIN_CD_M_REC_FATid_plano: TWideStringField
      DisplayWidth = 11
      FieldName = 'id_plano'
      Visible = False
      Size = 11
    end
    object FIN_CD_M_REC_FATint_nomecli: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object FIN_CD_M_REC_FATint_nomefpg: TWideStringField
      DisplayWidth = 30
      FieldName = 'int_nomefpg'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object FIN_CD_M_REC_FATint_nomelto: TWideStringField
      DisplayWidth = 30
      FieldName = 'int_nomelto'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object FIN_CD_M_REC_FATint_nomepct: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomepct'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object FIN_CD_M_REC_FATcod_lme: TWideStringField
      DisplayWidth = 20
      FieldName = 'cod_lme'
      Visible = False
    end
    object FIN_CD_M_REC_FATrev_lme: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 5
      FieldName = 'rev_lme'
      Visible = False
      Size = 5
    end
    object FIN_CD_M_REC_FATcar_taxa: TFloatField
      DisplayWidth = 10
      FieldName = 'car_taxa'
      Visible = False
    end
    object FIN_CD_M_REC_FATcar_motivo_can: TWideStringField
      DisplayWidth = 100
      FieldName = 'car_motivo_can'
      Visible = False
      Size = 100
    end
    object FIN_CD_M_REC_FATcar_dta_can: TDateField
      DisplayWidth = 10
      FieldName = 'car_dta_can'
      Visible = False
    end
    object FIN_CD_M_REC_FATbol_nosso_numero: TWideStringField
      DisplayWidth = 30
      FieldName = 'bol_nosso_numero'
      Visible = False
      Size = 30
    end
    object FIN_CD_M_REC_FATint_cnpjcpf: TWideStringField
      DisplayWidth = 14
      FieldName = 'int_cnpjcpf'
      ProviderFlags = []
      Visible = False
      Size = 14
    end
    object FIN_CD_M_REC_FATint_bairrocob: TWideStringField
      DisplayWidth = 40
      FieldName = 'int_bairrocob'
      ProviderFlags = []
      Visible = False
      Size = 40
    end
    object FIN_CD_M_REC_FATint_endcob: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_endcob'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object FIN_CD_M_REC_FATint_estadocob: TWideStringField
      DisplayWidth = 2
      FieldName = 'int_estadocob'
      ProviderFlags = []
      Visible = False
      Size = 2
    end
    object FIN_CD_M_REC_FATint_cepcob: TWideStringField
      DisplayWidth = 9
      FieldName = 'int_cepcob'
      ProviderFlags = []
      Visible = False
      Size = 9
    end
    object FIN_CD_M_REC_FATint_cidcob: TWideStringField
      DisplayWidth = 40
      FieldName = 'int_cidcob'
      ProviderFlags = []
      Visible = False
      Size = 40
    end
    object FIN_CD_M_REC_FATint_emailcli: TWideStringField
      DisplayWidth = 60
      FieldName = 'int_emailcli'
      ProviderFlags = []
      Visible = False
      Size = 60
    end
    object FIN_CD_M_REC_FATseq_nosso_numero: TIntegerField
      DisplayWidth = 10
      FieldName = 'seq_nosso_numero'
      Visible = False
    end
    object FIN_CD_M_REC_FATbol_chave: TIntegerField
      DisplayWidth = 10
      FieldName = 'bol_chave'
      Visible = False
    end
    object FIN_CD_M_REC_FATint_numeronf: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_numeronf'
      ProviderFlags = []
      Visible = False
    end
    object FIN_CD_M_REC_FATbol_id_conta: TIntegerField
      DisplayWidth = 10
      FieldName = 'bol_id_conta'
      Visible = False
    end
    object FIN_CD_M_REC_FATcar_taxa_ope: TFloatField
      DisplayWidth = 10
      FieldName = 'car_taxa_ope'
      Visible = False
    end
    object FIN_CD_M_REC_FATcar_n_lote_id_resp: TIntegerField
      DisplayWidth = 10
      FieldName = 'car_n_lote_id_resp'
      Visible = False
    end
    object FIN_CD_M_REC_FATcar_n_lote_id_conta: TIntegerField
      DisplayWidth = 10
      FieldName = 'car_n_lote_id_conta'
      Visible = False
    end
    object FIN_CD_M_REC_FATid_baixa: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_baixa'
      Visible = False
    end
    object FIN_CD_M_REC_FATcar_n_lote: TWideStringField
      DisplayWidth = 30
      FieldName = 'car_n_lote'
      Visible = False
      Size = 30
    end
    object FIN_CD_M_REC_FATsituacao_chq: TIntegerField
      DisplayWidth = 10
      FieldName = 'situacao_chq'
      Visible = False
    end
    object FIN_CD_M_REC_FATid_mch: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_mch'
      Visible = False
    end
    object FIN_CD_M_REC_FATid_vendedor: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_vendedor'
      Visible = False
    end
    object FIN_CD_M_REC_FATcar_id_maquineta: TIntegerField
      DisplayWidth = 10
      FieldName = 'car_id_maquineta'
      Visible = False
    end
    object FIN_CD_M_REC_FATid_credito: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_credito'
      Visible = False
    end
    object FIN_CD_M_REC_FATint_docimpresso: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_docimpresso'
      ProviderFlags = []
      Visible = False
    end
    object FIN_CD_M_REC_FATbol_banco: TIntegerField
      DisplayWidth = 10
      FieldName = 'bol_banco'
      Visible = False
    end
    object FIN_CD_M_REC_FATid_obra: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_obra'
      Visible = False
    end
    object FIN_CD_M_REC_FATdta_venc_original: TDateField
      DisplayWidth = 10
      FieldName = 'dta_venc_original'
      Visible = False
    end
    object FIN_CD_M_REC_FATint_descobra: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_descobra'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
  end
  object FIN_CD_M_REC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FIN_DP_M_REC'
    RemoteServer = dmGeral.pcConecao
    Left = 712
    Top = 432
    object FIN_CD_M_RECid_empresa: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_empresa'
    end
    object FIN_CD_M_REChistorico: TWideStringField
      DisplayWidth = 100
      FieldName = 'historico'
      Size = 100
    end
    object FIN_CD_M_RECid_titulo: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_titulo'
      Visible = False
    end
    object FIN_CD_M_RECid_cliente: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_cliente'
      Visible = False
    end
    object FIN_CD_M_RECnum_parcela: TWideStringField
      DisplayWidth = 20
      FieldName = 'num_parcela'
      Visible = False
    end
    object FIN_CD_M_RECdta_emissao: TDateField
      DisplayWidth = 10
      FieldName = 'dta_emissao'
      Visible = False
    end
    object FIN_CD_M_RECvlr_parcela: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_parcela'
      Visible = False
      Precision = 18
      Size = 4
    end
    object FIN_CD_M_RECvlr_original: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_original'
      Visible = False
      Precision = 18
      Size = 4
    end
    object FIN_CD_M_RECdta_vencimento: TDateField
      DisplayWidth = 10
      FieldName = 'dta_vencimento'
      Visible = False
    end
    object FIN_CD_M_RECdta_original: TDateField
      DisplayWidth = 10
      FieldName = 'dta_original'
      Visible = False
    end
    object FIN_CD_M_RECvlr_saldo: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_saldo'
      Visible = False
      Precision = 18
      Size = 4
    end
    object FIN_CD_M_RECid_fiscal: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_fiscal'
      Visible = False
    end
    object FIN_CD_M_RECorigem: TIntegerField
      DisplayWidth = 10
      FieldName = 'origem'
      Visible = False
    end
    object FIN_CD_M_RECid_forma_pag: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_forma_pag'
      Visible = False
    end
    object FIN_CD_M_RECche_conta: TIntegerField
      DisplayWidth = 10
      FieldName = 'che_conta'
      Visible = False
    end
    object FIN_CD_M_RECche_cheque: TIntegerField
      DisplayWidth = 10
      FieldName = 'che_cheque'
      Visible = False
    end
    object FIN_CD_M_RECche_banco: TWideStringField
      DisplayWidth = 10
      FieldName = 'che_banco'
      Visible = False
      Size = 10
    end
    object FIN_CD_M_RECche_emitente: TWideStringField
      DisplayWidth = 50
      FieldName = 'che_emitente'
      Visible = False
      Size = 50
    end
    object FIN_CD_M_RECche_agencia: TWideStringField
      DisplayWidth = 10
      FieldName = 'che_agencia'
      Visible = False
      Size = 10
    end
    object FIN_CD_M_RECtipo_lancamento: TIntegerField
      DisplayWidth = 10
      FieldName = 'tipo_lancamento'
      Visible = False
    end
    object FIN_CD_M_RECid_local_titulo: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_local_titulo'
      Visible = False
    end
    object FIN_CD_M_RECid_plano: TWideStringField
      DisplayWidth = 11
      FieldName = 'id_plano'
      Visible = False
      Size = 11
    end
    object FIN_CD_M_RECint_nomecli: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object FIN_CD_M_RECint_nomefpg: TWideStringField
      DisplayWidth = 30
      FieldName = 'int_nomefpg'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object FIN_CD_M_RECint_nomelto: TWideStringField
      DisplayWidth = 30
      FieldName = 'int_nomelto'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object FIN_CD_M_RECint_nomepct: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomepct'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object FIN_CD_M_RECcod_lme: TWideStringField
      DisplayWidth = 20
      FieldName = 'cod_lme'
      Visible = False
    end
    object FIN_CD_M_RECrev_lme: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 5
      FieldName = 'rev_lme'
      Visible = False
      Size = 5
    end
    object FIN_CD_M_RECcar_taxa: TFloatField
      DisplayWidth = 10
      FieldName = 'car_taxa'
      Visible = False
    end
    object FIN_CD_M_RECcar_motivo_can: TWideStringField
      DisplayWidth = 100
      FieldName = 'car_motivo_can'
      Visible = False
      Size = 100
    end
    object FIN_CD_M_RECcar_dta_can: TDateField
      DisplayWidth = 10
      FieldName = 'car_dta_can'
      Visible = False
    end
    object FIN_CD_M_RECbol_nosso_numero: TWideStringField
      DisplayWidth = 30
      FieldName = 'bol_nosso_numero'
      Visible = False
      Size = 30
    end
    object FIN_CD_M_RECint_cnpjcpf: TWideStringField
      DisplayWidth = 14
      FieldName = 'int_cnpjcpf'
      ProviderFlags = []
      Visible = False
      Size = 14
    end
    object FIN_CD_M_RECint_bairrocob: TWideStringField
      DisplayWidth = 40
      FieldName = 'int_bairrocob'
      ProviderFlags = []
      Visible = False
      Size = 40
    end
    object FIN_CD_M_RECint_endcob: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_endcob'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object FIN_CD_M_RECint_estadocob: TWideStringField
      DisplayWidth = 2
      FieldName = 'int_estadocob'
      ProviderFlags = []
      Visible = False
      Size = 2
    end
    object FIN_CD_M_RECint_cepcob: TWideStringField
      DisplayWidth = 9
      FieldName = 'int_cepcob'
      ProviderFlags = []
      Visible = False
      Size = 9
    end
    object FIN_CD_M_RECint_cidcob: TWideStringField
      DisplayWidth = 40
      FieldName = 'int_cidcob'
      ProviderFlags = []
      Visible = False
      Size = 40
    end
    object FIN_CD_M_RECint_emailcli: TWideStringField
      DisplayWidth = 60
      FieldName = 'int_emailcli'
      ProviderFlags = []
      Visible = False
      Size = 60
    end
    object FIN_CD_M_RECseq_nosso_numero: TIntegerField
      DisplayWidth = 10
      FieldName = 'seq_nosso_numero'
      Visible = False
    end
    object FIN_CD_M_RECbol_chave: TIntegerField
      DisplayWidth = 10
      FieldName = 'bol_chave'
      Visible = False
    end
    object FIN_CD_M_RECint_numeronf: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_numeronf'
      ProviderFlags = []
      Visible = False
    end
    object FIN_CD_M_RECbol_id_conta: TIntegerField
      DisplayWidth = 10
      FieldName = 'bol_id_conta'
      Visible = False
    end
    object FIN_CD_M_RECcar_taxa_ope: TFloatField
      DisplayWidth = 10
      FieldName = 'car_taxa_ope'
      Visible = False
    end
    object FIN_CD_M_RECcar_n_lote_id_resp: TIntegerField
      DisplayWidth = 10
      FieldName = 'car_n_lote_id_resp'
      Visible = False
    end
    object FIN_CD_M_RECcar_n_lote_id_conta: TIntegerField
      DisplayWidth = 10
      FieldName = 'car_n_lote_id_conta'
      Visible = False
    end
    object FIN_CD_M_RECid_baixa: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_baixa'
      Visible = False
    end
    object FIN_CD_M_RECcar_n_lote: TWideStringField
      DisplayWidth = 30
      FieldName = 'car_n_lote'
      Visible = False
      Size = 30
    end
    object FIN_CD_M_RECsituacao_chq: TIntegerField
      DisplayWidth = 10
      FieldName = 'situacao_chq'
      Visible = False
    end
    object FIN_CD_M_RECid_mch: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_mch'
      Visible = False
    end
    object FIN_CD_M_RECid_vendedor: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_vendedor'
      Visible = False
    end
    object FIN_CD_M_RECcar_id_maquineta: TIntegerField
      DisplayWidth = 10
      FieldName = 'car_id_maquineta'
      Visible = False
    end
    object FIN_CD_M_RECid_credito: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_credito'
      Visible = False
    end
    object FIN_CD_M_RECint_docimpresso: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_docimpresso'
      ProviderFlags = []
      Visible = False
    end
    object FIN_CD_M_RECbol_banco: TIntegerField
      DisplayWidth = 10
      FieldName = 'bol_banco'
      Visible = False
    end
    object FIN_CD_M_RECid_obra: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_obra'
      Visible = False
    end
    object FIN_CD_M_RECdta_venc_original: TDateField
      DisplayWidth = 10
      FieldName = 'dta_venc_original'
      Visible = False
    end
    object FIN_CD_M_RECint_descobra: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_descobra'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
  end
end
