object AVS_FM_X_PED: TAVS_FM_X_PED
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Alerta'
  ClientHeight = 172
  ClientWidth = 535
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
  object lblOrde: TLabel
    Left = 2
    Top = 38
    Width = 60
    Height = 13
    Caption = 'Ordena'#231#227'o :'
  end
  object wwDBGrid2: TwwDBGrid
    Left = 0
    Top = 62
    Width = 535
    Height = 110
    Selected.Strings = (
      'int_nomeate'#9'10'#9'Representante'#9#9
      'id_pedido'#9'7'#9'Pedido'#9#9
      'int_nomeres'#9'8'#9'Resp.'#9#9
      'dta_pedido'#9'10'#9'Data'#9#9
      'dta_prev_entrega'#9'10'#9'Prev. Entrega'#9#9
      'id_cliente'#9'5'#9'C'#243'd.Cli'#9#9
      'int_nomecli'#9'10'#9'Nome'#9#9
      'int_nomecid'#9'10'#9'Cidade'#9#9
      'int_nomeest'#9'2'#9'UF'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alBottom
    DataSource = dsoPedido
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
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 535
    Height = 31
    Align = alTop
    Caption = 'Pedidos de venda com prazo de entrega expirado'
    Color = 2565927
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object cbbOrde: TComboBox
    Left = 71
    Top = 35
    Width = 218
    Height = 21
    Style = csDropDownList
    ItemIndex = 1
    TabOrder = 2
    Text = 'Codigo do pedido do maior para o menor'
    OnChange = cbbOrdeChange
    OnExit = cbbOrdeExit
    Items.Strings = (
      'Codigo do pedido do menor para o maior'
      'Codigo do pedido do maior para o menor'
      'Por Data do Pedido')
  end
  object dsoPedido: TDataSource
    DataSet = dmGeral.BUS_CD_M_PED2
    Left = 35
    Top = 78
  end
end
