inherited EST_FM_M_NFS: TEST_FM_M_NFS
  Caption = 'Movimenta'#231#227'o'
  ExplicitWidth = 1156
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlEsquerda: TPanel
    inherited pnlFiltro: TPanel
      inherited gbxFiltro: TGroupBox
        inherited cbbPesquisa: TComboBox
          ItemIndex = 2
          Text = 'Cliente'
          OnChange = cbbPesquisaChange
          Items.Strings = (
            'Numero'
            'Controle'
            'Cliente'
            'Situa'#231#227'o do Documento'
            'Modelo'
            'Tipo de Estoque'
            'Data do Documento'
            'Data de Emiss'#227'o')
        end
        inherited txtPesquisa: TEdit
          Width = 170
          OnKeyDown = txtPesquisaKeyDown
          ExplicitWidth = 170
        end
        inherited btnFiltro: TcxButton
          Left = 281
          OnClick = btnFiltroClick
          ExplicitLeft = 281
        end
        object txtPesquisaData: TJvDateEdit
          Left = 108
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
      Top = 104
      Height = 326
      ExplicitTop = 104
      ExplicitHeight = 326
      inherited dbGrid: TwwDBGrid
        Height = 326
        ControlType.Strings = (
          'int_nomeemi;RichEdit;;F')
        Selected.Strings = (
          'ID_FISCAL'#9'10'#9'C'#243'digo'#9'F'
          'int_nomeemi'#9'43'#9'Emitente'#9'F')
        OnRowChanged = dbGridRowChanged
        ExplicitHeight = 326
      end
    end
    inherited pnlBotoes: TPanel
      Height = 104
      ExplicitHeight = 104
      object btnImprimirEspelho: TBitBtn
        Left = 1
        Top = 53
        Width = 309
        Height = 50
        Caption = 'Imprimir Espelho'
        Glyph.Data = {
          56080000424D560800000000000036000000280000001A0000001A0000000100
          18000000000020080000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFF2F2F28080803333333333333333333333333333333333333333
          33333333333333333333333333333333333333333333808080F2F2F2FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF80808033333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          333333333333333333808080FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFF333333333333D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF333333333333FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFF333333333333FFFFFFFFFFFF3333333333333333333333333333
          33333333333333CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
          FFFF333333333333333333333333333333333333333333CCCCCCFFFFFFFFFFFF
          FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFF0000F2F2F2666666
          333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333333333
          3333666666F2F2F20000666666333333333333333333333333333333FFFFFFFF
          FFFF333333333333333333333333333333333333333333333333333333333333
          CCCCCCFFFFFF3333333333333333333333333333336666660000333333333333
          333333333333333333333333FFFFFFFFFFFF3333333333333333333333333333
          33333333333333333333333333333333CCCCCCFFFFFF33333333333333333333
          33333333333333330000333333333333333333333333333333333333FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF3333333333333333333333333333333333330000333333333333
          333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333333333
          3333333333333333000033333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333330000333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333000033333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          333333333333808080CCCCCC8080803333333333333333330000333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          33333333333333333333333333333333333333333333CCCCCCFFFFFFCCCCCC33
          3333333333333333000033333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          333333333333808080CCCCCC8080803333333333333333330000666666333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          33333333336666660000F2F2F266666633333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          333333333333333333333333333333333333666666F2F2F20000FFFFFFFFFFFF
          FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF333333333333D9D9D9FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFF8080803333333333333333333333333333333333333333333333
          33333333333333333333333333333333333333333333333333808080FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF2F2F280808033333333
          3333333333333333333333333333333333333333333333333333333333333333
          333333333333808080F2F2F2FFFFFFFFFFFFFFFFFFFFFFFF0000}
        Layout = blGlyphTop
        Margin = 0
        PopupMenu = pmImpSimp
        Spacing = 2
        TabOrder = 8
        OnClick = btnImprimirEspelhoClick
      end
    end
  end
  inherited pnlDireita: TPanel
    inherited pnlDados: TPanel
      Width = 819
      Height = 467
      ExplicitWidth = 819
      ExplicitHeight = 467
      object Label7: TLabel
        Left = 65
        Top = 8
        Width = 89
        Height = 13
        Caption = 'Tipo de estoque :'
        FocusControl = txt_Serie
      end
      object Label30: TLabel
        Left = 562
        Top = 32
        Width = 20
        Height = 13
        Caption = 'UF :'
      end
      object lblEmitente: TLabel
        Left = 112
        Top = 32
        Width = 51
        Height = 13
        Caption = 'Emitente :'
        FocusControl = txt_Emitente
      end
      object Label1: TLabel
        Left = 87
        Top = 78
        Width = 64
        Height = 13
        Caption = 'N'#250'mero NF :'
        FocusControl = txt_Numero
      end
      object Label2: TLabel
        Left = 290
        Top = 78
        Width = 31
        Height = 13
        Caption = 'S'#233'rie :'
        FocusControl = txt_Serie
      end
      object Label65: TLabel
        Left = 526
        Top = 77
        Width = 53
        Height = 13
        Caption = 'Sub s'#233'rie :'
        FocusControl = txt_SubSerie
      end
      object Label3: TLabel
        Left = 428
        Top = 101
        Width = 46
        Height = 13
        Caption = 'Modelo :'
      end
      object Label41: TLabel
        Left = 61
        Top = 124
        Width = 90
        Height = 13
        Caption = 'Chave de acesso :'
        Color = 15921906
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 87
        Top = 101
        Width = 64
        Height = 13
        Caption = 'Emiss'#227'o NF :'
        FocusControl = txt_Serie
      end
      object Label25: TLabel
        Left = 287
        Top = 101
        Width = 34
        Height = 13
        Caption = 'Sa'#237'da :'
        FocusControl = txt_Serie
      end
      object Label37: TLabel
        Left = 18
        Top = 171
        Width = 133
        Height = 13
        Caption = 'Condi'#231#227'o de pagamento :'
        FocusControl = txt_Serie
      end
      object Label5: TLabel
        Left = 373
        Top = 147
        Width = 74
        Height = 13
        Caption = 'Almoxarifado :'
      end
      object Label47: TLabel
        Left = 117
        Top = 193
        Width = 34
        Height = 13
        Caption = 'CFOP :'
      end
      object Label53: TLabel
        Left = 550
        Top = 8
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
      object Label9: TLabel
        Left = 77
        Top = 147
        Width = 74
        Height = 13
        Caption = 'Tipo do Frete :'
      end
      object lblDescCFOP: TLabel
        Left = 240
        Top = 190
        Width = 405
        Height = 21
        AutoSize = False
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object lblVendedor: TLabel
        Left = 390
        Top = 171
        Width = 57
        Height = 13
        Caption = 'Vendedor :'
      end
      object lblNfeRef: TLabel
        Left = 296
        Top = 53
        Width = 95
        Height = 13
        Caption = 'Nfe Referenciado :'
        Visible = False
      end
      object Label4: TLabel
        Left = 94
        Top = 55
        Width = 60
        Height = 13
        Caption = 'Finalidade :'
      end
      object txt_Emitente: TJvDBComboEdit
        Left = 160
        Top = 28
        Width = 90
        Height = 21
        ClickKey = 114
        DataField = 'ID_EMITENTE'
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
        TabOrder = 2
        OnButtonClick = txt_EmitenteButtonClick
        OnEnter = txt_EmitenteEnter
        OnExit = txt_EmitenteExit
      end
      object txt_Numero: TDBEdit
        Left = 157
        Top = 75
        Width = 90
        Height = 21
        DataField = 'numero'
        DataSource = dso
        TabOrder = 7
        OnExit = txt_NumeroExit
      end
      object txt_Serie: TDBEdit
        Left = 327
        Top = 76
        Width = 90
        Height = 21
        DataField = 'SERIE'
        DataSource = dso
        TabOrder = 8
        OnExit = txt_SerieExit
      end
      object txt_SubSerie: TDBEdit
        Left = 585
        Top = 75
        Width = 60
        Height = 21
        DataField = 'SUB_SERIE'
        DataSource = dso
        TabOrder = 9
        OnExit = txt_SubSerieExit
      end
      object txt_NFe_Chave: TDBEdit
        Left = 157
        Top = 121
        Width = 488
        Height = 21
        TabStop = False
        Color = clWhite
        DataField = 'NFE_CHAVE'
        DataSource = dso
        TabOrder = 13
        OnExit = txt_NFe_ChaveExit
      end
      object txt_Cod_Doc_Rev: TDBEdit
        Left = 588
        Top = 5
        Width = 60
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'rev_lme'
        DataSource = dso
        ReadOnly = True
        TabOrder = 1
      end
      object cbbTipoFrete: TwwDBLookupCombo
        Left = 157
        Top = 144
        Width = 205
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F'
          'CODIGO'#9'1'#9'Codigo'#9'F')
        DataField = 'IND_FRETE'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_X_FRE
        LookupField = 'CODIGO'
        TabOrder = 14
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbTipoFreteEnter
      end
      object cbbModelo: TwwDBLookupCombo
        Left = 480
        Top = 98
        Width = 165
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'50'#9'Descri'#231#227'o'#9'F'
          'CODIGO'#9'2'#9'C'#243'digo'#9'F')
        DataField = 'MODELO'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_X_MOD
        LookupField = 'CODIGO'
        Options = [loColLines, loRowLines]
        TabOrder = 12
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbModeloEnter
        OnExit = cbbModeloExit
      end
      object pcMovimento: TPageControl
        Left = 10
        Top = 204
        Width = 705
        Height = 184
        ActivePage = tsItens
        TabOrder = 19
        object tsItens: TTabSheet
          Caption = 'Itens'
          object grdItens: TwwDBGrid
            Left = 3
            Top = 44
            Width = 688
            Height = 120
            Selected.Strings = (
              'ID_ITEM'#9'11'#9'Item'#9'F'
              'INT_DESC_ITEM'#9'35'#9'Descri'#231#227'o'#9'F'
              'ID_CFO'#9'5'#9'CFO'#9'F'
              'qtde'#9'8'#9'Qtde'#9'F'
              'IPI_VALOR'#9'8'#9'Valor IPI'#9'F'
              'ID_ST_ICM'#9'3'#9'CST'#9'F'
              'ICM_N_BASE'#9'10'#9'Vlr.Base'#9'F'#9'ICMS Normal'
              'ICM_N_ALIQUOTA'#9'5'#9'Al'#237'q.'#9'F'#9'ICMS Normal'
              'ICM_N_VALOR'#9'10'#9'Valor Icms'#9'F'#9'ICMS Normal'
              'ICM_S_BASE'#9'11'#9'Vlr.Base'#9'F'#9'ICMS Substituido'
              'ICM_S_VALOR'#9'10'#9'Valor Icms'#9'F'#9'ICMS Substituido')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = 14408667
            FixedCols = 0
            ShowHorzScrollBar = True
            Color = clWhite
            DataSource = dsoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 2
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnMouseUp = grdItensMouseUp
            object grdItensIButton: TwwIButton
              Left = -1
              Top = -1
              Width = 21
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
              OnClick = grdItensIButtonClick
            end
          end
          object pnItens: TPanel
            Left = 25
            Top = 5
            Width = 669
            Height = 39
            BevelOuter = bvNone
            TabOrder = 0
            OnExit = pnItensExit
            object lblItem: TLabel
              Left = 3
              Top = 0
              Width = 80
              Height = 13
              Caption = '<F7> C'#243'd. item'
            end
            object Label31: TLabel
              Left = 201
              Top = 0
              Width = 28
              Height = 13
              Caption = 'CFOP'
            end
            object Label11: TLabel
              Left = 284
              Top = 0
              Width = 26
              Height = 13
              Caption = 'Qtde'
            end
            object Label12: TLabel
              Left = 329
              Top = 0
              Width = 62
              Height = 13
              Caption = 'Vlr. Unit'#225'rio'
            end
            object Label13: TLabel
              Left = 407
              Top = 0
              Width = 48
              Height = 13
              Caption = 'Vlr. Merc.'
            end
            object Label14: TLabel
              Left = 481
              Top = 0
              Width = 39
              Height = 13
              Caption = '% Desc.'
            end
            object Label15: TLabel
              Left = 527
              Top = 0
              Width = 47
              Height = 13
              Caption = 'Vlr. Desc.'
            end
            object Label16: TLabel
              Left = 592
              Top = 0
              Width = 57
              Height = 13
              Caption = 'Vlr. l'#237'quido'
            end
            object lblCST: TLabel
              Left = 116
              Top = 0
              Width = 18
              Height = 13
              Caption = 'CST'
            end
            object txt_Produto: TJvDBComboEdit
              Left = 5
              Top = 13
              Width = 104
              Height = 21
              ClickKey = 114
              DataField = 'id_busca_item'
              DataSource = dsoItens
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
              OnButtonClick = txt_ProdutoButtonClick
              OnExit = txt_ProdutoExit
              OnKeyDown = txt_ProdutoKeyDown
            end
            object txt_CFOP: TJvDBComboEdit
              Left = 201
              Top = 14
              Width = 79
              Height = 21
              ClickKey = 114
              DataField = 'ID_CFO'
              DataSource = dsoItens
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
              OnButtonClick = txt_CFOPButtonClick
              OnExit = txt_CFOPExit
            end
            object txtQtde: TDBEdit
              Left = 284
              Top = 14
              Width = 39
              Height = 21
              DataField = 'QTDE'
              DataSource = dsoItens
              TabOrder = 3
              OnEnter = txtQtdeEnter
              OnExit = txtQtdeExit
            end
            object txt_VlrUnitario: TDBEdit
              Left = 329
              Top = 14
              Width = 75
              Height = 21
              DataField = 'VLR_UNITARIO'
              DataSource = dsoItens
              TabOrder = 4
              OnExit = txt_VlrUnitarioExit
            end
            object txtVlrMercadoria: TDBEdit
              Left = 407
              Top = 14
              Width = 72
              Height = 21
              Color = 14342874
              DataField = 'VLR_MERCADORIA'
              DataSource = dsoItens
              Enabled = False
              ReadOnly = True
              TabOrder = 5
              OnExit = txtVlrMercadoriaExit
            end
            object txt_PerDesc: TDBEdit
              Left = 481
              Top = 14
              Width = 44
              Height = 21
              DataField = 'PER_DESCONTO'
              DataSource = dsoItens
              TabOrder = 6
              OnExit = txt_PerDescExit
            end
            object txt_VlrDesc: TDBEdit
              Left = 527
              Top = 14
              Width = 61
              Height = 21
              DataField = 'VLR_DESCONTO'
              DataSource = dsoItens
              TabOrder = 7
              OnExit = txt_VlrDescExit
            end
            object txt_VlrLiquido: TDBEdit
              Left = 592
              Top = 14
              Width = 70
              Height = 21
              TabStop = False
              Color = 14342874
              DataField = 'VLR_LIQUIDO'
              DataSource = dsoItens
              Enabled = False
              ReadOnly = True
              TabOrder = 8
            end
            object cbbCST: TwwDBLookupCombo
              Left = 115
              Top = 14
              Width = 83
              Height = 21
              TabStop = False
              DropDownAlignment = taLeftJustify
              DataField = 'id_st_icm'
              DataSource = dsoItens
              LookupTable = dmGeral.BUS_CD_X_ICM_ICO
              LookupField = 'CODIGO'
              Color = 14342874
              Enabled = False
              TabOrder = 1
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbCSTEnter
              OnExit = cbbCSTExit
            end
          end
          object btnAddItens: TBitBtn
            Left = 4
            Top = 21
            Width = 21
            Height = 21
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
            TabOrder = 1
            OnClick = btnAddItensClick
          end
          object pnlCorTamanho: TPanel
            Left = 369
            Top = 80
            Width = 277
            Height = 42
            TabOrder = 3
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
            object cbbCor: TwwDBLookupCombo
              Left = 140
              Top = 18
              Width = 130
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'DESCRICAO'#9'20'#9'Descri'#231#227'o'#9'F')
              DataField = 'id_cor'
              DataSource = dsoItens
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
              DataSource = dsoItens
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
          end
          object pnlIcms: TPanel
            Left = 40
            Top = 72
            Width = 290
            Height = 65
            TabOrder = 4
            Visible = False
            object Label17: TLabel
              Left = 8
              Top = 3
              Width = 277
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'ICMS Normal'
              Color = clSilver
              ParentColor = False
              Transparent = False
            end
            object Label18: TLabel
              Left = 8
              Top = 22
              Width = 44
              Height = 13
              Caption = 'Vlr. Base'
            end
            object Label19: TLabel
              Left = 103
              Top = 22
              Width = 32
              Height = 13
              Caption = 'Al'#237'q %'
            end
            object Label20: TLabel
              Left = 191
              Top = 22
              Width = 52
              Height = 13
              Caption = 'Valor Icms'
            end
            object txtIcmsBS: TwwDBEdit
              Left = 8
              Top = 37
              Width = 88
              Height = 21
              DataField = 'icm_n_base'
              DataSource = dsoItens
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnExit = txtIcmsBSExit
            end
            object txtIcmsAliq: TwwDBEdit
              Left = 103
              Top = 37
              Width = 82
              Height = 21
              DataField = 'icm_n_aliquota'
              DataSource = dsoItens
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnExit = txtIcmsAliqExit
            end
            object txtIcmsValor: TwwDBEdit
              Left = 191
              Top = 37
              Width = 90
              Height = 21
              DataField = 'icm_n_valor'
              DataSource = dsoItens
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnEnter = txtIcmsValorEnter
              OnExit = txtIcmsValorExit
            end
          end
          object pnlDesn: TPanel
            Left = 336
            Top = 88
            Width = 290
            Height = 65
            TabOrder = 5
            Visible = False
            object Label6: TLabel
              Left = 8
              Top = 3
              Width = 277
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'ICMS Desonerado'
              Color = clSilver
              ParentColor = False
              Transparent = False
            end
            object Label26: TLabel
              Left = 191
              Top = 22
              Width = 84
              Height = 13
              Caption = 'Valor Icms Desn.'
            end
            object Label10: TLabel
              Left = 16
              Top = 22
              Width = 106
              Height = 13
              Caption = 'Motivo Desonera'#231#227'o'
            end
            object txtIcmsDesnIte: TwwDBEdit
              Left = 191
              Top = 38
              Width = 90
              Height = 21
              DataField = 'vlr_icm_desc'
              DataSource = dsoItens
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnExit = txtIcmsDesnIteExit
            end
            object cbbMotDesn: TwwDBLookupCombo
              Left = 16
              Top = 37
              Width = 169
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'DESCRICAO'#9'50'#9'DESCRICAO'#9'F'
                'CODIGO'#9'3'#9'CODIGO'#9'F')
              DataField = 'motivo_icms_des'
              DataSource = dsoItens
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
          end
        end
        object tsTitulos: TTabSheet
          Caption = 'Titulos'
          ImageIndex = 1
          object btnAddTitulos: TBitBtn
            Left = 2
            Top = 18
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
            OnClick = btnAddTitulosClick
            OnKeyDown = btnAddTitulosKeyDown
          end
          object grdTitulos: TwwDBGrid
            Left = 3
            Top = 45
            Width = 691
            Height = 120
            Selected.Strings = (
              'id_nfe_tit'#9'10'#9'C'#243'digo'#9'F'
              'int_nomefpg'#9'30'#9'Forma Pagamento'#9'F'
              'int_nomepct'#9'40'#9'Plano de Contas'#9'F'
              'DTA_VENCIMENTO'#9'10'#9'Vencimento'#9#9
              'VLR_TITULO'#9'14'#9'Vlr. Parcela'#9'F')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsoTitulos
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
            object grdTitulosIButton: TwwIButton
              Left = -1
              Top = -1
              Width = 21
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
              OnClick = grdTitulosIButtonClick
            end
          end
          object pnTitulos: TPanel
            Left = 27
            Top = 6
            Width = 667
            Height = 36
            BevelOuter = bvNone
            TabOrder = 1
            object lblFormaPagamento: TLabel
              Left = 3
              Top = -1
              Width = 109
              Height = 13
              Caption = 'Forma de Pagamento'
            end
            object lblPlanoContas: TLabel
              Left = 205
              Top = -1
              Width = 84
              Height = 13
              Caption = 'Plano de Contas'
            end
            object lblVencimento: TLabel
              Left = 501
              Top = -1
              Width = 61
              Height = 13
              Caption = 'Vencimento'
            end
            object lblVlrParcela: TLabel
              Left = 589
              Top = -1
              Width = 56
              Height = 13
              Caption = 'Vlr. Parcela'
            end
            object cbbFormaPagamento: TwwDBLookupCombo
              Left = 4
              Top = 12
              Width = 200
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                'id_forma_pag'#9'10'#9'C'#243'digo'#9'F')
              DataField = 'id_forma_pag'
              DataSource = dsoTitulos
              LookupTable = dmGeral.BUS_CD_C_FPG
              LookupField = 'id_forma_pag'
              TabOrder = 0
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbFormaPagamentoEnter
              OnExit = cbbFormaPagamentoExit
            end
            object txtVencimento: TJvDBDateEdit
              Left = 501
              Top = 12
              Width = 85
              Height = 21
              DataField = 'dta_vencimento'
              DataSource = dsoTitulos
              ShowNullDate = False
              TabOrder = 3
              OnExit = txtVencimentoExit
            end
            object txtVlrParcela: TDBEdit
              Left = 589
              Top = 12
              Width = 72
              Height = 21
              DataField = 'vlr_titulo'
              DataSource = dsoTitulos
              TabOrder = 4
              OnExit = txtVlrParcelaExit
            end
            object txtPlanoContas: TJvDBComboEdit
              Left = 205
              Top = 12
              Width = 85
              Height = 21
              ClickKey = 114
              DataField = 'id_plano'
              DataSource = dsoTitulos
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
              TabOrder = 1
              OnButtonClick = txtPlanoContasButtonClick
              OnExit = txtPlanoContasExit
            end
            object txtPctDescricao: TwwDBEdit
              Left = 292
              Top = 12
              Width = 206
              Height = 19
              TabStop = False
              BorderStyle = bsNone
              Color = 14342874
              DataField = 'int_nomepct'
              DataSource = dsoTitulos
              ReadOnly = True
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
      end
      object gbTotalizacao: TGroupBox
        Left = 3
        Top = 394
        Width = 782
        Height = 69
        Caption = 'Totaliza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        object Label71: TLabel
          Left = 359
          Top = 11
          Width = 124
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'ICMS Normal'
          Color = clSilver
          ParentColor = False
          Transparent = False
        end
        object Label72: TLabel
          Left = 487
          Top = 11
          Width = 126
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'ICMS Substituido'
          Color = clSilver
          ParentColor = False
          Transparent = False
        end
        object Label62: TLabel
          Left = 555
          Top = 25
          Width = 46
          Height = 13
          Caption = 'Vlr. ICMS'
        end
        object Label23: TLabel
          Left = 620
          Top = 25
          Width = 47
          Height = 13
          Caption = 'Vlr. Desc.'
        end
        object Label22: TLabel
          Left = 685
          Top = 25
          Width = 53
          Height = 13
          Caption = 'Total Nota'
        end
        object Label55: TLabel
          Left = 497
          Top = 25
          Width = 41
          Height = 13
          Caption = 'Vlr.Base'
        end
        object Label56: TLabel
          Left = 425
          Top = 25
          Width = 46
          Height = 13
          Caption = 'Vlr. ICMS'
        end
        object Label57: TLabel
          Left = 361
          Top = 25
          Width = 41
          Height = 13
          Caption = 'Vlr.Base'
        end
        object Label39: TLabel
          Left = 220
          Top = 25
          Width = 67
          Height = 13
          Caption = 'Outras Desp.'
        end
        object Label60: TLabel
          Left = 154
          Top = 25
          Width = 37
          Height = 13
          Caption = 'Seguro'
        end
        object Label61: TLabel
          Left = 91
          Top = 25
          Width = 43
          Height = 13
          Caption = 'Vlr.Frete'
        end
        object Label24: TLabel
          Left = 7
          Top = 25
          Width = 78
          Height = 13
          Caption = 'Vlr. Mercadoria'
        end
        object lblIcmsdesn: TLabel
          Left = 293
          Top = 25
          Width = 54
          Height = 13
          Caption = 'Icms Desn.'
        end
        object num_VlrICMSSubst: TDBEdit
          Left = 553
          Top = 40
          Width = 60
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'ICM_S_VALOR'
          DataSource = dso
          ReadOnly = True
          TabOrder = 0
        end
        object num_Total_VlrDesc: TwwDBEdit
          Left = 618
          Top = 40
          Width = 60
          Height = 21
          Color = clWhite
          DataField = 'VLR_DESCONTO'
          DataSource = dso
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = num_Total_VlrDescExit
        end
        object num_TotalLiquido: TwwDBEdit
          Left = 683
          Top = 40
          Width = 80
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'VLR_LIQUIDO'
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object num_VlrBaseICMSSubst: TDBEdit
          Left = 487
          Top = 40
          Width = 60
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'ICM_S_BASE'
          DataSource = dso
          ReadOnly = True
          TabOrder = 3
        end
        object num_VlrICMS: TDBEdit
          Left = 423
          Top = 40
          Width = 60
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'ICM_N_VALOR'
          DataSource = dso
          ReadOnly = True
          TabOrder = 4
        end
        object num_VlrBaseICMS: TDBEdit
          Left = 359
          Top = 40
          Width = 60
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'ICM_N_BASE'
          DataSource = dso
          ReadOnly = True
          TabOrder = 5
        end
        object num_VlrOutrasDesp: TwwDBEdit
          Left = 218
          Top = 40
          Width = 69
          Height = 21
          Color = clWhite
          DataField = 'VLR_OUTRAS_DESP'
          DataSource = dso
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object num_VlrSeguro: TwwDBEdit
          Left = 154
          Top = 40
          Width = 60
          Height = 21
          Color = clWhite
          DataField = 'VLR_SEGURO'
          DataSource = dso
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object num_VlrFreteNF: TwwDBEdit
          Left = 90
          Top = 40
          Width = 60
          Height = 21
          Color = clWhite
          DataField = 'FRE_VALOR'
          DataSource = dso
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object num_Total_VlrMercadoria: TDBEdit
          Left = 5
          Top = 40
          Width = 80
          Height = 21
          TabStop = False
          Color = 14342874
          DataField = 'VLR_MERCADORIA'
          DataSource = dso
          ReadOnly = True
          TabOrder = 10
        end
        object txtIcmDesn: TwwDBEdit
          Left = 293
          Top = 40
          Width = 66
          Height = 21
          Color = 14342874
          DataField = 'vlr_icm_desc'
          DataSource = dso
          ReadOnly = True
          TabOrder = 9
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object cbbAlmoxarifado: TwwDBLookupCombo
        Left = 450
        Top = 144
        Width = 195
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
          'id_almoxarifado'#9'10'#9'C'#243'digo'#9'F')
        DataField = 'id_almoxarifado'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_ALM
        LookupField = 'id_almoxarifado'
        TabOrder = 15
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnBeforeDropDown = cbbAlmoxarifadoBeforeDropDown
        OnEnter = cbbAlmoxarifadoEnter
        OnExit = cbbAlmoxarifadoExit
      end
      object de_Emissao: TJvDBDateEdit
        Left = 157
        Top = 98
        Width = 90
        Height = 21
        DataField = 'dta_emissao'
        DataSource = dso
        ShowNullDate = False
        TabOrder = 10
        OnExit = de_EmissaoExit
      end
      object de_DataDocumento: TJvDBDateEdit
        Left = 327
        Top = 98
        Width = 90
        Height = 21
        DataField = 'dta_documento'
        DataSource = dso
        ShowNullDate = False
        TabOrder = 11
        OnExit = de_DataDocumentoExit
      end
      object txt_CFOP_Pai: TJvDBComboEdit
        Left = 157
        Top = 190
        Width = 80
        Height = 21
        ClickKey = 114
        DataField = 'ID_CFO'
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
        TabOrder = 18
        OnButtonClick = txt_CFOP_PaiButtonClick
        OnEnter = txt_CFOP_PaiEnter
        OnExit = txt_CFOP_PaiExit
      end
      object txtDescEmitente: TwwDBEdit
        Left = 253
        Top = 27
        Width = 262
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        Color = 14342874
        DataField = 'int_nomeemi'
        DataSource = dso
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object txt_UfEmitente: TDBEdit
        Left = 588
        Top = 27
        Width = 33
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 14342874
        DataField = 'uf_emitente'
        DataSource = dso
        ReadOnly = True
        TabOrder = 6
      end
      object cbbTipoEstoque: TwwDBLookupCombo
        Left = 160
        Top = 5
        Width = 165
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'50'#9'Descri'#231#227'o'#9'F'
          'CODIGO'#9'2'#9'C'#243'digo'#9'F')
        DataField = 'ID_TIPO_MOV_ESTOQUE'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_TME
        LookupField = 'id_tipo_mov_estoque'
        Options = [loColLines, loRowLines]
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbTipoEstoqueEnter
        OnExit = cbbTipoEstoqueExit
      end
      object cbbVendedor: TwwDBLookupCombo
        Left = 450
        Top = 167
        Width = 195
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'20'#9'nome'#9'F'
          'id_funcionario'#9'10'#9'id_funcionario'#9'F')
        DataField = 'id_vendedor'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FUN
        LookupField = 'id_funcionario'
        TabOrder = 17
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbVendedorEnter
        OnExit = cbbVendedorExit
      end
      object cbbCondPag: TwwDBLookupCombo
        Left = 157
        Top = 167
        Width = 205
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'descricao'#9'30'#9'descricao'#9'F'
          'id_condicao_pag'#9'10'#9'id_condicao_pag'#9'F')
        DataField = 'id_condicao_pag'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CPG
        LookupField = 'id_condicao_pag'
        TabOrder = 16
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbCondPagEnter
        OnExit = cbbCondPagExit
      end
      object txtIdFiscalRef: TJvDBComboEdit
        Left = 395
        Top = 50
        Width = 79
        Height = 21
        ClickKey = 114
        DataField = 'id_fiscal_ref_comp'
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
        TabOrder = 5
        Visible = False
        OnButtonClick = txtIdFiscalRefButtonClick
        OnExit = txtIdFiscalRefExit
      end
      object cbbFinalidade: TwwDBComboBox
        Left = 160
        Top = 52
        Width = 121
        Height = 21
        ShowButton = True
        Style = csDropDownList
        MapList = True
        AllowClearKey = False
        DataField = 'nfe_finalidade'
        DataSource = dso
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Normal'#9'1'
          'Complementar'#9'2')
        Sorted = False
        TabOrder = 4
        UnboundDataType = wwDefault
        OnChange = cbbFinalidadeChange
        OnEnter = cbbFinalidadeEnter
        OnExit = cbbFinalidadeExit
      end
    end
  end
  inherited pnlTop: TJvPanel
    inherited pnlCima: TJvPanel
      inherited lblCodificacaoLMestre: TLabel
        ExplicitWidth = 1030
      end
      inherited lblTitulo: TLabel
        Caption = 'Nota Fiscal de Sa'#237'da'
        ExplicitWidth = 1035
      end
    end
  end
  object dsoItens: TwwDataSource [4]
    DataSet = dmGeral.FAT_CD_M_NFE_ITE
    Left = 128
    Top = 236
  end
  object dsoTitulos: TwwDataSource [5]
    DataSet = dmGeral.FAT_CD_M_NFE_TIT
    Left = 232
    Top = 236
  end
  inherited dso: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_NFE
    Left = 24
    Top = 236
  end
  inherited imgBotoesAtivo: TImageList
    Bitmap = {
      494C01010800A800AC0218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      494C010108003001000318001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      494C010112000001FC020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      494C01010800DC00A40218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      494C010106000001F4020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      494C01010800DC00B40218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      494C01010600000104030E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      494C01010800DC00AC0118001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      494C010106000001E4010E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
  object EST_FR_M_NFS: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41822.420257245400000000
    ReportOptions.LastChange = 41835.722833599500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 26
    Top = 283
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = EST_DB_M_NFS
        DataSetName = 'EST_DB_M_NFS'
      end
      item
        DataSet = EST_DB_M_NFS_ITE
        DataSetName = 'EST_DB_M_NFS_ITE'
      end
      item
        DataSet = EST_DB_M_NFS_TIT
        DataSetName = 'EST_DB_M_NFS_TIT'
      end>
    Variables = <
      item
        Name = ' externo'
        Value = Null
      end
      item
        Name = 'ft_codlme'
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
          Top = 26.456710000000000000
          Width = 884.410020000000000000
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
            'Espelho da Nota Fiscal - Sa'#237'da')
          ParentFont = False
        end
        object CAD_DB_C_PARemp_fantasia: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
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
        object imgEmpresa1: TfrxPictureView
          Left = 906.087200000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 64.252010000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo18: TfrxMemoView
          Left = 718.110700000000000000
          Top = 7.559060000000000000
          Width = 170.078850000000000000
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
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 162.519790000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        DataSet = EST_DB_M_NFS
        DataSetName = 'EST_DB_M_NFS'
        RowCount = 0
        object Shape14: TfrxShapeView
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Fill.BackColor = clBtnFace
          Frame.Width = 0.500000000000000000
        end
        object Memo3: TfrxMemoView
          Top = 2.779530000000000000
          Width = 1046.929810000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dados')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Shape2: TfrxShapeView
          Left = 75.590600000000000000
          Top = 22.677180000000000000
          Width = 151.181200000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo4: TfrxMemoView
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Filial')
          ParentFont = False
        end
        object EST_DB_M_NFEnumero: TfrxMemoView
          Left = 75.590600000000000000
          Top = 37.795300000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          DataField = 'numero'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."numero"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 75.590600000000000000
          Top = 22.677180000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'N'#250'mero NF')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 226.771800000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo7: TfrxMemoView
          Left = 226.771800000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'S'#233'rie')
          ParentFont = False
        end
        object EST_DB_M_NFEserie: TfrxMemoView
          Left = 226.771800000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'serie'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."serie"]')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Left = 340.157700000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 340.157700000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
        end
        object EST_DB_M_NFEmodelo: TfrxMemoView
          Left = 340.157700000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'modelo'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."modelo"]')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Left = 396.850650000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 396.850650000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object EST_DB_M_NFEdta_emissao: TfrxMemoView
          Left = 396.850650000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'dta_emissao'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."dta_emissao"]')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Left = 472.441250000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo10: TfrxMemoView
          Left = 472.441250000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Shape8: TfrxShapeView
          Left = 548.031850000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo11: TfrxMemoView
          Left = 548.031850000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object EST_DB_M_NFEid_cfo: TfrxMemoView
          Left = 548.031850000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'id_cfo'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."id_cfo"]')
          ParentFont = False
        end
        object Shape9: TfrxShapeView
          Left = 623.622450000000000000
          Top = 22.677180000000000000
          Width = 423.307360000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo12: TfrxMemoView
          Left = 623.622450000000000000
          Top = 22.677180000000000000
          Width = 423.307360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Chave de Acesso')
          ParentFont = False
        end
        object EST_DB_M_NFEid_empresa: TfrxMemoView
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'id_empresa'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."id_empresa"]')
          ParentFont = False
        end
        object Shape10: TfrxShapeView
          Top = 52.913420000000000000
          Width = 151.181200000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo13: TfrxMemoView
          Top = 52.913420000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'N'#250'mero do Conhecimento')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo14: TfrxMemoView
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Tipo de Estoque')
          ParentFont = False
        end
        object Shape12: TfrxShapeView
          Left = 283.464750000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo15: TfrxMemoView
          Left = 283.464750000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Condi'#231#227'o de Pagamento')
          ParentFont = False
        end
        object Shape13: TfrxShapeView
          Left = 415.748300000000000000
          Top = 52.913420000000000000
          Width = 415.748300000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo16: TfrxMemoView
          Left = 415.748300000000000000
          Top = 52.913420000000000000
          Width = 415.748300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Shape15: TfrxShapeView
          Left = 831.496600000000000000
          Top = 52.913420000000000000
          Width = 215.433210000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo17: TfrxMemoView
          Left = 831.496600000000000000
          Top = 52.913420000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Pedido Fornecedor')
          ParentFont = False
        end
        object EST_DB_M_NFEid_pedido_compra: TfrxMemoView
          Left = 831.496600000000000000
          Top = 68.031540000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          DataField = 'id_pedido_compra'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."id_pedido_compra"]')
          ParentFont = False
        end
        object EST_DB_M_NFEid_emitente: TfrxMemoView
          Left = 415.748300000000000000
          Top = 68.031540000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'id_emitente'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."id_emitente"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 491.338900000000000000
          Top = 68.031540000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '-')
          ParentFont = False
        end
        object EST_DB_M_NFEint_nomeemi: TfrxMemoView
          Left = 498.897960000000000000
          Top = 68.031540000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          DataField = 'int_nomeemi'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_nomeemi"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 321.260050000000000000
          Top = 68.031540000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '-')
          ParentFont = False
        end
        object EST_DB_M_NFEint_nomecpg: TfrxMemoView
          Left = 328.819110000000000000
          Top = 68.031540000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'int_nomecpg'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_nomecpg"]')
          ParentFont = False
        end
        object EST_DB_M_NFEid_condicao_pag: TfrxMemoView
          Left = 283.464750000000000000
          Top = 68.031540000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'id_condicao_pag'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."id_condicao_pag"]')
          ParentFont = False
        end
        object EST_DB_M_NFEnfe_chave: TfrxMemoView
          Left = 623.622450000000000000
          Top = 37.795300000000000000
          Width = 423.307360000000000000
          Height = 15.118120000000000000
          DataField = 'nfe_chave'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."nfe_chave"]')
          ParentFont = False
        end
        object EST_DB_M_NFEdta_documento: TfrxMemoView
          Left = 472.441250000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'dta_documento'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."dta_documento"]')
          ParentFont = False
        end
        object EST_DB_M_NFEid_tipo_mov_estoque: TfrxMemoView
          Left = 151.181200000000000000
          Top = 68.031540000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'id_tipo_mov_estoque'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."id_tipo_mov_estoque"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 188.976500000000000000
          Top = 68.031540000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '-')
          ParentFont = False
        end
        object EST_DB_M_NFEint_nometme: TfrxMemoView
          Left = 196.535560000000000000
          Top = 68.031540000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'int_nometme'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_nometme"]')
          ParentFont = False
        end
        object Shape18: TfrxShapeView
          Top = 83.149660000000000000
          Width = 260.787570000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo24: TfrxMemoView
          Top = 83.149660000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Transportador')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          Left = 260.787570000000000000
          Top = 83.149660000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo27: TfrxMemoView
          Left = 260.787570000000000000
          Top = 83.149660000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Shape20: TfrxShapeView
          Left = 434.645950000000000000
          Top = 83.149660000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo28: TfrxMemoView
          Left = 434.645950000000000000
          Top = 83.149660000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Shape21: TfrxShapeView
          Left = 657.638220000000000000
          Top = 83.149660000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo29: TfrxMemoView
          Left = 657.638220000000000000
          Top = 83.149660000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Estado')
          ParentFont = False
        end
        object Shape22: TfrxShapeView
          Left = 695.433520000000000000
          Top = 83.149660000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo30: TfrxMemoView
          Left = 695.433520000000000000
          Top = 83.149660000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
        end
        object Shape23: TfrxShapeView
          Left = 869.291900000000000000
          Top = 83.149660000000000000
          Width = 177.637910000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo31: TfrxMemoView
          Left = 869.291900000000000000
          Top = 83.149660000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Estadual')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Top = 113.385900000000000000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Totais da Nota')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape33: TfrxShapeView
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo42: TfrxMemoView
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Base ICMS')
          ParentFont = False
        end
        object Shape34: TfrxShapeView
          Left = 79.370130000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo43: TfrxMemoView
          Left = 79.370130000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. ICMS')
          ParentFont = False
        end
        object Shape35: TfrxShapeView
          Left = 158.740260000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo44: TfrxMemoView
          Left = 158.740260000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Base ICMS Subst.')
          ParentFont = False
        end
        object Shape36: TfrxShapeView
          Left = 238.110390000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo45: TfrxMemoView
          Left = 238.110390000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. ICMS Subst.')
          ParentFont = False
        end
        object Shape37: TfrxShapeView
          Left = 317.480520000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo46: TfrxMemoView
          Left = 317.480520000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Base ISS')
          ParentFont = False
        end
        object Shape39: TfrxShapeView
          Left = 396.850650000000000000
          Top = 132.283550000000000000
          Width = 66.687203170000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo48: TfrxMemoView
          Left = 396.850650000000000000
          Top = 132.283550000000000000
          Width = 64.248178780000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. ISS')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 465.220780000000000000
          Top = 132.283550000000000000
          Width = 70.589642200000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Base IPI')
          ParentFont = False
        end
        object Shape41: TfrxShapeView
          Left = 537.472790000000000000
          Top = 132.283550000000000000
          Width = 69.126227560000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo50: TfrxMemoView
          Left = 537.693260000000000000
          Top = 132.283550000000000000
          Width = 66.687203170000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. IPI')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 608.504330000000000000
          Top = 132.283550000000000000
          Width = 62.784764150000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. Frete')
          ParentFont = False
        end
        object Shape46: TfrxShapeView
          Left = 673.535870000000000000
          Top = 132.283550000000000000
          Width = 76.931105610000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo55: TfrxMemoView
          Left = 674.331170000000000000
          Top = 132.283550000000000000
          Width = 74.492081220000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Desp. Acess'#243'rios')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 752.126470000000000000
          Top = 132.283550000000000000
          Width = 71.565251950000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. Mercadoria')
          ParentFont = False
        end
        object Shape49: TfrxShapeView
          Left = 825.717070000000000000
          Top = 132.283550000000000000
          Width = 65.223788540000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo58: TfrxMemoView
          Left = 894.115421460000000000
          Top = 132.283550000000000000
          Width = 67.662812930000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. Desconto')
          ParentFont = False
        end
        object Shape50: TfrxShapeView
          Left = 964.636681950000000000
          Top = 132.283550000000000000
          Width = 82.293128050000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo59: TfrxMemoView
          Left = 967.075706340000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. Total')
          ParentFont = False
        end
        object EST_DB_M_NFEid_transportadora: TfrxMemoView
          Top = 98.267780000000010000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'id_transportadora'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."id_transportadora"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Top = 98.267780000000010000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '-')
          ParentFont = False
        end
        object EST_DB_M_NFEicm_n_base: TfrxMemoView
          Top = 147.401670000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'icm_n_base'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."icm_n_base"]')
          ParentFont = False
        end
        object EST_DB_M_NFEicm_n_valor: TfrxMemoView
          Left = 79.370130000000000000
          Top = 147.401670000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'icm_n_valor'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."icm_n_valor"]')
          ParentFont = False
        end
        object EST_DB_M_NFEicm_n_base1: TfrxMemoView
          Left = 158.740260000000000000
          Top = 147.401670000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'icm_s_base'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."icm_s_base"]')
          ParentFont = False
        end
        object EST_DB_M_NFEicm_s_valor: TfrxMemoView
          Left = 238.110390000000000000
          Top = 147.401670000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'icm_s_base'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."icm_s_base"]')
          ParentFont = False
        end
        object EST_DB_M_NFEiss_base: TfrxMemoView
          Left = 317.480520000000000000
          Top = 147.401670000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'iss_base'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."iss_base"]')
          ParentFont = False
        end
        object EST_DB_M_NFEiss_valor: TfrxMemoView
          Left = 396.850650000000000000
          Top = 147.401670000000000000
          Width = 64.248178780000000000
          Height = 15.118120000000000000
          DataField = 'iss_valor'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."iss_valor"]')
          ParentFont = False
        end
        object EST_DB_M_NFEipi_base: TfrxMemoView
          Left = 465.220780000000000000
          Top = 147.401670000000000000
          Width = 70.589642200000000000
          Height = 15.118120000000000000
          DataField = 'ipi_base'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."ipi_base"]')
          ParentFont = False
        end
        object EST_DB_M_NFEipi_valor: TfrxMemoView
          Left = 537.693260000000000000
          Top = 147.401670000000000000
          Width = 66.687203170000000000
          Height = 15.118120000000000000
          DataField = 'ipi_valor'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."ipi_valor"]')
          ParentFont = False
        end
        object EST_DB_M_NFEvlr_mercadoria: TfrxMemoView
          Left = 608.504330000000000000
          Top = 147.401670000000000000
          Width = 62.784764150000000000
          Height = 15.118120000000000000
          DataField = 'fre_valor'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."fre_valor"]')
          ParentFont = False
        end
        object EST_DB_M_NFEvlr_outras_desp: TfrxMemoView
          Left = 675.306779760000000000
          Top = 147.401670000000000000
          Width = 71.565251950000000000
          Height = 15.118120000000000000
          DataField = 'vlr_outras_desp'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."vlr_outras_desp"]')
          ParentFont = False
        end
        object EST_DB_M_NFEvlr_mercadoria1: TfrxMemoView
          Left = 752.126470000000000000
          Top = 147.401670000000000000
          Width = 72.053056830000000000
          Height = 15.118120000000000000
          DataField = 'vlr_mercadoria'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."vlr_mercadoria"]')
          ParentFont = False
        end
        object EST_DB_M_NFEvlr_desconto: TfrxMemoView
          Left = 894.115421460000000000
          Top = 147.889474880000000000
          Width = 67.662812930000000000
          Height = 15.118120000000000000
          DataField = 'vlr_desconto'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."vlr_desconto"]')
          ParentFont = False
        end
        object EST_DB_M_NFEvlr_liquido: TfrxMemoView
          Left = 967.075706340000000000
          Top = 147.401670000000000000
          Width = 76.927274390000000000
          Height = 15.118120000000000000
          DataField = 'vlr_liquido'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."vlr_liquido"]')
          ParentFont = False
        end
        object EST_DB_M_NFEint_nometra: TfrxMemoView
          Left = 45.354360000000000000
          Top = 98.267780000000010000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          DataField = 'int_nometra'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_nometra"]')
          ParentFont = False
        end
        object EST_DB_M_NFEint_endtra: TfrxMemoView
          Left = 260.787570000000000000
          Top = 98.267780000000010000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'int_endtra'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_endtra"]')
          ParentFont = False
        end
        object EST_DB_M_NFEint_cidtra: TfrxMemoView
          Left = 434.645950000000000000
          Top = 98.267780000000010000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          DataField = 'int_cidtra'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_cidtra"]')
          ParentFont = False
        end
        object EST_DB_M_NFEint_esttra: TfrxMemoView
          Left = 657.638220000000000000
          Top = 98.267780000000010000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'int_esttra'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_esttra"]')
          ParentFont = False
        end
        object EST_DB_M_NFEint_cnptra: TfrxMemoView
          Left = 695.433520000000000000
          Top = 98.267780000000010000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'int_cnptra'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_cnptra"]')
          ParentFont = False
        end
        object EST_DB_M_NFEint_instra: TfrxMemoView
          Left = 869.291900000000000000
          Top = 98.267780000000010000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          DataField = 'int_instra'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_instra"]')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 283.464750000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo6: TfrxMemoView
          Left = 283.464750000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Sub-S'#233'rie')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 283.464750000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'sub_serie'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS."sub_serie"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 825.853658540000000000
          Top = 132.283550000000000000
          Width = 67.662812930000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr. Desc. Icms')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 826.341463410000000000
          Top = 147.355385370000000000
          Width = 62.907673170000000000
          Height = 15.118120000000000000
          DataField = 'vlr_icm_desc'
          DataSet = EST_DB_M_NFS
          DataSetName = 'EST_DB_M_NFS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS."vlr_icm_desc"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 16.897650000000000000
        Top = 616.063390000000000000
        Width = 1046.929810000000000000
        object Memo25: TfrxMemoView
          Left = 377.953000000000000000
          Top = 1.779530000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
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
          Left = 944.882500000000000000
          Top = 0.779530000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
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
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 396.850650000000000000
        Width = 1046.929810000000000000
        DataSet = EST_DB_M_NFS_ITE
        DataSetName = 'EST_DB_M_NFS_ITE'
        RowCount = 0
        object EST_DB_M_NFE_ITEid_item: TfrxMemoView
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'id_item'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."id_item"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEint_desc_item: TfrxMemoView
          Left = 56.692950000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          DataField = 'int_desc_item'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."int_desc_item"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEid_cfo: TfrxMemoView
          Left = 260.787570000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'id_cfo'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."id_cfo"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEqtde: TfrxMemoView
          Left = 325.039580000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'qtde'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."qtde"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEvlr_unitario: TfrxMemoView
          Left = 362.834880000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'vlr_unitario'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."vlr_unitario"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEper_desconto: TfrxMemoView
          Left = 476.220780000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'per_desconto'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."per_desconto"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEvlr_desconto: TfrxMemoView
          Left = 514.016080000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'vlr_desconto'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."vlr_desconto"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEvlr_liquido: TfrxMemoView
          Left = 990.236860000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'vlr_liquido'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."vlr_liquido"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEipi_valor: TfrxMemoView
          Left = 895.748610000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'ipi_valor'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."ipi_valor"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEvlr_mercadoria: TfrxMemoView
          Left = 419.527830000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'vlr_mercadoria'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."vlr_mercadoria"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEicm_n_base: TfrxMemoView
          Left = 570.709030000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'icm_n_base'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."icm_n_base"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEicm_n_aliquota: TfrxMemoView
          Left = 627.401980000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'icm_n_aliquota'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."icm_n_aliquota"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEicm_n_valor: TfrxMemoView
          Left = 665.197280000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'icm_n_valor'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."icm_n_valor"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEicm_s_base: TfrxMemoView
          Left = 721.890230000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'icm_s_base'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."icm_s_base"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEicm_s_valor: TfrxMemoView
          Left = 789.921770000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'icm_s_valor'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."icm_s_valor"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEipi_aliquota: TfrxMemoView
          Left = 857.953310000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'ipi_aliquota'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."ipi_aliquota"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_ITEid_st_ipi: TfrxMemoView
          Left = 952.441560000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'id_st_ipi'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."id_st_ipi"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'id_st_icm'
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."id_st_icm"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 340.157700000000000000
        Width = 1046.929810000000000000
        object Memo60: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Itens da Nota')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          Memo.UTF8W = (
            'C'#243'd. do Item')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 990.236860000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Vlr. Total')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 952.441560000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'ST. IPI')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 895.748610000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Vlr. IPI')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 857.953310000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '% IPI')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 789.921770000000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Vlr. ICMS Subst.')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 721.890230000000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'B. ICMS Subst.')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 665.197280000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Vlr. ICMS')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 627.401980000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '% ICMS')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 570.709030000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'B. ICMS')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 514.016080000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Vlr. Desc.')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '% Desc.')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 419.527830000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Vlr. Bruto')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 362.834880000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Vlr. Unit'#225'rio')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 325.039580000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 260.787570000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 56.692950000000000000
          Top = 18.897650000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Item')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 234.330860000000000000
          Top = 18.897650000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'CST')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 434.645950000000000000
        Width = 1046.929810000000000000
        object Memo78: TfrxMemoView
          Left = 869.291900000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haRight
          Memo.UTF8W = (
            'Total dos Itens:')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 952.441560000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<EST_DB_M_NFS_ITE."vlr_liquido">,DetailData1)]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 483.779840000000000000
        Width = 1046.929810000000000000
        object Memo80: TfrxMemoView
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 453.543600000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Dias')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 75.590600000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 340.157700000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Nro do T'#237'tulo')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo de T'#237'tulo')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'T'#237'tulos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 566.929500000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 642.520100000000000000
          Top = 18.897650000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 540.472790000000000000
        Width = 1046.929810000000000000
        DataSet = EST_DB_M_NFS_TIT
        DataSetName = 'EST_DB_M_NFS_TIT'
        RowCount = 0
        object EST_DB_M_NFE_TITnum_parcela: TfrxMemoView
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'num_parcela'
          DataSet = EST_DB_M_NFS_TIT
          DataSetName = 'EST_DB_M_NFS_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS_TIT."num_parcela"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_TITint_nomefpg: TfrxMemoView
          Left = 113.385900000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          DataField = 'int_nomefpg'
          DataSet = EST_DB_M_NFS_TIT
          DataSetName = 'EST_DB_M_NFS_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS_TIT."int_nomefpg"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_TITid_forma_pag: TfrxMemoView
          Left = 75.590600000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'id_forma_pag'
          DataSet = EST_DB_M_NFS_TIT
          DataSetName = 'EST_DB_M_NFS_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS_TIT."id_forma_pag"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_TITid_nfe_tit: TfrxMemoView
          Left = 340.157700000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataField = 'id_nfe_tit'
          DataSet = EST_DB_M_NFS_TIT
          DataSetName = 'EST_DB_M_NFS_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS_TIT."id_nfe_tit"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_TITdias: TfrxMemoView
          Left = 453.543600000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'dias'
          DataSet = EST_DB_M_NFS_TIT
          DataSetName = 'EST_DB_M_NFS_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS_TIT."dias"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_TITdta_vencimento: TfrxMemoView
          Left = 491.338900000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'dta_vencimento'
          DataSet = EST_DB_M_NFS_TIT
          DataSetName = 'EST_DB_M_NFS_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EST_DB_M_NFS_TIT."dta_vencimento"]')
          ParentFont = False
        end
        object EST_DB_M_NFE_TITvlr_titulo: TfrxMemoView
          Left = 566.929500000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'vlr_titulo'
          DataSet = EST_DB_M_NFS_TIT
          DataSetName = 'EST_DB_M_NFS_TIT'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_TIT."vlr_titulo"]')
          ParentFont = False
        end
      end
    end
  end
  object PAD_XL_C_REL: TfrxXLSExport
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
    Left = 122
    Top = 283
  end
  object PAD_PD_C_REL: TfrxPDFExport
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
    Left = 226
    Top = 283
  end
  object EST_DB_M_NFS_TIT: TfrxDBDataset
    UserName = 'EST_DB_M_NFS_TIT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_fiscal=id_fiscal'
      'id_nfe_tit=id_nfe_tit'
      'id_forma_pag=id_forma_pag'
      'num_parcela=num_parcela'
      'dias=dias'
      'dta_vencimento=dta_vencimento'
      'vlr_titulo=vlr_titulo'
      'id_plano=id_plano'
      'id_ccusto=id_ccusto'
      'che_banco=che_banco'
      'che_agencia=che_agencia'
      'che_conta=che_conta'
      'che_numero=che_numero'
      'che_emitente=che_emitente'
      'int_nomefpg=int_nomefpg'
      'int_nomepct=int_nomepct'
      'int_nomeccu=int_nomeccu'
      'historico_pag=historico_pag'
      'int_tipopgto=int_tipopgto'
      'id_maquineta=id_maquineta')
    DataSet = dmGeral.FAT_CD_M_NFE_TIT
    BCDToCurrency = False
    Left = 226
    Top = 331
  end
  object EST_DB_M_NFS_ITE: TfrxDBDataset
    UserName = 'EST_DB_M_NFS_ITE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_item=id_item'
      'int_desc_item=int_desc_item'
      'int_und_venda=int_und_venda'
      'qtde=qtde'
      'vlr_liquido=vlr_liquido'
      'vlr_unitario=vlr_unitario'
      'vlr_mercadoria=vlr_mercadoria'
      'vlr_desconto=vlr_desconto'
      'id_fiscal=id_fiscal'
      'id_sequencia=id_sequencia'
      'id_inf_fisco=id_inf_fisco'
      'id_cfo=id_cfo'
      'id_st_icm=id_st_icm'
      'qtde_devolvida=qtde_devolvida'
      'per_desconto=per_desconto'
      'vlr_outras=vlr_outras'
      'vlr_isenta=vlr_isenta'
      'vlr_seguro=vlr_seguro'
      'vlr_outras_desp=vlr_outras_desp'
      'vlr_icm_ser_nao_incide=vlr_icm_ser_nao_incide'
      'vlr_custo=vlr_custo'
      'icm_n_aliquota=icm_n_aliquota'
      'icm_per_reducao=icm_per_reducao'
      'icm_n_base=icm_n_base'
      'icm_n_valor=icm_n_valor'
      'icm_s_base=icm_s_base'
      'icm_s_valor=icm_s_valor'
      'ipi_base=ipi_base'
      'ipi_aliquota=ipi_aliquota'
      'ipi_valor=ipi_valor'
      'iss_base=iss_base'
      'iss_aliquota=iss_aliquota'
      'iss_valor=iss_valor'
      'fre_base=fre_base'
      'fre_percentual=fre_percentual'
      'fre_valor=fre_valor'
      'pis_base=pis_base'
      'pis_aliquota=pis_aliquota'
      'pis_valor=pis_valor'
      'cof_base=cof_base'
      'cof_aliquota=cof_aliquota'
      'cof_valor=cof_valor'
      'peso_liquido=peso_liquido'
      'peso_bruto=peso_bruto'
      'nro_pedido=nro_pedido'
      'cof_valor_st=cof_valor_st'
      'pis_valor_st=pis_valor_st'
      'icm_n_dif_aliq=icm_n_dif_aliq'
      'icm_n_vlr_dif_aliq=icm_n_vlr_dif_aliq'
      'para_analise_raa=para_analise_raa'
      'fre_dif_aliq_icm=fre_dif_aliq_icm'
      'fre_vlr_dif_icm=fre_vlr_dif_icm'
      'fre_custo=fre_custo'
      'origem_mercadoria=origem_mercadoria'
      'id_cor=id_cor'
      'id_tamanho=id_tamanho'
      'id_busca_item=id_busca_item'
      'id_tributo=id_tributo'
      'num_lote=num_lote'
      'INT_CAL_SIT_PLANO=INT_CAL_SIT_PLANO'
      'int_nomecor=int_nomecor'
      'int_nometam=int_nometam'
      'id_st_pis=id_st_pis'
      'id_st_cof=id_st_cof'
      'id_st_ipi=id_st_ipi'
      'imp_valor=imp_valor'
      'tri_valor=tri_valor'
      'tri_indice=tri_indice'
      'icm_s_vlr_mva=icm_s_vlr_mva'
      'icm_s_per_mva=icm_s_per_mva'
      'id_sequencia_ite_cmp_ped=id_sequencia_ite_cmp_ped'
      'int_id_ncm=int_id_ncm'
      'id_sequencia_ite_iqm=id_sequencia_ite_iqm'
      'imp_base_calculo=imp_base_calculo'
      'imp_desp_aduana=imp_desp_aduana'
      'imp_iof=imp_iof'
      'di_numero=di_numero'
      'di_data=di_data'
      'di_local_desemb=di_local_desemb'
      'di_uf_desemb=di_uf_desemb'
      'di_data_desemb=di_data_desemb'
      'di_exportador=di_exportador'
      'di_numero_adicao=di_numero_adicao'
      'di_seq_adicao=di_seq_adicao'
      'di_fabricante=di_fabricante'
      'di_vlr_desconto=di_vlr_desconto'
      'di_fci=di_fci'
      'int_sldqtde=int_sldqtde'
      'id_sequencia_ite_xml=id_sequencia_ite_xml'
      'int_tipo_item=int_tipo_item'
      'vlr_acrescimo=vlr_acrescimo'
      'int_ncmperimposto=int_ncmperimposto'
      'vlr_unitario_orig=vlr_unitario_orig'
      'int_cod_onu=int_cod_onu'
      'vlr_part_dest=vlr_part_dest'
      'vlr_part_orig=vlr_part_orig'
      'vlr_icm_desc=vlr_icm_desc'
      'int_cest_ncm=int_cest_ncm'
      'part_per_aliq_dest=part_per_aliq_dest'
      'part_per_part_orig=part_per_part_orig'
      'part_per_part_dest=part_per_part_dest'
      'vlr_fcp=vlr_fcp'
      'per_fcp=per_fcp'
      'int_id_grupo=int_id_grupo'
      'int_part_perc_fcp=int_part_perc_fcp'
      'part_per_red_int_dest=part_per_red_int_dest'
      'fp_vlr_tot_custo_fix_mens=fp_vlr_tot_custo_fix_mens'
      'fp_vlr_ven_med_mens=fp_vlr_ven_med_mens'
      'fp_per_cust_ven_mens=fp_per_cust_ven_mens'
      'fp_per_icms_ven=fp_per_icms_ven'
      'fp_per_simples=fp_per_simples'
      'fp_per_comissao=fp_per_comissao'
      'fp_per_frete_ven=fp_per_frete_ven'
      'fp_per_cust_fin_ven=fp_per_cust_fin_ven'
      'fp_per_lucro_ven=fp_per_lucro_ven'
      'fp_per_total_incid=fp_per_total_incid'
      'fp_per_markup_div=fp_per_markup_div'
      'fp_per_markup_mult=fp_per_markup_mult'
      'fp_vlr_prc_ven_calc=fp_vlr_prc_ven_calc'
      'fp_vlr_prc_ven_prat=fp_vlr_prc_ven_prat'
      'fp_calculado=fp_calculado'
      'fp_vlr_prc_prz_ven_prat=fp_vlr_prc_prz_ven_prat'
      'fp_per_prc_prz_ven_prat=fp_per_prc_prz_ven_prat'
      'id_fiscal_dev=id_fiscal_dev'
      'dre_perc_out_ded_ven=dre_perc_out_ded_ven'
      'dre_perc_ircs=dre_perc_ircs'
      'int_origem=int_origem'
      'int_rt_composicao=int_rt_composicao'
      'int_rt_registro=int_rt_registro'
      'dta_vencimento=dta_vencimento')
    DataSet = dmGeral.FAT_CD_M_NFE_ITE
    BCDToCurrency = False
    Left = 122
    Top = 331
  end
  object EST_DB_M_NFS: TfrxDBDataset
    UserName = 'EST_DB_M_NFS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_fiscal=id_fiscal'
      'id_almoxarifado=id_almoxarifado'
      'id_pedido_compra=id_pedido_compra'
      'id_condicao_pag=id_condicao_pag'
      'id_emitente=id_emitente'
      'id_empresa=id_empresa'
      'id_cfo=id_cfo'
      'id_transportadora=id_transportadora'
      'id_vendedor=id_vendedor'
      'id_tipo_mov_estoque=id_tipo_mov_estoque'
      'uf_emitente=uf_emitente'
      'uf_empresa=uf_empresa'
      'dta_emissao=dta_emissao'
      'dta_documento=dta_documento'
      'cpf_cnpj=cpf_cnpj'
      'numero=numero'
      'serie=serie'
      'sub_serie=sub_serie'
      'modelo=modelo'
      'status=status'
      'nfe_ecf=nfe_ecf'
      'ecf_prevenda=ecf_prevenda'
      'id_fiscal_referenciado=id_fiscal_referenciado'
      'canc_motivo=canc_motivo'
      'canc_data=canc_data'
      'peso_liquido=peso_liquido'
      'peso_bruto=peso_bruto'
      'nfe_chave=nfe_chave'
      'nfe_obs=nfe_obs'
      'nfe_protocolo=nfe_protocolo'
      'nfe_recibo=nfe_recibo'
      'nfe_canc_protocolo=nfe_canc_protocolo'
      'nfe_canc_status=nfe_canc_status'
      'nfe_tipo_emissao=nfe_tipo_emissao'
      'nfe_tipo_ambiente=nfe_tipo_ambiente'
      'nfe_cod_sit=nfe_cod_sit'
      'ind_operacao=ind_operacao'
      'ind_emitente=ind_emitente'
      'ind_frete=ind_frete'
      'icm_n_valor=icm_n_valor'
      'icm_n_base=icm_n_base'
      'icm_s_valor=icm_s_valor'
      'icm_s_base=icm_s_base'
      'ipi_base=ipi_base'
      'ipi_valor=ipi_valor'
      'iss_base=iss_base'
      'iss_valor=iss_valor'
      'fre_base=fre_base'
      'fre_valor=fre_valor'
      'pis_valor=pis_valor'
      'pis_valor_st=pis_valor_st'
      'cof_valor=cof_valor'
      'cof_valor_st=cof_valor_st'
      'vlr_liquido=vlr_liquido'
      'vlr_acrescimo=vlr_acrescimo'
      'vlr_desconto=vlr_desconto'
      'vlr_mercadoria=vlr_mercadoria'
      'vlr_isenta=vlr_isenta'
      'vlr_outras=vlr_outras'
      'vlr_seguro=vlr_seguro'
      'vlr_outras_desp=vlr_outras_desp'
      'tipo_nf=tipo_nf'
      'ecf_serial_impressora=ecf_serial_impressora'
      'ecf_marca_impressora=ecf_marca_impressora'
      'ecf_modelo_impressora=ecf_modelo_impressora'
      'ecf_caixa=ecf_caixa'
      'dta_movimento=dta_movimento'
      'origem_nf=origem_nf'
      'faturada=faturada'
      'situacao_inspecao=situacao_inspecao'
      'id_fiscal_frete=id_fiscal_frete'
      'id_pedido_venda=id_pedido_venda'
      'fre_custo=fre_custo'
      'vlr_icm_ser_nao_incide=vlr_icm_ser_nao_incide'
      'cof_base=cof_base'
      'pis_base=pis_base'
      'posvenda=posvenda'
      'id_responsavel=id_responsavel'
      'FAT_SQ_M_NFE_TIT=FAT_SQ_M_NFE_TIT'
      'FAT_SQ_M_NFE_ITE=FAT_SQ_M_NFE_ITE'
      'int_id_perfil_cli=int_id_perfil_cli'
      'int_nfeecf=int_nfeecf'
      'int_nometme=int_nometme'
      'int_nomeope=int_nomeope'
      'int_nomecpg=int_nomecpg'
      'int_nomevnd=int_nomevnd'
      'int_nomeres=int_nomeres'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'int_nometra=int_nometra'
      'int_endtra=int_endtra'
      'int_cidtra=int_cidtra'
      'int_esttra=int_esttra'
      'int_cnptra=int_cnptra'
      'int_instra=int_instra'
      'int_indpag=int_indpag'
      'int_cod_pais=int_cod_pais'
      'int_nom_pais=int_nom_pais'
      'int_cnpjcpf=int_cnpjcpf'
      'int_pessoa=int_pessoa'
      'int_telefone=int_telefone'
      'int_doc_ie=int_doc_ie'
      'int_email=int_email'
      'int_cep=int_cep'
      'int_endereco=int_endereco'
      'int_estado=int_estado'
      'int_bairro=int_bairro'
      'int_numero=int_numero'
      'int_complemento=int_complemento'
      'int_cod_cidade=int_cod_cidade'
      'int_nom_cidade=int_nom_cidade'
      'imp_valor=imp_valor'
      'FAT_SQ_M_NFE_NFF=FAT_SQ_M_NFE_NFF'
      'nfref_chave=nfref_chave'
      'nfe_finalidade=nfe_finalidade'
      'tipo_cte=tipo_cte'
      'path_xml=path_xml'
      'tri_valor=tri_valor'
      'tra_placa=tra_placa'
      'tra_uf=tra_uf'
      'tra_rntc=tra_rntc'
      'tra_qtde_vol=tra_qtde_vol'
      'tra_especie=tra_especie'
      'tra_marca=tra_marca'
      'tra_num_vol=tra_num_vol'
      'id_iqm=id_iqm'
      'int_nomeemp=int_nomeemp'
      'FAT_SQ_M_NFE_DEV=FAT_SQ_M_NFE_DEV'
      'id_abertura=id_abertura'
      'legenda=legenda'
      'int_classe=int_classe'
      'prevenda=prevenda'
      'id_ordem=id_ordem'
      'canc_usuario=canc_usuario'
      'venctos_origem=venctos_origem'
      'int_baitra=int_baitra'
      'int_descnat=int_descnat'
      'int_nomeemi=int_nomeemi'
      'nro_termo=nro_termo'
      'int_descnfecodsit=int_descnfecodsit'
      'ind_nf=ind_nf'
      'int_tipofinal=int_tipofinal'
      'int_contribuinte=int_contribuinte'
      'vlr_part_dest=vlr_part_dest'
      'vlr_part_orig=vlr_part_orig'
      'vlr_icm_desc=vlr_icm_desc'
      'id_ors=id_ors'
      'vlr_fcp=vlr_fcp'
      'id_ccusto=id_ccusto'
      'int_desc_ccu=int_desc_ccu')
    DataSet = dmGeral.FAT_CD_M_NFE
    BCDToCurrency = False
    Left = 26
    Top = 331
  end
  object pmImpSimp: TPopupMenu
    Left = 168
    Top = 382
    object btnImpSimp: TMenuItem
      Caption = 'Impress'#227'o Simplificada'
      OnClick = btnImpSimpClick
    end
  end
  object EST_FR_M_NFS_SMP: TfrxReport
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
      '  if (<EST_DB_M_NFS."int_pessoa"> = 1) then'
      '    begin'
      '      mmCpfCnpj.Text := '#39'CNPJ:'#39';  '
      '    end;              '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 214
    Top = 168
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = EST_DB_M_NFS
        DataSetName = 'EST_DB_M_NFS'
      end
      item
        DataSet = EST_DB_M_NFS_ITE
        DataSetName = 'EST_DB_M_NFS_ITE'
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
        Height = 196.535560000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Shape1: TfrxShapeView
          Top = 25.377860000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object Shape2: TfrxShapeView
          Top = 113.960730000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object Memo28: TfrxMemoView
          Left = 246.905690000000000000
          Width = 241.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nota Simplificado')
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
          Top = 150.551330000000000000
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
          Top = 150.551330000000000000
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
            '[EST_DB_M_NFS."id_emitente"] - [EST_DB_M_NFS."int_nomeemi"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxBusCliendereco: TfrxMemoView
          Left = 87.149660000000000000
          Top = 150.551330000000000000
          Width = 457.323130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[Trim(<EST_DB_M_NFS."int_endereco">)]  N'#186' [Trim(<EST_DB_M_NFS."i' +
              'nt_numero">)], [Trim(<EST_DB_M_NFS."int_bairro">)], [Trim(<EST_D' +
              'B_M_NFS."int_nom_cidade">)]  -  [Trim(<EST_DB_M_NFS."int_estado"' +
              '>)]')
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
            end>
        end
        object frxBusCliint_nomecid: TfrxMemoView
          Left = 621.181510000000000000
          Top = 150.551330000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_cep"]')
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
            
              '[CAD_DB_C_PAR."emp_endereco"] N'#186' [CAD_DB_C_PAR."emp_numero"], [C' +
              'AD_DB_C_PAR."emp_bairro"], [CAD_DB_C_PAR."int_nomecid"]-[CAD_DB_' +
              'C_PAR."int_uf"]')
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
            end>
        end
        object frxCadParemp_razao: TfrxMemoView
          Left = 83.149660000000000000
          Top = 35.133890000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_fantasia"]')
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
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[EST_DB_M_NFS."dta_emissao"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 40.960730000000000000
          Top = 119.417444880000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 324.141930000000000000
          Top = 168.202440770000000000
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
            '[CAD_DB_C_PAR."emp_cep"]')
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
            '[CAD_DB_C_PAR."emp_telefone"] / [CAD_DB_C_PAR."emp_fax"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo50: TfrxMemoView
          Left = 53.354360000000000000
          Top = 168.202440770000000000
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
        object frxBusClitel_fixo: TfrxMemoView
          Left = 87.370130000000000000
          Top = 168.202440770000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_telefone"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo1: TfrxMemoView
          Left = 529.052448460000000000
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
            'C'#243'd. fiscal :')
          ParentFont = False
        end
        object frxPedid_pedido: TfrxMemoView
          Left = 620.181510000000000000
          Top = 115.637914880000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[EST_DB_M_NFS."id_fiscal"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 620.181510000000000000
          Top = 131.976500000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[IIF(Length(trim(<EST_DB_M_NFS."cpf_cnpj">))=11,FormatMaskText('#39 +
              '000\.000\.000\-00;0;_'#39',trim(<EST_DB_M_NFS."cpf_cnpj">)),IIF(Leng' +
              'th(trim(<EST_DB_M_NFS."cpf_cnpj">))=14,FormatMaskText('#39'00\.000\.' +
              '000\/0000\-00;0;_'#39',trim(<EST_DB_M_NFS."cpf_cnpj">)),trim(<EST_DB' +
              '_B_NFS."cpf_cnpj">)))]')
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[EST_DB_M_NFS."int_doc_ie"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 394.850650000000000000
          Top = 168.202440770000000000
          Width = 148.752486150000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[EST_DB_M_NFS."id_vendedor"] - [EST_DB_M_NFS."int_nomevnd"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
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
            '[CAD_DB_C_PAR."emp_cnpj"]')
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
            '[CAD_DB_C_PAR."emp_ie"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 357.000000000000000000
          Top = 116.102350000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' NF:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 395.000000000000000000
          Top = 116.102350000000000000
          Width = 86.929190000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[EST_DB_M_NFS."numero"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 472.441250000000000000
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
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        DataSet = EST_DB_M_NFS
        DataSetName = 'EST_DB_M_NFS'
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
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = EST_DB_M_NFS_ITE
        DataSetName = 'EST_DB_M_NFS_ITE'
        RowCount = 0
        Stretched = True
        object frxPedIteid_item: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."id_item"]')
          ParentFont = False
        end
        object mmIte: TfrxMemoView
          Left = 94.866141730000000000
          Width = 320.803340000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."int_desc_item"]')
          ParentFont = False
        end
        object mmCor: TfrxMemoView
          Left = 474.685220000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."int_nomecor"]')
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
          Left = 449.007874020000000000
          Width = 22.677180000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Trim(<EST_DB_M_NFS_ITE."int_und_venda">)]')
          ParentFont = False
        end
        object EST_DB_M_NFS_ITEqtde: TfrxMemoView
          Left = 612.661417320000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataSet = EST_DB_M_NFS_ITE
          DataSetName = 'EST_DB_M_NFS_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EST_DB_M_NFS_ITE."qtde"]')
          ParentFont = False
        end
      end
      object fstCabItem1: TfrxHeader
        FillType = ftBrush
        Height = 20.409448820000000000
        Top = 313.700990000000000000
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
          Left = 94.921259840000000000
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
          Left = 448.889920000000000000
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
          Left = 474.850393700000000000
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
          Left = 612.496290000000000000
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
            'Qtde')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Top = 0.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo8: TfrxMemoView
          Left = 6.000000000000000000
          Top = 2.928880000000000000
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
    end
  end
end
