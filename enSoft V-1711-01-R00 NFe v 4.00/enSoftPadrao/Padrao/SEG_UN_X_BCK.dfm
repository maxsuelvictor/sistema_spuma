object SEG_FM_X_BCK: TSEG_FM_X_BCK
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Seguran'#231'a'
  ClientHeight = 379
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TJvPanel
    Tag = 1
    Left = 0
    Top = 0
    Width = 823
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object pnlCima: TJvPanel
      Tag = 1
      Left = 0
      Top = 0
      Width = 823
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblCodificacaoLMestre: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 4
        Width = 818
        Height = 25
        Margins.Left = 0
        Margins.Top = 4
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
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
        ExplicitWidth = 1145
      end
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 823
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Backup de dados'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ExplicitTop = -4
        ExplicitWidth = 1200
      end
      object pnlBaixo: TPanel
        Left = 0
        Top = 29
        Width = 823
        Height = 0
        Align = alTop
        BevelOuter = bvNone
        Color = 3355443
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 30
    Width = 823
    Height = 349
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      823
      349)
    object pnlDados: TPanel
      Left = 10
      Top = 6
      Width = 655
      Height = 275
      Anchors = []
      BevelOuter = bvNone
      TabOrder = 0
      object lblSalvar: TLabel
        Left = 41
        Top = 103
        Width = 51
        Height = 13
        Caption = 'Salvar em:'
      end
      object lblNomeArq: TLabel
        Left = 13
        Top = 127
        Width = 79
        Height = 13
        Caption = 'Arquivo a gerar:'
      end
      object gbLocalBanco: TGroupBox
        Left = 1
        Top = 1
        Width = 645
        Height = 93
        Caption = 'Local do Banco'
        TabOrder = 0
        object lblIP: TLabel
          Left = 77
          Top = 32
          Width = 14
          Height = 13
          Caption = 'IP:'
        end
        object lblPorta: TLabel
          Left = 61
          Top = 55
          Width = 30
          Height = 13
          Caption = 'Porta:'
        end
        object edtIP: TEdit
          Left = 97
          Top = 28
          Width = 185
          Height = 21
          TabStop = False
          Color = 14342874
          ReadOnly = True
          TabOrder = 0
        end
        object edtPorta: TEdit
          Left = 97
          Top = 52
          Width = 93
          Height = 21
          TabStop = False
          Color = 14342874
          ReadOnly = True
          TabOrder = 1
        end
      end
      object edtDiretorio: TEdit
        Left = 96
        Top = 100
        Width = 517
        Height = 21
        TabOrder = 1
      end
      object btNavegar: TButton
        Left = 620
        Top = 100
        Width = 26
        Height = 21
        Caption = '...'
        TabOrder = 2
        OnClick = btNavegarClick
      end
      object btSair: TButton
        Left = 110
        Top = 230
        Width = 97
        Height = 30
        Caption = 'Sair'
        TabOrder = 5
        OnClick = btSairClick
      end
      object btBackup: TButton
        Left = 7
        Top = 230
        Width = 97
        Height = 30
        Caption = 'Iniciar Backup'
        TabOrder = 4
        OnClick = btBackupClick
      end
      object edtArquivo: TEdit
        Left = 96
        Top = 124
        Width = 169
        Height = 21
        TabStop = False
        Color = 14342874
        ReadOnly = True
        TabOrder = 3
      end
      object Memo1: TMemo
        Left = 96
        Top = 152
        Width = 550
        Height = 57
        TabStop = False
        ReadOnly = True
        TabOrder = 6
      end
    end
  end
end
