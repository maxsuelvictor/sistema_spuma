object CSU_FM_M_COB: TCSU_FM_M_COB
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Movimenta'#231#227'o'
  ClientHeight = 410
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 922
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    ExplicitWidth = 742
    object pnlCima: TPanel
      Left = 0
      Top = 0
      Width = 922
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 742
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = -4
        Width = 922
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Consulta de Cobran'#231'as'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitLeft = 32
        ExplicitWidth = 803
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 25
      Width = 922
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 742
      object lblCodificacaoLMestre: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 917
        Height = 18
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Lista Mestre'
        Color = 3355443
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitLeft = 93
        ExplicitWidth = 1182
      end
    end
  end
  object pnlDireita: TPanel
    Left = 0
    Top = 43
    Width = 922
    Height = 367
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 742
    ExplicitHeight = 454
    object Label1: TLabel
      Left = 6
      Top = 225
      Width = 911
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Titulo'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object lblPagamentos: TLabel
      Left = 6
      Top = 3
      Width = 911
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cobran'#231'a'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object btnSair: TSpeedButton
      Left = 754
      Top = 319
      Width = 163
      Height = 34
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD2D2D2808080D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF1809FFFFFFFFFFFFFFFFFFFFFFFF8B8B8B9D9D9D3232323535357070
        70C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFF60DFFFFFFFFFFFFFFFFFFFFFFFF3333
        338282823232323232323232323B3B3BFFFFFFFFFFFFFFFFFFFFFFFF1C0EFFFF
        FFFFFFFFFFFFFFFFFFFF3F3F3F8686863232323232323232323F3F3FFFFFFFFF
        FFFFFFFFFFFFFFFFF60DFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F86868632323232
        3232323232404040FFFFFFFFFFFFFFFFFFFFFFFF1C0EFFFFFFFFFFFFFFFFFFFF
        FFFF3F3F3F868686323232323232323232404040FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF3E3E3E8787878686863C3C3C323232404040
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3E3E3E878787
        8686863C3C3C323232404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF3F3F3F868686323232323232323232404040FFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3F3F3F8686863232323232323232
        32404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3F3F
        3F868686323232323232323232404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFF333333828282323232323232323232353535FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF8B8B8B9E9E9E32323232
        3232404040808080FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD1D1D1797979B7B7B7EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      ParentFont = False
      OnClick = btnSairClick
    end
    object txtObs: TDBText
      Left = 93
      Top = 192
      Width = 637
      Height = 12
      DataField = 'observacao'
      DataSource = dsoCob
    end
    object lblObs: TLabel
      Left = 20
      Top = 191
      Width = 68
      Height = 13
      Caption = 'Observa'#231'oes:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dgTit: TwwDBGrid
      Left = 6
      Top = 245
      Width = 911
      Height = 47
      Selected.Strings = (
        'id_titulo'#9'15'#9'T'#237'tulo'#9'F'
        'num_parcela'#9'15'#9'Num Parcela'#9'F'
        'int_nomefpg'#9'30'#9'Forma de Pagamento'#9'F'
        'dta_vencimento'#9'12'#9'Vencimento'#9'F'
        'vlr_parcela'#9'19'#9'Vlr.Parcela'#9'F'
        'vlr_saldo'#9'19'#9'Vlr.Saldo'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alCustom
      Color = clWhite
      DataSource = dsoRec
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 1
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
    object dgCob: TwwDBGrid
      Left = 6
      Top = 20
      Width = 911
      Height = 165
      Selected.Strings = (
        'id_empresa'#9'7'#9'Empresa'#9'F'
        'int_nomefun'#9'20'#9'Respons'#225'vel'#9'F'
        'int_telfixo'#9'14'#9'Tel. Fixo'#9'F'
        'int_telmovel'#9'14'#9'Tel. M'#243'vel'#9'F'
        'dta_acordo'#9'11'#9'Data Acordo'#9'F'
        'dta_cobranca'#9'12'#9'Data Cobran'#231'a'#9'F'
        'vlr_negociado'#9'10'#9'Valor Negoc.'#9'F'
        'dias_atraso'#9'6'#9'Atraso'#9'F'
        'int_tipocontato'#9'20'#9'Tipo Contato'#9'F'
        'nome_contato'#9'22'#9'Contato'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alCustom
      Color = clWhite
      DataSource = dsoCob
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
  end
  object dsoCob: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_COB_TIT_TIT
    Left = 160
    Top = 371
  end
  object dsoRec: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_REC
    Left = 272
    Top = 363
  end
end
