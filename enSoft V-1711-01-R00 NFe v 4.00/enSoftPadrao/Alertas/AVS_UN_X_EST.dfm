object AVS_FM_X_EST: TAVS_FM_X_EST
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Alerta'
  ClientHeight = 172
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 627
    Height = 31
    Align = alTop
    Caption = 'Estoque Minimo'
    Color = 2565927
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 541
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 31
    Width = 627
    Height = 141
    Selected.Strings = (
      'id_empresa'#9'5'#9'Empresa'
      'id_item'#9'7'#9'C'#243'digo'
      'descricao'#9'50'#9'Item'#9'F'
      'est_minimo'#9'10'#9'Est. minimo'
      'saldo_fisico'#9'10'#9'Saldo Fisico'
      'sld_disponivel'#9'10'#9'Saldo Disp.')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsoEST
    KeyOptions = [dgAllowDelete]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    ExplicitWidth = 615
  end
  object dsoEST: TDataSource
    DataSet = dmGeral.BUS_CD_M_ITE_EST_MIN
    Left = 230
    Top = 122
  end
end
