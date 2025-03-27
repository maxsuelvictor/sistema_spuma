object PCP_FM_M_OPB_IMB: TPCP_FM_M_OPB_IMB
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 271
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblPedidoVenda: TLabel
    Left = 0
    Top = 0
    Width = 640
    Height = 25
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Selecione o bloco para poder emitir a etiqueta do bloco'
    Color = 14342874
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object grdItens: TwwDBGrid
    Left = 0
    Top = 25
    Width = 640
    Height = 212
    ControlType.Strings = (
      'bloco_aprovado;CheckBox;True;False')
    Selected.Strings = (
      'id_item_bloco'#9'10'#9'C'#243'digo'#9'F'
      'int_nomeite'#9'30'#9'Item'#9'F'
      'int_nomecor'#9'15'#9'Cor'#9'F'
      'dta_emissao'#9'10'#9'Criado em'#9'F'
      'hor_emissao'#9'7'#9'Hora'#9'F'
      'num_lote'#9'10'#9'Nro do lote'#9'F'
      'bloco_aprovado'#9'5'#9'Aprovado'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = 13750737
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = PCP_FM_M_OPB.dsOpbBlo
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
    UseTFields = False
  end
  object btnImprimir: TButton
    Left = 481
    Top = 243
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = btnImprimirClick
  end
  object btnSair: TButton
    Left = 557
    Top = 243
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
  end
  object dsOpbBlo: TDataSource
    DataSet = dmGeral.PCP_CD_M_OPB_BLO
    Left = 280
    Top = 80
  end
  object PCP_FR_M_OPB_IMB: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44182.672730636570000000
    ReportOptions.LastChange = 44182.672730636570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 152
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
