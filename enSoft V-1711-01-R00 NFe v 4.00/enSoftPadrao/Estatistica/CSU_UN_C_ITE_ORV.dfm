object CSU_FM_C_ITE_ORV: TCSU_FM_C_ITE_ORV
  Left = 0
  Top = 0
  ClientHeight = 517
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 41
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 823
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Ordem de Servi'#231'o Pendente'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 268
      ExplicitHeight = 30
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 41
    Width = 825
    Height = 476
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 468
    object pnlDados: TPanel
      Left = 15
      Top = 5
      Width = 809
      Height = 460
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object lblItem: TLabel
        Left = 18
        Top = 16
        Width = 39
        Height = 16
        Caption = 'Item :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 32
        Top = 397
        Width = 87
        Height = 13
        Caption = 'Obs. Problema :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtObs: TDBText
        Left = 125
        Top = 397
        Width = 668
        Height = 17
        DataField = 'obs_problema'
        DataSource = dso
      end
      object Label1: TLabel
        Left = 57
        Top = 365
        Width = 50
        Height = 13
        Caption = 'Em Aberto'
      end
      object Label2: TLabel
        Left = 153
        Top = 365
        Width = 72
        Height = 13
        Caption = 'Em Andamento'
      end
      object Label4: TLabel
        Left = 272
        Top = 365
        Width = 41
        Height = 13
        Caption = 'Fechada'
      end
      object Label5: TLabel
        Left = 17
        Top = 420
        Width = 102
        Height = 13
        Caption = 'Obs. Reclama'#231#227'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtObsRec: TDBText
        Left = 124
        Top = 420
        Width = 669
        Height = 17
        DataField = 'obs_reclamacao'
        DataSource = dso
      end
      object wwDBGrid1: TwwDBGrid
        Left = 16
        Top = 38
        Width = 777
        Height = 307
        Selected.Strings = (
          'id_empresa'#9'5'#9'C'#243'd. '#9#9
          'int_nomeemp'#9'18'#9'Empresa'#9'F'
          'id_ordem'#9'12'#9'N'#186' OS'#9'F'
          'dta_emissao'#9'10'#9'Emiss'#227'o'#9'F'
          'dta_entrega'#9'10'#9'Entrega'#9'F'
          'id_cliente'#9'12'#9'C'#243'd. Cliente'#9'F'
          'int_nomecli'#9'40'#9'Nome'#9'F'
          'qtde'#9'10'#9'Qtde'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dso
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
        OnCalcCellColors = wwDBGrid1CalcCellColors
      end
      object Panel1: TPanel
        Left = 35
        Top = 363
        Width = 17
        Height = 17
        Color = clBlue
        ParentBackground = False
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 131
        Top = 363
        Width = 17
        Height = 17
        Color = clBlack
        ParentBackground = False
        TabOrder = 2
      end
      object Panel3: TPanel
        Left = 250
        Top = 363
        Width = 17
        Height = 17
        Color = clOlive
        ParentBackground = False
        TabOrder = 3
      end
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_CSU_ORV_ITE
    Left = 680
    Top = 184
  end
end
