object FAT_FM_M_CXA_NFE_CAN: TFAT_FM_M_CXA_NFE_CAN
  Left = 0
  Top = 0
  ClientHeight = 459
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 879
    Height = 30
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 5
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Cancelar NFe do dia anterior'
    Color = 3355443
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitLeft = -24
    ExplicitTop = 104
    ExplicitWidth = 445
  end
  object Label5: TLabel
    Left = 276
    Top = 310
    Width = 44
    Height = 13
    Caption = 'Faturada'
  end
  object Label6: TLabel
    Left = 359
    Top = 310
    Width = 50
    Height = 13
    Caption = 'Cancelada'
  end
  object lblAberto: TLabel
    Left = 25
    Top = 310
    Width = 46
    Height = 13
    Caption = 'Pendente'
  end
  object Label7: TLabel
    Left = 108
    Top = 310
    Width = 45
    Height = 13
    Caption = 'Inutizada'
  end
  object Label8: TLabel
    Left = 193
    Top = 310
    Width = 49
    Height = 13
    Caption = 'Denegada'
  end
  object Label9: TLabel
    Left = 445
    Top = 310
    Width = 99
    Height = 13
    Caption = 'Pr'#233'-venda pendente'
  end
  object lblChave: TLabel
    Left = 14
    Top = 346
    Width = 38
    Height = 13
    Caption = 'Chave :'
  end
  object lblProtocolo: TLabel
    Left = 463
    Top = 346
    Width = 52
    Height = 13
    Caption = 'Protocolo :'
  end
  object lblPedido: TLabel
    Left = 676
    Top = 346
    Width = 39
    Height = 13
    Caption = 'Pedido :'
  end
  object Label1: TLabel
    Left = 8
    Top = 374
    Width = 44
    Height = 13
    Caption = 'N'#250'mero :'
  end
  object btnNfc: TBitBtn
    Left = 8
    Top = 406
    Width = 130
    Height = 22
    Caption = 'Cancelar nfe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = btnNfcClick
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 434
    Width = 130
    Height = 22
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = BitBtn1Click
  end
  object dbGrid: TwwDBGrid
    AlignWithMargins = True
    Left = 0
    Top = 30
    Width = 880
    Height = 275
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
      'legenda'#9'2'#9#9'F'
      'id_fiscal'#9'10'#9'Controle'#9'F'
      'numero'#9'10'#9'N'#250'mero'#9'F'
      'id_cfo'#9'5'#9'Cfop'#9'F'
      'int_nfeecf'#9'8'#9'Tipo'#9'F'
      'int_nometme'#9'16'#9'Tipo de Estoque'#9'F'
      'int_nomecpg'#9'15'#9'Condi'#231#227'o'#9'F'
      'dta_emissao'#9'10'#9'Emiss'#227'o'#9'F'
      'serie'#9'6'#9'S'#233'rie'#9'F'
      'modelo'#9'9'#9'Modelo'#9'F'
      'int_nomeemi'#9'34'#9'Emitente'#9'F'
      'vlr_liquido'#9'15'#9'Vlr Total'#9'F'
      'prevenda'#9'5'#9'PV'#9'F'
      'ecf_prevenda'#9'10'#9'Pr'#233'-venda'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dso
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ParentShowHint = False
    PopupMenu = pmApoio
    ShowHint = True
    TabOrder = 6
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    OnCalcCellColors = dbGridCalcCellColors
  end
  object Panel4: TPanel
    Left = 256
    Top = 309
    Width = 15
    Height = 15
    BevelOuter = bvNone
    Color = clGreen
    ParentBackground = False
    TabOrder = 7
  end
  object Panel5: TPanel
    Left = 340
    Top = 309
    Width = 15
    Height = 15
    BevelOuter = bvNone
    Color = clRed
    ParentBackground = False
    TabOrder = 8
  end
  object pnlAberto: TPanel
    Left = 6
    Top = 309
    Width = 15
    Height = 15
    BevelOuter = bvNone
    Color = clBlue
    ParentBackground = False
    TabOrder = 9
  end
  object Panel6: TPanel
    Left = 89
    Top = 309
    Width = 15
    Height = 15
    BevelOuter = bvNone
    Color = clMaroon
    ParentBackground = False
    TabOrder = 10
  end
  object Panel7: TPanel
    Left = 173
    Top = 309
    Width = 15
    Height = 15
    BevelOuter = bvNone
    Color = clPurple
    ParentBackground = False
    TabOrder = 11
  end
  object Panel1: TPanel
    Left = 426
    Top = 309
    Width = 15
    Height = 15
    BevelOuter = bvNone
    Color = 11889407
    ParentBackground = False
    TabOrder = 12
  end
  object btnVerificaServico: TButton
    Left = 136
    Top = 411
    Width = 130
    Height = 22
    Caption = 'Verifica Servi'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnVerificaServicoClick
  end
  object btnConsultaNfe: TButton
    Left = 4
    Top = 434
    Width = 130
    Height = 22
    Caption = 'Consultar NFe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnConsultaNfeClick
  end
  object txtChave: TDBEdit
    Left = 57
    Top = 342
    Width = 399
    Height = 21
    TabStop = False
    Color = cl3DLight
    DataField = 'nfe_chave'
    DataSource = dso
    ReadOnly = True
    TabOrder = 13
  end
  object txtProtocolo: TDBEdit
    Left = 513
    Top = 342
    Width = 154
    Height = 21
    TabStop = False
    Color = cl3DLight
    DataField = 'nfe_protocolo'
    DataSource = dso
    ReadOnly = True
    TabOrder = 14
  end
  object txtPedido: TDBEdit
    Left = 713
    Top = 342
    Width = 154
    Height = 21
    TabStop = False
    Color = cl3DLight
    DataField = 'id_pedido_venda'
    DataSource = dso
    ReadOnly = True
    TabOrder = 15
  end
  object Button1: TButton
    Left = 137
    Top = 370
    Width = 129
    Height = 22
    Caption = 'Buscar nota fiscal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object txtNumero: TEdit
    Left = 57
    Top = 371
    Width = 78
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object dso: TDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_CXA
    Left = 296
    Top = 240
  end
  object pmApoio: TPopupMenu
    Left = 779
    Top = 243
    object Cancelarnotafiscalsomentenosistema1: TMenuItem
      Caption = 'Cancelar nota fiscal somente no sistema'
      OnClick = Cancelarnotafiscalsomentenosistema1Click
    end
    object CancelarnotafiscalsomentenaSEFAZ1: TMenuItem
      Caption = 'Cancelar nota fiscal somente na SEFAZ'
      OnClick = CancelarnotafiscalsomentenaSEFAZ1Click
    end
  end
end
