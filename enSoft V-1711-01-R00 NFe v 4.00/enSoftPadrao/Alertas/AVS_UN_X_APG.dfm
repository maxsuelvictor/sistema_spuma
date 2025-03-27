object AVS_FM_X_APG: TAVS_FM_X_APG
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Alerta'
  ClientHeight = 144
  ClientWidth = 340
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 340
    Height = 31
    Align = alTop
    Caption = 'Agendamento de Pagamento'
    Color = 2565927
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 31
    Width = 340
    Height = 113
    Selected.Strings = (
      'id_apg'#9'5'#9'C'#243'digo'#9#9
      'id_obra'#9'5'#9'Obra'#9#9
      'dia'#9'3'#9'Dia'#9#9
      'historico'#9'24'#9'Hist'#243'rico'#9'F'#9
      'vlr_previsto'#9'8'#9'Vlr.Prev'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsoAPG
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
  end
  object dsoAPG: TDataSource
    DataSet = dmGeral.BUS_CD_M_APG
    Left = 17
    Top = 34
  end
end
