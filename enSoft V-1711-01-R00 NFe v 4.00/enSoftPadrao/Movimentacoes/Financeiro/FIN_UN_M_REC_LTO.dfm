object FIN_FM_M_REC_LTO: TFIN_FM_M_REC_LTO
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 217
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblCliente: TLabel
    Left = 47
    Top = 55
    Width = 40
    Height = 13
    Caption = 'Cliente :'
  end
  object txtClienteNome: TDBText
    Left = 185
    Top = 52
    Width = 296
    Height = 20
    Color = 14342874
    DataField = 'int_nomecli'
    DataSource = dso
    ParentColor = False
    Transparent = False
  end
  object lblNTitulo: TLabel
    Left = 39
    Top = 83
    Width = 48
    Height = 13
    Caption = 'N'#186' T'#237'tulo :'
  end
  object lblPrevBaixa: TLabel
    Left = 195
    Top = 81
    Width = 60
    Height = 13
    Caption = 'Prev. Baixa :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblLocalTitulo: TLabel
    Left = 12
    Top = 145
    Width = 75
    Height = 13
    Caption = 'Local do T'#237'tulo :'
  end
  object lblVlrSaldo: TLabel
    Left = 32
    Top = 111
    Width = 52
    Height = 13
    Caption = 'Vlr. Saldo :'
  end
  object pnlCima: TJvPanel
    Tag = 1
    Left = 0
    Top = 0
    Width = 494
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 6
    ExplicitLeft = -386
    ExplicitWidth = 1123
    object lblCodificacaoLMestre: TLabel
      AlignWithMargins = True
      Left = 0
      Top = 4
      Width = 489
      Height = 25
      Margins.Left = 0
      Margins.Top = 4
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alTop
      Alignment = taRightJustify
      AutoSize = False
      Color = 3355443
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 1118
    end
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 494
      Height = 30
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      Alignment = taCenter
      AutoSize = False
      Caption = 'Alterar o Local do T'#237'tulo'
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
      ExplicitWidth = 1123
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 29
      Width = 494
      Height = 0
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 1123
    end
  end
  object txtClientes: TJvDBComboEdit
    Left = 93
    Top = 52
    Width = 90
    Height = 21
    ClickKey = 114
    Color = 14342874
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
    ReadOnly = True
    TabOrder = 0
  end
  object txtNTitulo: TDBMemo
    Left = 93
    Top = 80
    Width = 90
    Height = 21
    Color = 14342874
    DataField = 'num_parcela'
    DataSource = dso
    ReadOnly = True
    TabOrder = 1
    WordWrap = False
  end
  object dpkPrevBaixa: TJvDBDateEdit
    Left = 261
    Top = 78
    Width = 90
    Height = 21
    DataField = 'dta_vencimento'
    DataSource = dso
    ReadOnly = True
    Color = 14342874
    ShowNullDate = False
    TabOrder = 2
  end
  object cbbLocalTitulo: TwwDBLookupCombo
    Left = 93
    Top = 142
    Width = 388
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
    DataField = 'id_local_titulo'
    DataSource = dso
    LookupTable = dmGeral.BUS_CD_C_LTO
    LookupField = 'id_local_titulo'
    Style = csDropDownList
    Color = clWhite
    TabOrder = 4
    AutoDropDown = False
    ShowButton = True
    UseTFields = False
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object txtVlrSaldo: TDBMemo
    Tag = 1
    Left = 93
    Top = 107
    Width = 90
    Height = 21
    TabStop = False
    Alignment = taRightJustify
    Color = 14342874
    DataField = 'vlr_saldo'
    DataSource = dso
    ReadOnly = True
    TabOrder = 3
    WordWrap = False
  end
  object BitBtn1: TBitBtn
    Left = 406
    Top = 182
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object dso: TwwDataSource
    DataSet = FIN_CD_M_REC
    Left = 285
    Top = 171
  end
  object FIN_CD_M_REC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FIN_DP_M_REC'
    RemoteServer = dmGeral.pcConecao
    Left = 384
    Top = 88
    object FIN_CD_M_RECid_titulo: TIntegerField
      FieldName = 'id_titulo'
    end
    object FIN_CD_M_RECid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object FIN_CD_M_RECnum_parcela: TWideStringField
      FieldName = 'num_parcela'
    end
    object FIN_CD_M_RECvlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Precision = 18
      Size = 4
    end
    object FIN_CD_M_RECdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
    end
    object FIN_CD_M_RECvlr_saldo: TFMTBCDField
      FieldName = 'vlr_saldo'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object FIN_CD_M_RECid_local_titulo: TIntegerField
      FieldName = 'id_local_titulo'
    end
    object FIN_CD_M_RECint_nomecli: TWideStringField
      FieldName = 'int_nomecli'
      Size = 50
    end
    object FIN_CD_M_RECint_nomelto: TWideStringField
      FieldName = 'int_nomelto'
      Size = 30
    end
  end
end
