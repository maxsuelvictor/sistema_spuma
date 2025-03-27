object AVS_FM_X_ANV: TAVS_FM_X_ANV
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 212
  ClientWidth = 536
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
    Width = 536
    Height = 31
    Align = alTop
    Caption = 'Aniversariantes do m'#234's'
    Color = 2565927
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 335
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 31
    Width = 536
    Height = 181
    Selected.Strings = (
      'id_cliente'#9'10'#9'Cliente'
      'nome'#9'32'#9'Nome'#9'F'
      'dta_nascimento'#9'10'#9'Data Nasc.'
      'tel_fixo'#9'14'#9'Tel. Fixo'
      'tel_movel'#9'14'#9'Tel. Movel')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsoANV
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
  object dsoANV: TDataSource
    DataSet = dmGeral.BUS_CD_C_ANV
    Left = 140
    Top = 98
  end
end
