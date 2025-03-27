object CSU_FM_C_CLI_NFE: TCSU_FM_C_CLI_NFE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 550
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
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
    object lblICMSNormal: TLabel
      Left = 21
      Top = 443
      Width = 186
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'ICMS Normal'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object lblICMSSubstituido: TLabel
      Left = 257
      Top = 443
      Width = 143
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'ICMS Substitu'#237'do'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object lblOutros: TLabel
      Left = 451
      Top = 443
      Width = 362
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Outros'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object lblVlrBase: TLabel
      Left = 21
      Top = 462
      Width = 42
      Height = 13
      Caption = 'Vlr. Base'
    end
    object lblVlrICMS: TLabel
      Left = 137
      Top = 462
      Width = 44
      Height = 13
      Caption = 'Vlr. ICMS'
    end
    object lblPer: TLabel
      Left = 107
      Top = 462
      Width = 11
      Height = 13
      Caption = '%'
    end
    object lblVlrBaseSubs: TLabel
      Left = 257
      Top = 462
      Width = 42
      Height = 13
      Caption = 'Vlr. Base'
    end
    object lblVlrICMSSubs: TLabel
      Left = 330
      Top = 462
      Width = 44
      Height = 13
      Caption = 'Vlr. ICMS'
    end
    object lblIPI: TLabel
      Left = 451
      Top = 462
      Width = 33
      Height = 13
      Caption = 'Vlr. IPI'
    end
    object lblVlrPis: TLabel
      Left = 524
      Top = 462
      Width = 35
      Height = 13
      Caption = 'Vlr. PIS'
    end
    object lblCofins: TLabel
      Left = 597
      Top = 462
      Width = 49
      Height = 13
      Caption = 'Vlr. Cofins'
    end
    object lblVlrFrete: TLabel
      Left = 670
      Top = 462
      Width = 45
      Height = 13
      Caption = 'Vlr. Frete'
    end
    object lblVlrOutras: TLabel
      Left = 743
      Top = 462
      Width = 52
      Height = 13
      Caption = 'Vlr. Outras'
    end
    object lblPagamentos: TLabel
      Left = 21
      Top = 170
      Width = 792
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Itens'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object lblTitulosNota: TLabel
      Left = 21
      Top = 319
      Width = 792
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'T'#237'tulos'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object Label1: TLabel
      Left = 62
      Top = 151
      Width = 50
      Height = 13
      Caption = 'Cancelada'
    end
    object Label2: TLabel
      Left = 168
      Top = 151
      Width = 49
      Height = 13
      Caption = 'Inutilizada'
    end
    object Label3: TLabel
      Left = 272
      Top = 151
      Width = 49
      Height = 13
      Caption = 'Denegada'
    end
    object dgCobrancas: TwwDBGrid
      AlignWithMargins = True
      Left = 21
      Top = 12
      Width = 792
      Height = 133
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      TabStop = False
      Selected.Strings = (
        'id_empresa'#9'20'#9'Empresa'#9'F'
        'int_nometme'#9'15'#9'Tipo de Estoque'#9'F'#9
        'numero'#9'10'#9'Numero'#9'F'#9
        'serie'#9'10'#9'Serie'#9'F'#9
        'modelo'#9'10'#9'Modelo'#9'F'#9
        'id_cfo'#9'10'#9'CFOP'#9'F'#9
        'dta_emissao'#9'15'#9'Emiss'#227'o'#9'F'#9
        'dta_documento'#9'15'#9'Entrada'#9'F'#9
        'vlr_mercadoria'#9'15'#9'Vlr.Mercadoria'#9'F'#9
        'vlr_liquido'#9'15'#9'Vlt.Total'#9'F'#9)
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
      OnCalcCellColors = dgCobrancasCalcCellColors
    end
    object wwDBGrid1: TwwDBGrid
      AlignWithMargins = True
      Left = 21
      Top = 187
      Width = 792
      Height = 131
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      TabStop = False
      Selected.Strings = (
        'id_item'#9'15'#9'Item'#9'F'
        'int_desc_item'#9'40'#9'Descric'#227'o'#9'F'
        'int_und_venda'#9'10'#9'Und'#9'F'
        'qtde'#9'15'#9'Qtde'#9'F'
        'vlr_unitario'#9'19'#9'Vlr.Unitario'#9'F'
        'vlr_desconto'#9'20'#9'Vlr.Desconto'#9'F'
        'vlr_liquido'#9'20'#9'Vlr.Total'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
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
    end
    object txtVlrBase: TDBEdit
      Left = 18
      Top = 477
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'icm_n_base'
      DataSource = dsoItens
      Enabled = False
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 2
    end
    object txtVlrICMS: TDBEdit
      Left = 137
      Top = 477
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'icm_n_valor'
      DataSource = dsoItens
      Enabled = False
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 94
      Top = 477
      Width = 40
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'icm_per_reducao'
      DataSource = dsoItens
      Enabled = False
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 4
    end
    object txtVlrBaseSubs: TDBEdit
      Left = 257
      Top = 477
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'icm_s_base'
      DataSource = dsoItens
      Enabled = False
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 5
    end
    object txtVlrICMSSubs: TDBEdit
      Left = 330
      Top = 477
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'icm_s_valor'
      DataSource = dsoItens
      Enabled = False
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 6
    end
    object txtVlrIpi: TDBEdit
      Left = 451
      Top = 477
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'ipi_valor'
      DataSource = dsoItens
      Enabled = False
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 7
    end
    object txtVlrPis: TDBEdit
      Left = 524
      Top = 477
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'pis_valor'
      DataSource = dsoItens
      Enabled = False
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 8
    end
    object txtVlrCofins: TDBEdit
      Left = 594
      Top = 477
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'cof_valor'
      DataSource = dsoItens
      Enabled = False
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 9
    end
    object txtVlrFrete: TDBEdit
      Left = 670
      Top = 477
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'fre_valor'
      DataSource = dsoItens
      Enabled = False
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 10
    end
    object txtVlrOutras: TDBEdit
      Left = 743
      Top = 477
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'vlr_outras'
      DataSource = dsoItens
      Enabled = False
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 11
    end
    object wwDBGrid2: TwwDBGrid
      Left = 21
      Top = 335
      Width = 792
      Height = 105
      Selected.Strings = (
        'id_fiscal'#9'10'#9'C'#243'digo'#9'T'
        'int_nomefpg'#9'27'#9'Forma Pagamento'#9'T'
        'dta_vencimento'#9'10'#9'Vencimento'#9'T'
        'id_plano'#9'11'#9'Plano de Contas'#9'T'
        'id_ccusto'#9'10'#9'C'#243'd. Custo'#9'T'
        'int_nomeccu'#9'20'#9'Centro de Custo'#9'T'
        'num_parcela'#9'15'#9'Num. Parcela'#9'T'
        'vlr_titulo'#9'15'#9'Vlr. T'#237'tulo'#9'T')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsoTitulos
      TabOrder = 12
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
    object Panel1: TPanel
      Left = 40
      Top = 148
      Width = 17
      Height = 17
      Color = clRed
      ParentBackground = False
      TabOrder = 13
    end
    object Panel2: TPanel
      Left = 146
      Top = 148
      Width = 17
      Height = 17
      Color = clMaroon
      ParentBackground = False
      TabOrder = 14
    end
    object Panel3: TPanel
      Left = 250
      Top = 148
      Width = 17
      Height = 17
      Color = clPurple
      ParentBackground = False
      TabOrder = 15
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
        Caption = 'Notas Fiscais do Cliente'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -13
        ExplicitWidth = 500
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
    DataSet = dmGeral.BUS_CD_M_NFE
    Left = 751
    Top = 123
  end
  object dsoItens: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE
    Left = 751
    Top = 283
  end
  object dsoTitulos: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_TIT
    Left = 752
    Top = 403
  end
end
