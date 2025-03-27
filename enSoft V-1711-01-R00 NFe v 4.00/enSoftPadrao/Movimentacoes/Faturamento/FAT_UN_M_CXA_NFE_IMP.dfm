object FAT_FM_M_CXA_NFE_IMP: TFAT_FM_M_CXA_NFE_IMP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 470
  ClientWidth = 873
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 873
    Height = 33
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 871
      Height = 31
      Align = alClient
      Alignment = taCenter
      Caption = 'Nota Fiscal de Importa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 253
      ExplicitHeight = 30
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 873
    Height = 437
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlDados: TPanel
      Left = 8
      Top = 16
      Width = 825
      Height = 409
      BevelOuter = bvNone
      TabOrder = 0
      OnClick = pnlDadosClick
      object Label7: TLabel
        Left = 577
        Top = 126
        Width = 77
        Height = 13
        Caption = 'Via Transporte :'
      end
      object Label8: TLabel
        Left = 31
        Top = 126
        Width = 87
        Height = 13
        Caption = 'C'#243'd. Exportador :'
      end
      object Label9: TLabel
        Left = 25
        Top = 14
        Width = 48
        Height = 13
        Caption = 'Controle :'
      end
      object lblCodEstrangiero: TLabel
        Left = 360
        Top = 126
        Width = 88
        Height = 13
        Caption = 'C'#243'd. Estrangeiro :'
      end
      object gbDesembaraco: TGroupBox
        Left = 16
        Top = 34
        Width = 807
        Height = 81
        Caption = 'Desembara'#231'o'
        TabOrder = 1
        object Label6: TLabel
          Left = 28
          Top = 52
          Width = 30
          Height = 13
          Caption = 'Data :'
        end
        object Label4: TLabel
          Left = 27
          Top = 19
          Width = 31
          Height = 13
          Caption = 'Local :'
        end
        object Label5: TLabel
          Left = 548
          Top = 19
          Width = 20
          Height = 13
          Caption = 'UF :'
        end
        object txtLocalDesemb: TwwDBEdit
          Left = 64
          Top = 16
          Width = 457
          Height = 21
          DataField = 'xLocDesemb'
          DataSource = dsoCds
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object cbbUFDesemb: TwwDBLookupCombo
          Left = 574
          Top = 16
          Width = 56
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CODIGO'#9'2'#9'CODIGO'#9'F')
          DataField = 'UFDesemb'
          DataSource = dsoCds
          LookupTable = dmGeral.BUS_CD_X_UFS
          LookupField = 'CODIGO'
          TabOrder = 1
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object txtDataDesemb: TJvDBDateEdit
          Left = 64
          Top = 49
          Width = 121
          Height = 21
          DataField = 'dtaDesemb'
          DataSource = dsoCds
          ShowNullDate = False
          TabOrder = 2
        end
      end
      object btnGerar: TBitBtn
        Left = 554
        Top = 373
        Width = 134
        Height = 25
        Caption = 'Gravar '
        TabOrder = 6
        OnClick = btnGerarClick
      end
      object btnSair: TBitBtn
        Left = 692
        Top = 373
        Width = 134
        Height = 25
        Caption = 'Sair'
        Glyph.Data = {
          46030000424D460300000000000036000000280000000E0000000E0000000100
          2000000000001003000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208252525BC17171774060606210000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E981313135F2F2F2FEF323232FF2F2F2FF2222222AE101010530000
          0000000000000000000000000000000000000000000000000000323232FF1E1E
          1E9B2B2B2BDD323232FF323232FF323232FF303030F700000000000000000000
          000000000000000000000000000000000000323232FD1D1D1D932C2C2CDE3232
          32FF323232FF323232FF2F2F2FF1000000000000000000000000000000000000
          00000000000000000000323232FD1D1D1D932C2C2CDE323232FF323232FF3232
          32FF2F2F2FF00000000000000000000000000000000000000000000000000000
          0000323232FD1D1D1D922D2D2DE7323232FF323232FF323232FF2F2F2FF00000
          0000000000000000000000000000000000000000000000000000323232FD1F1F
          1F9C1D1D1D94242424B8323232FF323232FF2F2F2FF000000000000000000000
          000000000000000000000000000000000000323232FD1F1F1F9C1D1D1D942424
          24B8323232FF323232FF2F2F2FF0000000000000000000000000000000000000
          00000000000000000000323232FD1D1D1D922D2D2DE7323232FF323232FF3232
          32FF2F2F2FF00000000000000000000000000000000000000000000000000000
          0000323232FD1D1D1D932C2C2CDE323232FF323232FF323232FF2F2F2FF00000
          0000000000000000000000000000000000000000000000000000323232FD1D1D
          1D932C2C2CDE323232FF323232FF323232FF2F2F2FF000000000000000000000
          000000000000000000000000000000000000323232FF1E1E1E9B2B2B2BDD3232
          32FF323232FF323232FF313131FB000000000000000000000000000000000000
          000000000000000000001E1E1E981212125E2F2F2FEE323232FF323232FF2E2E
          2EED222222AC0000000000000000000000000000000000000000000000000000
          00000000000001010107272727C51D1D1D961010105105050517000000000000
          00000000000000000000}
        TabOrder = 7
        OnClick = btnSairClick
      end
      object gbItens: TGroupBox
        Left = 7
        Top = 160
        Width = 819
        Height = 207
        Caption = 'Itens'
        TabOrder = 5
        object wwDBGrid1: TwwDBGrid
          Left = 13
          Top = 68
          Width = 796
          Height = 125
          Selected.Strings = (
            'id_item'#9'10'#9'C'#243'd. Item'#9'F'
            'di_numero'#9'10'#9'N'#250'mero'#9'F'
            'di_data'#9'10'#9'Data'#9'F'
            'di_numero_adicao'#9'6'#9'Adi'#231#227'o'#9'F'
            'di_seq_adicao'#9'8'#9'Seq. Item'#9'F'
            'di_fabricante'#9'50'#9'C'#243'd. Fabricante'#9'F'
            'di_vlr_desconto'#9'15'#9'Vlr. Desc.'#9'F'
            'di_draw'#9'11'#9'DrawBack'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsoNfeIte
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
          OnEnter = wwDBGrid1Enter
          OnExit = wwDBGrid1Exit
          OnMouseUp = wwDBGrid1MouseUp
        end
        object pnlItens: TPanel
          Left = 10
          Top = 16
          Width = 806
          Height = 48
          BevelOuter = bvNone
          TabOrder = 1
          object Label10: TLabel
            Left = 6
            Top = 8
            Width = 48
            Height = 13
            Caption = 'C'#243'd. Item'
          end
          object Label11: TLabel
            Left = 277
            Top = 8
            Width = 32
            Height = 13
            Caption = 'Adi'#231#227'o'
          end
          object Label12: TLabel
            Left = 314
            Top = 8
            Width = 47
            Height = 13
            Caption = 'Seq. Item'
          end
          object Label13: TLabel
            Left = 367
            Top = 8
            Width = 77
            Height = 13
            Caption = 'C'#243'd. Fabricante'
          end
          object Label14: TLabel
            Left = 635
            Top = 8
            Width = 46
            Height = 13
            Caption = 'Vlr. Desc.'
          end
          object Label15: TLabel
            Left = 727
            Top = 8
            Width = 47
            Height = 13
            Caption = 'DrawBack'
          end
          object Label2: TLabel
            Left = 100
            Top = 6
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
          end
          object Label3: TLabel
            Left = 176
            Top = 6
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object txtnAdicao: TwwDBEdit
            Left = 274
            Top = 21
            Width = 35
            Height = 21
            DataField = 'di_numero_adicao'
            DataSource = dsoNfeIte
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtnAdicaoEnter
            OnExit = txtnAdicaoExit
            NumbersOnly = True
          end
          object txtnSeqAdic: TwwDBEdit
            Left = 312
            Top = 21
            Width = 49
            Height = 21
            DataField = 'di_seq_adicao'
            DataSource = dsoNfeIte
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtnSeqAdicEnter
            OnExit = txtnSeqAdicExit
            NumbersOnly = True
          end
          object txtFabricante: TwwDBEdit
            Left = 367
            Top = 21
            Width = 262
            Height = 21
            DataField = 'di_fabricante'
            DataSource = dsoNfeIte
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtFabricanteEnter
            OnExit = txtFabricanteExit
          end
          object txtVlrDesc: TwwDBEdit
            Left = 635
            Top = 20
            Width = 86
            Height = 21
            DataField = 'di_vlr_desconto'
            DataSource = dsoNfeIte
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtVlrDescEnter
            OnExit = txtVlrDescExit
          end
          object txtNDraw: TwwDBEdit
            Left = 725
            Top = 20
            Width = 73
            Height = 21
            DataField = 'di_draw'
            DataSource = dsoNfeIte
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtNDrawEnter
            OnExit = txtNDrawExit
            NumbersOnly = True
          end
          object txtCodItem: TwwDBEdit
            Left = 6
            Top = 21
            Width = 90
            Height = 21
            Color = 14342874
            DataField = 'id_item'
            DataSource = dsoNfeIte
            ReadOnly = True
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object txtNumero: TwwDBEdit
            Left = 99
            Top = 21
            Width = 73
            Height = 21
            DataField = 'di_numero'
            DataSource = dsoNfeIte
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = txtNumeroEnter
            OnExit = txtNumeroExit
            NumbersOnly = True
          end
          object txtDataID: TJvDBDateEdit
            Left = 176
            Top = 21
            Width = 97
            Height = 21
            DataField = 'di_data'
            DataSource = dsoNfeIte
            ShowNullDate = False
            TabOrder = 2
            OnEnter = txtDataIDEnter
            OnExit = txtDataIDExit
          end
        end
      end
      object txtControle: TwwDBEdit
        Left = 79
        Top = 11
        Width = 103
        Height = 21
        Color = 14342874
        DataField = 'id_fiscal'
        DataSource = dsoNfe
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object txtCodExportador: TwwDBEdit
        Left = 123
        Top = 123
        Width = 231
        Height = 21
        DataField = 'cExportador'
        DataSource = dsoCds
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object cbbViaTransp: TwwDBComboBox
        Left = 660
        Top = 123
        Width = 156
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'tpViaTransp'
        DataSource = dsoCds
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Mar'#237'tima'#9'1'
          'Fluvial'#9'2'
          'Lacustre'#9'3'
          'A'#233'rea'#9'4'
          'Postal'#9'5'
          'Ferrovi'#225'ria'#9'6'
          'Rodovi'#225'ria'#9'7'
          'Conduto / Rede Transmiss'#227'o'#9'8'
          'Meios Pr'#243'prios'#9'9'
          'Entrada / Sa'#237'da ficta'#9'10'
          'Courier'#9'11'
          'Handcarry'#9'12')
        Sorted = False
        TabOrder = 4
        UnboundDataType = wwDefault
      end
      object txtCodEstrangeiro: TwwDBEdit
        Left = 453
        Top = 123
        Width = 114
        Height = 21
        DataField = 'codEstrangeiro'
        DataSource = dsoCds
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object dsoNfeIte: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE_CXA
    Left = 400
    Top = 313
  end
  object cds: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 760
    Top = 169
    object cdsUFDesemb: TStringField
      FieldName = 'UFDesemb'
      Size = 2
    end
    object cdstpViaTransp: TStringField
      FieldName = 'tpViaTransp'
      Size = 2
    end
    object cdsxLocDesemb: TStringField
      FieldName = 'xLocDesemb'
      Size = 60
    end
    object cdscExportador: TStringField
      FieldName = 'cExportador'
      Size = 60
    end
    object cdsdtaDesemb: TDateField
      FieldName = 'dtaDesemb'
    end
    object cdscodEstrangeiro: TStringField
      FieldName = 'codEstrangeiro'
    end
  end
  object dsoNfe: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_CXA
    Left = 336
    Top = 313
  end
  object XMLDocument1: TXMLDocument
    Left = 760
    Top = 65
  end
  object dsoCds: TwwDataSource
    DataSet = cds
    Left = 712
    Top = 131
  end
end
