object FAT_FM_M_PED_BIP: TFAT_FM_M_PED_BIP
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Consulta de produto personalizado'
  ClientHeight = 332
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1022
    Height = 16
    Align = alTop
    AutoSize = False
    Caption = 
      '<Se desejar voc'#234' poder'#225' ondenar os registros clicando no t'#237'tulo ' +
      'da coluna>'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitTop = 299
    ExplicitWidth = 951
  end
  object wwDBGrid3: TwwDBGrid
    Left = 0
    Top = 22
    Width = 1028
    Height = 307
    Selected.Strings = (
      'id_etq'#9'8'#9'Controle'
      'int_num_lote_opr'#9'7'#9'O.P'#9'F'
      'cod_barra'#9'11'#9'C'#243'digo barra'
      'id_item'#9'8'#9'Item'#9'F'
      'int_nomeite_pers'#9'28'#9'Descri'#231#227'o'#9'F'
      'int_und_venda'#9'3'#9'Und'#9'F'
      'int_nomecor'#9'14'#9'Cor'
      'dta_criacao'#9'10'#9'Data'#9'F'#9'Criada em'
      'hor_criacao'#9'7'#9'Hora'#9'F'#9'Criada em'
      'dta_impressa'#9'10'#9'Impressa em'#9'F'
      'id_epp'#9'9'#9'Controle'#9'F'#9'Entrada em'
      'dta_entrada_est'#9'10'#9'Data'#9'F'#9'Entrada em'
      'hor_entrada_est'#9'5'#9'Hora'#9'F'#9'Entrada em'
      'dta_saida'#9'10'#9'Data'#9'F'#9'Saida em'
      'id_ors_saida'#9'11'#9'C'#243'd. O.F'#9'F'#9'Saida em')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dso
    Font.Charset = ANSI_CHARSET
    Font.Color = clBtnText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBtnText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
    UseTFields = False
    OnDblClick = wwDBGrid3DblClick
    OnKeyDown = wwDBGrid3KeyDown
    ExplicitWidth = 989
  end
  object dso: TwwDataSource
    DataSet = PCP_CD_M_ETQ
    Left = 483
    Top = 195
  end
  object PCP_CD_M_ETQ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_M_ETQ'
    RemoteServer = dmGeral.pcConecao
    Left = 589
    Top = 196
  end
end
