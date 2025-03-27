object FAT_FM_M_CXA: TFAT_FM_M_CXA
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  ClientHeight = 558
  ClientWidth = 1005
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1005
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object pnlCima: TPanel
      Left = 0
      Top = 0
      Width = 1005
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = -5
        Width = 1005
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Controle de Caixa'
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
      Width = 1005
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 1005
    Height = 515
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlCentral: TPanel
      Left = 0
      Top = 6
      Width = 1150
      Height = 539
      BevelOuter = bvNone
      TabOrder = 0
      object pnlEsquerda: TPanel
        Left = 0
        Top = 0
        Width = 167
        Height = 539
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 4
          Top = 20
          Width = 160
          Height = 480
          TabOrder = 0
          object lblInformacoes: TLabel
            Left = 6
            Top = 338
            Width = 143
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Informa'#231#245'es'
            Color = 14342874
            ParentColor = False
            Transparent = False
          end
          object lblUsuario: TLabel
            Left = 6
            Top = 357
            Width = 39
            Height = 13
            Caption = 'Usu'#225'rio '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblDataCaixa: TLabel
            Left = 6
            Top = 398
            Width = 71
            Height = 13
            Caption = 'Data do Caixa '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblECFAtual: TLabel
            Left = 6
            Top = 441
            Width = 50
            Height = 13
            Caption = 'ECF Atual '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object pnlBotoes: TPanel
            Left = 2
            Top = 15
            Width = 156
            Height = 258
            Align = alTop
            BevelOuter = bvNone
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            object btnAbreCaixa: TButton
              Left = 4
              Top = 1
              Width = 143
              Height = 35
              Caption = '<F4> Abre / Fecha Caixa'
              PopupMenu = pmReabreCaixa
              TabOrder = 0
              OnClick = btnAbreCaixaClick
            end
            object btnContasReceber: TButton
              Left = 4
              Top = 181
              Width = 143
              Height = 35
              Caption = '<F9> Recebimentos'
              TabOrder = 5
              OnClick = btnContasReceberClick
            end
            object btnFaturamento: TButton
              Left = 4
              Top = 110
              Width = 143
              Height = 35
              Caption = '<F7> Nota Fiscal'
              TabOrder = 3
              OnClick = btnFaturamentoClick
            end
            object btnDespesas: TButton
              Left = 4
              Top = 145
              Width = 143
              Height = 35
              Caption = '<F8> Despesas'
              TabOrder = 4
              OnClick = btnDespesasClick
            end
            object btnAtuDados: TButton
              Left = 4
              Top = 216
              Width = 143
              Height = 35
              Caption = '<F10> Atualizar tela'
              TabOrder = 6
              OnClick = btnAtuDadosClick
            end
            object btnFechaOS: TButton
              Left = 4
              Top = 74
              Width = 143
              Height = 35
              Caption = '<F6> Fecha OS'
              TabOrder = 2
            end
            object btnSupriSangr: TButton
              Left = 4
              Top = 38
              Width = 143
              Height = 35
              Caption = '<F5> Suprimento / Sangria'
              TabOrder = 1
              OnClick = btnSupriSangrClick
            end
          end
          object txtUsuario: TEdit
            Left = 6
            Top = 371
            Width = 143
            Height = 21
            TabStop = False
            Color = 14671839
            ReadOnly = True
            TabOrder = 2
          end
          object txtDataCaixa: TEdit
            Left = 6
            Top = 412
            Width = 143
            Height = 21
            TabStop = False
            Color = 14671839
            ReadOnly = True
            TabOrder = 3
          end
          object txtECF: TEdit
            Left = 6
            Top = 455
            Width = 143
            Height = 19
            TabStop = False
            Color = 14671839
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object btnSair: TButton
            Left = 6
            Top = 301
            Width = 143
            Height = 35
            Caption = '<F11> Sair'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btnSairClick
          end
        end
        object Button1: TButton
          Left = 32
          Top = 0
          Width = 28
          Height = 14
          Caption = 'NFCe'
          TabOrder = 1
          Visible = False
          OnClick = Button1Click
        end
      end
      object pnlDados: TPanel
        Left = 167
        Top = 0
        Width = 967
        Height = 539
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        object tbtTotalVista: TLabel
          Left = 304
          Top = 173
          Width = 74
          Height = 13
          Caption = 'Vendas a Vista:'
        end
        object lblTotalPrazo: TLabel
          Left = 480
          Top = 173
          Width = 78
          Height = 13
          Caption = 'Vendas a Prazo:'
        end
        object lblTotalFaturado: TLabel
          Left = 657
          Top = 173
          Width = 66
          Height = 13
          Caption = 'Total Vendas:'
        end
        object Label1: TLabel
          Left = 39
          Top = 192
          Width = 44
          Height = 13
          Caption = 'Faturada'
        end
        object Label2: TLabel
          Left = 114
          Top = 192
          Width = 50
          Height = 13
          Caption = 'Cancelada'
        end
        object lblAberto: TLabel
          Left = 39
          Top = 173
          Width = 46
          Height = 13
          Caption = 'Pendente'
        end
        object Label3: TLabel
          Left = 114
          Top = 173
          Width = 49
          Height = 13
          Caption = 'Inutilizada'
        end
        object Label4: TLabel
          Left = 194
          Top = 173
          Width = 49
          Height = 13
          Caption = 'Denegada'
        end
        object Label9: TLabel
          Left = 192
          Top = 192
          Width = 99
          Height = 13
          Caption = 'Pr'#233'-venda pendente'
        end
        object dbgrdNfe: TwwDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 39
          Width = 823
          Height = 130
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          ControlType.Strings = (
            'posvenda;CheckBox;True;False'
            'int_nomeope;RichEdit;;F'
            'int_nfeecf;RichEdit;;F'
            'int_nomeemi;RichEdit;;F'
            'ecf_prevenda;CheckBox;1;0'
            'prevenda;CheckBox;True;False')
          Selected.Strings = (
            'legenda'#9'2'#9#9'F'
            'numero'#9'12'#9'Nota fiscal'#9'F'
            'int_nfeecf'#9'9'#9'NFE/ECF'#9'F'
            'id_pedido_venda'#9'10'#9'N'#186' Pedido'#9'F'
            'id_ordem'#9'10'#9'N'#186' OS'#9'F'
            'int_nometme'#9'17'#9'Tipo de estoque'#9'F'
            'int_nomecpg'#9'14'#9'Condi'#231#227'o'#9'F'
            'dta_emissao'#9'10'#9'Emiss'#227'o'#9'F'
            'serie'#9'6'#9'S'#233'rie'#9'F'
            'modelo'#9'8'#9'Modelo'#9'F'
            'int_nomeemi'#9'27'#9'Emitente'#9'F'
            'vlr_liquido'#9'15'#9'Vlr Total'#9'F'
            'prevenda'#9'4'#9'PV'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clWhite
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
          OnCalcCellColors = dbgrdNfeCalcCellColors
        end
        object wwDBGrid1: TwwDBGrid
          Left = 6
          Top = 233
          Width = 822
          Height = 125
          Selected.Strings = (
            'id_baixa'#9'8'#9'Controle'#9'F'
            'dta_pagamento'#9'10'#9'Data'#9'F'
            'id_forma_pag'#9'6'#9'C'#243'digo'#9'F'#9'Forma de Pagamento'
            'int_nomefpg'#9'16'#9'Descri'#231#227'o'#9'F'#9'Forma de Pagamento'
            'id_fornecedor'#9'7'#9'C'#243'digo'#9'F'#9'Fornecedor'
            'int_nomefor'#9'36'#9'Nome'#9'F'#9'Fornecedor'
            'vlr_desconto'#9'13'#9'Vlr.Desconto'#9'F'
            'vlr_juros'#9'10'#9'Vlr.Juros'#9'F'
            'vlr_multa'#9'10'#9'Vlr.Multa'#9'F'
            'vlr_pagamento'#9'14'#9'Vlr.Pagamento'#9'F'
            'vlr_saldo'#9'13'#9'Vlr.Saldo'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clWhite
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clWhite
          DataSource = dso_pag_dia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
        end
        object wwDBGrid2: TwwDBGrid
          Left = 6
          Top = 376
          Width = 822
          Height = 124
          Selected.Strings = (
            'id_baixa'#9'8'#9'Controle'#9'F'
            'dta_pagamento'#9'10'#9'Data'#9'F'
            'id_forma_pag'#9'6'#9'C'#243'digo'#9'F'#9'Forma de Pagamento'
            'int_nomefpg'#9'16'#9'Descri'#231#227'o'#9'F'#9'Forma de Pagamento'
            'id_cliente'#9'7'#9'C'#243'digo'#9'F'#9'Cliente'
            'int_nomecli'#9'46'#9'Nome'#9'F'#9'Cliente'
            'vlr_desconto'#9'13'#9'Vlr.Desconto'#9'F'
            'vlr_juros'#9'10'#9'Vlr.Juros'#9'F'
            'vlr_pagamento'#9'14'#9'Vlr.Pagamento'#9'F'
            'vlr_saldo'#9'14'#9'Vlr.Saldo'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clWhite
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clWhite
          DataSource = dso_rec_dia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 2
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
        end
        object Panel1: TPanel
          Left = 5
          Top = 20
          Width = 823
          Height = 17
          BevelOuter = bvNone
          Caption = 'FATURAMENTO'
          Color = clSilver
          ParentBackground = False
          TabOrder = 3
        end
        object Panel2: TPanel
          Left = 5
          Top = 210
          Width = 823
          Height = 17
          BevelOuter = bvNone
          Caption = 'PAGAMENTOS'
          Color = clSilver
          ParentBackground = False
          TabOrder = 4
        end
        object Panel3: TPanel
          Left = 5
          Top = 358
          Width = 823
          Height = 17
          BevelOuter = bvNone
          Caption = 'RECEBIMENTOS'
          Color = clSilver
          ParentBackground = False
          TabOrder = 5
        end
        object txtTotalVista: TEdit
          Left = 381
          Top = 169
          Width = 90
          Height = 21
          TabStop = False
          Alignment = taRightJustify
          Color = cl3DLight
          ReadOnly = True
          TabOrder = 6
          Text = 'txtTotalVista'
        end
        object txtTotalPrazo: TEdit
          Left = 560
          Top = 169
          Width = 90
          Height = 21
          TabStop = False
          Alignment = taRightJustify
          Color = cl3DLight
          ReadOnly = True
          TabOrder = 7
          Text = 'txtTotalVista'
        end
        object txtTotalFaturado: TEdit
          Left = 725
          Top = 169
          Width = 90
          Height = 21
          TabStop = False
          Alignment = taRightJustify
          Color = cl3DLight
          ReadOnly = True
          TabOrder = 8
          Text = 'txtTotalVista'
        end
        object Panel4: TPanel
          Left = 18
          Top = 191
          Width = 15
          Height = 15
          BevelOuter = bvNone
          Color = clGreen
          ParentBackground = False
          TabOrder = 9
        end
        object Panel5: TPanel
          Left = 93
          Top = 191
          Width = 15
          Height = 15
          BevelOuter = bvNone
          Color = clRed
          ParentBackground = False
          TabOrder = 10
        end
        object pnlAberto: TPanel
          Left = 18
          Top = 172
          Width = 15
          Height = 15
          BevelOuter = bvNone
          Color = clBlue
          ParentBackground = False
          TabOrder = 11
        end
        object Panel6: TPanel
          Left = 93
          Top = 172
          Width = 15
          Height = 15
          BevelOuter = bvNone
          Color = clMaroon
          ParentBackground = False
          TabOrder = 12
        end
        object Panel7: TPanel
          Left = 173
          Top = 172
          Width = 15
          Height = 15
          BevelOuter = bvNone
          Color = clPurple
          ParentBackground = False
          TabOrder = 13
        end
        object Panel8: TPanel
          Left = 173
          Top = 191
          Width = 15
          Height = 15
          BevelOuter = bvNone
          Color = 11889407
          ParentBackground = False
          TabOrder = 14
        end
      end
      object pnlDireita: TPanel
        Left = 1134
        Top = 0
        Width = 16
        Height = 539
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
      end
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_CXA
    Left = 856
    Top = 107
  end
  object dso_rec_dia: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_REC_DIA
    Left = 864
    Top = 480
  end
  object dso_pag_dia: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_PAG_DIA
    Left = 856
    Top = 168
  end
  object dsoCaixa: TwwDataSource
    DataSet = dmGeral.FIN_CD_M_CXA
    Left = 232
    Top = 486
  end
  object timeAtuDados: TTimer
    OnTimer = timeAtuDadosTimer
    Left = 856
    Top = 240
  end
  object pmReabreCaixa: TPopupMenu
    Left = 768
    Top = 105
    object btnReabreCaixa: TMenuItem
      Caption = 'Reabrir Caixa'
      OnClick = btnReabreCaixaClick
    end
  end
end
