object CSU_FM_M_AUD: TCSU_FM_M_AUD
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 553
  ClientWidth = 1111
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
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 1111
    Height = 510
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlCentral: TPanel
      Left = 264
      Top = 3
      Width = 585
      Height = 414
      BevelOuter = bvNone
      TabOrder = 0
      object btnSair: TSpeedButton
        Left = 454
        Top = 381
        Width = 126
        Height = 25
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
      object gbFiltros: TGroupBox
        Left = 22
        Top = 4
        Width = 554
        Height = 230
        Caption = ' Filtros '
        TabOrder = 0
        object Label3: TLabel
          Left = 13
          Top = 19
          Width = 43
          Height = 13
          Caption = 'Per'#237'odo :'
        end
        object Label4: TLabel
          Left = 163
          Top = 19
          Width = 6
          Height = 13
          Caption = #224
        end
        object pcFiltros: TPageControl
          Left = 13
          Top = 43
          Width = 529
          Height = 180
          ActivePage = tsEmpresas
          TabOrder = 2
          object tsEmpresas: TTabSheet
            Caption = 'Empresa'
            ImageIndex = 3
            object lblEmpresasDisponiveis: TLabel
              Left = 3
              Top = 8
              Width = 254
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Empresas Dispon'#237'veis'
            end
            object lblEmpresaSelecionada: TLabel
              Left = 264
              Top = 8
              Width = 254
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Empresa Selecionada'
            end
            object lboxEmpresas: TListBox
              Left = 4
              Top = 24
              Width = 254
              Height = 121
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ItemHeight = 14
              ParentFont = False
              PopupMenu = pmSelEmpresas
              TabOrder = 0
              OnDblClick = lboxEmpresasDblClick
            end
            object lboxEmpresaSelecionada: TListBox
              Left = 264
              Top = 24
              Width = 254
              Height = 121
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ItemHeight = 14
              ParentFont = False
              PopupMenu = pmRemoverTodosEmpresa
              TabOrder = 1
              OnDblClick = lboxEmpresaSelecionadaDblClick
            end
          end
          object TabSheet1: TTabSheet
            Caption = 'Programa'
            ImageIndex = 2
            object Label1: TLabel
              Left = 75
              Top = 15
              Width = 358
              Height = 13
              Caption = 
                'D'#234' um click no campo abaixo e tecle <F3> para selecionar algum p' +
                'rograma'
            end
            object lboxPro: TListBox
              Left = 4
              Top = 28
              Width = 514
              Height = 121
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ItemHeight = 14
              ParentFont = False
              PopupMenu = pmRemoverPro
              TabOrder = 0
              OnKeyDown = lboxProKeyDown
            end
          end
          object tsVendedor: TTabSheet
            Caption = 'Funcion'#225'rio'
            ImageIndex = 1
            object Label2: TLabel
              Left = 75
              Top = 15
              Width = 358
              Height = 13
              Caption = 
                'D'#234' um click no campo abaixo e tecle <F3> para selecionar algum v' +
                'endedor'
            end
            object lboxFuncionario: TListBox
              Left = 3
              Top = 28
              Width = 515
              Height = 121
              ItemHeight = 13
              PopupMenu = pmRemoverFun
              TabOrder = 0
              OnKeyDown = lboxFuncionarioKeyDown
            end
          end
        end
        object deInicial: TJvDateEdit
          Left = 65
          Top = 16
          Width = 92
          Height = 21
          ShowNullDate = False
          TabOrder = 0
        end
        object deFinal: TJvDateEdit
          Left = 175
          Top = 16
          Width = 88
          Height = 21
          ShowNullDate = False
          TabOrder = 1
        end
      end
      object dgAud: TwwDBGrid
        AlignWithMargins = True
        Left = 22
        Top = 237
        Width = 554
        Height = 141
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        ControlType.Strings = (
          'ativo;CheckBox;True;False')
        Selected.Strings = (
          'id_aud'#9'10'#9'C'#243'digo'#9'F'
          'dta_servidor'#9'10'#9'Data'#9'F'
          'hor_servidor'#9'10'#9'Hora'#9'F'
          'int_empresa'#9'23'#9'Empresa'#9'F'
          'int_nomefun'#9'23'#9'Usuario'#9'F'
          'programa'#9'22'#9'Programa'#9'F')
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
        ReadOnly = True
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
      object btnFiltrar: TButton
        Left = 22
        Top = 381
        Width = 126
        Height = 25
        Caption = 'Filtrar'
        TabOrder = 2
        OnClick = btnFiltrarClick
      end
      object btnVisAud: TButton
        Left = 154
        Top = 381
        Width = 126
        Height = 25
        Caption = 'Visualiza Auditoria'
        TabOrder = 3
        OnClick = btnVisAudClick
      end
      object btnVisXml: TButton
        Left = 286
        Top = 381
        Width = 126
        Height = 25
        Caption = 'Visualiza Xml'
        TabOrder = 4
        OnClick = btnVisXmlClick
      end
    end
    object pnXml: TPanel
      Left = 0
      Top = 410
      Width = 1111
      Height = 100
      Align = alBottom
      TabOrder = 1
      Visible = False
      OnExit = pnXmlExit
      object ScrollBox1: TScrollBox
        Left = 1
        Top = 1
        Width = 1109
        Height = 98
        Align = alClient
        TabOrder = 0
        object dgXmlFil: TwwDBGrid
          Left = 0
          Top = 150
          Width = 1088
          Height = 81
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alTop
          DataSource = dsoXmlFil
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = dgXmlCalcCellColors
          OnKeyDown = dgXmlKeyDown
        end
        object Panel1: TPanel
          Left = 0
          Top = 125
          Width = 1088
          Height = 25
          Align = alTop
          Caption = 'Arquivo'
          Color = 3355443
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
        object Panel2: TPanel
          Left = 0
          Top = 106
          Width = 1088
          Height = 19
          Align = alTop
          TabOrder = 2
          object Label8: TLabel
            Left = 23
            Top = 3
            Width = 77
            Height = 13
            Caption = 'Registro original'
          end
          object Label5: TLabel
            Left = 151
            Top = 3
            Width = 83
            Height = 13
            Caption = 'Registro alterado'
          end
          object Panel4: TPanel
            Left = 5
            Top = 3
            Width = 13
            Height = 13
            BevelOuter = bvNone
            Color = clSkyBlue
            ParentBackground = False
            TabOrder = 0
          end
          object Panel3: TPanel
            Left = 133
            Top = 3
            Width = 13
            Height = 13
            BevelOuter = bvNone
            Color = 12698111
            ParentBackground = False
            TabOrder = 1
          end
        end
        object dgXml: TwwDBGrid
          Left = 0
          Top = 25
          Width = 1088
          Height = 81
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alTop
          DataSource = dsoXml
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 3
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = dgXmlCalcCellColors
          OnKeyDown = dgXmlKeyDown
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1088
          Height = 25
          Align = alTop
          Caption = 'Arquivo'
          Color = 3355443
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
          object btnFechar: TSpeedButton
            Left = 1025
            Top = 1
            Width = 62
            Height = 23
            Align = alRight
            Caption = 'Fechar'
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
            OnClick = btnFecharClick
            ExplicitLeft = 1022
            ExplicitTop = 0
            ExplicitHeight = 22
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 250
          Width = 1088
          Height = 25
          Align = alTop
          Caption = 'Arquivo'
          Color = 3355443
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 5
        end
        object dgXmlFil2: TwwDBGrid
          Left = 0
          Top = 275
          Width = 1088
          Height = 81
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alTop
          DataSource = dsoXmlFil2
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 6
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = dgXmlCalcCellColors
          OnKeyDown = dgXmlKeyDown
        end
        object Panel7: TPanel
          Left = 0
          Top = 231
          Width = 1088
          Height = 19
          Align = alTop
          TabOrder = 7
          object Label6: TLabel
            Left = 23
            Top = 3
            Width = 77
            Height = 13
            Caption = 'Registro original'
          end
          object Label7: TLabel
            Left = 151
            Top = 3
            Width = 83
            Height = 13
            Caption = 'Registro alterado'
          end
          object Panel8: TPanel
            Left = 5
            Top = 3
            Width = 13
            Height = 13
            BevelOuter = bvNone
            Color = clSkyBlue
            ParentBackground = False
            TabOrder = 0
          end
          object Panel9: TPanel
            Left = 133
            Top = 3
            Width = 13
            Height = 13
            BevelOuter = bvNone
            Color = 12698111
            ParentBackground = False
            TabOrder = 1
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 356
          Width = 1088
          Height = 19
          Align = alTop
          TabOrder = 8
          object Label9: TLabel
            Left = 23
            Top = 3
            Width = 77
            Height = 13
            Caption = 'Registro original'
          end
          object Label10: TLabel
            Left = 151
            Top = 3
            Width = 83
            Height = 13
            Caption = 'Registro alterado'
          end
          object Panel11: TPanel
            Left = 5
            Top = 3
            Width = 13
            Height = 13
            BevelOuter = bvNone
            Color = clSkyBlue
            ParentBackground = False
            TabOrder = 0
          end
          object Panel12: TPanel
            Left = 133
            Top = 3
            Width = 13
            Height = 13
            BevelOuter = bvNone
            Color = 12698111
            ParentBackground = False
            TabOrder = 1
          end
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1111
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
      Width = 1111
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
        Width = 1111
        Height = 25
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Auditoria'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitLeft = 40
        ExplicitWidth = 1071
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 30
      Width = 1111
      Height = 13
      Align = alClient
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
    end
  end
  object CSU_CD_M_AUD: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CSU_DP_M_AUD'
    RemoteServer = dmGeral.pcConecao
    Left = 1024
    Top = 238
    object CSU_CD_M_AUDdta_servidor: TDateField
      FieldName = 'dta_servidor'
    end
    object CSU_CD_M_AUDhor_servidor: TTimeField
      FieldName = 'hor_servidor'
    end
    object CSU_CD_M_AUDarq_auditoria: TBlobField
      FieldName = 'arq_auditoria'
    end
    object CSU_CD_M_AUDid_usuario: TIntegerField
      FieldName = 'id_usuario'
    end
    object CSU_CD_M_AUDid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object CSU_CD_M_AUDprograma: TWideStringField
      FieldName = 'programa'
      Size = 30
    end
    object CSU_CD_M_AUDid_aud: TIntegerField
      FieldName = 'id_aud'
    end
    object CSU_CD_M_AUDint_nomefun: TWideStringField
      FieldName = 'int_nomefun'
      Size = 50
    end
    object CSU_CD_M_AUDint_empresa: TWideStringField
      FieldName = 'int_empresa'
      Size = 50
    end
  end
  object dso: TDataSource
    DataSet = CSU_CD_M_AUD
    Left = 1026
    Top = 289
  end
  object pmSelEmpresas: TPopupMenu
    Left = 1024
    Top = 101
    object menuItemEmpresas: TMenuItem
      Caption = 'Todas as Empresas'
      OnClick = menuItemEmpresasClick
    end
  end
  object pmRemoverTodosEmpresa: TPopupMenu
    Left = 1024
    Top = 55
    object btnRemoverTodosEmpresa: TMenuItem
      Caption = 'Remover Todas Empresas'
      OnClick = btnRemoverTodosEmpresaClick
    end
  end
  object pmRemoverFun: TPopupMenu
    Left = 1023
    Top = 148
    object btnRemoverVnd: TMenuItem
      Caption = 'Remover Vendedor'
      OnClick = btnRemoverVndClick
    end
    object btnRemoverTodosVnd: TMenuItem
      Caption = 'Remover Todos Vendedores'
      OnClick = btnRemoverTodosVndClick
    end
  end
  object pmRemoverPro: TPopupMenu
    Left = 1023
    Top = 196
    object btnRemoverPro: TMenuItem
      Caption = 'Remover Programa'
      OnClick = btnRemoverProClick
    end
    object btnRemoverTodosPro: TMenuItem
      Caption = 'Remover Todos Programas'
      OnClick = btnRemoverTodosProClick
    end
  end
  object CSU_CD_X_XML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1024
    Top = 385
  end
  object dsoXml: TDataSource
    DataSet = CSU_CD_X_XML
    Left = 978
    Top = 289
  end
  object XMLTransformProvider1: TXMLTransformProvider
    TransformRead.TransformationFile = 
      'Z:\branches\enSoft V-1705-01-R00\enSoftLoja\Win32\Debug\AUDToDp.' +
      'xtr'
    XMLDataFile = 
      'Z:\branches\enSoft V-1705-01-R00\enSoftLoja\Win32\Debug\auditori' +
      'a.xml'
    Left = 910
    Top = 77
  end
  object CSU_CD_X_XML_FIL: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 920
    Top = 385
  end
  object dsoXmlFil: TDataSource
    DataSet = CSU_CD_X_XML_FIL2
    Left = 898
    Top = 289
  end
  object CSU_CD_X_XML_FIL2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 920
    Top = 337
  end
  object dsoXmlFil2: TDataSource
    DataSet = CSU_CD_X_XML_FIL
    Left = 946
    Top = 225
  end
end
