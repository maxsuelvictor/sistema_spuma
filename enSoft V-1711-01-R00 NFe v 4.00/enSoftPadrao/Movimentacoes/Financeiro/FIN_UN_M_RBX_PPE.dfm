object FIN_FM_M_RBX_PPE: TFIN_FM_M_RBX_PPE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pedidos prestado conta na baixa'
  ClientHeight = 206
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grd: TwwDBGrid
    Left = 0
    Top = 0
    Width = 591
    Height = 206
    Selected.Strings = (
      'id_pedido'#9'10'#9'Pedido'
      'int_id_cliente'#9'10'#9'C'#243'digo'
      'int_nomecli'#9'45'#9'Cliente'
      'vlr_desc_pos_fat'#9'24'#9'Desconto p'#243's faturamento')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsRbxPpe
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
  object dsRbxPpe: TDataSource
    DataSet = dmGeral.FIN_CD_M_RBX_PPE
    Left = 400
    Top = 160
  end
end
