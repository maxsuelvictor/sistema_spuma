object FIN_FM_M_REC_REM: TFIN_FM_M_REC_REM
  Left = 0
  Top = 0
  ClientHeight = 649
  ClientWidth = 924
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 924
    Height = 606
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlCentral: TPanel
      Left = 3
      Top = 3
      Width = 921
      Height = 603
      BevelOuter = bvNone
      TabOrder = 0
      object lblEmpresa: TLabel
        Left = 76
        Top = 439
        Width = 48
        Height = 13
        Caption = 'Empresa :'
      end
      object lblContaCorrente: TLabel
        Left = 42
        Top = 464
        Width = 82
        Height = 13
        Caption = 'Conta Corrente :'
      end
      object lblDataMovimento: TLabel
        Left = 39
        Top = 511
        Width = 85
        Height = 13
        Caption = 'Data Movimento :'
      end
      object Label1: TLabel
        Left = 11
        Top = 537
        Width = 113
        Height = 13
        Caption = 'Local arquivo remessa :'
      end
      object lblSelecionarTodos: TLabel
        Left = 16
        Top = 1
        Width = 79
        Height = 13
        Cursor = crHandPoint
        Caption = 'Selecionar todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lblSelecionarTodosClick
      end
      object lblDesmarcarTodos: TLabel
        Left = 119
        Top = 1
        Width = 81
        Height = 13
        Cursor = crHandPoint
        Caption = 'Desmarcar todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lblDesmarcarTodosClick
      end
      object Label2: TLabel
        Left = 1
        Top = 488
        Width = 123
        Height = 13
        Caption = 'Tipo ocorr'#234'ncia remessa :'
      end
      object lblEntradas: TLabel
        Left = 3
        Top = 264
        Width = 910
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 
          'ATEN'#199#195'O: Boletos com EMISS'#195'O at'#233' ontem que n'#227'o foram impressos o' +
          'u n'#227'o foi gerado remessa '
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label17: TLabel
        Left = 23
        Top = 414
        Width = 263
        Height = 13
        Caption = 'Boleto que ainda n'#227'o foi gerado pelo faturamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 357
        Top = 414
        Width = 172
        Height = 13
        Caption = 'Boleto que falta enviar a remessa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbGrid: TwwDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 910
        Height = 235
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        ControlType.Strings = (
          'int_selecao;CheckBox;true;false'
          'bol_remessa_env;CheckBox;True;False')
        Selected.Strings = (
          'int_selecao'#9'3'#9#9'F'
          'id_titulo'#9'11'#9'T'#237'tulo'#9'T'
          'int_nomecli'#9'42'#9'Cliente'#9'T'
          'num_parcela'#9'11'#9'Nro parcela'#9'T'
          'dta_vencimento'#9'13'#9'Vencimento'#9'T'
          'bol_nosso_numero'#9'22'#9'Nosso N'#250'mero'#9'T'
          'vlr_saldo'#9'14'#9'Vlr. T'#237'tulo'#9'T'
          'bol_remessa_dta'#9'13'#9'Data remessa'#9'T'
          'bol_remessa_env'#9'17'#9'Remessa enviada'#9'T'
          'bol_remessa_nome_arq'#9'16'#9'Arq. remessa'#9'T')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
      end
      object btnFiltrar: TButton
        Left = 1
        Top = 566
        Width = 90
        Height = 30
        Caption = 'Filtrar'
        TabOrder = 4
        OnClick = btnFiltrarClick
      end
      object btnGerarRemessa: TButton
        Left = 91
        Top = 566
        Width = 90
        Height = 30
        Caption = 'Gerar Remessa'
        TabOrder = 5
        OnClick = btnGerarRemessaClick
      end
      object cbbContaCorrente: TComboBox
        Left = 130
        Top = 460
        Width = 255
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        OnChange = cbbContaCorrenteChange
      end
      object txtDataMovimento: TJvDateEdit
        Left = 130
        Top = 508
        Width = 90
        Height = 21
        ShowNullDate = False
        TabOrder = 6
      end
      object cbbEmpresa: TComboBox
        Left = 130
        Top = 436
        Width = 255
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnChange = cbbEmpresaChange
      end
      object txtLocalArquivo: TMemo
        Left = 130
        Top = 531
        Width = 295
        Height = 21
        TabStop = False
        Color = 14342874
        Lines.Strings = (
          'txtLocalArquivo')
        ReadOnly = True
        TabOrder = 7
      end
      object BitBtn1: TBitBtn
        Left = 419
        Top = 529
        Width = 31
        Height = 23
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555555555555555555555555555555555555555555
          555555555555555555555555555555555555555FFFFFFFFFF555550000000000
          55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
          B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
          000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
          555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
          55555575FFF75555555555700007555555555557777555555555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
        TabOrder = 8
        OnClick = BitBtn1Click
      end
      object cbbTipoOcorrencia: TComboBox
        Left = 130
        Top = 484
        Width = 255
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 2
        Text = 'Remessa (Registrar)'
        OnChange = cbbContaCorrenteChange
        Items.Strings = (
          'Remessa (Registrar)'
          'Pedido de baixa')
      end
      object wwDBGrid1: TwwDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 288
        Width = 910
        Height = 121
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        ControlType.Strings = (
          'int_selecao;CheckBox;true;false')
        Selected.Strings = (
          'id_titulo'#9'11'#9'T'#237'tulo'#9'F'
          'dta_emissao'#9'10'#9'Emiss'#227'o'#9'F'
          'int_nomecli'#9'80'#9'Cliente'#9'F'
          'num_parcela'#9'11'#9'Nro parcela'#9'F'
          'dta_vencimento'#9'13'#9'Vencimento'#9'F'
          'bol_nosso_numero'#9'25'#9'Nosso N'#250'mero'#9'F'
          'vlr_saldo'#9'17'#9'Vlr. T'#237'tulo'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsRecAbe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 9
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        OnCalcCellColors = wwDBGrid1CalcCellColors
      end
      object Panel2: TPanel
        Left = 2
        Top = 413
        Width = 15
        Height = 15
        Color = clPurple
        ParentBackground = False
        TabOrder = 10
      end
      object Panel3: TPanel
        Left = 336
        Top = 413
        Width = 15
        Height = 15
        Color = clGreen
        ParentBackground = False
        TabOrder = 11
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 924
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
      Width = 924
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
        Width = 924
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Gera Remessa Banc'#225'ria'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -10
        ExplicitWidth = 1200
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 25
      Width = 924
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_REC
    Left = 584
    Top = 139
  end
  object BUS_CD_M_REC_ABE: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id_titulo'
        DataType = ftInteger
      end
      item
        Name = 'id_empresa'
        DataType = ftInteger
      end
      item
        Name = 'id_cliente'
        DataType = ftInteger
      end
      item
        Name = 'num_parcela'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'dta_emissao'
        DataType = ftDate
      end
      item
        Name = 'historico'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'vlr_parcela'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_original'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'dta_vencimento'
        DataType = ftDate
      end
      item
        Name = 'dta_original'
        DataType = ftDate
      end
      item
        Name = 'vlr_saldo'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'id_fiscal'
        DataType = ftInteger
      end
      item
        Name = 'origem'
        DataType = ftInteger
      end
      item
        Name = 'id_forma_pag'
        DataType = ftInteger
      end
      item
        Name = 'che_conta'
        DataType = ftInteger
      end
      item
        Name = 'che_cheque'
        DataType = ftInteger
      end
      item
        Name = 'che_banco'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'che_emitente'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'che_agencia'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'tipo_lancamento'
        DataType = ftInteger
      end
      item
        Name = 'id_local_titulo'
        DataType = ftInteger
      end
      item
        Name = 'id_plano'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'bol_nosso_numero'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'car_taxa'
        DataType = ftFloat
      end
      item
        Name = 'car_motivo_can'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'car_dta_can'
        DataType = ftDate
      end
      item
        Name = 'cod_lme'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'rev_lme'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'int_nomecli'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'int_nomefpg'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'int_nomelto'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'int_nomepct'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'int_nomeemp'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'seq_nosso_numero'
        DataType = ftInteger
      end
      item
        Name = 'int_numeronf'
        DataType = ftInteger
      end
      item
        Name = 'bol_chave'
        DataType = ftInteger
      end
      item
        Name = 'bol_id_conta'
        DataType = ftInteger
      end
      item
        Name = 'car_taxa_ope'
        DataType = ftFloat
      end
      item
        Name = 'car_n_lote_id_resp'
        DataType = ftInteger
      end
      item
        Name = 'car_n_lote_id_conta'
        DataType = ftInteger
      end
      item
        Name = 'id_baixa'
        DataType = ftInteger
      end
      item
        Name = 'car_n_lote'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'int_selecao'
        DataType = ftBoolean
      end
      item
        Name = 'situacao_chq'
        DataType = ftInteger
      end
      item
        Name = 'id_mch'
        DataType = ftInteger
      end
      item
        Name = 'id_vendedor'
        DataType = ftInteger
      end
      item
        Name = 'car_id_maquineta'
        DataType = ftInteger
      end
      item
        Name = 'id_credito'
        DataType = ftInteger
      end
      item
        Name = 'int_nomectcbol'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'int_descorigem'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'int_atraso'
        DataType = ftInteger
      end
      item
        Name = 'int_vlr_corrigido'
        DataType = ftFloat
      end
      item
        Name = 'int_vlr_juros'
        DataType = ftFloat
      end
      item
        Name = 'int_numpedvenda'
        DataType = ftInteger
      end
      item
        Name = 'bol_banco'
        DataType = ftInteger
      end
      item
        Name = 'int_docimpresso'
        DataType = ftInteger
      end
      item
        Name = 'int_numordem'
        DataType = ftInteger
      end
      item
        Name = 'dct_id_conta'
        DataType = ftInteger
      end
      item
        Name = 'dct_dta_descontado'
        DataType = ftDate
      end
      item
        Name = 'dct_id_desc'
        DataType = ftInteger
      end
      item
        Name = 'int_situacao_titulo'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'int_id_ors'
        DataType = ftInteger
      end
      item
        Name = 'int_fpg_sgq_presta_conta'
        DataType = ftBoolean
      end
      item
        Name = 'bol_remessa_env'
        DataType = ftBoolean
      end
      item
        Name = 'bol_remessa_dta'
        DataType = ftDate
      end
      item
        Name = 'bol_remessa_id_func'
        DataType = ftInteger
      end
      item
        Name = 'bol_remessa_nome_arq'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'BUS_SQ_M_REC_PAG'
        DataType = ftDataSet
      end
      item
        Name = 'BUS_SQ_M_REC_FAT'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'BUS_CD_M_REC_ABEIndex1'
        DescFields = 'INT_NOMECLI;NUM_PARCELA;DTA_VENCIMENTO'
        Fields = 'INT_NOMECLI;NUM_PARCELA;DTA_VENCIMENTO'
        Options = [ixDescending]
      end>
    IndexName = 'BUS_CD_M_REC_ABEIndex1'
    Params = <>
    ProviderName = 'BUS_DP_M_REC'
    RemoteServer = dmGeral.pcConecao
    StoreDefs = True
    Left = 503
    Top = 474
    object BUS_CD_M_REC_ABEid_titulo: TIntegerField
      FieldName = 'id_titulo'
    end
    object BUS_CD_M_REC_ABEid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_M_REC_ABEid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object BUS_CD_M_REC_ABEnum_parcela: TWideStringField
      Alignment = taRightJustify
      FieldName = 'num_parcela'
    end
    object BUS_CD_M_REC_ABEdta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object BUS_CD_M_REC_ABEhistorico: TWideStringField
      FieldName = 'historico'
      Size = 100
    end
    object BUS_CD_M_REC_ABEvlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_REC_ABEvlr_original: TFMTBCDField
      FieldName = 'vlr_original'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_REC_ABEdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
    end
    object BUS_CD_M_REC_ABEdta_original: TDateField
      FieldName = 'dta_original'
    end
    object BUS_CD_M_REC_ABEvlr_saldo: TFMTBCDField
      FieldName = 'vlr_saldo'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_REC_ABEid_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object BUS_CD_M_REC_ABEorigem: TIntegerField
      FieldName = 'origem'
    end
    object BUS_CD_M_REC_ABEid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
    end
    object BUS_CD_M_REC_ABEche_conta: TIntegerField
      FieldName = 'che_conta'
    end
    object BUS_CD_M_REC_ABEche_cheque: TIntegerField
      FieldName = 'che_cheque'
    end
    object BUS_CD_M_REC_ABEche_banco: TWideStringField
      FieldName = 'che_banco'
      Size = 10
    end
    object BUS_CD_M_REC_ABEche_emitente: TWideStringField
      FieldName = 'che_emitente'
      Size = 50
    end
    object BUS_CD_M_REC_ABEche_agencia: TWideStringField
      FieldName = 'che_agencia'
      Size = 10
    end
    object BUS_CD_M_REC_ABEtipo_lancamento: TIntegerField
      FieldName = 'tipo_lancamento'
    end
    object BUS_CD_M_REC_ABEid_local_titulo: TIntegerField
      FieldName = 'id_local_titulo'
    end
    object BUS_CD_M_REC_ABEid_plano: TWideStringField
      FieldName = 'id_plano'
      Size = 11
    end
    object BUS_CD_M_REC_ABEbol_nosso_numero: TWideStringField
      Alignment = taRightJustify
      FieldName = 'bol_nosso_numero'
      Size = 30
    end
    object BUS_CD_M_REC_ABEcar_taxa: TFloatField
      FieldName = 'car_taxa'
    end
    object BUS_CD_M_REC_ABEcar_motivo_can: TWideStringField
      FieldName = 'car_motivo_can'
      Size = 100
    end
    object BUS_CD_M_REC_ABEcar_dta_can: TDateField
      FieldName = 'car_dta_can'
    end
    object BUS_CD_M_REC_ABEcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_M_REC_ABErev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_M_REC_ABEint_nomecli: TWideStringField
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_REC_ABEint_nomefpg: TWideStringField
      FieldName = 'int_nomefpg'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_REC_ABEint_nomelto: TWideStringField
      FieldName = 'int_nomelto'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_REC_ABEint_nomepct: TWideStringField
      FieldName = 'int_nomepct'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_REC_ABEBUS_SQ_M_REC_FAT: TDataSetField
      FieldName = 'BUS_SQ_M_REC_FAT'
    end
    object BUS_CD_M_REC_ABEBUS_SQ_M_REC_PAG: TDataSetField
      FieldName = 'BUS_SQ_M_REC_PAG'
    end
    object BUS_CD_M_REC_ABEint_nomeemp: TWideStringField
      FieldName = 'int_nomeemp'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_REC_ABEint_numeronf: TIntegerField
      FieldName = 'int_numeronf'
      ProviderFlags = []
    end
    object BUS_CD_M_REC_ABEseq_nosso_numero: TIntegerField
      FieldName = 'seq_nosso_numero'
    end
    object BUS_CD_M_REC_ABEbol_chave: TIntegerField
      FieldName = 'bol_chave'
    end
    object BUS_CD_M_REC_ABEbol_id_conta: TIntegerField
      FieldName = 'bol_id_conta'
    end
    object BUS_CD_M_REC_ABEcar_taxa_ope: TFloatField
      FieldName = 'car_taxa_ope'
    end
    object BUS_CD_M_REC_ABEcar_n_lote_id_resp: TIntegerField
      FieldName = 'car_n_lote_id_resp'
    end
    object BUS_CD_M_REC_ABEcar_n_lote_id_conta: TIntegerField
      FieldName = 'car_n_lote_id_conta'
    end
    object BUS_CD_M_REC_ABEid_baixa: TIntegerField
      FieldName = 'id_baixa'
    end
    object BUS_CD_M_REC_ABEcar_n_lote: TWideStringField
      FieldName = 'car_n_lote'
      Size = 30
    end
    object BUS_CD_M_REC_ABEint_selecao: TBooleanField
      FieldName = 'int_selecao'
      ProviderFlags = []
    end
    object BUS_CD_M_REC_ABEsituacao_chq: TIntegerField
      FieldName = 'situacao_chq'
    end
    object BUS_CD_M_REC_ABEid_mch: TIntegerField
      FieldName = 'id_mch'
    end
    object BUS_CD_M_REC_ABEid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object BUS_CD_M_REC_ABEcar_id_maquineta: TIntegerField
      FieldName = 'car_id_maquineta'
    end
    object BUS_CD_M_REC_ABEid_credito: TIntegerField
      FieldName = 'id_credito'
    end
    object BUS_CD_M_REC_ABEint_nomectcbol: TWideStringField
      FieldName = 'int_nomectcbol'
      ProviderFlags = []
      Size = 40
    end
    object BUS_CD_M_REC_ABEint_descorigem: TWideStringField
      FieldName = 'int_descorigem'
      ProviderFlags = []
      Size = 40
    end
    object BUS_CD_M_REC_ABEint_atraso: TIntegerField
      FieldName = 'int_atraso'
      ProviderFlags = []
    end
    object BUS_CD_M_REC_ABEint_vlr_corrigido: TFloatField
      FieldName = 'int_vlr_corrigido'
      ProviderFlags = []
    end
    object BUS_CD_M_REC_ABEint_vlr_juros: TFloatField
      FieldName = 'int_vlr_juros'
      ProviderFlags = []
    end
    object BUS_CD_M_REC_ABEint_numpedvenda: TIntegerField
      FieldName = 'int_numpedvenda'
      ProviderFlags = []
    end
    object BUS_CD_M_REC_ABEbol_banco: TIntegerField
      FieldName = 'bol_banco'
    end
    object BUS_CD_M_REC_ABEint_docimpresso: TIntegerField
      FieldName = 'int_docimpresso'
      ProviderFlags = []
    end
    object BUS_CD_M_REC_ABEint_numordem: TIntegerField
      FieldName = 'int_numordem'
      ProviderFlags = []
    end
    object BUS_CD_M_REC_ABEdct_id_conta: TIntegerField
      FieldName = 'dct_id_conta'
    end
    object BUS_CD_M_REC_ABEdct_dta_descontado: TDateField
      FieldName = 'dct_dta_descontado'
    end
    object BUS_CD_M_REC_ABEdct_id_desc: TIntegerField
      FieldName = 'dct_id_desc'
    end
    object BUS_CD_M_REC_ABEint_id_ors: TIntegerField
      FieldName = 'int_id_ors'
      ProviderFlags = []
    end
    object BUS_CD_M_REC_ABEint_fpg_sgq_presta_conta: TBooleanField
      FieldName = 'int_fpg_sgq_presta_conta'
      ProviderFlags = []
    end
    object BUS_CD_M_REC_ABEbol_remessa_env: TBooleanField
      FieldName = 'bol_remessa_env'
    end
    object BUS_CD_M_REC_ABEbol_remessa_dta: TDateField
      FieldName = 'bol_remessa_dta'
    end
    object BUS_CD_M_REC_ABEbol_remessa_id_func: TIntegerField
      FieldName = 'bol_remessa_id_func'
    end
    object BUS_CD_M_REC_ABEbol_remessa_nome_arq: TWideStringField
      FieldName = 'bol_remessa_nome_arq'
      Size = 50
    end
  end
  object dsRecAbe: TwwDataSource
    DataSet = BUS_CD_M_REC_ABE
    Left = 624
    Top = 475
  end
end
