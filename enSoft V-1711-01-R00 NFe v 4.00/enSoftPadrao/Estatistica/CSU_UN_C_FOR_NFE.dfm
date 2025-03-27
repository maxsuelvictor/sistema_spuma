object CSU_FM_C_FOR_NFE: TCSU_FM_C_FOR_NFE
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
    object lblICMSNormal: TLabel
      Left = 20
      Top = 444
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
      Left = 220
      Top = 444
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
      Left = 377
      Top = 444
      Width = 435
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Outros'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object lblVlrBase: TLabel
      Left = 20
      Top = 463
      Width = 42
      Height = 13
      Caption = 'Vlr. Base'
    end
    object lblVlrICMS: TLabel
      Left = 136
      Top = 463
      Width = 44
      Height = 13
      Caption = 'Vlr. ICMS'
    end
    object lblPer: TLabel
      Left = 106
      Top = 463
      Width = 11
      Height = 13
      Caption = '%'
    end
    object lblVlrBaseSubs: TLabel
      Left = 220
      Top = 463
      Width = 42
      Height = 13
      Caption = 'Vlr. Base'
    end
    object lblVlrICMSSubs: TLabel
      Left = 293
      Top = 463
      Width = 44
      Height = 13
      Caption = 'Vlr. ICMS'
    end
    object lblIPI: TLabel
      Left = 377
      Top = 463
      Width = 33
      Height = 13
      Caption = 'Vlr. IPI'
    end
    object lblVlrPis: TLabel
      Left = 450
      Top = 463
      Width = 35
      Height = 13
      Caption = 'Vlr. PIS'
    end
    object lblCofins: TLabel
      Left = 523
      Top = 463
      Width = 49
      Height = 13
      Caption = 'Vlr. Cofins'
    end
    object lblVlrFrete: TLabel
      Left = 596
      Top = 463
      Width = 45
      Height = 13
      Caption = 'Vlr. Frete'
    end
    object lblVlrOutras: TLabel
      Left = 669
      Top = 463
      Width = 52
      Height = 13
      Caption = 'Vlr. Outras'
    end
    object lblVlrCusto: TLabel
      Left = 742
      Top = 463
      Width = 47
      Height = 13
      Caption = 'Vlr. Custo'
    end
    object lblPagamentos: TLabel
      Left = 20
      Top = 196
      Width = 792
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Itens'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object Label1: TLabel
      Left = 295
      Top = 178
      Width = 44
      Height = 13
      Caption = 'Faturada'
    end
    object Label2: TLabel
      Left = 370
      Top = 178
      Width = 50
      Height = 13
      Caption = 'Cancelada'
    end
    object lblAberto: TLabel
      Left = 55
      Top = 178
      Width = 46
      Height = 13
      Caption = 'Pendente'
    end
    object Label3: TLabel
      Left = 130
      Top = 178
      Width = 49
      Height = 13
      Caption = 'Inutilizada'
    end
    object Label4: TLabel
      Left = 210
      Top = 178
      Width = 49
      Height = 13
      Caption = 'Denegada'
    end
    object Label9: TLabel
      Left = 448
      Top = 178
      Width = 99
      Height = 13
      Caption = 'Pr'#233'-venda pendente'
    end
    object grdNfe: TwwDBGrid
      AlignWithMargins = True
      Left = 20
      Top = 13
      Width = 792
      Height = 160
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      TabStop = False
      Selected.Strings = (
        'id_empresa'#9'10'#9'Empresa'#9'F'
        'int_nometme'#9'32'#9'Tipo de Estoque'#9'F'
        'numero'#9'14'#9'N'#250'mero'#9'F'
        'serie'#9'10'#9'S'#233'rie'#9'F'
        'modelo'#9'10'#9'Modelo'#9'F'
        'id_cfo'#9'10'#9'CFOP'#9'F'
        'dta_emissao'#9'12'#9'Emiss'#227'o'#9'F'
        'dta_documento'#9'12'#9'Entrada'#9'F'
        'vlr_mercadoria'#9'17'#9'Vlr. Mercadoria'#9'F'
        'vlr_liquido'#9'15'#9'Vlr. Total'#9'F')
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
      OnCalcCellColors = grdNfeCalcCellColors
    end
    object grdItens: TwwDBGrid
      AlignWithMargins = True
      Left = 20
      Top = 215
      Width = 792
      Height = 226
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      TabStop = False
      Selected.Strings = (
        'id_item'#9'12'#9'Item'#9'F'
        'int_desc_item'#9'42'#9'Descri'#231#227'o'#9'F'
        'int_und_venda'#9'4'#9'Und'#9'F'
        'int_nomecor'#9'16'#9'Cor'#9'F'
        'int_nometam'#9'10'#9'Tamanho'#9'F'
        'qtde'#9'15'#9'Qtde'#9'F'
        'vlr_unitario'#9'15'#9'Valor Unit'#225'rio'#9'F'
        'vlr_desconto'#9'14'#9'Vlr. Desconto'#9'F'
        'vlr_liquido'#9'14'#9'Vlr. Total'#9'F')
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
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
      Left = 17
      Top = 478
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'icm_n_base'
      DataSource = dsoItens
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 2
    end
    object txtVlrICMS: TDBEdit
      Left = 136
      Top = 478
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'icm_n_valor'
      DataSource = dsoItens
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 93
      Top = 478
      Width = 40
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'icm_per_reducao'
      DataSource = dsoItens
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 4
    end
    object txtVlrBaseSubs: TDBEdit
      Left = 217
      Top = 478
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'icm_s_base'
      DataSource = dsoItens
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 5
    end
    object txtVlrICMSSubs: TDBEdit
      Left = 293
      Top = 478
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'icm_s_valor'
      DataSource = dsoItens
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 6
    end
    object txtVlrIpi: TDBEdit
      Left = 374
      Top = 478
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'ipi_valor'
      DataSource = dsoItens
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 7
    end
    object txtVlrPis: TDBEdit
      Left = 450
      Top = 478
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'pis_valor'
      DataSource = dsoItens
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 8
    end
    object txtVlrCofins: TDBEdit
      Left = 520
      Top = 478
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'cof_valor'
      DataSource = dsoItens
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 9
    end
    object txtVlrFrete: TDBEdit
      Left = 596
      Top = 478
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'fre_valor'
      DataSource = dsoItens
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 10
    end
    object txtVlrOutras: TDBEdit
      Left = 666
      Top = 478
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'vlr_outras'
      DataSource = dsoItens
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 11
    end
    object txtVlrCusto: TDBEdit
      Left = 742
      Top = 478
      Width = 70
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Color = 14342874
      DataField = 'vlr_custo'
      DataSource = dsoItens
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 12
    end
    object Panel4: TPanel
      Left = 274
      Top = 177
      Width = 15
      Height = 15
      BevelOuter = bvNone
      Color = clGreen
      ParentBackground = False
      TabOrder = 13
    end
    object Panel5: TPanel
      Left = 349
      Top = 177
      Width = 15
      Height = 15
      BevelOuter = bvNone
      Color = clRed
      ParentBackground = False
      TabOrder = 14
    end
    object pnlAberto: TPanel
      Left = 34
      Top = 177
      Width = 15
      Height = 15
      BevelOuter = bvNone
      Color = clBlue
      ParentBackground = False
      TabOrder = 15
    end
    object Panel6: TPanel
      Left = 109
      Top = 177
      Width = 15
      Height = 15
      BevelOuter = bvNone
      Color = clMaroon
      ParentBackground = False
      TabOrder = 16
    end
    object Panel7: TPanel
      Left = 189
      Top = 177
      Width = 15
      Height = 15
      BevelOuter = bvNone
      Color = clPurple
      ParentBackground = False
      TabOrder = 17
    end
    object Panel8: TPanel
      Left = 429
      Top = 177
      Width = 15
      Height = 15
      BevelOuter = bvNone
      Color = 11889407
      ParentBackground = False
      TabOrder = 18
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
        Caption = 'Notas Fiscais do Fornecedor'
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
    Left = 759
    Top = 147
  end
  object dsoItens: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE
    Left = 751
    Top = 411
  end
end
