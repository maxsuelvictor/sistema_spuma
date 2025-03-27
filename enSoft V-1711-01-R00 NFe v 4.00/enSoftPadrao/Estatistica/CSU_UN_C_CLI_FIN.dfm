object CSU_FM_C_CLI_FIN: TCSU_FM_C_CLI_FIN
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 535
  ClientWidth = 1120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 1120
    Height = 492
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 49
    object lblPagamentos: TLabel
      Left = 11
      Top = 239
      Width = 1094
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'Pagamentos'
      Color = 14342874
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object lblTotalAberto: TLabel
      Left = 11
      Top = 453
      Width = 77
      Height = 13
      Caption = 'Total em Aberto'
    end
    object lblTotalVencer: TLabel
      Left = 92
      Top = 453
      Width = 69
      Height = 13
      Caption = 'Total a Vencer'
    end
    object lblTotalVencido: TLabel
      Left = 173
      Top = 453
      Width = 64
      Height = 13
      Caption = 'Total Vencido'
    end
    object lblTotalQuitado: TLabel
      Left = 613
      Top = 453
      Width = 65
      Height = 13
      Caption = 'Total Quitado'
    end
    object lblTotalGeral: TLabel
      Left = 697
      Top = 453
      Width = 52
      Height = 13
      Caption = 'Total Geral'
    end
    object lblCreditoDisponivel: TLabel
      Left = 772
      Top = 453
      Width = 86
      Height = 13
      Caption = 'Cr'#233'dito Dispon'#237'vel'
    end
    object lblAberto: TLabel
      Left = 28
      Top = 213
      Width = 53
      Height = 13
      Caption = 'Vence hoje'
    end
    object Label1: TLabel
      Left = 116
      Top = 213
      Width = 43
      Height = 13
      Caption = 'A vencer'
    end
    object Label2: TLabel
      Left = 200
      Top = 213
      Width = 37
      Height = 13
      Caption = 'Vencido'
    end
    object Label3: TLabel
      Left = 272
      Top = 213
      Width = 38
      Height = 13
      Caption = 'Quitado'
    end
    object Label4: TLabel
      Left = 30
      Top = 396
      Width = 108
      Height = 13
      Caption = 'Baixa com substitui'#231#227'o'
    end
    object Label5: TLabel
      Left = 363
      Top = 453
      Width = 80
      Height = 13
      Caption = 'Total Substitu'#237'do'
    end
    object Label6: TLabel
      Left = 534
      Top = 453
      Width = 51
      Height = 13
      Caption = 'Total Pago'
    end
    object Label7: TLabel
      Left = 12
      Top = 14
      Width = 69
      Height = 19
      Caption = 'Cliente :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNomeCli: TLabel
      Left = 87
      Top = 14
      Width = 10
      Height = 19
      Caption = '..'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 11
      Top = 373
      Width = 37
      Height = 13
      Caption = 'Baixa :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 356
      Top = 373
      Width = 73
      Height = 13
      Caption = 'Observa'#231#227'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtCodBaixa: TDBText
      Left = 54
      Top = 373
      Width = 57
      Height = 17
      DataField = 'id_baixa'
      DataSource = dsoPagamentos
    end
    object txtObservacoes: TDBText
      Left = 436
      Top = 373
      Width = 353
      Height = 62
      DataField = 'int_observacoes'
      DataSource = dsoPagamentos
      WordWrap = True
    end
    object Label10: TLabel
      Left = 117
      Top = 373
      Width = 78
      Height = 13
      Caption = 'Respons'#225'vel :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtResponsavel: TDBText
      Left = 200
      Top = 373
      Width = 151
      Height = 17
      DataField = 'int_nomeresp'
      DataSource = dsoPagamentos
    end
    object Label11: TLabel
      Left = 447
      Top = 453
      Width = 80
      Height = 13
      Caption = 'Total Juros pago'
    end
    object Label12: TLabel
      Left = 254
      Top = 453
      Width = 106
      Height = 13
      Caption = 'Total Aberto Corrigido'
    end
    object Label13: TLabel
      Left = 796
      Top = 381
      Width = 217
      Height = 13
      Caption = 'Financeiro do cliente nas empresa(s) abaixo :'
    end
    object dgPagamentos: TwwDBGrid
      AlignWithMargins = True
      Left = 11
      Top = 266
      Width = 1094
      Height = 104
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      TabStop = False
      ControlType.Strings = (
        'com_substituicao;CheckBox;True;False')
      Selected.Strings = (
        'int_nomefpg'#9'21'#9'Forma de Pagamento'#9'F'
        'id_plano'#9'20'#9'Plano de Contas'#9'F'
        'dta_pagamento'#9'20'#9'Pago em'#9'F'
        'vlr_desconto'#9'13'#9'Vlr. desconto'#9'F'
        'vlr_cred_utilizado'#9'14'#9'Vlr. Cr'#233'dito'#9'F'
        'vlr_juros'#9'13'#9'Vlr. Juros'#9'F'
        'vlr_pagamento'#9'13'#9'Vlr.Pago'#9'F'
        'historico'#9'68'#9'Historico'#9'F'
        'com_substituicao'#9'17'#9'Com substitui'#231#227'o'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsoPagamentos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
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
      OnCalcCellColors = dgPagamentosCalcCellColors
    end
    object txtTotalAberto: TEdit
      Left = 11
      Top = 468
      Width = 78
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = 14342874
      Enabled = False
      ReadOnly = True
      TabOrder = 1
      Text = 'txtTotalAberto'
    end
    object txtTotalVencer: TEdit
      Left = 92
      Top = 468
      Width = 78
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = 14342874
      Enabled = False
      ReadOnly = True
      TabOrder = 2
      Text = 'txtTotalVencer'
    end
    object txtTotalVercido: TEdit
      Left = 173
      Top = 468
      Width = 78
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = 14342874
      Enabled = False
      ReadOnly = True
      TabOrder = 3
      Text = 'txtTotalVercido'
    end
    object txtTotalQuitado: TEdit
      Left = 613
      Top = 468
      Width = 78
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = 14342874
      Enabled = False
      ReadOnly = True
      TabOrder = 6
      Text = 'txtTotalQuitado'
    end
    object txtTotalGeral: TEdit
      Left = 697
      Top = 468
      Width = 74
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = 14342874
      Enabled = False
      ReadOnly = True
      TabOrder = 7
      Text = 'txtTotalGeral'
    end
    object txtCreditoDisponivel: TEdit
      Left = 772
      Top = 468
      Width = 86
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = 14342874
      Enabled = False
      ReadOnly = True
      TabOrder = 8
      Text = 'txtCreditoDisponivel'
    end
    object btnCobranca: TButton
      Left = 795
      Top = 395
      Width = 63
      Height = 40
      Caption = 'Cobran'#231'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btnCobrancaClick
    end
    object pnlAberto: TPanel
      Left = 12
      Top = 212
      Width = 13
      Height = 13
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 10
    end
    object Panel1: TPanel
      Left = 100
      Top = 212
      Width = 13
      Height = 13
      BevelOuter = bvNone
      Color = clGreen
      ParentBackground = False
      TabOrder = 11
    end
    object Panel2: TPanel
      Left = 184
      Top = 212
      Width = 13
      Height = 13
      BevelOuter = bvNone
      Color = clRed
      ParentBackground = False
      TabOrder = 12
    end
    object Panel3: TPanel
      Left = 256
      Top = 212
      Width = 13
      Height = 13
      BevelOuter = bvNone
      Color = clNavy
      ParentBackground = False
      TabOrder = 13
    end
    object Panel4: TPanel
      Left = 12
      Top = 395
      Width = 13
      Height = 13
      BevelOuter = bvNone
      Color = 26058
      ParentBackground = False
      TabOrder = 14
    end
    object txtTotalSubst: TEdit
      Left = 363
      Top = 468
      Width = 82
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = 14342874
      Enabled = False
      ReadOnly = True
      TabOrder = 4
      Text = 'txtTotalSubst'
    end
    object txtTotalPago: TEdit
      Left = 534
      Top = 468
      Width = 78
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = 14342874
      Enabled = False
      ReadOnly = True
      TabOrder = 5
      Text = 'txtTotalPago'
    end
    object txtTotalJurosPg: TEdit
      Left = 447
      Top = 468
      Width = 84
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = 14342874
      Enabled = False
      ReadOnly = True
      TabOrder = 15
      Text = 'txtTotalJurosPg'
    end
    object txtTotalAbertoCorr: TEdit
      Left = 254
      Top = 468
      Width = 106
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = 14342874
      Enabled = False
      ReadOnly = True
      TabOrder = 16
      Text = 'txtTotalAbertoCorr'
    end
    object chkEmpresa: TCheckListBox
      Left = 864
      Top = 396
      Width = 177
      Height = 93
      ItemHeight = 13
      Sorted = True
      TabOrder = 17
      OnClick = chkEmpresaClick
    end
    object pcControl: TPageControl
      Left = 11
      Top = 39
      Width = 1094
      Height = 153
      ActivePage = tsFinanceiro
      TabOrder = 18
      OnChange = pcControlChange
      object tsFinanceiro: TTabSheet
        Caption = 'Geral'
        ExplicitWidth = 1085
        object wwDBGrid5: TwwDBGrid
          AlignWithMargins = True
          Left = 2
          Top = 0
          Width = 1084
          Height = 125
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabStop = False
          Selected.Strings = (
            'id_empresa'#9'4'#9'Emp.'#9'F'
            'int_nomefpg'#9'16'#9'Forma de Pagto'#9'F'
            'int_numeronf'#9'15'#9'Nota Fiscal'#9'F'
            'num_parcela'#9'16'#9'N'#186' Titulo'#9'F'
            'int_numpedvenda'#9'10'#9'N'#186' Pedido'#9'T'
            'int_numordem'#9'10'#9'N'#186' Ordem'#9'F'
            'bol_nosso_numero'#9'18'#9'Nosso n'#250'mero'#9'F'
            'dta_emissao'#9'12'#9'Emiss'#227'o'#9'F'
            'dta_original'#9'12'#9'Venc. Original'#9'F'
            'dta_vencimento'#9'11'#9'Prev. Baixa'#9'F'
            'vlr_parcela'#9'12'#9'Vlr.Parcela'#9'F'
            'vlr_saldo'#9'12'#9'Vlr.Saldo'#9'F'
            'int_vlr_juros'#9'12'#9'Vlr. Juros'#9'F'
            'int_vlr_corrigido'#9'12'#9'Vlr. Corrigido'#9'F'
            'int_atraso'#9'7'#9'Atraso'#9'F'
            'int_descorigem'#9'19'#9'Origem'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
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
          OnCalcCellColors = dgfinCalcCellColors
          OnDblClick = dgfinDblClick
          ExplicitLeft = 103
          ExplicitTop = -4
          ExplicitWidth = 595
          ExplicitHeight = 151
        end
      end
      object tsDuplicata: TTabSheet
        Caption = 'Duplicata'
        ImageIndex = 1
        object wwDBGrid1: TwwDBGrid
          AlignWithMargins = True
          Left = 2
          Top = 0
          Width = 1084
          Height = 125
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabStop = False
          Selected.Strings = (
            'id_empresa'#9'4'#9'Emp.'#9'F'
            'int_nomefpg'#9'16'#9'Forma de Pagto'#9'F'
            'int_numeronf'#9'15'#9'Nota Fiscal'#9'F'
            'num_parcela'#9'16'#9'N'#186' Titulo'#9'F'
            'int_numpedvenda'#9'10'#9'N'#186' Pedido'#9'T'
            'int_numordem'#9'10'#9'N'#186' Ordem'#9'F'
            'bol_nosso_numero'#9'18'#9'Nosso n'#250'mero'#9'F'
            'dta_emissao'#9'12'#9'Emiss'#227'o'#9'F'
            'dta_original'#9'12'#9'Venc. Original'#9'F'
            'dta_vencimento'#9'11'#9'Prev. Baixa'#9'F'
            'vlr_parcela'#9'12'#9'Vlr.Parcela'#9'F'
            'vlr_saldo'#9'12'#9'Vlr.Saldo'#9'F'
            'int_vlr_juros'#9'12'#9'Vlr. Juros'#9'F'
            'int_vlr_corrigido'#9'12'#9'Vlr. Corrigido'#9'F'
            'int_atraso'#9'7'#9'Atraso'#9'F'
            'int_descorigem'#9'19'#9'Origem'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
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
          OnCalcCellColors = dgfinCalcCellColors
          OnDblClick = dgfinDblClick
          ExplicitLeft = 109
          ExplicitTop = -26
          ExplicitWidth = 595
          ExplicitHeight = 151
        end
      end
      object tsPromissoria: TTabSheet
        Caption = 'Promiss'#243'ria'
        ImageIndex = 2
        object wwDBGrid2: TwwDBGrid
          AlignWithMargins = True
          Left = 2
          Top = 0
          Width = 1084
          Height = 125
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabStop = False
          Selected.Strings = (
            'id_empresa'#9'4'#9'Emp.'#9'F'
            'int_nomefpg'#9'16'#9'Forma de Pagto'#9'F'
            'int_numeronf'#9'15'#9'Nota Fiscal'#9'F'
            'num_parcela'#9'16'#9'N'#186' Titulo'#9'F'
            'int_numpedvenda'#9'10'#9'N'#186' Pedido'#9'T'
            'int_numordem'#9'10'#9'N'#186' Ordem'#9'F'
            'bol_nosso_numero'#9'18'#9'Nosso n'#250'mero'#9'F'
            'dta_emissao'#9'12'#9'Emiss'#227'o'#9'F'
            'dta_original'#9'12'#9'Venc. Original'#9'F'
            'dta_vencimento'#9'11'#9'Prev. Baixa'#9'F'
            'vlr_parcela'#9'12'#9'Vlr.Parcela'#9'F'
            'vlr_saldo'#9'12'#9'Vlr.Saldo'#9'F'
            'int_vlr_juros'#9'12'#9'Vlr. Juros'#9'F'
            'int_vlr_corrigido'#9'12'#9'Vlr. Corrigido'#9'F'
            'int_atraso'#9'7'#9'Atraso'#9'F'
            'int_descorigem'#9'19'#9'Origem'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
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
          OnCalcCellColors = dgfinCalcCellColors
          OnDblClick = dgfinDblClick
        end
      end
      object tsCartao: TTabSheet
        Caption = 'Cart'#227'o'
        ImageIndex = 3
        object wwDBGrid3: TwwDBGrid
          AlignWithMargins = True
          Left = 2
          Top = 0
          Width = 1084
          Height = 125
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabStop = False
          Selected.Strings = (
            'id_empresa'#9'4'#9'Emp.'#9'F'
            'int_nomefpg'#9'16'#9'Forma de Pagto'#9'F'
            'int_numeronf'#9'15'#9'Nota Fiscal'#9'F'
            'num_parcela'#9'16'#9'N'#186' Titulo'#9'F'
            'int_numpedvenda'#9'10'#9'N'#186' Pedido'#9'T'
            'int_numordem'#9'10'#9'N'#186' Ordem'#9'F'
            'bol_nosso_numero'#9'18'#9'Nosso n'#250'mero'#9'F'
            'dta_emissao'#9'12'#9'Emiss'#227'o'#9'F'
            'dta_original'#9'12'#9'Venc. Original'#9'F'
            'dta_vencimento'#9'11'#9'Prev. Baixa'#9'F'
            'vlr_parcela'#9'12'#9'Vlr.Parcela'#9'F'
            'vlr_saldo'#9'12'#9'Vlr.Saldo'#9'F'
            'int_vlr_juros'#9'12'#9'Vlr. Juros'#9'F'
            'int_vlr_corrigido'#9'12'#9'Vlr. Corrigido'#9'F'
            'int_atraso'#9'7'#9'Atraso'#9'F'
            'int_descorigem'#9'19'#9'Origem'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
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
          OnCalcCellColors = dgfinCalcCellColors
          OnDblClick = dgfinDblClick
        end
      end
      object tsBoleto: TTabSheet
        Caption = 'Boleto'
        ImageIndex = 4
        ExplicitLeft = 1
        object wwDBGrid4: TwwDBGrid
          AlignWithMargins = True
          Left = 2
          Top = 0
          Width = 1084
          Height = 125
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabStop = False
          Selected.Strings = (
            'id_empresa'#9'4'#9'Emp.'#9'F'
            'int_nomefpg'#9'16'#9'Forma de Pagto'#9'F'
            'int_numeronf'#9'15'#9'Nota Fiscal'#9'F'
            'num_parcela'#9'16'#9'N'#186' Titulo'#9'F'
            'int_numpedvenda'#9'10'#9'N'#186' Pedido'#9'T'
            'int_numordem'#9'10'#9'N'#186' Ordem'#9'F'
            'bol_nosso_numero'#9'18'#9'Nosso n'#250'mero'#9'F'
            'dta_emissao'#9'12'#9'Emiss'#227'o'#9'F'
            'dta_original'#9'12'#9'Venc. Original'#9'F'
            'dta_vencimento'#9'11'#9'Prev. Baixa'#9'F'
            'vlr_parcela'#9'12'#9'Vlr.Parcela'#9'F'
            'vlr_saldo'#9'12'#9'Vlr.Saldo'#9'F'
            'int_vlr_juros'#9'12'#9'Vlr. Juros'#9'F'
            'int_vlr_corrigido'#9'12'#9'Vlr. Corrigido'#9'F'
            'int_atraso'#9'7'#9'Atraso'#9'F'
            'int_descorigem'#9'19'#9'Origem'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
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
          OnCalcCellColors = dgfinCalcCellColors
          OnDblClick = dgfinDblClick
        end
      end
      object tsDinheiro: TTabSheet
        Caption = 'Dinheiro'
        ImageIndex = 5
        object wwDBGrid6: TwwDBGrid
          AlignWithMargins = True
          Left = 2
          Top = 0
          Width = 1084
          Height = 125
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabStop = False
          Selected.Strings = (
            'id_empresa'#9'4'#9'Emp.'#9'F'
            'int_nomefpg'#9'16'#9'Forma de Pagto'#9'F'
            'int_numeronf'#9'15'#9'Nota Fiscal'#9'F'
            'num_parcela'#9'16'#9'N'#186' Titulo'#9'F'
            'int_numpedvenda'#9'10'#9'N'#186' Pedido'#9'T'
            'int_numordem'#9'10'#9'N'#186' Ordem'#9'F'
            'bol_nosso_numero'#9'18'#9'Nosso n'#250'mero'#9'F'
            'dta_emissao'#9'12'#9'Emiss'#227'o'#9'F'
            'dta_original'#9'12'#9'Venc. Original'#9'F'
            'dta_vencimento'#9'11'#9'Prev. Baixa'#9'F'
            'vlr_parcela'#9'12'#9'Vlr.Parcela'#9'F'
            'vlr_saldo'#9'12'#9'Vlr.Saldo'#9'F'
            'int_vlr_juros'#9'12'#9'Vlr. Juros'#9'F'
            'int_vlr_corrigido'#9'12'#9'Vlr. Corrigido'#9'F'
            'int_atraso'#9'7'#9'Atraso'#9'F'
            'int_descorigem'#9'19'#9'Origem'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
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
          OnCalcCellColors = dgfinCalcCellColors
          OnDblClick = dgfinDblClick
        end
      end
      object tsCheque: TTabSheet
        Caption = 'Cheque'
        ImageIndex = 6
        object wwDBGrid7: TwwDBGrid
          AlignWithMargins = True
          Left = 2
          Top = 0
          Width = 1084
          Height = 125
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabStop = False
          Selected.Strings = (
            'id_empresa'#9'4'#9'Emp.'#9'F'
            'int_nomefpg'#9'16'#9'Forma de Pagto'#9'F'
            'int_numeronf'#9'15'#9'Nota Fiscal'#9'F'
            'num_parcela'#9'16'#9'N'#186' Titulo'#9'F'
            'int_numpedvenda'#9'10'#9'N'#186' Pedido'#9'T'
            'int_numordem'#9'10'#9'N'#186' Ordem'#9'F'
            'bol_nosso_numero'#9'18'#9'Nosso n'#250'mero'#9'F'
            'dta_emissao'#9'12'#9'Emiss'#227'o'#9'F'
            'dta_original'#9'12'#9'Venc. Original'#9'F'
            'dta_vencimento'#9'11'#9'Prev. Baixa'#9'F'
            'vlr_parcela'#9'12'#9'Vlr.Parcela'#9'F'
            'vlr_saldo'#9'12'#9'Vlr.Saldo'#9'F'
            'int_vlr_juros'#9'12'#9'Vlr. Juros'#9'F'
            'int_vlr_corrigido'#9'12'#9'Vlr. Corrigido'#9'F'
            'int_atraso'#9'7'#9'Atraso'#9'F'
            'int_descorigem'#9'19'#9'Origem'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
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
          OnCalcCellColors = dgfinCalcCellColors
          OnDblClick = dgfinDblClick
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1120
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object pnlCima: TPanel
      Left = 0
      Top = 0
      Width = 1120
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 1120
        Height = 25
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Financeiro do Cliente'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -13
        ExplicitWidth = 500
        ExplicitHeight = 30
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 25
      Width = 1120
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_REC
    Left = 727
    Top = 155
  end
  object dsoPagamentos: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_REC_PAG
    Left = 815
    Top = 155
  end
end
