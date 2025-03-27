object AVS_FM_X_COB: TAVS_FM_X_COB
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Alerta'
  ClientHeight = 144
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 31
    Width = 335
    Height = 113
    Selected.Strings = (
      'id_cliente'#9'5'#9'Cliente'
      'int_nomecli'#9'20'#9'Nome'
      'dta_acordo'#9'10'#9'Data'
      'vlr_negociado'#9'12'#9'Valor'
      'int_telfix'#9'12'#9'Tel. fixo'
      'int_telmov'#9'13'#9'Tel. movel'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsoCob
    KeyOptions = [dgAllowDelete]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 335
    Height = 31
    Align = alTop
    Caption = 'Acordos agendados'
    Color = 2565927
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object dsoCob: TDataSource
    DataSet = dmGeral.BUS_CD_M_COB
    Left = 28
    Top = 34
  end
end
