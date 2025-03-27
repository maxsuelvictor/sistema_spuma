object FAT_FM_M_IQM_ITE_ANA: TFAT_FM_M_IQM_ITE_ANA
  Left = 0
  Top = 0
  ClientHeight = 500
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDireita: TPanel
    Left = 0
    Top = 30
    Width = 750
    Height = 470
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      750
      470)
    object pnlDados: TPanel
      Left = 33
      Top = 20
      Width = 686
      Height = 440
      Anchors = []
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object lblCodificacao: TLabel
        Left = -1
        Top = 4
        Width = 102
        Height = 13
        Caption = 'Nro do plano a'#231#227'o :'
      end
      object lblFornecedor: TLabel
        Left = 36
        Top = 27
        Width = 65
        Height = 13
        Caption = 'Fornecedor :'
      end
      object lblNotaFiscal: TLabel
        Left = 377
        Top = 27
        Width = 62
        Height = 13
        Caption = 'Nota Fiscal :'
      end
      object lblEntrada: TLabel
        Left = 540
        Top = 27
        Width = 46
        Height = 13
        Caption = 'Entrada :'
      end
      object lblContrato: TLabel
        Left = 48
        Top = 96
        Width = 53
        Height = 13
        Caption = 'Contatos :'
      end
      object lblProduto: TLabel
        Left = 53
        Top = 49
        Width = 48
        Height = 13
        Caption = 'Produto :'
      end
      object lblEmissao: TLabel
        Left = 54
        Top = 72
        Width = 47
        Height = 13
        Caption = 'Emiss'#227'o :'
      end
      object lblSetor: TLabel
        Left = 406
        Top = 96
        Width = 33
        Height = 13
        Caption = 'Setor :'
      end
      object lblQtdeNC: TLabel
        Left = 48
        Top = 161
        Width = 53
        Height = 13
        Caption = 'Qtde N/C :'
      end
      object lblTotalLote: TLabel
        Left = 383
        Top = 162
        Width = 56
        Height = 13
        Caption = 'Total Lote :'
      end
      object lblQtdeDevolvida: TLabel
        Left = 525
        Top = 162
        Width = 84
        Height = 13
        Caption = 'Qtde Devolvida :'
      end
      object lblPerNC: TLabel
        Left = 245
        Top = 162
        Width = 37
        Height = 13
        Caption = '% N/C :'
      end
      object lblObservacoes: TLabel
        Left = 30
        Top = 184
        Width = 71
        Height = 13
        Caption = 'Observa'#231#245'es :'
      end
      object lblEspecificacao: TLabel
        Left = 31
        Top = 119
        Width = 70
        Height = 13
        Caption = 'Especificado :'
      end
      object lblEncontrado: TLabel
        Left = 373
        Top = 119
        Width = 66
        Height = 13
        Caption = 'Encontrado :'
      end
      object Label2: TLabel
        Left = 369
        Top = 50
        Width = 70
        Height = 13
        Caption = 'Respons'#225'vel :'
      end
      object txtItemDescricao: TDBText
        Left = 199
        Top = 46
        Width = 159
        Height = 21
        Color = 14342874
        DataField = 'int_nomeite'
        DataSource = FAT_FM_M_IQM.dsoIteAna
        ParentColor = False
        Transparent = False
      end
      object txtResponsavelDescricao: TDBText
        Left = 527
        Top = 46
        Width = 153
        Height = 21
        Color = 14342874
        DataField = 'int_nomeres'
        DataSource = FAT_FM_M_IQM.dsoIteAna
        ParentColor = False
        Transparent = False
      end
      object txtControle: TDBMemo
        Left = 107
        Top = 0
        Width = 90
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'num_plano_acao'
        DataSource = dsoIqmIteAna
        ReadOnly = True
        TabOrder = 0
        WordWrap = False
      end
      object txtProduto: TDBMemo
        Left = 107
        Top = 46
        Width = 90
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'id_item'
        DataSource = dsoIqmIteAna
        ReadOnly = True
        TabOrder = 5
        WordWrap = False
      end
      object dpkEmissao: TJvDBDateEdit
        Left = 107
        Top = 69
        Width = 90
        Height = 21
        DataField = 'dta_emissao'
        DataSource = dsoIqmIteAna
        Color = clWhite
        ShowNullDate = False
        TabOrder = 7
      end
      object cbbSetor: TwwDBLookupCombo
        Left = 445
        Top = 93
        Width = 234
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'20'#9'Descri'#231#227'o'#9'F')
        DataField = 'id_setor'
        DataSource = dsoIqmIteAna
        LookupTable = dmGeral.BUS_CD_C_SET
        LookupField = 'id_setor'
        Color = clWhite
        TabOrder = 9
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnEnter = cbbSetorEnter
        OnExit = cbbSetorExit
      end
      object txtEspecificacao: TDBMemo
        Left = 107
        Top = 116
        Width = 251
        Height = 40
        DataField = 'especificado'
        DataSource = dsoIqmIteAna
        TabOrder = 10
      end
      object txtEncontrado: TDBMemo
        Left = 445
        Top = 116
        Width = 234
        Height = 40
        DataField = 'encontrado'
        DataSource = dsoIqmIteAna
        TabOrder = 11
      end
      object txtQtdeNC: TDBMemo
        Left = 107
        Top = 158
        Width = 79
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'qtde_nc'
        DataSource = dsoIqmIteAna
        ReadOnly = True
        TabOrder = 12
        WordWrap = False
      end
      object txtTotalLote: TDBMemo
        Left = 445
        Top = 158
        Width = 74
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'qtde_total'
        DataSource = dsoIqmIteAna
        ReadOnly = True
        TabOrder = 14
        WordWrap = False
      end
      object txtPerNC: TDBMemo
        Left = 289
        Top = 158
        Width = 69
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'perc_nc'
        DataSource = dsoIqmIteAna
        ReadOnly = True
        TabOrder = 13
        WordWrap = False
      end
      object txtObservacoes: TDBMemo
        Left = 107
        Top = 181
        Width = 572
        Height = 21
        DataField = 'observacao'
        DataSource = dsoIqmIteAna
        TabOrder = 16
        WordWrap = False
      end
      object pcDados: TPageControl
        Left = 4
        Top = 216
        Width = 676
        Height = 160
        ActivePage = tabFornecedor
        TabOrder = 17
        object tabFornecedor: TTabSheet
          Caption = 'Dados do Fornecedor'
          ImageIndex = 3
          object lblCausa: TLabel
            Left = 36
            Top = 14
            Width = 37
            Height = 13
            Caption = 'Causa :'
          end
          object lblBairroCobranca: TLabel
            Left = 2
            Top = 87
            Width = 70
            Height = 13
            Caption = 'Respons'#225'vel :'
          end
          object lblResolucao: TLabel
            Left = 340
            Top = 14
            Width = 59
            Height = 13
            Caption = 'Resolu'#231#227'o :'
          end
          object lblData: TLabel
            Left = 369
            Top = 110
            Width = 30
            Height = 13
            Caption = 'Data :'
          end
          object Label1: TLabel
            Left = 35
            Top = 111
            Width = 37
            Height = 13
            Caption = 'Cargo :'
          end
          object dpkData: TJvDBDateEdit
            Left = 405
            Top = 107
            Width = 90
            Height = 21
            DataField = 'data_inf_forn'
            DataSource = dsoIqmIteAna
            Color = clWhite
            ShowNullDate = False
            TabOrder = 4
          end
          object txtCausa: TDBMemo
            Left = 79
            Top = 11
            Width = 249
            Height = 69
            DataField = 'causa_do_problema_forn'
            DataSource = dsoIqmIteAna
            TabOrder = 0
          end
          object txtResolucao: TDBMemo
            Left = 405
            Top = 11
            Width = 249
            Height = 94
            DataField = 'resolucao_problema_forn'
            DataSource = dsoIqmIteAna
            TabOrder = 3
          end
          object txtNomeRespForn: TwwDBEdit
            Left = 79
            Top = 83
            Width = 249
            Height = 21
            DataField = 'responsavel_forn'
            DataSource = dsoIqmIteAna
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object txtCargoRespForn: TwwDBEdit
            Left = 79
            Top = 107
            Width = 249
            Height = 21
            DataField = 'cargo_resp_forn'
            DataSource = dsoIqmIteAna
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object tabAnalise: TTabSheet
          Caption = 'An'#225'lise do Fechamento'
          ImageIndex = 1
          object lblAcaoTomada: TLabel
            Left = 34
            Top = 14
            Width = 149
            Height = 13
            Caption = 'A'#231#227'o tomada foi satisfat'#243'ria?'
          end
          object lblNaoConformidade: TLabel
            Left = 3
            Top = 37
            Width = 180
            Height = 13
            Caption = 'A n'#227'o conformidade '#233' reincidente?'
          end
          object lblComentarios: TLabel
            Left = 112
            Top = 60
            Width = 71
            Height = 13
            Caption = 'Coment'#225'rios :'
          end
          object lblRequeNovaAcao: TLabel
            Left = 377
            Top = 37
            Width = 97
            Height = 13
            Caption = 'Requer nova a'#231#227'o?'
          end
          object lblAnalisadoPor: TLabel
            Left = 105
            Top = 83
            Width = 78
            Height = 13
            Caption = 'Analisado por :'
          end
          object lblSituacaoDoPlano: TLabel
            Left = 40
            Top = 106
            Width = 143
            Height = 13
            Caption = 'Situa'#231#227'o do plano de a'#231#227'o :'
          end
          object lblAnalisadoEm: TLabel
            Left = 399
            Top = 83
            Width = 75
            Height = 13
            Caption = 'Analisado em :'
          end
          object cbbNaoConformidade: TwwDBLookupCombo
            Left = 189
            Top = 34
            Width = 179
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'DESCRICAO'#9'20'#9'Descri'#231#227'o'#9'F')
            DataField = 'nao_conform_analise'
            DataSource = dsoIqmIteAna
            LookupTable = dmGeral.BUS_CD_X_SXN
            LookupField = 'CODIGO'
            Color = clWhite
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnEnter = cbbNaoConformidadeEnter
          end
          object txtComentarios: TDBMemo
            Left = 189
            Top = 57
            Width = 470
            Height = 21
            DataField = 'comentarios_analise'
            DataSource = dsoIqmIteAna
            TabOrder = 2
            WordWrap = False
          end
          object cbbRequeNovaAcao: TwwDBLookupCombo
            Left = 480
            Top = 34
            Width = 179
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'DESCRICAO'#9'20'#9'Descri'#231#227'o'#9'F')
            DataField = 'requer_nova_acao_analise'
            DataSource = dsoIqmIteAna
            LookupTable = dmGeral.BUS_CD_X_SXN
            LookupField = 'CODIGO'
            Color = clWhite
            TabOrder = 1
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnEnter = cbbRequeNovaAcaoEnter
          end
          object cbbAnalisadoPor: TwwDBLookupCombo
            Left = 189
            Top = 80
            Width = 179
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'nome'#9'50'#9'Nome'#9'F')
            DataField = 'id_resp_analise'
            DataSource = dsoIqmIteAna
            LookupTable = dmGeral.BUS_CD_C_FU2
            LookupField = 'id_funcionario'
            Color = clWhite
            TabOrder = 3
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnEnter = cbbAnalisadoPorEnter
            OnExit = cbbAnalisadoPorExit
          end
          object cbbSituacaoDoPlano: TwwDBLookupCombo
            Left = 189
            Top = 103
            Width = 179
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'DESCRICAO'#9'20'#9'Descri'#231#227'o'#9'F')
            DataField = 'situacao_analise'
            DataSource = dsoIqmIteAna
            LookupTable = dmGeral.BUS_CD_X_AXF
            LookupField = 'CODIGO'
            Color = clWhite
            TabOrder = 5
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnEnter = cbbSituacaoDoPlanoEnter
          end
          object dpkAnalisadoEm: TJvDBDateEdit
            Left = 480
            Top = 80
            Width = 89
            Height = 21
            DataField = 'data_analise'
            DataSource = dsoIqmIteAna
            Color = clWhite
            ShowNullDate = False
            TabOrder = 4
          end
          object cbbAcTomada: TwwDBLookupCombo
            Left = 189
            Top = 10
            Width = 179
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'DESCRICAO'#9'3'#9'DESCRICAO'#9'F')
            DataField = 'acao_tomada_analise'
            DataSource = dsoIqmIteAna
            LookupTable = dmGeral.BUS_CD_X_SXN
            LookupField = 'CODIGO'
            TabOrder = 6
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
        end
      end
      object txtFornecedor: TDBEdit
        Left = 107
        Top = 23
        Width = 90
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'id_emitente'
        DataSource = FAT_FM_M_IQM.dso
        ReadOnly = True
        TabOrder = 1
      end
      object txtNotaFiscal: TDBEdit
        Left = 445
        Top = 23
        Width = 79
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'numero_nf'
        DataSource = FAT_FM_M_IQM.dso
        ReadOnly = True
        TabOrder = 3
      end
      object txtEntrada: TDBEdit
        Left = 590
        Top = 23
        Width = 89
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'dta_recebimento'
        DataSource = FAT_FM_M_IQM.dso
        ReadOnly = True
        TabOrder = 4
      end
      object txtFornecedorDescricao: TDBMemo
        Left = 199
        Top = 23
        Width = 159
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'int_nomefor'
        DataSource = FAT_FM_M_IQM.dso
        ReadOnly = True
        TabOrder = 2
        WordWrap = False
      end
      object txtIdResp: TDBMemo
        Left = 445
        Top = 46
        Width = 79
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'id_responsavel'
        DataSource = dsoIqmIteAna
        ReadOnly = True
        TabOrder = 6
        WordWrap = False
      end
      object txtQtdeDevolvida: TwwDBEdit
        Left = 615
        Top = 158
        Width = 64
        Height = 21
        DataField = 'qtde_devolvida'
        DataSource = dsoIqmIteAna
        TabOrder = 15
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object pnlBotoes: TPanel
        Left = 0
        Top = 386
        Width = 686
        Height = 54
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 18
        object btnCancelar: TcxButton
          Left = 288
          Top = 2
          Width = 50
          Height = 50
          Caption = 'Cancelar'
          OptionsImage.ImageIndex = 3
          OptionsImage.Images = imgBotoesAtivo
          OptionsImage.Layout = blGlyphTop
          TabOrder = 0
          OnClick = btnCancelarClick
        end
        object btnGrava: TcxButton
          Left = 340
          Top = 2
          Width = 50
          Height = 50
          Caption = 'Gravar'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = imgBotoesAtivo
          OptionsImage.Layout = blGlyphTop
          TabOrder = 1
          OnClick = btnGravaClick
        end
      end
      object cbbContatos: TwwDBLookupCombo
        Left = 107
        Top = 92
        Width = 251
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'20'#9'Nome'#9'F'
          'id_for_rp'#9'10'#9'C'#243'digo'#9'F')
        DataField = 'id_for_rp'
        DataSource = FAT_FM_M_IQM.dsoIteAna
        LookupTable = dmGeral.BUS_CD_C_REP
        LookupField = 'id_for_rp'
        Color = clWhite
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnEnter = cbbContatosEnter
        OnExit = cbbContatosExit
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 750
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
      Width = 750
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
        Width = 745
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
        Width = 750
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Plano de A'#231#227'o no Fornecedor'
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
        Width = 750
        Height = 0
        Align = alTop
        BevelOuter = bvNone
        Color = 3355443
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
  object dsoIqmIteAna: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_IQM_ITE_ANA
    Left = 456
    Top = 435
  end
  object imgBotoesAtivo: TImageList
    ColorDepth = cd32Bit
    Height = 22
    Width = 22
    Left = 536
    Top = 435
    Bitmap = {
      494C0101070008002C0116001600FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000580000002C0000000100200000000000803C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303400C0C0C7B161616AA1D1D1DC41D1D
      1DC4161616AA0C0C0C7B03030340000000000000000000000000000000000000
      0000000000000000000000000014161616AC2D2D2DF11C1C1CBD1A1A1AB81B1B
      1BBB1B1B1BBB1B1B1BBB1B1B1BBB1B1B1BBB1B1B1BBB1B1B1BBB1B1B1BBB1B1B
      1BBB1B1B1BBB1B1B1BBB1B1B1BBB1A1A1AB81C1C1CBD2D2D2DF1161616AC0000
      0014000000000000000000000000000000170F0F0F8C2F2F2FF8323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF151515A40000001F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000050505531E1E1EC5323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF1E1E1EC50505055300000000000000000000
      00000000000000000000191919B6323232FF1A1A1AB70000000A000000040000
      0007000000070000000700000007000000070000000700000007000000070000
      0007000000070000000700000007000000040000000A1A1A1AB7323232FF1919
      19B6000000000000000000000000080808692C2C2CEF1A1A1ABA141414A11414
      14A1141414A1141414A1141414A1141414A1141414A1141414A1141414A11414
      14A11B1B1BBC303030F90F0F0F8E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000611111196323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF11111196000000060000
      000000000000000000002F2F2FF6323232FF0D0D0D8200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0D0D82323232FF2F2F
      2FF60000000000000000000000000F0F0F8A323232FF0101012B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000021323232FF1A1A1ABA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000061C1C
      1CC0323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF1C1C1CC00000
      000600000000000000002E2E2EF5323232FF0F0F0F8B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F8B323232FF2E2E
      2EF50000000000000000000000000F0F0F8A323232FF00000018000000111A1A
      1ABA1A1A1ABA1A1A1ABA1A1A1ABA1A1A1ABA141414A10000001E000000000000
      000000000000323232FF1A1A1ABA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111111973232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF1111
      119700000000000000002D2D2DF2323232FF0F0F0F8C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F8C323232FF2D2D
      2DF20000000000000000000000000F0F0F8A323232FF00000018000000173232
      32FF323232FF323232FF323232FF323232FF252525DD01010129000000000000
      000000000000323232FF1A1A1ABA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404044C323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF0404044C000000002D2D2DF2323232FF0F0F0F8C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F8C323232FF2D2D
      2DF200000020212121D0323232FF323232FF323232FF00000018000000020000
      0018000000180000001800000018000000180000001800000018000000180000
      000B00000001323232FF323232FF323232FF252525DB0202023F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003202020CE323232FF3232
      32FF323232FF323232FF1D1D1DC20101012C0E0E0E85323232FF323232FF3232
      32FF323232FF0E0E0E850101012C1D1D1DC2323232FF323232FF323232FF3232
      32FF202020CE000000032D2D2DF2323232FF0F0F0F8C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F8C323232FF2D2D
      2DF2222222D1323232FF323232FF323232FF323232FF00000018000000173232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF0A0A
      0A7400000006323232FF323232FF323232FF323232FF242424D9000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020239323232FF323232FF3232
      32FF323232FF323232FF0000001E00000000000000000E0E0E89323232FF3232
      32FF0E0E0E8900000000000000000000001E323232FF323232FF323232FF3232
      32FF323232FF020202392D2D2DF2323232FF0F0F0F8C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F8C323232FF2D2D
      2DF2323232FF323232FF323232FF323232FF323232FF000000180000000C0F0F
      0F8A0F0F0F8A0F0F0F8A0F0F0F8A0F0F0F8A0F0F0F8A0F0F0F8A0F0F0F8A0202
      023F00000003323232FF323232FF323232FF323232FF323232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C7F323232FF323232FF3232
      32FF323232FF323232FF0E0E0E88000000000000000000000000111111981111
      11980000000000000000000000000E0E0E88323232FF323232FF323232FF3232
      32FF323232FF0C0C0C7F2D2D2DF2323232FF0F0F0F8C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F8C323232FF2D2D
      2DF2323232FF323232FF323232FF323232FF323232FF00000018000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232FF323232FF323232FF323232FF323232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000161616AA323232FF323232FF3232
      32FF323232FF323232FF323232FF0F0F0F8C0000000000000000000000000000
      000000000000000000000F0F0F8C323232FF323232FF323232FF323232FF3232
      32FF323232FF161616AA2D2D2DF2323232FF0D0D0D8200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0D0D82323232FF2D2D
      2DF2323232FF323232FF323232FF323232FF323232FF232323D5222222D12222
      22D1222222D1222222D1222222D1222222D1222222D1222222D1222222D12222
      22D1222222D1323232FF323232FF323232FF323232FF323232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D1D1DC4323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF1111119600000000000000000000
      00000000000011111196323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF1D1D1DC42D2D2DF1323232FF1B1B1BBB0000000F0000000F0000
      000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
      000F0000000F0000000F0000000F0000000F0000000F1B1B1BBB323232FF2D2D
      2DF1323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D1D1DC4323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF1111119600000000000000000000
      00000000000011111196323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF1D1D1DC42D2D2DF0323232FF323232FF2D2D2DF02D2D2DF02D2D
      2DF22D2D2DF22D2D2DF22D2D2DF22D2D2DF22D2D2DF22D2D2DF22D2D2DF22D2D
      2DF22D2D2DF22D2D2DF22D2D2DF12D2D2DF02D2D2DF0323232FF323232FF2D2D
      2DF0323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF0E0E0E850404044D1D1D1DC1323232FF323232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000161616AA323232FF323232FF3232
      32FF323232FF323232FF323232FF0F0F0F8C0000000000000000000000000000
      000000000000000000000F0F0F8C323232FF323232FF323232FF323232FF3232
      32FF323232FF161616AA2D2D2DF0323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF2D2D
      2DF0323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF0606065C0101012C161616AA323232FF323232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C7F323232FF323232FF3232
      32FF323232FF323232FF0E0E0E88000000000000000000000000111111981111
      11980000000000000000000000000E0E0E88323232FF323232FF323232FF3232
      32FF323232FF0C0C0C7F2D2D2DF0323232FF323232FF323232FF222222D00F0F
      0F8B0F0F0F8B0F0F0F8C0F0F0F8C0F0F0F8C0F0F0F8C0F0F0F8C0D0D0D810909
      096E0909096D0D0D0D821D1D1DC4323232FF323232FF323232FF323232FF2D2D
      2DF0252525DC323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF212121CF191919B4292929E7323232FF272727E3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020239323232FF323232FF3232
      32FF323232FF323232FF0000001E00000000000000000E0E0E89323232FF3232
      32FF0E0E0E8900000000000000000000001E323232FF323232FF323232FF3232
      32FF323232FF020202392D2D2DF0323232FF323232FF323232FF0202023D0000
      00000000000000000000000000000000000000000000000000000000001E0D0D
      0D830D0D0D8400000006000000132E2E2EF4323232FF323232FF323232FF2D2D
      2DF00202023F242424D9323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF272727E20505055A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003202020CE323232FF3232
      32FF323232FF323232FF1D1D1DC20101012C0E0E0E85323232FF323232FF3232
      32FF323232FF0E0E0E850101012C1D1D1DC2323232FF323232FF323232FF3232
      32FF202020CE000000032D2D2DF0323232FF323232FF323232FF0202023C0000
      0000000000000000000000000000000000000000000000000000070707643232
      32FF323232FF020202390000000A2A2A2AE9323232FF323232FF323232FF2D2D
      2DF100000001000000120000001711111195323232FF0101012D000000170000
      0017000000170000001700000017000000170000001700000017000000170000
      001700000017323232FF1C1C1CC0000000170000001300000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404044C323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF0404044C000000002D2D2DF0323232FF323232FF323232FF030303400000
      0000000000000000000000000000000000000000000000000000060606583232
      32FF323232FF01010132000000112B2B2BEC323232FF323232FF323232FF2F2F
      2FF70000000000000000000000000F0F0F8A323232FF00000018000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232FF1A1A1ABA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111111973232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF1111
      119700000000000000002D2D2DF0323232FF323232FF323232FF030303400000
      0000000000000000000000000000000000000000000000000000060606583232
      32FF323232FF01010132000000112B2B2BEC323232FF323232FF323232FF2424
      24D90000000000000000000000000F0F0F8A323232FF00000018000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232FF1A1A1ABA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000061C1C
      1CC0323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF1C1C1CC00000
      000600000000000000002E2E2EF3323232FF323232FF323232FF0303033F0000
      00000000000000000000000000000000000000000000000000000606065B3232
      32FF323232FF02020234000000102B2B2BEC323232FF323232FF323232FF0404
      044D0000000000000000000000000F0F0F8A323232FF00000018000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232FF1A1A1ABA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000611111196323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF11111196000000060000
      000000000000000000002E2E2EF4323232FF323232FF323232FF010101330000
      0000000000000000000000000000000000000000000000000000050505523232
      32FF323232FF0101012C000000032B2B2BEB323232FF323232FF0808086B0000
      00000000000000000000000000000F0F0F8A323232FF02020233000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101012E323232FF1A1A1ABA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000050505531E1E1EC5323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF1E1E1EC50505055300000000000000000000
      00000000000000000000191919B4323232FF323232FF323232FF0909096C0000
      0002000000070000000700000007000000070000000700000007010101250707
      0762070707640000000B03030348323232FF323232FF08080868000000000000
      00000000000000000000000000000707075F2A2A2AEA252525DD222222D12222
      22D1222222D1222222D1222222D1222222D1222222D1222222D1222222D12222
      22D1272727DE2F2F2FF80D0D0D81000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303400C0C0C7B161616AA1D1D1DC41D1D
      1DC4161616AA0C0C0C7B03030340000000000000000000000000000000000000
      0000000000000000000000000014161616AC2D2D2DF02D2D2DF0272727E31919
      19B61A1A1ABA1B1B1BBB1B1B1BBB1B1B1BBB1B1B1BBB1B1B1BBB191919B31515
      15A4151515A3181818B0272727DF222222D20505055200000000000000000000
      0000000000000000000000000000000000090B0B0B782F2F2FF6323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF101010920000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000150202
      0238020202390202023802020238020202380202023802020238030303420101
      013200000000000000000101012D0D0D0D841D1D1DC21B1B1BBB0C0C0C7D0000
      001C000000000000000000000000000000200C0C0C7F1A1A1AB81C1C1CBD1A1A
      1ABA1A1A1ABA1A1A1ABA1E1E1EC6070707630A0A0A75181818B1070707660101
      0126000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000080808672A2A2AE9323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF2A2A2AE90808086700000000000000000000000000000000000000000000
      0000000000150202023802020239020202380202023802020238020202380202
      0238030303420101013200000000000000000101012E0E0E0E891D1D1DC11A1A
      1AB90D0D0D810000001E0000000000000000000000000C0C0C7F2E2E2EF43232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF0B0B
      0B76000000000707075F2F2F2FF7323232FF323232FF323232FF323232FF2929
      29E70404044D00000000000000000C0C0C7F2E2E2EF4323232FF323232FF3232
      32FF323232FF323232FF303030FF1010108B1414149D303030F9181818B10E0E
      0E88000000200000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404044E323232FF2D2D2DF1181818B11717
      17AE191919B2191919B3181818B1181818B1191919B3191919B2171717AE1818
      18B12D2D2DF1323232FF0404044E000000000000000000000000000000000C0C
      0C7F2E2E2EF4323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF0B0B0B760000000007070760323232FF323232FF323232FF3232
      32FF323232FF2E2E2EF30404044E0000000008080869323232FF2C2C2CEE1313
      139D1010109011111194111111941111119411111194121212990E0E0E850000
      000201010133323232FF323232FF303030F911111194151515A3323232FF3232
      32FF2C2C2CEE0000001F08080869323232FF2C2C2CEE1313139D101010901111
      119411111194111111941313139F030303420D0D0D7E171717B7030303401D1D
      1DC3292929E80202023200000000000000000000000000000000000000000000
      0000000000000000000000000000151515A3323232FF03030341000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030341323232FF151515A3000000000000000000000000080808693232
      32FF2C2C2CEE1313139D10101090111111941111119411111194111111941212
      12990E0E0E850000000201010133323232FF1F1F1FC905050556262626DE3232
      32FF0606065E171717AE2F2F2FF700000021292929E52E2E2EF3000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000171717AE323232FF323232FF2D2D2DF10000000000000021323232FF3232
      32FF323232FF0D0D0D82292929E52E2E2EF30000001600000000000000000000
      00000000000000000000000000000000000004040449181818B9000000000A0A
      0A73323232FF2B2B2BEB02020237000000000000000000000000000000000000
      0000000000000000000000000000161616AC323232FF00000013000000141515
      15A50202023D000000000D0D0D800D0D0D80000000000202023D151515A50000
      001400000013323232FF161616AC000000000000000000000000292929E52E2E
      2EF3000000160000000000000000000000000000000000000000000000000000
      00000000000000000000171717AE323232FF0F0F0F8D000000000101012A0303
      0346000000000606065A323232FF0E0E0E87323232FF191919B6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A242424D7323232FF0D0D0D840000001F000000040000000A010101281414
      14A2323232FF1B1B1BBC323232FF191919B60000000000000000000000000000
      000000000000000000000000000000000000000000041F1F1FC7292929E42C2C
      2CEF323232FF323232FF2C2C2CF0020202390000000000000000000000000000
      0000000000000000000000000000161616AB323232FF00000011020202353232
      32FF0A0A0A7400000000282828E4282828E4000000000A0A0A74323232FF0202
      023500000011323232FF161616AB000000000000000000000000323232FF1919
      19B6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A232323D6323232FF323232FF0B0B0B7A000000000000
      00000404044A323232FF323232FF1A1A1ABA323232FF171717AF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B252525DD323232FF0A0A0A730000000300000001000000030000000B1111
      1195323232FF1D1D1DC3323232FF171717AF0000000000000000000000000000
      0000000000000000000000000000000000000000000002020238323232FF3232
      32FF323232FF323232FF323232FF2C2C2CEB0202023800000000000000000000
      0000000000000000000000000000161616AB323232FF00000011010101323232
      32FF0909096E00000000272727E2272727E2000000000909096E323232FF0101
      013200000011323232FF161616AB000000000000000000000000323232FF1717
      17AF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000B252525DB323232FF2B2B2BEB0606065B000000000000
      00000101012D242424D9323232FF1D1D1DC2323232FF191919B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000191919B6323232FF2F2F2FF6222222D100000000000000132A2A2AE92F2F
      2FF7323232FF0F0F0F8D323232FF191919B30000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303033F2D2D
      2DF0323232FF323232FF323232FF323232FF323232FF0101012B000000000000
      0000000000000000000000000000161616AB323232FF00000011010101323232
      32FF0909096E00000000272727E2272727E2000000000909096E323232FF0101
      013200000011323232FF161616AB000000000000000000000000323232FF1919
      19B3000000000000000000000000000000000000000000000000000000000000
      00000000000000000000191919B6323232FF0D0D0D8100000000060606590B0B
      0B7A0000000003030347323232FF10101091323232FF191919B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000404044B323232FF323232FF323232FF0A0A0A710E0E0E87323232FF3232
      32FF303030F901010129323232FF191919B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02392B2B2BEF323232FF323232FF323232FF222222D507070766040404410000
      0000000000000000000000000000161616AB323232FF00000011010101323232
      32FF0909096E00000000272727E2272727E2000000000909096E323232FF0101
      013200000011323232FF161616AB000000000000000000000000323232FF1919
      19B3000000000000000000000000000000000000000000000000000000000000
      000000000000000000000404044B323232FF242424D90D0D0D812E2E2EF43232
      32FF0F0F0F8D1D1D1DC1303030F90101012B323232FF191919B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C7C323232FF323232FF323232FF323232FF323232FF3030
      30FA0707076200000000323232FF191919B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202382A2A2AEA323232FF181818B505050553242424D80E0E0E7F0000
      000F000000000000000000000000161616AB323232FF00000011010101323232
      32FF0909096E00000000272727E2272727E2000000000909096E323232FF0101
      013200000011323232FF161616AB000000000000000000000000323232FF1919
      19B3000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C7C323232FF323232FF323232FF3232
      32FF323232FF323232FF0707076200000000323232FF191919B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000404044A161616A9252525DA222222D4161616AA0202
      023B0000000000000000323232FF191919B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003030340191919B3080808681F1F1FC909090971181818B21E1E
      1EC5000000000000000000000000161616AB323232FF00000011010101323232
      32FF0909096E00000000272727E2272727E2000000000909096E323232FF0101
      013200000011323232FF161616AB000000000000000000000000323232FF1919
      19B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000404044A161616A9242424D82222
      22D3161616AA0202023B0000000000000000323232FF191919B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000090000000A000000000000
      00000000000000000000323232FF191919B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001A1A1AB80E0E0E8711111197323232FF1111
      1194000000000000000000000000161616AB323232FF00000011010101323232
      32FF0909096E00000000272727E2272727E2000000000909096E323232FF0101
      013200000011323232FF161616AB000000000000000000000000323232FF1919
      19B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000090000
      000A00000000000000000000000000000000323232FF191919B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A0A0A750F0F0F8C0000000000000000000000000000
      00000000000000000000323232FF191919B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A0A0A750F0F0F8D00000009000000120E0E0E8B373737FF161616A70000
      0000000000000000000000000000161616AB323232FF00000011010101323232
      32FF0909096F00000000272727E2272727E2000000000909096F323232FF0101
      013200000011323232FF161616AB000000000000000000000000323232FF1919
      19B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0A0A750F0F0F8C000000000000
      000000000000000000000000000000000000323232FF191919B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001A1A1AB8323232FF0101012B00000000000000000000
      00000000000000000000323232FF191919B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001A1A1AB8323232FF01010128000000000101012E0303035B000000000000
      0000000000000000000000000000161616AB323232FF00000011020202343232
      32FF0A0A0A7200000000272727E3272727E3000000000A0A0A72323232FF0202
      023400000011323232FF161616AB000000000000000000000000323232FF1919
      19B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A1A1AB8323232FF0101012B0000
      000000000000000000000000000000000000323232FF191919B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000151515A5323232FF0101012600000000000000000000
      00000000000000000000323232FF191919B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000151515A5323232FF01010127000000000000000000000000000000000000
      0000000000000000000000000000161616A9323232FF00000019000000131212
      129A0202023B000000000B0B0B780B0B0B78000000000202023B1212129A0000
      001300000019323232FF161616A9000000000000000000000000323232FF1919
      19B3000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000151515A5323232FF010101260000
      000000000000000000000000000000000000323232FF191919B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1CBE323232FF0101012800000000000000000000
      00000000000000000000323232FF191919B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1CBE323232FF01010128000000000000000000000000000000000000
      0000000000000000000000000000151515A7323232FF00000022000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000022323232FF151515A7000000000000000000000000323232FF1919
      19B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C1C1CBE323232FF010101280000
      000000000000000000000000000000000000323232FF191919B3000000000000
      00000000000000000000000000000000000000000000050505541F1F1FC81D1D
      1DC11C1C1CBF222222D0323232FD292929E70000000F00000000000000000000
      00000000000000000000323232FF191919B30000000000000000000000000000
      0000000000000000000000000000050505541F1F1FC81D1D1DC11C1C1CBF2222
      22D0323232FD292929E70000000F000000000000000000000000000000000000
      0000000000000808086B1D1D1DC42C2C2CEF323232FF1F1F1FC81B1B1BBB1C1C
      1CBE1E1E1EC5222222D4242424D7242424D7222222D41E1E1EC51C1C1CBE1B1B
      1BBB1F1F1FC8323232FF2C2C2CEF1D1D1DC40808086B00000000323232FF1919
      19B3000000000000000000000000000000000000000000000000000000000505
      05541F1F1FC81D1D1DC11C1C1CBF222222D0323232FD292929E70000000F0000
      000000000000000000000000000000000000323232FF191919B3000000000000
      00000000000000000000000000000000000000000000191919B2323232FF3232
      32FF323232FF323232FF323232FF0B0B0B790000000000000000000000000000
      00000000000000000000323232FF191919B30000000000000000000000000000
      0000000000000000000000000000191919B2323232FF323232FF323232FF3232
      32FF323232FF0B0B0B7900000000000000000000000000000000000000000000
      0000000000000C0C0C7F323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF0C0C0C7F00000000323232FF1919
      19B3000000000000000000000000000000000000000000000000000000001919
      19B2323232FF323232FF323232FF323232FF323232FF0B0B0B79000000000000
      000000000000000000000000000000000000323232FF171717AF000000000000
      00000000000000000000000000000000000000000000161616A8323232FF3232
      32FF323232FF323232FF1212129A000000010000000000000000000000000000
      00000000000000000000323232FF171717AF0000000000000000000000000000
      0000000000000000000000000000161616A8323232FF323232FF323232FF3232
      32FF1212129A0000000100000000000000000000000000000000000000000000
      000000000000000000000B0B0B79323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF0B0B0B790000000000000000323232FF1717
      17AF000000000000000000000000000000000000000000000000000000001616
      16A8323232FF323232FF323232FF323232FF1212129A00000001000000000000
      000000000000000000000000000000000000323232FF1B1B1BBB000000000000
      00000000000000000000000000000000000000000000151515A4323232FF3232
      32FF323232FF161616AA00000000000000000000000000000000000000000000
      00000000000000000000323232FF1B1B1BBB0000000000000000000000000000
      0000000000000000000000000000151515A4323232FF323232FF323232FF1616
      16AA000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000001C1212129C1313139E101010921B1B1BBB3232
      32FF1E1E1EC50E0E0E8610101092101010920E0E0E861E1E1EC5323232FF1B1B
      1BBB101010921313139E1212129C0000001C0000000000000000323232FF1B1B
      1BBB000000000000000000000000000000000000000000000000000000001515
      15A4323232FF323232FF323232FF161616AA0000000000000000000000000000
      000000000000000000000000000000000000242424D9313131FC020202350000
      000000000000000000000000000000000000000000011C1C1CC0323232FF3232
      32FF141414A10000000000000000000000000000000000000000000000000000
      00000000000000000000242424D9313131FC0202023500000000000000000000
      00000000000000000000000000011C1C1CC0323232FF323232FF141414A10000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000243232
      32FF181818B000000000000000000000000000000000181818B0323232FF0000
      0024000000000000000000000000000000000000000000000000242424D93131
      31FC020202350000000000000000000000000000000000000000000000011C1C
      1CC0323232FF323232FF141414A1000000000000000000000000000000000000
      00000000000000000000000000000000000006060658323232FF323232FF1A1A
      1ABA171717AF191919B3191919B3171717AE1D1D1DC2323232FF323232FF1414
      14A0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060658323232FF323232FF1A1A1ABA171717AF1919
      19B3191919B3171717AE1D1D1DC2323232FF323232FF141414A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001717
      17AD323232FF272727E1171717AF171717AF272727E1323232FF171717AD0000
      0000000000000000000000000000000000000000000000000000060606583232
      32FF323232FF1A1A1ABA171717AF191919B3191919B3171717AE1D1D1DC23232
      32FF323232FF141414A000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000606065D222222D03232
      32FF323232FF323232FF323232FF323232FF323232FF262626DE0909096E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000606065D222222D0323232FF323232FF3232
      32FF323232FF323232FF323232FF262626DE0909096E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00191212129A2F2F2FF6323232FF323232FF2F2F2FF61212129A000000190000
      0000000000000000000000000000000000000000000000000000000000000606
      065D222222D0323232FF323232FF323232FF323232FF323232FF323232FF2626
      26DE0909096E0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000580000002C0000000100010000000000100200000000000000000000
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
      00000000000000000000000000000000000000000000}
  end
  object ImgPequena: TImageList
    ColorDepth = cd32Bit
    Height = 12
    Width = 12
    Left = 704
    Top = 435
    Bitmap = {
      494C010101002000FC000C000C00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000300000000C00000001002000000000000009
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101012D1D1D1DCA0E0E
      0E88000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012B2E2E2EF1313131FF2929
      29EA000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001B040404450101012E0000000000000000303030F62F2F2FFF313131F30101
      0132000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000D151515A81818
      18B1111111971C1C1CB9131313A409090984343434FF2B2B2BE90202022C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000081F1F1FD01010108E0303
      03470505055A0101012C0A0A0A732F2F2FFF0B0B0B880000000E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000121212931212129A0202023A1F1F
      1FD70C0C0C760000001B000000000B0B0B72131313A400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000181818B905050557222222CA0303
      033800000000000000000000000000000000202020C801010129000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000161616AA070707650707075D0000
      000000000000000000000000000000000000191919B80505054D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D1D1DC80606065A000000000000
      00000000000000000000000000000000000C212121D30000001A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0A0A75252525D9000000000000
      00000000000000000000000000001B1B1BB2161616AD00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000151515A6232323D20606
      065B01010126030303451B1B1BBB222222D40000000D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0A0A761B1B
      1BBC1D1D1DC4191919BC14141498000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000300000000C0000000100010000000000600000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object imgBotoesInativo: TImageList
    ColorDepth = cd32Bit
    Height = 22
    Width = 22
    Left = 624
    Top = 435
    Bitmap = {
      494C0101060058003C0116001600FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000580000002C0000000100200000000000803C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000080808401E1E1E7B3B3B3BAA4E4E4EC44E4E
      4EC43B3B3BAA1E1E1E7B08080840000000000000000000000000000000000000
      00000000000000000000000000143C3C3CAC767676F1494949BD454545B84747
      47BB474747BB474747BB474747BB474747BB474747BB474747BB474747BB4747
      47BB474747BB474747BB474747BB454545B8494949BD767676F13C3C3CAC0000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D534F4F4FC5858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF4F4F4FC50D0D0D5300000000000000000000
      00000000000000000000434343B6858585FF434343B70000000A000000040000
      0007000000070000000700000007000000070000000700000007000000070000
      0007000000070000000700000007000000040000000A434343B7858585FF4343
      43B6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00062D2D2D96858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF2D2D2D96000000060000
      000000000000000000007B7B7BF6858585FF2222228200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022222282858585FF7B7B
      7BF6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000064B4B
      4BC0858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF4B4B4BC00000
      000600000000000000007B7B7BF5858585FF2727278B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278B858585FF7B7B
      7BF5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E2E2E978585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF2E2E
      2E970000000000000000777777F2858585FF2727278C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278C858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B4C858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF0B0B0B4C00000000777777F2858585FF2727278C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278C858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003565656CE858585FF8585
      85FF858585FF858585FF4C4C4CC20303032C23232385858585FF858585FF8585
      85FF858585FF232323850303032C4C4C4CC2858585FF858585FF858585FF8585
      85FF565656CE00000003777777F2858585FF2727278C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278C858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000006060639858585FF858585FF8585
      85FF858585FF858585FF0101011E000000000000000025252589858585FF8585
      85FF2525258900000000000000000101011E858585FF858585FF858585FF8585
      85FF858585FF06060639777777F2858585FF2727278C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278C858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002020207F858585FF858585FF8585
      85FF858585FF858585FF252525880000000000000000000000002E2E2E982E2E
      2E9800000000000000000000000025252588858585FF858585FF858585FF8585
      85FF858585FF2020207F777777F2858585FF2727278C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278C858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3B3BAA858585FF858585FF8585
      85FF858585FF858585FF858585FF2727278C0000000000000000000000000000
      000000000000000000002727278C858585FF858585FF858585FF858585FF8585
      85FF858585FF3B3B3BAA777777F2858585FF2222228200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022222282858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E4E4EC4858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF2D2D2D9600000000000000000000
      0000000000002D2D2D96858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF4E4E4EC4767676F1858585FF474747BB0000000F0000000F0000
      000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
      000F0000000F0000000F0000000F0000000F0000000F474747BB858585FF7676
      76F1000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E4E4EC4858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF2D2D2D9600000000000000000000
      0000000000002D2D2D96858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF4E4E4EC4757575F0858585FF858585FF757575F0757575F07777
      77F2777777F2777777F2777777F2777777F2777777F2777777F2777777F27777
      77F2777777F2777777F2767676F1757575F0757575F0858585FF858585FF7575
      75F0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3B3BAA858585FF858585FF8585
      85FF858585FF858585FF858585FF2727278C0000000000000000000000000000
      000000000000000000002727278C858585FF858585FF858585FF858585FF8585
      85FF858585FF3B3B3BAA757575F0858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF7575
      75F0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002020207F858585FF858585FF8585
      85FF858585FF858585FF252525880000000000000000000000002E2E2E982E2E
      2E9800000000000000000000000025252588858585FF858585FF858585FF8585
      85FF858585FF2020207F757575F0858585FF858585FF858585FF575757D02727
      278B2727278B2727278C2727278C2727278C2727278C2727278C212121811818
      186E1818186D222222824E4E4EC4858585FF858585FF858585FF858585FF7575
      75F0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000006060639858585FF858585FF8585
      85FF858585FF858585FF0101011E000000000000000025252589858585FF8585
      85FF2525258900000000000000000101011E858585FF858585FF858585FF8585
      85FF858585FF06060639757575F0858585FF858585FF858585FF0707073D0000
      00000000000000000000000000000000000000000000000000000101011E2222
      2283232323840000000600000013797979F4858585FF858585FF858585FF7575
      75F0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003565656CE858585FF8585
      85FF858585FF858585FF4C4C4CC20303032C23232385858585FF858585FF8585
      85FF858585FF232323850303032C4C4C4CC2858585FF858585FF858585FF8585
      85FF565656CE00000003757575F0858585FF858585FF858585FF0707073C0000
      0000000000000000000000000000000000000000000000000000141414648585
      85FF858585FF060606390000000A6F6F6FE9858585FF858585FF858585FF7676
      76F1000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B4C858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF0B0B0B4C00000000757575F0858585FF858585FF858585FF080808400000
      00000000000000000000000000000000000000000000000000000F0F0F588585
      85FF858585FF0505053200000011717171EC858585FF858585FF858585FF7D7D
      7DF7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E2E2E978585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF2E2E
      2E970000000000000000757575F0858585FF858585FF858585FF080808400000
      00000000000000000000000000000000000000000000000000000F0F0F588585
      85FF858585FF0505053200000011717171EC858585FF858585FF858585FF5F5F
      5FD9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000064B4B
      4BC0858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF4B4B4BC00000
      00060000000000000000787878F3858585FF858585FF858585FF0808083F0000
      00000000000000000000000000000000000000000000000000001010105B8585
      85FF858585FF0505053400000010717171EC858585FF858585FF858585FF0C0C
      0C4D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00062D2D2D96858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF2D2D2D96000000060000
      00000000000000000000797979F4858585FF858585FF858585FF050505330000
      00000000000000000000000000000000000000000000000000000D0D0D528585
      85FF858585FF0303032C00000003707070EB858585FF858585FF1717176B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D534F4F4FC5858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF4F4F4FC50D0D0D5300000000000000000000
      00000000000000000000424242B4858585FF858585FF858585FF1717176C0000
      0002000000070000000700000007000000070000000700000007020202251313
      1362141414640000000B0A0A0A48858585FF858585FF15151568000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000080808401E1E1E7B3B3B3BAA4E4E4EC44E4E
      4EC43B3B3BAA1E1E1E7B08080840000000000000000000000000000000000000
      00000000000000000000000000143C3C3CAC757575F0757575F0686868E34343
      43B6464646BA474747BB474747BB474747BB474747BB474747BB414141B33737
      37A4363636A33F3F3FB0656565DF5A5A5AD20D0D0D5200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000150606
      0638060606390606063806060638060606380606063806060638080808420505
      053200000000000000000404042D232323844C4C4CC2474747BB1F1F1F7D0101
      011C000000000000000000000000020202202020207F454545B8494949BD4646
      46BA464646BA464646BA4F4F4FC6141414631B1B1B753F3F3FB1151515660202
      0226000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000151515676F6F6FE9858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF6F6F6FE91515156700000000000000000000000000000000000000000000
      0000000000150606063806060639060606380606063806060638060606380606
      0638080808420505053200000000000000000404042E252525894C4C4CC14545
      45B9212121810101011E0000000000000000000000002020207F797979F48585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF1C1C
      1C76000000001212125F7D7D7DF7858585FF858585FF858585FF858585FF6C6C
      6CE70C0C0C4D00000000000000002020207F797979F4858585FF858585FF8585
      85FF858585FF858585FF838383FF2828288B3232329D7F7F7FF93F3F3FB12525
      2588020202200000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C4E858585FF767676F13F3F3FB13D3D
      3DAE404040B2414141B33F3F3FB13F3F3FB1414141B3404040B23D3D3DAE3F3F
      3FB1767676F1858585FF0C0C0C4E000000000000000000000000000000002020
      207F797979F4858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF1C1C1C760000000012121260858585FF858585FF858585FF8585
      85FF858585FF787878F30C0C0C4E0000000016161669858585FF737373EE3232
      329D2A2A2A902C2C2C942C2C2C942C2C2C942C2C2C942F2F2F99232323850000
      000205050533858585FF858585FF7F7F7FF92C2C2C94363636A3858585FF8585
      85FF737373EE0101011F16161669858585FF737373EE3232329D2A2A2A902C2C
      2C942C2C2C942C2C2C943232329F090909422020207E424242B7080808404D4D
      4DC36D6D6DE80505053200000000000000000000000000000000000000000000
      0000000000000000000000000000363636A3858585FF08080841000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008080841858585FF363636A3000000000000000000000000161616698585
      85FF737373EE3232329D2A2A2A902C2C2C942C2C2C942C2C2C942C2C2C942F2F
      2F99232323850000000205050533858585FF525252C90F0F0F56646464DE8585
      85FF1111115E3D3D3DAE7D7D7DF7020202216A6A6AE5787878F3000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      00003D3D3DAE858585FF858585FF767676F10000000002020221858585FF8585
      85FF858585FF222222826A6A6AE5787878F30000001600000000000000000000
      0000000000000000000000000000000000000A0A0A49434343B9000000001A1A
      1A73858585FF707070EB06060637000000000000000000000000000000000000
      00000000000000000000000000003C3C3CAC858585FF00000013000000143737
      37A50707073D000000002121218021212180000000000707073D373737A50000
      001400000013858585FF3C3C3CAC0000000000000000000000006A6A6AE57878
      78F3000000160000000000000000000000000000000000000000000000000000
      000000000000000000003D3D3DAE858585FF2828288D000000000303032A0A0A
      0A46000000001010105A858585FF24242487858585FF434343B6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A5E5E5ED7858585FF232323840101011F000000040000000A030303283535
      35A2858585FF474747BC858585FF434343B60000000000000000000000000000
      00000000000000000000000000000000000000000004505050C76A6A6AE47474
      74EF858585FF858585FF747474F0060606390000000000000000000000000000
      00000000000000000000000000003B3B3BAB858585FF00000011050505358585
      85FF1B1B1B7400000000696969E4696969E4000000001B1B1B74858585FF0505
      053500000011858585FF3B3B3BAB000000000000000000000000858585FF4343
      43B6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A5D5D5DD6858585FF858585FF1E1E1E7A000000000000
      00000B0B0B4A858585FF858585FF464646BA858585FF3E3E3EAF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B636363DD858585FF1A1A1A730000000300000001000000030000000B2D2D
      2D95858585FF4D4D4DC3858585FF3E3E3EAF0000000000000000000000000000
      0000000000000000000000000000000000000000000006060638858585FF8585
      85FF858585FF858585FF858585FF707070EB0606063800000000000000000000
      00000000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF3E3E
      3EAF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000B616161DB858585FF707070EB1010105B000000000000
      00000404042D5F5F5FD9858585FF4C4C4CC2858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000434343B6858585FF7B7B7BF6585858D100000000000000136F6F6FE97D7D
      7DF7858585FF2828288D858585FF414141B30000000000000000000000000000
      00000000000000000000000000000000000000000000000000000808083F7575
      75F0858585FF858585FF858585FF858585FF858585FF0303032B000000000000
      00000000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      00000000000000000000434343B6858585FF21212181000000000F0F0F591E1E
      1E7A000000000A0A0A47858585FF2B2B2B91858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B4B858585FF858585FF858585FF1A1A1A7124242487858585FF8585
      85FF7F7F7FF903030329858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      0639737373EF858585FF858585FF858585FF5B5B5BD514141466090909410000
      00000000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B4B858585FF5F5F5FD921212181797979F48585
      85FF2828288D4C4C4CC17F7F7FF90303032B858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F7C858585FF858585FF858585FF858585FF858585FF7F7F
      7FFA1313136200000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060606386F6F6FEA858585FF424242B50D0D0D535F5F5FD82121217F0000
      000F0000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1F1F7C858585FF858585FF858585FF8585
      85FF858585FF858585FF1313136200000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B4A3A3A3AA9616161DA5B5B5BD43B3B3BAA0707
      073B0000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008080840414141B315151568525252C9191919713F3F3FB24E4E
      4EC50000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B4A3A3A3AA95F5F5FD85A5A
      5AD33B3B3BAA0707073B0000000000000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000090000000A000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000454545B8242424872E2E2E97858585FF2C2C
      2C940000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000090000
      000A00000000000000000000000000000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B752727278C0000000000000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B1B1B752828288D00000009000000122727278B888888FF383838A70000
      00000000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1919196F00000000686868E2686868E2000000001919196F858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B752727278C000000000000
      000000000000000000000000000000000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000454545B8858585FF0303032B00000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000454545B8858585FF03030328000000000404042E0F0F0F5B000000000000
      00000000000000000000000000003B3B3BAB858585FF00000011050505348585
      85FF1A1A1A7200000000686868E3686868E3000000001A1A1A72858585FF0505
      053400000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000454545B8858585FF0303032B0000
      000000000000000000000000000000000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000373737A5858585FF0202022600000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000373737A5858585FF03030327000000000000000000000000000000000000
      00000000000000000000000000003A3A3AA9858585FF01010119000000133030
      309A0707073B000000001D1D1D781D1D1D78000000000707073B3030309A0000
      001301010119858585FF3A3A3AA9000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000373737A5858585FF020202260000
      000000000000000000000000000000000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000494949BE858585FF0303032800000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000494949BE858585FF03030328000000000000000000000000000000000000
      0000000000000000000000000000383838A7858585FF02020222000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020222858585FF383838A7000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000494949BE858585FF030303280000
      000000000000000000000000000000000000858585FF414141B3000000000000
      000000000000000000000000000000000000000000000E0E0E54515151C84C4C
      4CC14A4A4ABF575757D0838383FD6C6C6CE70000000F00000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      00000000000000000000000000000E0E0E54515151C84C4C4CC14A4A4ABF5757
      57D0838383FD6C6C6CE70000000F000000000000000000000000000000000000
      0000000000001717176B4E4E4EC4747474EF858585FF515151C8474747BB4949
      49BE4F4F4FC55B5B5BD45E5E5ED75E5E5ED75B5B5BD44F4F4FC5494949BE4747
      47BB515151C8858585FF747474EF4E4E4EC41717176B00000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000E0E
      0E54515151C84C4C4CC14A4A4ABF575757D0838383FD6C6C6CE70000000F0000
      000000000000000000000000000000000000858585FF414141B3000000000000
      00000000000000000000000000000000000000000000404040B2858585FF8585
      85FF858585FF858585FF858585FF1D1D1D790000000000000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000404040B2858585FF858585FF858585FF8585
      85FF858585FF1D1D1D7900000000000000000000000000000000000000000000
      0000000000002020207F858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF2020207F00000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000004040
      40B2858585FF858585FF858585FF858585FF858585FF1D1D1D79000000000000
      000000000000000000000000000000000000858585FF3E3E3EAF000000000000
      00000000000000000000000000000000000000000000393939A8858585FF8585
      85FF858585FF858585FF3030309A000000010000000000000000000000000000
      00000000000000000000858585FF3E3E3EAF0000000000000000000000000000
      0000000000000000000000000000393939A8858585FF858585FF858585FF8585
      85FF3030309A0000000100000000000000000000000000000000000000000000
      000000000000000000001D1D1D79858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF1D1D1D790000000000000000858585FF3E3E
      3EAF000000000000000000000000000000000000000000000000000000003939
      39A8858585FF858585FF858585FF858585FF3030309A00000001000000000000
      000000000000000000000000000000000000858585FF474747BB000000000000
      00000000000000000000000000000000000000000000373737A4858585FF8585
      85FF858585FF3B3B3BAA00000000000000000000000000000000000000000000
      00000000000000000000858585FF474747BB0000000000000000000000000000
      0000000000000000000000000000373737A4858585FF858585FF858585FF3B3B
      3BAA000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101011C3131319C3232329E2B2B2B92474747BB8585
      85FF4F4F4FC5242424862B2B2B922B2B2B92242424864F4F4FC5858585FF4747
      47BB2B2B2B923232329E3131319C0101011C0000000000000000858585FF4747
      47BB000000000000000000000000000000000000000000000000000000003737
      37A4858585FF858585FF858585FF3B3B3BAA0000000000000000000000000000
      0000000000000000000000000000000000005F5F5FD9818181FC050505350000
      000000000000000000000000000000000000000000014B4B4BC0858585FF8585
      85FF343434A10000000000000000000000000000000000000000000000000000
      000000000000000000005F5F5FD9818181FC0505053500000000000000000000
      00000000000000000000000000014B4B4BC0858585FF858585FF343434A10000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202248585
      85FF3F3F3FB0000000000000000000000000000000003F3F3FB0858585FF0202
      02240000000000000000000000000000000000000000000000005F5F5FD98181
      81FC050505350000000000000000000000000000000000000000000000014B4B
      4BC0858585FF858585FF343434A1000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F58858585FF858585FF4646
      46BA3E3E3EAF414141B3414141B33D3D3DAE4C4C4CC2858585FF858585FF3333
      33A0000000000000000000000000000000000000000000000000000000000000
      000000000000000000000F0F0F58858585FF858585FF464646BA3E3E3EAF4141
      41B3414141B33D3D3DAE4C4C4CC2858585FF858585FF333333A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003C3C
      3CAD858585FF666666E13E3E3EAF3E3E3EAF666666E1858585FF3C3C3CAD0000
      00000000000000000000000000000000000000000000000000000F0F0F588585
      85FF858585FF464646BA3E3E3EAF414141B3414141B33D3D3DAE4C4C4CC28585
      85FF858585FF333333A000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001111115D575757D08585
      85FF858585FF858585FF858585FF858585FF858585FF646464DE1818186E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001111115D575757D0858585FF858585FF8585
      85FF858585FF858585FF858585FF646464DE1818186E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01193030309A7B7B7BF6858585FF858585FF7B7B7BF63030309A010101190000
      0000000000000000000000000000000000000000000000000000000000001111
      115D575757D0858585FF858585FF858585FF858585FF858585FF858585FF6464
      64DE1818186E0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000580000002C0000000100010000000000100200000000000000000000
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
      00000000000000000000000000000000000000000000}
  end
end
