object FAT_FM_M_FAT: TFAT_FM_M_FAT
  Left = 0
  Top = 0
  ClientHeight = 600
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 754
    Height = 557
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1200
    object pnlDireita: TPanel
      Left = 0
      Top = 0
      Width = 754
      Height = 557
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 450
      ExplicitWidth = 750
      object gbxOpcoes: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 455
        Width = 748
        Height = 100
        Margins.Bottom = 2
        Align = alBottom
        Caption = 'Op'#231#245'es'
        TabOrder = 0
        ExplicitWidth = 744
        object btnVerificarServico: TButton
          Left = 3
          Top = 14
          Width = 120
          Height = 25
          Caption = 'Verificar Servi'#231'o'
          TabOrder = 0
        end
        object btnConsultaCadastro: TButton
          Left = 3
          Top = 41
          Width = 120
          Height = 25
          Caption = 'Consulta Cadastro'
          TabOrder = 6
        end
        object btnGeraBoleto: TButton
          Left = 3
          Top = 69
          Width = 120
          Height = 25
          Caption = 'Gera Boleto'
          TabOrder = 8
        end
        object btnEnviarSefaz: TButton
          Left = 126
          Top = 14
          Width = 120
          Height = 25
          Caption = 'Enviar Sefaz'
          TabOrder = 1
        end
        object btnCartaCorrecao: TButton
          Left = 126
          Top = 41
          Width = 120
          Height = 25
          Caption = 'Carta Corre'#231#227'o'
          TabOrder = 7
        end
        object btnImprimeTitulo: TButton
          Left = 126
          Top = 67
          Width = 120
          Height = 25
          Caption = 'Imprime T'#237'tulo'
          TabOrder = 9
        end
        object btnInutilizar: TButton
          Left = 249
          Top = 14
          Width = 120
          Height = 25
          Caption = 'Inutilizar'
          TabOrder = 2
        end
        object btnGeraNotaCupomFiscal: TButton
          Left = 372
          Top = 67
          Width = 366
          Height = 25
          Caption = 'Gera Nota Fiscal de Cupom Fiscal'
          TabOrder = 11
        end
        object btnImprimeTermo: TButton
          Left = 249
          Top = 67
          Width = 120
          Height = 25
          Caption = 'Imprime Termo'
          TabOrder = 10
        end
        object btnImprimeNfe: TButton
          Left = 372
          Top = 14
          Width = 120
          Height = 25
          Caption = 'Imprime NFe'
          TabOrder = 3
        end
        object btnConsultaNfe: TButton
          Left = 495
          Top = 14
          Width = 120
          Height = 25
          Caption = 'Consulta NFe'
          TabOrder = 4
        end
        object btnCancelaNfe: TButton
          Left = 618
          Top = 14
          Width = 120
          Height = 25
          Caption = 'Cancela NFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object btnVoltar: TButton
          Left = 249
          Top = 41
          Width = 53
          Height = 25
          Caption = 'Voltar'
          TabOrder = 12
        end
        object btnGerarNota: TButton
          Left = 308
          Top = 41
          Width = 120
          Height = 25
          Caption = 'Gerar Nota'
          TabOrder = 13
        end
        object btnGerarCupom: TButton
          Left = 434
          Top = 41
          Width = 120
          Height = 25
          Caption = 'Gerar Cupom'
          TabOrder = 14
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 754
        Height = 452
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 750
        object gbxNotaFiscalCupom: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 748
          Height = 140
          Align = alTop
          Caption = 'Nota Fiscal / Cupom'
          TabOrder = 0
          ExplicitWidth = 744
          object lblIdentificacao: TLabel
            Left = 4
            Top = 119
            Width = 66
            Height = 13
            Caption = 'Identifica'#231#227'o:'
          end
          object lblNPedido: TLabel
            Left = 257
            Top = 119
            Width = 51
            Height = 13
            Caption = 'N'#186' Pedido:'
          end
          object lblNProtocolo: TLabel
            Left = 495
            Top = 119
            Width = 64
            Height = 13
            Caption = 'N'#186' Protocolo:'
          end
          object lblChave: TLabel
            Left = 4
            Top = 96
            Width = 35
            Height = 13
            Caption = 'Chave:'
          end
          object dgrdNotaFiscalCupom: TJvDBGrid
            AlignWithMargins = True
            Left = 4
            Top = 17
            Width = 740
            Height = 74
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alTop
            Color = clWhite
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
          end
          object txtIdentificacao: TDBEdit
            Left = 76
            Top = 116
            Width = 175
            Height = 21
            Color = cl3DLight
            Enabled = False
            TabOrder = 2
          end
          object txtNPedido: TDBEdit
            Left = 314
            Top = 116
            Width = 175
            Height = 21
            Color = cl3DLight
            Enabled = False
            TabOrder = 3
          end
          object txtNProtocolo: TDBEdit
            Left = 565
            Top = 116
            Width = 175
            Height = 21
            Color = cl3DLight
            Enabled = False
            TabOrder = 4
          end
          object txtChave: TDBEdit
            Left = 76
            Top = 93
            Width = 664
            Height = 21
            Color = cl3DLight
            Enabled = False
            TabOrder = 1
          end
        end
        object gbxTitulosNotaFiscalCupom: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 309
          Width = 748
          Height = 140
          Align = alBottom
          Caption = 'Saldos'
          TabOrder = 2
          ExplicitWidth = 744
          object dgrdTitulosNotaFiscalCupom: TJvDBGrid
            AlignWithMargins = True
            Left = 4
            Top = 17
            Width = 740
            Height = 119
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            Color = clWhite
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
          end
        end
        object gbxItensNotaFiscalCupom: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 149
          Width = 748
          Height = 154
          Align = alClient
          Caption = 'Itens de Nota Fiscal / Cupom'
          TabOrder = 1
          ExplicitWidth = 744
          object dgrdItensNotaFiscalCupom: TJvDBGrid
            AlignWithMargins = True
            Left = 4
            Top = 17
            Width = 740
            Height = 133
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            Color = clWhite
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
          end
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    ExplicitWidth = 1200
    object pnlCima: TPanel
      Left = 0
      Top = 0
      Width = 754
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 1200
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = -5
        Width = 754
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Faturamento'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -10
        ExplicitWidth = 1200
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 25
      Width = 754
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 1200
    end
  end
end
