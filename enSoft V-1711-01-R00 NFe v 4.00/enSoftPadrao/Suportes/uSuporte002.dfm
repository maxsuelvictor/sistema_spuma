object frmSuporte002: TfrmSuporte002
  Left = 0
  Top = 0
  Caption = 'frmSuporte002'
  ClientHeight = 446
  ClientWidth = 893
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 243
    Top = 89
    Width = 409
    Height = 23
    Caption = 'Atualizar o campo VLR_CUSTO de nota de venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbGrid: TwwDBGrid
    AlignWithMargins = True
    Left = 7
    Top = 115
    Width = 881
    Height = 287
    Hint = 'Clique com o bot'#227'o direito para outras tarefas...'
    Margins.Left = 2
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ControlType.Strings = (
      'int_nomeemi;RichEdit;;F'
      'int_nfeecf;RichEdit;;F'
      'int_nometme;RichEdit;;F'
      'int_nomeope;RichEdit;;F'
      'int_nomeem;RichEdit;;F'
      'prevenda;CheckBox;True;False')
    Selected.Strings = (
      'id_fiscal'#9'12'#9'Controle'#9'F'
      'vlr_custo'#9'13'#9'Vlr Custo'#9'F'
      'vlr_liquido'#9'14'#9'Vlr Total'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = BUS_DS_M_NFE_ITE_INT
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
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
  object btnFaturar: TButton
    Left = 725
    Top = 405
    Width = 81
    Height = 41
    Caption = 'Executar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnSair: TButton
    Left = 807
    Top = 405
    Width = 81
    Height = 41
    Caption = 'Sair'
    TabOrder = 2
  end
  object BUS_DS_M_NFE_ITE_INT: TwwDataSource
    DataSet = BUS_CD_M_NFE_ITE_INT
    Left = 658
    Top = 8
  end
  object BUS_CD_M_NFE_ITE_INT: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_NFE_ITE_INT'
    RemoteServer = dmGeral.pcConecao
    Left = 800
    Top = 8
  end
end
