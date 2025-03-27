object CSU_FM_C_ITE_COJ: TCSU_FM_C_ITE_COJ
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 406
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 41
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 706
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Itens Conjugados'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 166
      ExplicitHeight = 30
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 41
    Width = 708
    Height = 365
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlDados: TPanel
      Left = 16
      Top = 6
      Width = 665
      Height = 339
      BevelOuter = bvNone
      TabOrder = 0
      object dgIteCoj: TwwDBGrid
        Left = 16
        Top = 16
        Width = 633
        Height = 145
        Selected.Strings = (
          'ID_ITEM'#9'15'#9'C'#243'digo'#9'T'
          'DESCRICAO'#9'50'#9'Descri'#231#227'o'#9'T'
          'UND'#9'8'#9'Und'#9'T'
          'QTDE'#9'10'#9'Qtde'#9'T'
          'QTDE_TEMPO'#9'10'#9'Tempo'#9'T')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        OnRowChanged = dgIteCojRowChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoIteCoj
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        OnCalcCellColors = dgIteCojCalcCellColors
      end
      object wwDBGrid2: TwwDBGrid
        Left = 16
        Top = 184
        Width = 633
        Height = 128
        Selected.Strings = (
          'id_empresa'#9'6'#9'C'#243'digo'#9'T'
          'int_nomefan'#9'20'#9'Empresa'#9'T'
          'qtde_entrada'#9'10'#9'Entrada'#9'T'
          'qtde_saida'#9'10'#9'Sa'#237'da'#9'T'
          'saldo_fisico'#9'10'#9'Saldo'#9'T'
          'vlr_custo_ult_compra'#9'13'#9'Vlr. '#218'lt. Compra'#9'T'#9'Custo'
          'data_ult_compra'#9'10'#9#218'lt. Compra'#9'T'#9'Custo'
          'vlr_custo_medio'#9'13'#9'Vlr. M'#233'dio'#9'T'#9'Custo')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoFes
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
      end
    end
  end
  object dsoIteCoj: TwwDataSource
    AutoEdit = False
    DataSet = cdsIteCoj
    Left = 536
    Top = 111
  end
  object dsoFes: TwwDataSource
    DataSet = BUS_CD_M_FES
    Left = 544
    Top = 255
  end
  object BUS_CD_M_FES: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'EST_DP_M_FES'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = BUS_CD_M_FESBeforeOpen
    Left = 440
    Top = 247
    object BUS_CD_M_FESint_nomeemp: TWideStringField
      FieldName = 'int_nomeemp'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_FESid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_M_FESid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_M_FESdata_ult_movimento: TDateField
      FieldName = 'data_ult_movimento'
    end
    object BUS_CD_M_FESdata_ult_inventario: TDateField
      FieldName = 'data_ult_inventario'
    end
    object BUS_CD_M_FESqtde_entrada: TFloatField
      FieldName = 'qtde_entrada'
    end
    object BUS_CD_M_FESqtde_saida: TFloatField
      FieldName = 'qtde_saida'
    end
    object BUS_CD_M_FESsaldo_fisico: TFloatField
      FieldName = 'saldo_fisico'
    end
    object BUS_CD_M_FESqtde_ped_compra: TFloatField
      FieldName = 'qtde_ped_compra'
    end
    object BUS_CD_M_FESqtde_ped_venda: TFloatField
      FieldName = 'qtde_ped_venda'
    end
    object BUS_CD_M_FESvlr_custo_medio: TFMTBCDField
      FieldName = 'vlr_custo_medio'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_FESvlr_custo_ult_compra: TFMTBCDField
      FieldName = 'vlr_custo_ult_compra'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_FESid_cor: TIntegerField
      FieldName = 'id_cor'
    end
    object BUS_CD_M_FESid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
    end
    object BUS_CD_M_FESint_nomecor: TWideStringField
      FieldName = 'int_nomecor'
      ProviderFlags = []
      Size = 40
    end
    object BUS_CD_M_FESint_nometam: TWideStringField
      FieldName = 'int_nometam'
      ProviderFlags = []
      Size = 40
    end
    object BUS_CD_M_FEScod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_M_FESrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_M_FESint_nomefan: TWideStringField
      FieldName = 'int_nomefan'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_FESint_sld_disponivel: TFMTBCDField
      FieldName = 'int_sld_disponivel'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_FESdata_ult_compra: TDateField
      FieldName = 'data_ult_compra'
    end
  end
  object cdsIteCoj: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 103
    object cdsIteCojID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
    end
    object cdsIteCojDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsIteCojUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object cdsIteCojQTDE_TEMPO: TStringField
      FieldName = 'QTDE_TEMPO'
      Size = 6
    end
    object cdsIteCojCOD_ITE_HRQ: TStringField
      FieldName = 'COD_ITE_HRQ'
      Size = 100
    end
    object cdsIteCojNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsIteCojQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object cdsIteCojSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
  end
end
