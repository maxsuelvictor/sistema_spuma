object CSU_FM_C_ITE_EXT: TCSU_FM_C_ITE_EXT
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 543
  ClientWidth = 831
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 831
    Height = 500
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlCentral: TPanel
      Left = 0
      Top = 6
      Width = 825
      Height = 499
      BevelOuter = bvNone
      TabOrder = 0
      object lblICMSNormal: TLabel
        Left = 8
        Top = 422
        Width = 197
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'ICMS Normal'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object lblICMSSubstituido: TLabel
        Left = 212
        Top = 423
        Width = 151
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'ICMS Substitu'#237'do'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object lblOutros: TLabel
        Left = 369
        Top = 422
        Width = 455
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Outros'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object lblVlrBase: TLabel
        Left = 8
        Top = 445
        Width = 42
        Height = 13
        Caption = 'Vlr. Base'
      end
      object lblVlrICMS: TLabel
        Left = 132
        Top = 445
        Width = 44
        Height = 13
        Caption = 'Vlr. ICMS'
      end
      object lblPer: TLabel
        Left = 85
        Top = 444
        Width = 11
        Height = 13
        Caption = '%'
      end
      object lblVlrBaseSubs: TLabel
        Left = 212
        Top = 445
        Width = 42
        Height = 13
        Caption = 'Vlr. Base'
      end
      object lblVlrICMSSubs: TLabel
        Left = 292
        Top = 445
        Width = 44
        Height = 13
        Caption = 'Vlr. ICMS'
      end
      object lblIPI: TLabel
        Left = 369
        Top = 444
        Width = 33
        Height = 13
        Caption = 'Vlr. IPI'
      end
      object lblVlrPis: TLabel
        Left = 445
        Top = 444
        Width = 35
        Height = 13
        Caption = 'Vlr. PIS'
      end
      object lblCofins: TLabel
        Left = 522
        Top = 444
        Width = 49
        Height = 13
        Caption = 'Vlr. Cofins'
      end
      object lblVlrFrete: TLabel
        Left = 599
        Top = 444
        Width = 45
        Height = 13
        Caption = 'Vlr. Frete'
      end
      object lblVlrOutras: TLabel
        Left = 676
        Top = 444
        Width = 52
        Height = 13
        Caption = 'Vlr. Outras'
      end
      object lblVlrCusto: TLabel
        Left = 753
        Top = 445
        Width = 47
        Height = 13
        Caption = 'Vlr. Custo'
      end
      object lblPagamentos: TLabel
        Left = 8
        Top = 212
        Width = 816
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Dados da Nota'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label1: TLabel
        Left = 316
        Top = 1
        Width = 200
        Height = 13
        Caption = '* Dois cliques para exibir "Dados da Nota"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtEmpresa: TLabel
        Left = 8
        Top = 1
        Width = 68
        Height = 13
        Caption = 'edtEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbItens: TwwDBGrid
        AlignWithMargins = True
        Left = 8
        Top = 21
        Width = 816
        Height = 190
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        Selected.Strings = (
          'data'#9'15'#9'Data'#9'F'
          'documento'#9'26'#9'Documento'#9'F'
          'int_nometme'#9'57'#9'Tipo Estoque'#9'F'
          'int_descorigem'#9'15'#9'Origem'#9'F'
          'qtde'#9'17'#9'Qtde'#9'F'
          'sld_estoque'#9'20'#9'Estoque'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        OnRowChanged = dbItensRowChanged
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
        OnDblClick = dbItensDblClick
      end
      object txtVlrBase: TDBEdit
        Left = 8
        Top = 464
        Width = 71
        Height = 21
        TabStop = False
        BevelInner = bvSpace
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        Color = 14342874
        DataField = 'icm_n_base'
        DataSource = dsoNfeIte
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 1
      end
      object txtVlrICMS: TDBEdit
        Left = 132
        Top = 464
        Width = 71
        Height = 21
        TabStop = False
        BevelInner = bvSpace
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        Color = 14342874
        DataField = 'icm_n_valor'
        DataSource = dsoNfeIte
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 2
      end
      object txtper: TDBEdit
        Left = 85
        Top = 464
        Width = 41
        Height = 21
        TabStop = False
        BevelInner = bvSpace
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        Color = 14342874
        DataField = 'icm_per_reducao'
        DataSource = dsoNfeIte
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 3
      end
      object txtVlrBaseSubs: TDBEdit
        Left = 212
        Top = 464
        Width = 71
        Height = 21
        TabStop = False
        BevelInner = bvSpace
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        Color = 14342874
        DataField = 'icm_s_base'
        DataSource = dsoNfeIte
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 4
      end
      object txtVlrICMSSubs: TDBEdit
        Left = 292
        Top = 464
        Width = 71
        Height = 21
        TabStop = False
        BevelInner = bvSpace
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        Color = 14342874
        DataField = 'icm_s_valor'
        DataSource = dsoNfeIte
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 5
      end
      object txtVlrIpi: TDBEdit
        Left = 369
        Top = 464
        Width = 71
        Height = 21
        TabStop = False
        BevelInner = bvSpace
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        Color = 14342874
        DataField = 'ipi_valor'
        DataSource = dsoNfeIte
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 6
      end
      object txtVlrPis: TDBEdit
        Left = 445
        Top = 464
        Width = 71
        Height = 21
        TabStop = False
        BevelInner = bvSpace
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        Color = 14342874
        DataField = 'pis_valor'
        DataSource = dsoNfeIte
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 7
      end
      object txtVlrCofins: TDBEdit
        Left = 522
        Top = 464
        Width = 71
        Height = 21
        TabStop = False
        BevelInner = bvSpace
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        Color = 14342874
        DataField = 'cof_valor'
        DataSource = dsoNfeIte
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 8
      end
      object txtVlrFrete: TDBEdit
        Left = 599
        Top = 464
        Width = 71
        Height = 21
        TabStop = False
        BevelInner = bvSpace
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        Color = 14342874
        DataField = 'fre_valor'
        DataSource = dsoNfeIte
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 9
      end
      object txtVlrOutras: TDBEdit
        Left = 676
        Top = 464
        Width = 71
        Height = 21
        TabStop = False
        BevelInner = bvSpace
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        Color = 14342874
        DataField = 'vlr_outras_desp'
        DataSource = dsoNfeIte
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 10
      end
      object txtVlrCusto: TDBEdit
        Left = 753
        Top = 464
        Width = 71
        Height = 21
        TabStop = False
        BevelInner = bvSpace
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        Color = 14342874
        DataField = 'vlr_custo'
        DataSource = dsoNfeIte
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 11
      end
      object dgFes: TwwDBGrid
        AlignWithMargins = True
        Left = 8
        Top = 229
        Width = 816
        Height = 190
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        Selected.Strings = (
          'id_fiscal'#9'10'#9'Numero'#9'F'
          'dta_documento'#9'11'#9'Entrada'#9'F'
          'dta_emissao'#9'11'#9'Emiss'#227'o'#9'F'
          'int_nomeemi'#9'50'#9'Emitente'#9'F'
          'int_nometme'#9'20'#9'Tipo de Estoque'#9'F'
          'int_descnfecodsit'#9'21'#9'Situa'#231#227'o'#9'F'
          'id_cfo'#9'10'#9'CFOP'#9'F'
          'vlr_liquido'#9'15'#9'Vlr.Nota'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoNfe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
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
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 831
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
      Width = 831
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
        Width = 831
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Extrato'
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
      Width = 831
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_EXT_ITE
    Left = 719
    Top = 137
  end
  object dsoNfe: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE
    Left = 735
    Top = 313
  end
  object dsoNfeIte: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE
    Left = 735
    Top = 377
  end
end
