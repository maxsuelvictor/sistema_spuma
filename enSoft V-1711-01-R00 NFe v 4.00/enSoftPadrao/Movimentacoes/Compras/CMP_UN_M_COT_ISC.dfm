object CMP_FM_M_COT_ISC: TCMP_FM_M_COT_ISC
  Left = 0
  Top = 0
  Caption = 'CMP_FM_M_COT_ISC'
  ClientHeight = 470
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 800
    Height = 33
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 4
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Importa'#231#227'o de Solicita'#231#227'o de Compras'
    Color = 3355443
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitWidth = 801
  end
  object lblCodificacaoLMestre: TLabel
    AlignWithMargins = True
    Left = 603
    Top = 8
    Width = 193
    Height = 18
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 0
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
    Transparent = False
  end
  object pnlDireita: TPanel
    Left = 0
    Top = 37
    Width = 800
    Height = 433
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 801
    ExplicitHeight = 427
    object GroupBox1: TGroupBox
      Left = 6
      Top = 8
      Width = 785
      Height = 372
      TabOrder = 0
      object Label1: TLabel
        Left = 313
        Top = 175
        Width = 163
        Height = 13
        Caption = 'Itens da Solicita'#231#227'o de Compras'
      end
      object Label2: TLabel
        Left = 335
        Top = 7
        Width = 119
        Height = 13
        Caption = 'Solicita'#231#227'o de Compras'
      end
      object grdSol: TwwDBGrid
        AlignWithMargins = True
        Left = 9
        Top = 23
        Width = 770
        Height = 142
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ControlType.Strings = (
          'selecao;CheckBox;True;False')
        Selected.Strings = (
          'selecao'#9'3'#9#9'F'
          'id_solicitacao'#9'15'#9'Nro da solicita'#231#227'o'#9'F'
          'dta_solicitacao'#9'10'#9'Data'#9'F'
          'id_funcionario'#9'10'#9'C'#243'digo'#9'F'
          'int_nomefun'#9'48'#9'Respons'#225'vel'#9'F'
          'motivo'#9'59'#9'Motivo da compra'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        OnCellChanged = grdSolCellChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsCmpSol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
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
      object grdSolItens: TwwDBGrid
        AlignWithMargins = True
        Left = 9
        Top = 191
        Width = 770
        Height = 174
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        Selected.Strings = (
          'id_item'#9'15'#9'C'#243'digo'#9'F'
          'int_nomeite'#9'49'#9'Descri'#231#227'o'#9'F'
          'int_undcom'#9'4'#9'Und'#9'F'
          'int_nomecor'#9'23'#9'Cor'#9'F'
          'int_nometam'#9'12'#9'Tamanho'#9'F'
          'qtde'#9'9'#9'Qtde'#9'F'
          'obs'#9'28'#9'Observa'#231#227'o'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsCmpSolItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
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
    end
    object btnImporta: TButton
      Left = 6
      Top = 386
      Width = 80
      Height = 29
      Caption = '&Importar'
      TabOrder = 1
      OnClick = btnImportaClick
    end
    object btnSair: TButton
      Left = 92
      Top = 386
      Width = 80
      Height = 29
      Caption = '&Sair'
      TabOrder = 2
      OnClick = btnSairClick
    end
  end
  object dsCmpSol: TDataSource
    DataSet = dmGeral.BUS_CD_M_SOL
    Left = 728
    Top = 93
  end
  object dsCmpSolItens: TDataSource
    DataSet = dmGeral.BUS_CD_M_SOL_ITE
    Left = 728
    Top = 141
  end
end
