object CSU_FM_C_ITE: TCSU_FM_C_ITE
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 596
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 934
    Height = 561
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 43
    ExplicitHeight = 553
    object pnlCentral: TPanel
      Left = 21
      Top = 6
      Width = 895
      Height = 553
      BevelOuter = bvNone
      TabOrder = 0
      object gbItens: TGroupBox
        Left = 13
        Top = 0
        Width = 881
        Height = 422
        TabOrder = 0
        object pnSldItens: TPanel
          Left = 2
          Top = 222
          Width = 877
          Height = 108
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitLeft = 3
          object Label2: TLabel
            Left = 0
            Top = 14
            Width = 877
            Height = 14
            Align = alTop
            Alignment = taRightJustify
            AutoSize = False
            Caption = 
              'Clique com o direito do mouse para visualiar os pedidos pendente' +
              's do item'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitTop = 0
          end
          object Label12: TLabel
            Left = 0
            Top = 0
            Width = 877
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Saldo de Itens'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitTop = 8
          end
          object dgFes: TwwDBGrid
            Left = 2
            Top = 27
            Width = 431
            Height = 80
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            TabStop = False
            Selected.Strings = (
              'id_empresa'#9'8'#9'C'#243'digo'#9'F'
              'int_nomefan'#9'18'#9'Empresa'#9'F'
              'int_nomecor'#9'12'#9'Cor'#9'F'
              'int_nometam'#9'8'#9'Tamanho'#9'F'
              'qtde_entrada'#9'11'#9'Entradas'#9'F'#9'Movimenta'#231#245'es'
              'qtde_saida'#9'11'#9'Sa'#237'das'#9'F'#9'Movimenta'#231#245'es'
              'saldo_fisico'#9'12'#9'Estoque Atual'#9'F'#9'Movimenta'#231#245'es'
              'vlr_custo_ult_compra'#9'12'#9'Vlr. '#218'lt. Compra'#9'F'#9'Custo'
              'data_ult_compra'#9'10'#9#218'lt. Compra'#9'F'#9'Custo'
              'vlr_custo_medio'#9'10'#9'Vlr. M'#233'dio'#9'F'#9'Custo')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            OnRowChanged = dgFesRowChanged
            OnCellChanged = dgFesRowChanged
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsoFes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnCalcCellColors = dgFesCalcCellColors
            OnDblClick = dgFesDblClick
          end
          object dgFesSgq: TwwDBGrid
            Left = 435
            Top = 27
            Width = 442
            Height = 80
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            TabStop = False
            Selected.Strings = (
              'id_empresa'#9'8'#9'C'#243'digo'#9'F'
              'int_nomefan'#9'32'#9'Empresa'#9'F'
              'int_nomecor'#9'18'#9'Cor'#9'F'
              'int_nometam'#9'11'#9'Tamanho'#9'F'
              'qtde_entrada'#9'11'#9'Entradas'#9'F'#9'Movimenta'#231#245'es'
              'qtde_saida'#9'11'#9'Sa'#237'das'#9'F'#9'Movimenta'#231#245'es'
              'saldo_fisico'#9'12'#9'Estoque Atual'#9'F'#9'Movimenta'#231#245'es'
              'int_sld_disponivel'#9'12'#9'Dispon'#237'vel'#9'F'#9'Movimenta'#231#245'es')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            OnRowChanged = dgFesRowChanged
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsoFes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            PopupMenu = pmSldAlm
            ReadOnly = True
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnDblClick = dgFesDblClick
          end
        end
        object pnSldAlmItens: TPanel
          Left = 2
          Top = 330
          Width = 877
          Height = 90
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitTop = 312
          object Label3: TLabel
            Left = 0
            Top = 0
            Width = 877
            Height = 13
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Saldo dos Itens por Almoxarifado'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitLeft = 2
            ExplicitTop = 6
          end
          object dgFesAlm: TwwDBGrid
            AlignWithMargins = True
            Left = 2
            Top = 13
            Width = 875
            Height = 76
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            TabStop = False
            Selected.Strings = (
              'int_nomealm'#9'48'#9'Almoxarifado'#9'F'
              'int_nomecor'#9'20'#9'Cor'#9'F'
              'int_nometam'#9'12'#9'Tamanho'#9'F'
              'qtde_entrada'#9'12'#9'Entrada'#9'F'#9'Movimenta'#231#245'es por Almoxarifado'
              'qtde_saida'#9'12'#9'Sa'#237'das'#9'F'#9'Movimenta'#231#245'es por Almoxarifado'
              'saldo_fisico'#9'12'#9'Estoque Atual'#9'F'#9'Movimenta'#231#245'es por Almoxarifado')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsoFesAlm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnCalcCellColors = dgFesAlmCalcCellColors
          end
        end
        object pnItens: TPanel
          Left = 2
          Top = 15
          Width = 877
          Height = 114
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblPagamentos: TLabel
            Left = 0
            Top = 0
            Width = 877
            Height = 17
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Itens'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object dgItens: TwwDBGrid
            AlignWithMargins = True
            Left = 2
            Top = 17
            Width = 875
            Height = 74
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            TabStop = False
            ControlType.Strings = (
              'ativo;CheckBox;True;False')
            Selected.Strings = (
              'id_item'#9'12'#9'C'#243'd.Interno'#9'F'
              'cod_fabrica'#9'13'#9'C'#243'd. F'#225'brica'#9'F'
              'descricao'#9'68'#9'Descri'#231#227'o'#9'F'
              'id_und_venda'#9'4'#9'Und'#9'F'
              'int_desc_grupo'#9'25'#9'Grupo'#9'F'
              'preco_sugerido'#9'12'#9'Pre'#231'o Sugerido'#9'F')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            OnRowChanged = dgItensRowChanged
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = dso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            PopupMenu = pmIteCoj
            ReadOnly = True
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnCalcCellColors = dgItensCalcCellColors
            ExplicitHeight = 72
          end
          object pnPrcItem: TPanel
            Left = 0
            Top = 91
            Width = 877
            Height = 23
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitTop = 97
            object Label4: TLabel
              Left = 8
              Top = 4
              Width = 86
              Height = 14
              Caption = 'Pre'#231'o '#224' vista :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 184
              Top = 4
              Width = 91
              Height = 14
              Caption = 'Pre'#231'o a prazo :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object txtPrcAvista: TwwDBEdit
              Left = 100
              Top = 1
              Width = 78
              Height = 22
              DataField = 'prcAvista'
              DataSource = dsTempItePrc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object txtPrcAprazo: TwwDBEdit
              Left = 281
              Top = 1
              Width = 78
              Height = 22
              DataField = 'prcAprazo'
              DataSource = dsTempItePrc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
        object pnPrc: TPanel
          Left = 2
          Top = 135
          Width = 877
          Height = 87
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitTop = 142
          object pnPrcParCpg: TPanel
            Left = 273
            Top = 0
            Width = 236
            Height = 87
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object wwDBGrid2: TwwDBGrid
              Left = 0
              Top = 6
              Width = 223
              Height = 81
              Selected.Strings = (
                'int_nomecpg'#9'20'#9'Condi'#231#227'o de pagamento'#9'F'
                'preco01'#9'10'#9'Pre'#231'o'#9'F')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = False
              Align = alClient
              DataSource = dsTempItePrcParCpg
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              UseTFields = False
              OnCalcCellColors = wwDBGrid2CalcCellColors
            end
            object Panel4: TPanel
              Left = 223
              Top = 6
              Width = 13
              Height = 81
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
            end
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 236
              Height = 6
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
          object pnPrcPec: TPanel
            Left = 0
            Top = 0
            Width = 273
            Height = 87
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object wwDBGrid1: TwwDBGrid
              Left = 0
              Top = 6
              Width = 259
              Height = 81
              Selected.Strings = (
                'int_nomepec'#9'20'#9'Perfil de pre'#231'o'#9'F'
                'prcAvista'#9'11'#9#192' vista'#9'F'
                'prcAprazo'#9'11'#9'A prazo'#9'F')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = False
              Align = alClient
              DataSource = dsTempItePrc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              UseTFields = False
              OnCalcCellColors = wwDBGrid1CalcCellColors
              ExplicitWidth = 273
              ExplicitHeight = 67
            end
            object Panel1: TPanel
              Left = 259
              Top = 6
              Width = 14
              Height = 81
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 273
              Height = 6
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
          object pnPrcParFinan: TPanel
            Left = 509
            Top = 0
            Width = 227
            Height = 87
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object wwDBGrid3: TwwDBGrid
              Left = 0
              Top = 6
              Width = 215
              Height = 81
              Selected.Strings = (
                'descricao'#9'20'#9'Perfil de Pre'#231'o'#9'T'
                'preco_avista'#9'10'#9'A vista'#9'T'
                'preco1'#9'10'#9'30 dias'#9'T'
                'preco2'#9'10'#9'60 dias'#9'T'
                'preco3'#9'10'#9'90 dias'#9'T'
                'preco4'#9'10'#9'120 dias'#9'T')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              DataSource = dsoTempItePrcPerfil
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              UseTFields = False
              OnCalcCellColors = wwDBGrid3CalcCellColors
            end
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 227
              Height = 6
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
            end
            object Panel8: TPanel
              Left = 215
              Top = 6
              Width = 12
              Height = 81
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
          object pnPrcSerCat: TPanel
            Left = 736
            Top = 0
            Width = 141
            Height = 87
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            Visible = False
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 141
              Height = 6
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
            end
            object Panel9: TPanel
              Left = 137
              Top = 6
              Width = 4
              Height = 81
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
            end
            object wwDBGrid4: TwwDBGrid
              Left = 0
              Top = 6
              Width = 137
              Height = 81
              Selected.Strings = (
                'descricao'#9'20'#9'Categoria'#9'T'
                'preco_avista'#9'10'#9#192' Vista'#9'T'
                'preco_aprazo'#9'10'#9'A Prazo'#9'T')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              DataSource = dsTempPrcSerCat
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              TitleLines = 1
              TitleButtons = False
              UseTFields = False
            end
          end
        end
      end
      object gbFilial: TGroupBox
        Left = 13
        Top = 452
        Width = 879
        Height = 99
        TabOrder = 1
        object lblVlrVenda: TLabel
          Left = 9
          Top = 10
          Width = 65
          Height = 14
          Caption = 'Aplica'#231#227'o :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblLocalizacao: TLabel
          Left = 446
          Top = 11
          Width = 51
          Height = 14
          Caption = 'Loc-Rua :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 632
          Top = 11
          Width = 38
          Height = 14
          Caption = 'Prat. :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnSair: TSpeedButton
          Left = 793
          Top = 61
          Width = 75
          Height = 25
          Caption = 'Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
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
        object Label11: TLabel
          Left = 809
          Top = 10
          Width = 26
          Height = 14
          Caption = 'Esc.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object gbBusca: TGroupBox
          Left = 3
          Top = 31
          Width = 598
          Height = 60
          Caption = 'Filtro'
          TabOrder = 0
          object lblFormaPagamento: TLabel
            Left = 5
            Top = 16
            Width = 89
            Height = 14
            Caption = 'Campo da Busca'
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblTexto: TLabel
            Left = 111
            Top = 16
            Width = 46
            Height = 14
            Caption = 'Pesquisa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object btnFiltrar: TButton
            Left = 391
            Top = 31
            Width = 45
            Height = 23
            Caption = 'Filtrar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = btnFiltrarClick
          end
          object cbbPesquisa: TComboBox
            Left = 5
            Top = 33
            Width = 100
            Height = 22
            Style = csDropDownList
            DropDownCount = 11
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemIndex = 1
            ParentFont = False
            TabOrder = 0
            Text = 'Descri'#231#227'o'
            Items.Strings = (
              'C'#243'digo'
              'Descri'#231#227'o'
              'Cod.Barra'
              'Cod.Fabrica'
              'Loca-Rua'
              'Aplica'#231#227'o'
              'Nome do Fornecedor'
              'Cod.Grupo'
              'Descri'#231#227'o do Grupo'
              'Refer'#234'ncia'
              'NCM')
          end
          object txtPesquisa: TEdit
            Left = 111
            Top = 33
            Width = 276
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyDown = txtPesquisaKeyDown
          end
          object chbMostrarSldZero: TCheckBox
            Left = 235
            Top = 13
            Width = 152
            Height = 17
            Caption = 'Mostrar Itens Sem Saldo'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 3
          end
          object dgEmpPrc: TwwDBGrid
            Left = 442
            Top = 9
            Width = 151
            Height = 46
            Selected.Strings = (
              'emp_fantasia'#9'20'#9'Pre'#231'os da Empresa'#9'T')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            OnRowChanged = dgEmpPrcRowChanged
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsoEmp
            TabOrder = 4
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            Visible = False
          end
        end
        object txtLocalizacao: TDBEdit
          Tag = 1
          Left = 499
          Top = 8
          Width = 131
          Height = 22
          TabStop = False
          BevelInner = bvSpace
          BevelOuter = bvNone
          Color = 14342874
          DataField = 'loca_rua'
          DataSource = dsoLoc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Tag = 1
          Left = 676
          Top = 7
          Width = 131
          Height = 22
          TabStop = False
          BevelInner = bvSpace
          BevelOuter = bvNone
          Color = 14342874
          DataField = 'loca_prateleira'
          DataSource = dsoLoc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object btnEstatistica: TButton
          Left = 616
          Top = 61
          Width = 81
          Height = 25
          Caption = 'Estat'#237'stica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnEstatisticaClick
        end
        object btnNotasFiscais: TButton
          Left = 616
          Top = 30
          Width = 83
          Height = 25
          Caption = 'Notas Fiscais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btnNotasFiscaisClick
        end
        object btnExtrato: TButton
          Left = 703
          Top = 61
          Width = 84
          Height = 25
          Caption = 'Extrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btnExtratoClick
        end
        object txtAplicacao: TDBMemo
          Left = 75
          Top = 3
          Width = 364
          Height = 33
          Color = 14342874
          DataField = 'aplicacao'
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object btnPedCmp: TButton
          Left = 703
          Top = 30
          Width = 84
          Height = 25
          Caption = 'Ped. Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = btnPedCmpClick
        end
        object btnOrdem: TButton
          Left = 793
          Top = 30
          Width = 75
          Height = 25
          Caption = 'O. S.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = btnOrdemClick
        end
        object txtEscaninho: TDBEdit
          Tag = 1
          Left = 839
          Top = 6
          Width = 36
          Height = 22
          TabStop = False
          BevelInner = bvSpace
          BevelOuter = bvNone
          Color = 14342874
          DataField = 'loca_escaninho'
          DataSource = dsoLoc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
      end
      object pnInfoMesAnt: TPanel
        Left = 11
        Top = 422
        Width = 879
        Height = 26
        BevelOuter = bvNone
        TabOrder = 2
        object Label6: TLabel
          Left = 137
          Top = 6
          Width = 66
          Height = 14
          Caption = 'Sld anterior:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 300
          Top = 6
          Width = 51
          Height = 14
          Caption = 'Entradas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 448
          Top = 6
          Width = 37
          Height = 14
          Caption = 'Sa'#237'das:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 584
          Top = 6
          Width = 33
          Height = 14
          Caption = 'Saldo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 711
          Top = 6
          Width = 67
          Height = 14
          Caption = 'Ult. compra:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnExibirMesAnt: TButton
          Left = 0
          Top = 0
          Width = 132
          Height = 25
          Caption = 'Exibir m'#234's atual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnExibirMesAntClick
        end
        object txtSldAntMesAnt: TwwDBEdit
          Left = 206
          Top = 2
          Width = 88
          Height = 22
          TabStop = False
          Color = 16364464
          DataField = 'saldo_anterior'
          DataSource = BUS_DS_M_SLD_ITE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtEntradasMesAnt: TwwDBEdit
          Left = 354
          Top = 2
          Width = 88
          Height = 22
          TabStop = False
          Color = 16364464
          DataField = 'qtde_entradas'
          DataSource = BUS_DS_M_SLD_ITE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtSaidasMesAnt: TwwDBEdit
          Left = 488
          Top = 2
          Width = 88
          Height = 22
          TabStop = False
          Color = 16364464
          DataField = 'qtde_saidas'
          DataSource = BUS_DS_M_SLD_ITE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtSldMesAnt: TwwDBEdit
          Left = 620
          Top = 2
          Width = 88
          Height = 22
          TabStop = False
          Color = 16364464
          DataField = 'saldo'
          DataSource = BUS_DS_M_SLD_ITE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtUltCompra: TwwDBEdit
          Left = 781
          Top = 2
          Width = 87
          Height = 22
          TabStop = False
          Color = 14342874
          DataField = 'vlr_custo_ult_compra'
          DataSource = BUS_DS_M_SLD_ITE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 35
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
      Width = 934
      Height = 30
      Align = alClient
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      ExplicitHeight = 32
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 934
        Height = 25
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Consulta de Itens'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = 2
        ExplicitWidth = 673
        ExplicitHeight = 26
      end
      object lblCodificacaoLMestre: TLabel
        Left = 0
        Top = 0
        Width = 934
        Height = 30
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Lista Mestre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 869
        ExplicitWidth = 65
        ExplicitHeight = 14
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 30
      Width = 934
      Height = 5
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 24
    end
  end
  object dso: TwwDataSource
    DataSet = BUS_CD_C_ITE
    Left = 821
    Top = 56
  end
  object dsoFes: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_FES
    Left = 725
    Top = 280
  end
  object dsoFesAlm: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_FES_ALM
    Left = 638
    Top = 296
  end
  object cdsTempItePrc: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 752
    Top = 120
    object cdsTempItePrcid_item: TIntegerField
      FieldName = 'id_item'
    end
    object cdsTempItePrcprcAvista: TCurrencyField
      FieldName = 'prcAvista'
      DisplayFormat = '###,###,###,##0.00'
      currency = False
    end
    object cdsTempItePrcprcAprazo: TCurrencyField
      FieldName = 'prcAprazo'
      DisplayFormat = '###,###,###,##0.00'
      currency = False
    end
    object cdsTempItePrcint_nomepec: TStringField
      FieldName = 'int_nomepec'
      Size = 100
    end
    object cdsTempItePrcordem: TIntegerField
      FieldName = 'ordem'
    end
  end
  object dsTempItePrc: TwwDataSource
    DataSet = cdsTempItePrc
    Left = 824
    Top = 120
  end
  object dsTempItePrcParCpg: TwwDataSource
    DataSet = cdsTempItePrcParCpg
    Left = 656
    Top = 96
  end
  object cdsTempItePrcParCpg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 808
    Top = 296
    object cdsTempItePrcParCpgint_nomecpg: TStringField
      FieldName = 'int_nomecpg'
      Size = 100
    end
    object cdsTempItePrcParCpgpreco01: TCurrencyField
      FieldName = 'preco01'
    end
    object cdsTempItePrcParCpgid_item: TIntegerField
      FieldName = 'id_item'
    end
    object cdsTempItePrcParCpgordem: TIntegerField
      FieldName = 'ordem'
    end
  end
  object BUS_CD_C_ITE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_ITE'
    RemoteServer = dmGeral.pcConecao
    Left = 712
    Top = 56
    object BUS_CD_C_ITEid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_C_ITEdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object BUS_CD_C_ITEid_und_venda: TWideStringField
      FieldName = 'id_und_venda'
      Size = 3
    end
    object BUS_CD_C_ITEPRECO_AVISTA: TFMTBCDField
      FieldName = 'PRECO_AVISTA'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEPRECO_APRAZO: TFMTBCDField
      FieldName = 'PRECO_APRAZO'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEint_desc_grupo: TWideStringField
      FieldName = 'int_desc_grupo'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_C_ITEint_tipo_item: TWideStringField
      FieldName = 'int_tipo_item'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_nomegrp: TWideStringField
      FieldName = 'int_nomegrp'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEpreco_sugerido: TFMTBCDField
      FieldName = 'preco_sugerido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_LOC: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_LOC'
    end
    object BUS_CD_C_ITEaplicacao: TWideStringField
      FieldName = 'aplicacao'
      Size = 100
    end
    object BUS_CD_C_ITEativo: TBooleanField
      FieldName = 'ativo'
    end
    object BUS_CD_C_ITEcod_fabrica: TWideStringField
      FieldName = 'cod_fabrica'
      Size = 30
    end
  end
  object cdsTempPrcFinan: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 824
    Top = 323
    object cdsTempPrcFinanid_item: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_item'
    end
    object cdsTempPrcFinandesc_perfil: TStringField
      DisplayLabel = 'Perfil'
      DisplayWidth = 50
      FieldName = 'desc_perfil'
      Size = 50
    end
    object cdsTempPrcFinanprcVista: TCurrencyField
      DisplayWidth = 10
      FieldName = 'prcVista'
    end
    object cdsTempPrcFinanprc30d: TCurrencyField
      DisplayWidth = 10
      FieldName = 'prc30d'
    end
    object cdsTempPrcFinanprc60d: TCurrencyField
      DisplayWidth = 10
      FieldName = 'prc60d'
    end
    object cdsTempPrcFinanprc90d: TCurrencyField
      DisplayWidth = 10
      FieldName = 'prc90d'
    end
    object cdsTempPrcFinanprc120d: TCurrencyField
      DisplayWidth = 10
      FieldName = 'prc120d'
    end
  end
  object cdsTempItePrcPerfil: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeOpen = cdsTempItePrcPerfilBeforeOpen
    Left = 824
    Top = 395
    object cdsTempItePrcPerfildescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsTempItePrcPerfilpreco_avista: TCurrencyField
      FieldName = 'preco_avista'
    end
    object cdsTempItePrcPerfilpreco1: TCurrencyField
      FieldName = 'preco1'
    end
    object cdsTempItePrcPerfilpreco2: TCurrencyField
      FieldName = 'preco2'
    end
    object cdsTempItePrcPerfilpreco3: TCurrencyField
      FieldName = 'preco3'
    end
    object cdsTempItePrcPerfilpreco4: TCurrencyField
      FieldName = 'preco4'
    end
    object cdsTempItePrcPerfilid_item: TIntegerField
      FieldName = 'id_item'
    end
  end
  object dsoTempItePrcPerfil: TwwDataSource
    DataSet = cdsTempItePrcPerfil
    Left = 744
    Top = 403
  end
  object BUS_CD_M_SLD_ITE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_SLD_ITE'
    RemoteServer = dmGeral.pcConecao
    BeforeOpen = BUS_CD_M_SLD_ITEBeforeOpen
    Left = 462
    Top = 113
    object BUS_CD_M_SLD_ITEsaldo_anterior: TFloatField
      FieldName = 'saldo_anterior'
    end
    object BUS_CD_M_SLD_ITEqtde_entradas: TFloatField
      FieldName = 'qtde_entradas'
    end
    object BUS_CD_M_SLD_ITEqtde_saidas: TFloatField
      FieldName = 'qtde_saidas'
    end
    object BUS_CD_M_SLD_ITEsaldo: TFloatField
      FieldName = 'saldo'
    end
    object BUS_CD_M_SLD_ITEvlr_custo_medio: TFMTBCDField
      FieldName = 'vlr_custo_medio'
      Precision = 32
    end
    object BUS_CD_M_SLD_ITEvlr_custo_ult_compra: TFMTBCDField
      FieldName = 'vlr_custo_ult_compra'
      Precision = 32
    end
  end
  object BUS_DS_M_SLD_ITE: TDataSource
    DataSet = BUS_CD_M_SLD_ITE
    Left = 582
    Top = 113
  end
  object cdsTempPrcSerCat: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 250
    Top = 100
    object cdsTempPrcSerCatpreco_avista: TCurrencyField
      DisplayWidth = 10
      FieldName = 'preco_avista'
    end
    object cdsTempPrcSerCatpreco_aprazo: TCurrencyField
      DisplayWidth = 10
      FieldName = 'preco_aprazo'
    end
    object cdsTempPrcSerCatdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object cdsTempPrcSerCatid_item: TIntegerField
      FieldName = 'id_item'
    end
  end
  object dsTempPrcSerCat: TwwDataSource
    DataSet = cdsTempPrcSerCat
    Left = 362
    Top = 100
  end
  object pmIteCoj: TPopupMenu
    Left = 146
    Top = 108
    object btnIteCoj: TMenuItem
      Caption = 'Mostrar Itens Conjugados'
      OnClick = btnIteCojClick
    end
    object btnLote: TMenuItem
      Caption = 'Lote'
    end
  end
  object BUS_CD_C_ITE_LOC: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_C_ITECAD_SQ_C_ITE_LOC
    Params = <>
    Left = 538
    Top = 60
    object BUS_CD_C_ITE_LOCid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_C_ITE_LOCid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_C_ITE_LOCloca_rua: TWideStringField
      FieldName = 'loca_rua'
    end
    object BUS_CD_C_ITE_LOCloca_prateleira: TWideStringField
      FieldName = 'loca_prateleira'
    end
    object BUS_CD_C_ITE_LOCloca_escaninho: TWideStringField
      FieldName = 'loca_escaninho'
    end
  end
  object dsoLoc: TwwDataSource
    DataSet = BUS_CD_C_ITE_LOC
    Left = 442
    Top = 68
  end
  object dsoEmp: TwwDataSource
    DataSet = dmGeral.BUS_CD_C_PAR
    Left = 618
    Top = 404
  end
  object pmSldAlm: TPopupMenu
    Left = 314
    Top = 397
    object Exibirpedidospedente1: TMenuItem
      Caption = 'Exibir pedidos pedente'
      OnClick = Exibirpedidospedente1Click
    end
  end
end
