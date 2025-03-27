object PCP_FM_M_ROM_ICF: TPCP_FM_M_ROM_ICF
  Left = 0
  Top = 0
  ClientHeight = 665
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 40
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 998
      Height = 38
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Confer'#234'ncia da Carga'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExplicitHeight = 24
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 40
    Width = 1000
    Height = 625
    Align = alClient
    TabOrder = 1
    object pnlDados: TPanel
      Left = 1
      Top = 1
      Width = 998
      Height = 623
      Align = alClient
      TabOrder = 0
      object pnRodape: TPanel
        Left = 1
        Top = 578
        Width = 996
        Height = 44
        Align = alBottom
        BevelKind = bkTile
        TabOrder = 0
        DesignSize = (
          992
          40)
        object btnGravar: TButton
          AlignWithMargins = True
          Left = 642
          Top = 4
          Width = 103
          Height = 0
          Anchors = [akTop, akRight, akBottom]
          Caption = 'Gravar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 5
          ParentFont = False
          TabOrder = 0
          OnClick = btnGravarClick
        end
        object btnSair: TButton
          AlignWithMargins = True
          Left = 746
          Top = 4
          Width = 105
          Height = 0
          Anchors = [akTop, akRight, akBottom]
          Caption = 'Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 4
          ParentFont = False
          TabOrder = 1
          OnClick = btnSairClick
        end
        object btnRealocarEtiq: TBitBtn
          Left = 4
          Top = 4
          Width = 221
          Height = 31
          Caption = 'Realocar etiquetas p/ outro pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnRealocarEtiqClick
        end
      end
      object grdPedIcf: TwwDBGrid
        Left = 1
        Top = 378
        Width = 996
        Height = 200
        Selected.Strings = (
          'cod_barra'#9'24'#9'Cod. Barra'#9'T'
          'id_item'#9'14'#9'Cod. Item'#9'T'
          'int_nomeite'#9'47'#9'Item'#9'F'
          'int_undvenda'#9'4'#9'Und'#9'T'
          'int_nometam'#9'12'#9'Tamanho'#9'T'
          'int_nomecor'#9'19'#9'Cor'#9'T'
          'id_pedido'#9'10'#9'Pedido'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alBottom
        DataSource = dsRomIcf
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgProportionalColResize]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        UseTFields = False
        object grdItensIButton: TwwIButton
          Left = 0
          Top = 0
          Width = 25
          Height = 25
          AllowAllUp = True
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            18000000000068020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF33333333333333
            3333333333333333333333333333333333333333333333333333333333FFFFFF
            0000FFFFFF333333333333333333333333333333333333333333333333333333
            333333333333333333FFFFFF0000FFFFFF333333333333333333333333333333
            333333333333333333333333333333333333333333FFFFFF0000FFFFFF333333
            3333333333333333333333333333333333333333333333333333333333333333
            33FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000}
          Visible = False
          OnClick = grdItensIButtonClick
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 319
        Width = 996
        Height = 59
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object pnlIte: TPanel
          Left = 33
          Top = 6
          Width = 978
          Height = 50
          BevelOuter = bvNone
          TabOrder = 0
          object lblCodBarra: TLabel
            Left = 81
            Top = 4
            Width = 70
            Height = 18
            Caption = 'C'#243'd. Barra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 337
            Top = 4
            Width = 62
            Height = 18
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 922
            Top = 4
            Width = 26
            Height = 18
            Caption = 'Und'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object txtIdItemButton: TSpeedButton
            Left = 229
            Top = 2
            Width = 27
            Height = 16
            Visible = False
          end
          object Label1: TLabel
            Left = 2
            Top = 4
            Width = 42
            Height = 18
            Caption = 'Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object txtDescricao: TwwDBEdit
            Left = 336
            Top = 23
            Width = 580
            Height = 24
            TabStop = False
            BorderStyle = bsNone
            Color = 14342874
            DataField = 'int_nomeite'
            DataSource = dsRomIcf
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object txtUnd: TwwDBEdit
            Left = 922
            Top = 23
            Width = 40
            Height = 25
            TabStop = False
            BorderStyle = bsNone
            Color = 14342874
            DataField = 'int_undvenda'
            DataSource = dsRomIcf
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object txtIdItem: TwwDBEdit
            Left = 77
            Top = 22
            Width = 255
            Height = 26
            DataField = 'cod_barra'
            DataSource = dsRomIcf
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtIdItemEnter
            OnExit = txtIdItemExit
            NumbersOnly = True
          end
          object pnlQtde: TPanel
            Left = 194
            Top = -6
            Width = 117
            Height = 54
            TabOrder = 4
            Visible = False
            object Label19: TLabel
              Left = 11
              Top = 4
              Width = 32
              Height = 18
              Caption = 'Qtde'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object txtQtdeInf: TEdit
              Left = 11
              Top = 26
              Width = 94
              Height = 26
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = '0'
              OnExit = txtQtdeInfExit
            end
          end
          object txtPedido: TEdit
            Left = 2
            Top = 22
            Width = 73
            Height = 26
            AutoSelect = False
            Color = 14342874
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = txtPedidoExit
          end
        end
        object btnAddIte: TBitBtn
          Left = 2
          Top = 27
          Width = 25
          Height = 25
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            18000000000068020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333333333333333333
            33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF333333333333333333333333FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333
            3333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF33333333333333
            3333333333333333333333333333333333333333333333333333333333FFFFFF
            0000FFFFFF333333333333333333333333333333333333333333333333333333
            333333333333333333FFFFFF0000FFFFFF333333333333333333333333333333
            333333333333333333333333333333333333333333FFFFFF0000FFFFFF333333
            3333333333333333333333333333333333333333333333333333333333333333
            33FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333333333333333333
            33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF333333333333333333333333FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333
            3333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000}
          TabOrder = 1
          OnClick = btnAddIteClick
        end
      end
      object pnTotalItens: TPanel
        Left = 1
        Top = 276
        Width = 996
        Height = 43
        Align = alBottom
        BevelKind = bkTile
        TabOrder = 3
        object Label12: TLabel
          Left = 321
          Top = 14
          Width = 158
          Height = 16
          Caption = 'Total de itens da carga :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 634
          Top = 14
          Width = 219
          Height = 16
          Caption = 'Total de itens da carga conferido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 29
          Top = 12
          Width = 68
          Height = 18
          Caption = 'Em aberto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 133
          Top = 12
          Width = 65
          Height = 18
          Caption = 'Encerrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtTotalItensCarg: TEdit
          Left = 484
          Top = 10
          Width = 121
          Height = 24
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = 'txtTotalItensCarg'
        end
        object txtTotalItensConfCarg: TEdit
          Left = 859
          Top = 10
          Width = 121
          Height = 24
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = 'txtTotalItensConfCarg'
        end
        object Panel7: TPanel
          Left = 4
          Top = 9
          Width = 22
          Height = 21
          Color = clBlue
          ParentBackground = False
          TabOrder = 2
        end
        object Panel6: TPanel
          Left = 108
          Top = 9
          Width = 22
          Height = 21
          Color = clGreen
          ParentBackground = False
          TabOrder = 3
        end
      end
      object grdRomItens: TwwDBGrid
        Left = 1
        Top = 1
        Width = 996
        Height = 275
        Selected.Strings = (
          'id_item'#9'10'#9'C'#243'digo'
          'nome_ite'#9'52'#9'Descri'#231#227'o'
          'int_undvenda'#9'3'#9'Und'
          'int_nomecor'#9'27'#9'Cor'
          'qtde'#9'10'#9'Qtde'
          'qtde_conferida'#9'12'#9'Qtde conferida')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsRomIte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 4
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = grdRomItensCalcCellColors
      end
    end
  end
  object dsRomIte: TDataSource
    DataSet = dmGeral.PCP_CD_M_ROM_ITE
    Left = 184
    Top = 176
  end
  object dsRomIcf: TDataSource
    DataSet = dmGeral.PCP_CD_M_ROM_ICF
    Left = 184
    Top = 232
  end
end
