object FAT_FM_M_GAM: TFAT_FM_M_GAM
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Gera'#231#227'o de Arquivo Magn'#233'tico'
  ClientHeight = 525
  ClientWidth = 1031
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelCentral: TPanel
    Left = 0
    Top = 0
    Width = 1033
    Height = 521
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object PcNotaFscal: TPageControl
      AlignWithMargins = True
      Left = 6
      Top = 12
      Width = 1021
      Height = 398
      ActivePage = tsNotaFiscal
      TabOrder = 0
      object tsNotaFiscal: TTabSheet
        Caption = 'Notas Fiscais'
        DoubleBuffered = False
        ParentDoubleBuffered = False
        OnShow = tsNotaFiscalShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dgNotaFiscal: TwwDBGrid
          Left = 3
          Top = 2
          Width = 998
          Height = 179
          Selected.Strings = (
            'int_nomeope'#9'10'#9'Opera'#231#227'o'
            'dta_emissao'#9'10'#9'Emiss'#227'o'
            'int_nomeemi'#9'40'#9'Participante'
            'modelo'#9'5'#9'Modelo'
            'situacao_inspecao'#9'5'#9'Situa'#231#227'o'
            'serie'#9'10'#9'Serie'#9'F'
            'numero'#9'10'#9'N'#186' Doc.'
            'dta_documento'#9'10'#9'Dta. Doc.'
            'int_nomecpg'#9'10'#9'Cond. Pag.'
            'nfe_chave'#9'45'#9'Chave'
            'vlr_mercadoria'#9'12'#9'Vlr.Mercadoria'#9'F'
            'vlr_desconto'#9'12'#9'Vlr.Desconto'#9'F'
            'vlr_liquido'#9'12'#9'Vlr.Total'#9'F'
            'icm_n_base'#9'10'#9'Base.Icms'#9'F'#9'ICMS Normal'
            'icm_n_valor'#9'10'#9'Vlr.Icms'#9'F'#9'ICMS Normal'
            'icm_s_base'#9'10'#9'Base.Icms'#9'F'#9'ICMS Substituto'
            'icm_s_valor'#9'10'#9'Vlr.Icms'#9'F'#9'ICMS Substituto'
            'ipi_valor'#9'10'#9'Vlr.IPI'#9'F'
            'pis_valor'#9'10'#9'Vlr.PIS'#9'F'
            'cof_valor'#9'10'#9'Vlr.Cofins'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          DataSource = dso
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 3
          TitleButtons = False
          UseTFields = False
        end
        object dgNotaItem: TwwDBGrid
          Left = 3
          Top = 187
          Width = 998
          Height = 179
          Selected.Strings = (
            'id_sequencia'#9'10'#9'Seq.'#9#9
            'id_cfo'#9'5'#9'CFOP'#9#9
            'id_item'#9'10'#9'Item'#9#9
            'int_desc_item'#9'40'#9'Descri'#231#227'o'#9#9
            'int_und_venda'#9'10'#9'UND'#9#9
            'qtde'#9'10'#9'Qtde'#9#9
            'vlr_unitario'#9'10'#9'Vlr. Item'#9#9
            'vlr_desconto'#9'10'#9'Vlr. Desconto'#9#9
            'vlr_liquido'#9'10'#9'Vlr. Opera'#231#227'o'#9#9
            'id_st_icm'#9'5'#9'CST'#9'F'#9'ICMS Normal'
            'icm_n_base'#9'5'#9'Base.Icms'#9'F'#9'ICMS Normal'
            'icm_n_aliquota'#9'5'#9'Aliquota'#9'F'#9'ICMS Normal'
            'icm_n_valor'#9'10'#9'Vlr.Icms'#9'F'#9'ICMS Normal'
            'icm_s_base'#9'5'#9'Base.Icms'#9'F'#9'ICMS Substituto'
            'icm_s_valor'#9'10'#9'Vlr.Icms'#9'F'#9'ICMS Substituto')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          DataSource = dsoIte
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 3
          TitleButtons = False
          UseTFields = False
        end
      end
      object tsCupomFiscal: TTabSheet
        Caption = 'Cupom Fiscal'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object wwDBGrid1: TwwDBGrid
          Left = 3
          Top = 2
          Width = 998
          Height = 179
          Selected.Strings = (
            'int_nomeope'#9'10'#9'Opera'#231#227'o'
            'dta_emissao'#9'10'#9'Emiss'#227'o'
            'int_nomeemi'#9'40'#9'Participante'
            'modelo'#9'5'#9'Modelo'
            'situacao_inspecao'#9'5'#9'Situa'#231#227'o'
            'serie'#9'10'#9'Serie'#9'F'
            'numero'#9'10'#9'N'#186' Doc.'
            'dta_documento'#9'10'#9'Dta. Doc.'
            'int_nomecpg'#9'10'#9'Cond. Pag.'
            'nfe_chave'#9'45'#9'Chave'
            'vlr_mercadoria'#9'12'#9'Vlr.Mercadoria'#9'F'
            'vlr_desconto'#9'12'#9'Vlr.Desconto'#9'F'
            'vlr_liquido'#9'12'#9'Vlr.Total'#9'F'
            'icm_n_base'#9'10'#9'Base.Icms'#9'F'#9'ICMS Normal'
            'icm_n_valor'#9'10'#9'Vlr.Icms'#9'F'#9'ICMS Normal'
            'icm_s_base'#9'10'#9'Base.Icms'#9'F'#9'ICMS Substituto'
            'icm_s_valor'#9'10'#9'Vlr.Icms'#9'F'#9'ICMS Substituto'
            'ipi_valor'#9'10'#9'Vlr.IPI'#9'F'
            'pis_valor'#9'10'#9'Vlr.PIS'#9'F'
            'cof_valor'#9'10'#9'Vlr.Cofins'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          DataSource = dso2
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 3
          TitleButtons = False
          UseTFields = False
        end
        object wwDBGrid2: TwwDBGrid
          Left = 3
          Top = 187
          Width = 998
          Height = 179
          Selected.Strings = (
            'id_sequencia'#9'10'#9'Seq.'#9#9
            'id_cfo'#9'5'#9'CFOP'#9#9
            'id_item'#9'10'#9'Item'#9#9
            'int_desc_item'#9'40'#9'Descri'#231#227'o'#9#9
            'int_und_venda'#9'10'#9'UND'#9#9
            'qtde'#9'10'#9'Qtde'#9#9
            'vlr_unitario'#9'10'#9'Vlr. Item'#9#9
            'vlr_desconto'#9'10'#9'Vlr. Desconto'#9#9
            'vlr_liquido'#9'10'#9'Vlr. Opera'#231#227'o'#9#9
            'id_st_icm'#9'5'#9'CST'#9'F'#9'ICMS Normal'
            'icm_n_base'#9'5'#9'Base.Icms'#9'F'#9'ICMS Normal'
            'icm_n_aliquota'#9'5'#9'Aliquota'#9'F'#9'ICMS Normal'
            'icm_n_valor'#9'10'#9'Vlr.Icms'#9'F'#9'ICMS Normal'
            'icm_s_base'#9'5'#9'Base.Icms'#9'F'#9'ICMS Substituto'
            'icm_s_valor'#9'10'#9'Vlr.Icms'#9'F'#9'ICMS Substituto')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          DataSource = dsoIte2
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 3
          TitleButtons = False
          UseTFields = False
        end
      end
      object tsSpedContribuicoes: TTabSheet
        Caption = 'Sped Contribui'#231#245'es'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox1: TGroupBox
          Left = 3
          Top = 3
          Width = 502
          Height = 142
          Caption = '0111 - Rateio de Cr'#233'dito Comuns'
          TabOrder = 0
          object Label3: TLabel
            Left = 41
            Top = 18
            Width = 305
            Height = 13
            Caption = 'Receita Bruta N'#227'o-Cumulativa - Tributada no Mercado Interno :'
          end
          object Label4: TLabel
            Left = 19
            Top = 40
            Width = 327
            Height = 13
            Caption = 
              'Receita Bruta N'#227'o-Cumulativa - N'#227'o Tributada no Mercado Interno ' +
              ':'
          end
          object Label5: TLabel
            Left = 130
            Top = 64
            Width = 216
            Height = 13
            Caption = 'Receita Bruta N'#227'o-Cumulativa - Exporta'#231#227'o :'
          end
          object Label6: TLabel
            Left = 218
            Top = 89
            Width = 128
            Height = 13
            Caption = 'Receita Bruta Cumulativa :'
          end
          object Label7: TLabel
            Left = 274
            Top = 113
            Width = 72
            Height = 13
            Caption = 'Receita Bruta :'
          end
          object TXT_REC_BRU_NCUM_TRIB_MI: TEdit
            Left = 352
            Top = 16
            Width = 135
            Height = 21
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
          end
          object TXT_REC_BRU_NCUM_NT_MI: TEdit
            Left = 352
            Top = 38
            Width = 135
            Height = 21
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 1
          end
          object TXT_REC_BRU_NCUM_EXP: TEdit
            Left = 352
            Top = 62
            Width = 135
            Height = 21
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 2
          end
          object TXT_REC_BRU_CUM: TEdit
            Left = 352
            Top = 87
            Width = 135
            Height = 21
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 3
          end
          object TXT_REC_BRU_TOTAL: TEdit
            Left = 352
            Top = 111
            Width = 135
            Height = 21
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 4
          end
        end
      end
    end
    object pnlDown: TPanel
      Left = 6
      Top = 408
      Width = 1017
      Height = 113
      BevelOuter = bvNone
      TabOrder = 1
      object lblPeriodo: TLabel
        Left = 15
        Top = 3
        Width = 43
        Height = 13
        Caption = 'Periodo :'
      end
      object Label1: TLabel
        Left = 15
        Top = 44
        Width = 48
        Height = 13
        Caption = 'Empresa :'
      end
      object Label2: TLabel
        Left = 401
        Top = 97
        Width = 121
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#186' Rec. Retifica'#231#227'o Ant.:'
        WordWrap = True
      end
      object Label8: TLabel
        Left = 15
        Top = 25
        Width = 139
        Height = 13
        Caption = 'Data Invent'#225'rio Sped Fiscal :'
      end
      object lblItens0200: TLabel
        Left = 752
        Top = 64
        Width = 46
        Height = 13
        Caption = 'qtde0200'
      end
      object dtaInicial: TJvDateEdit
        Left = 65
        Top = 0
        Width = 94
        Height = 19
        ShowNullDate = False
        TabOrder = 0
        OnChange = dtaInicialChange
      end
      object dtaFinal: TJvDateEdit
        Left = 165
        Top = 0
        Width = 94
        Height = 19
        ShowNullDate = False
        TabOrder = 1
        OnChange = dtaFinalChange
      end
      object btnSEF: TButton
        Left = 489
        Top = 0
        Width = 106
        Height = 23
        Caption = 'SEF'
        TabOrder = 5
        OnClick = btnSEFClick
      end
      object btnSpedFiscal: TButton
        Left = 377
        Top = -1
        Width = 106
        Height = 23
        Caption = 'Sped Fiscal'
        TabOrder = 7
        OnClick = btnSpedFiscalClick
      end
      object btnSpedPisCofins: TButton
        Left = 377
        Top = 24
        Width = 106
        Height = 23
        Caption = 'Sped Pis/Cofins'
        TabOrder = 8
        OnClick = btnSpedPisCofinsClick
      end
      object btnEdoc: TButton
        Left = 489
        Top = 24
        Width = 106
        Height = 23
        Caption = 'eDoc'
        TabOrder = 6
        OnClick = btnEdocClick
      end
      object ClbEmpresa: TCheckListBox
        Left = 64
        Top = 44
        Width = 195
        Height = 61
        ItemHeight = 13
        TabOrder = 3
        OnClick = ClbEmpresaClick
      end
      object btnInventario: TButton
        Left = 377
        Top = 48
        Width = 106
        Height = 23
        Caption = 'Gerar Invent'#225'rio'
        TabOrder = 9
        OnClick = btnInventarioClick
      end
      object btnFiltrar: TButton
        Left = 265
        Top = -1
        Width = 106
        Height = 106
        Caption = 'Carregar'
        TabOrder = 4
        OnClick = btnFiltrarClick
      end
      object BitBtn1: TBitBtn
        Left = 601
        Top = 0
        Width = 138
        Height = 106
        Caption = 'Sair'
        Glyph.Data = {
          66090000424D660900000000000036000000280000001C0000001C0000000100
          18000000000030090000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A8A8
          A8E4E4E4F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4C8C8C8CC8C8C8EBEBEBFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF323232323232323232595959959595C8C8C8F3F3F3FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF989898989898989898FFFFFF323232323232323232
          323232323232323232636363989898CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32
          3232323232323232FFFFFF323232323232323232323232323232323232323232
          3232323D3D3D686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF32
          3232323232323232323232323232323232323232323232323232323232FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF323232323232323232FFFFFF32323232323232323232323232
          3232323232323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232
          32323232FFFFFF32323232323232323232323232323232323232323232323232
          3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF3232323232
          32323232323232323232323232323232323232323232323232FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF323232323232323232FFFFFF3232323232323232323232323232323232
          32323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232
          FFFFFF3232323232323232323232323232323232323232323232323232323232
          32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF323232323232323232
          323232323232323232323232323232323232323232FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32
          3232323232323232FFFFFF323232323232323232323232323232323232323232
          323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF32
          3232E1E1E1E1E1E1323232323232323232323232323232323232323232FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF323232323232323232FFFFFF323232E1E1E1E1E1E132323232
          3232323232323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232
          32323232FFFFFF32323232323232323232323232323232323232323232323232
          3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF3232323232
          32323232323232323232323232323232323232323232323232FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF323232323232323232FFFFFF3232323232323232323232323232323232
          32323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232
          FFFFFF3232323232323232323232323232323232323232323232323232323232
          32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF323232323232323232
          323232323232323232323232323232323232323232FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32
          3232323232323232FFFFFF323232323232323232323232323232323232323232
          323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232FFFFFF32
          3232323232323232323232323232323232323232323232323232323232FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF323232323232323232FFFFFF32323232323232323232323232
          3232323232323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232
          32323232FFFFFF32323232323232323232323232323232323232323232323232
          3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF989898989898989898FFFFFF3232323232
          323232323232323232323232323232323636365D5D5D868686FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232323232323232325151517F7F
          7FABABABCFCFCFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF444444757575A4A4A4D0D0D0E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F919191C1C1C1
          EBEBEBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        TabOrder = 10
        OnClick = BitBtn1Click
      end
      object txtNumReciboEscrituracaoAnterior: TEdit
        Left = 528
        Top = 94
        Width = 65
        Height = 19
        TabOrder = 11
      end
      object dtaInventario: TJvDateEdit
        Left = 165
        Top = 22
        Width = 94
        Height = 19
        ShowNullDate = False
        TabOrder = 2
        OnChange = dtaInicialChange
      end
      object btnDestda: TButton
        Left = 489
        Top = 48
        Width = 106
        Height = 23
        Caption = 'DeSTDA'
        TabOrder = 12
        OnClick = btnDestdaClick
      end
      object Button1: TButton
        Left = 745
        Top = 0
        Width = 97
        Height = 41
        Caption = 'Gerar Chave Nfe'
        TabOrder = 13
        Visible = False
        OnClick = Button1Click
      end
      object btnSintegra: TButton
        Left = 377
        Top = 72
        Width = 106
        Height = 23
        Caption = 'Sintegra'
        TabOrder = 14
        OnClick = btnSintegraClick
      end
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE
    Left = 792
    Top = 104
  end
  object dsoIte: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE
    Left = 792
    Top = 296
  end
  object dlgSave: TSaveDialog
    FileName = 'C:\Enorth\enSoft\enSoftLoja\Win32\Debug\emp'
    Left = 949
    Top = 319
  end
  object dso2: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_2
    Left = 872
    Top = 104
  end
  object dsoIte2: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE_2
    Left = 872
    Top = 296
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = 'C:\Program Files (x86)\Embarcadero\RAD Studio\11.0\bin\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 950
    Top = 152
  end
  object ACBrSPEDPisCofins1: TACBrSPEDPisCofins
    Path = 'C:\Program Files (x86)\Embarcadero\RAD Studio\11.0\bin\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 950
    Top = 104
  end
  object FAT_CD_R_GAM_150: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_150'
    RemoteServer = dmGeral.pcConecao
    Left = 1085
    Top = 50
    object FAT_CD_R_GAM_150codigo: TIntegerField
      FieldName = 'codigo'
    end
    object FAT_CD_R_GAM_150cod_pais: TWideMemoField
      FieldName = 'cod_pais'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_150nome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object FAT_CD_R_GAM_150doc_cnpj_cpf: TWideMemoField
      FieldName = 'doc_cnpj_cpf'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_150uf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object FAT_CD_R_GAM_150ie: TWideMemoField
      FieldName = 'ie'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_150id_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object FAT_CD_R_GAM_150im: TWideStringField
      FieldName = 'im'
    end
    object FAT_CD_R_GAM_150suframa: TWideMemoField
      FieldName = 'suframa'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_150endereco: TWideMemoField
      FieldName = 'endereco'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_150numero: TWideMemoField
      FieldName = 'numero'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_150end_complemento: TWideStringField
      FieldName = 'end_complemento'
      Size = 30
    end
    object FAT_CD_R_GAM_150bairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
  end
  object FAT_CD_R_GAM_E20: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_E20'
    RemoteServer = dmGeral.pcConecao
    Left = 1085
    Top = 434
    object FAT_CD_R_GAM_E20id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_E20ind_operacao: TIntegerField
      FieldName = 'ind_operacao'
    end
    object FAT_CD_R_GAM_E20ind_emitente: TIntegerField
      FieldName = 'ind_emitente'
    end
    object FAT_CD_R_GAM_E20cpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object FAT_CD_R_GAM_E20cod_participantes: TIntegerField
      FieldName = 'cod_participantes'
    end
    object FAT_CD_R_GAM_E20modelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_GAM_E20situacao_lancto: TWideStringField
      FieldName = 'situacao_lancto'
      Size = 2
    end
    object FAT_CD_R_GAM_E20serie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_GAM_E20numero: TIntegerField
      FieldName = 'numero'
    end
    object FAT_CD_R_GAM_E20nfe_chave: TWideStringField
      FieldName = 'nfe_chave'
      Size = 44
    end
    object FAT_CD_R_GAM_E20dta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object FAT_CD_R_GAM_E20dta_documento: TDateField
      FieldName = 'dta_documento'
    end
    object FAT_CD_R_GAM_E20cod_natureza: TWideStringField
      FieldName = 'cod_natureza'
      Size = 4
    end
    object FAT_CD_R_GAM_E20cod_cla_oper: TWideStringField
      FieldName = 'cod_cla_oper'
      Size = 4
    end
    object FAT_CD_R_GAM_E20num_lancto_contabil: TIntegerField
      FieldName = 'num_lancto_contabil'
    end
    object FAT_CD_R_GAM_E20ind_pagamento: TIntegerField
      FieldName = 'ind_pagamento'
    end
    object FAT_CD_R_GAM_E20vlr_contabil: TFMTBCDField
      FieldName = 'vlr_contabil'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E20vlr_iss: TFMTBCDField
      FieldName = 'vlr_iss'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E20vlr_base_icms: TFMTBCDField
      FieldName = 'vlr_base_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E20vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E20vlr_icms_subst: TFMTBCDField
      FieldName = 'vlr_icms_subst'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E20vlr_icms_subst_credit: TIntegerField
      FieldName = 'vlr_icms_subst_credit'
    end
    object FAT_CD_R_GAM_E20vlr_icms_subst_saida: TIntegerField
      FieldName = 'vlr_icms_subst_saida'
    end
    object FAT_CD_R_GAM_E20vlr_icms_oper_entr: TIntegerField
      FieldName = 'vlr_icms_oper_entr'
    end
    object FAT_CD_R_GAM_E20vlr_isenta: TFMTBCDField
      FieldName = 'vlr_isenta'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E20vlr_outras: TFMTBCDField
      FieldName = 'vlr_outras'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E20vlr_ipi: TFMTBCDField
      FieldName = 'vlr_ipi'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E20vlr_outros_ipi: TIntegerField
      FieldName = 'vlr_outros_ipi'
    end
  end
  object FAT_CD_R_GAM_E25: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_E25'
    RemoteServer = dmGeral.pcConecao
    Left = 1205
    Top = 434
    object FAT_CD_R_GAM_E25id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_E25id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_E25aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object FAT_CD_R_GAM_E25vlr_mercadoria: TFMTBCDField
      FieldName = 'vlr_mercadoria'
      Precision = 32
    end
    object FAT_CD_R_GAM_E25vlr_iss: TFMTBCDField
      FieldName = 'vlr_iss'
      Precision = 32
    end
    object FAT_CD_R_GAM_E25vlr_base_icms: TFMTBCDField
      FieldName = 'vlr_base_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E25vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E25vlr_base_icms_subst: TFMTBCDField
      FieldName = 'vlr_base_icms_subst'
      Precision = 32
    end
    object FAT_CD_R_GAM_E25vlr_icms_subst: TFMTBCDField
      FieldName = 'vlr_icms_subst'
      Precision = 32
    end
    object FAT_CD_R_GAM_E25vlr_isenta: TFMTBCDField
      FieldName = 'vlr_isenta'
      Precision = 32
    end
    object FAT_CD_R_GAM_E25vlr_outras: TFMTBCDField
      FieldName = 'vlr_outras'
      Precision = 32
    end
    object FAT_CD_R_GAM_E25vlr_ipi_base: TFMTBCDField
      FieldName = 'vlr_ipi_base'
      Precision = 32
    end
    object FAT_CD_R_GAM_E25vlr_ipi_isento: TIntegerField
      FieldName = 'vlr_ipi_isento'
    end
    object FAT_CD_R_GAM_E25vlr_ipi_outros: TIntegerField
      FieldName = 'vlr_ipi_outros'
    end
    object FAT_CD_R_GAM_E25ind_petr: TIntegerField
      FieldName = 'ind_petr'
    end
    object FAT_CD_R_GAM_E25ind_imun: TWideMemoField
      FieldName = 'ind_imun'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E25vlr_contabil: TFMTBCDField
      FieldName = 'vlr_contabil'
      Precision = 32
    end
  end
  object FAT_CD_R_GAM_E105: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_105'
    RemoteServer = dmGeral.pcConecao
    Left = 1445
    Top = 434
    object FAT_CD_R_GAM_E105id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_E105id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_E105aliq_icm: TFloatField
      FieldName = 'aliq_icm'
    end
    object FAT_CD_R_GAM_E105vlr_mercadoria: TFMTBCDField
      FieldName = 'vlr_mercadoria'
      Precision = 32
    end
    object FAT_CD_R_GAM_E105vlr_iss: TFMTBCDField
      FieldName = 'vlr_iss'
      Precision = 32
    end
    object FAT_CD_R_GAM_E105vlr_base_icms: TFMTBCDField
      FieldName = 'vlr_base_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E105vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E105vlr_icms_subst: TFMTBCDField
      FieldName = 'vlr_icms_subst'
      Precision = 32
    end
    object FAT_CD_R_GAM_E105vlr_isenta: TFMTBCDField
      FieldName = 'vlr_isenta'
      Precision = 32
    end
    object FAT_CD_R_GAM_E105vlr_outras: TFMTBCDField
      FieldName = 'vlr_outras'
      Precision = 32
    end
    object FAT_CD_R_GAM_E105ind_petr: TIntegerField
      FieldName = 'ind_petr'
    end
  end
  object FAT_CD_R_GAM_E100: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_100'
    RemoteServer = dmGeral.pcConecao
    Left = 1325
    Top = 434
    object FAT_CD_R_GAM_E100id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_E100ind_operacao: TIntegerField
      FieldName = 'ind_operacao'
    end
    object FAT_CD_R_GAM_E100ind_emitente: TIntegerField
      FieldName = 'ind_emitente'
    end
    object FAT_CD_R_GAM_E100cpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object FAT_CD_R_GAM_E100id_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object FAT_CD_R_GAM_E100modelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_GAM_E100situacao_lancto: TWideStringField
      FieldName = 'situacao_lancto'
      Size = 2
    end
    object FAT_CD_R_GAM_E100qtde_canceladas: TIntegerField
      FieldName = 'qtde_canceladas'
    end
    object FAT_CD_R_GAM_E100serie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_GAM_E100sub_serie: TWideStringField
      FieldName = 'sub_serie'
      Size = 3
    end
    object FAT_CD_R_GAM_E100cod_consolidado: TWideMemoField
      FieldName = 'cod_consolidado'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E100numero: TIntegerField
      FieldName = 'numero'
    end
    object FAT_CD_R_GAM_E100qtde_doc: TIntegerField
      FieldName = 'qtde_doc'
    end
    object FAT_CD_R_GAM_E100dta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object FAT_CD_R_GAM_E100dta_documento: TDateField
      FieldName = 'dta_documento'
    end
    object FAT_CD_R_GAM_E100id_classe: TWideStringField
      FieldName = 'id_classe'
      Size = 4
    end
    object FAT_CD_R_GAM_E100id_classe_1: TWideStringField
      FieldName = 'id_classe_1'
      Size = 4
    end
    object FAT_CD_R_GAM_E100num_lancto_contabil: TWideMemoField
      FieldName = 'num_lancto_contabil'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E100vlr_contabil: TFMTBCDField
      FieldName = 'vlr_contabil'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E100vlr_iss: TFMTBCDField
      FieldName = 'vlr_iss'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E100vlr_base_icms: TFMTBCDField
      FieldName = 'vlr_base_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E100vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E100vlr_icms_subst: TFMTBCDField
      FieldName = 'vlr_icms_subst'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E100vlr_isenta: TFMTBCDField
      FieldName = 'vlr_isenta'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E100vlr_outras: TFMTBCDField
      FieldName = 'vlr_outras'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E100cod_observacao: TWideMemoField
      FieldName = 'cod_observacao'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_E120: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_120'
    RemoteServer = dmGeral.pcConecao
    Left = 1565
    Top = 434
    object FAT_CD_R_GAM_E120ind_operacao: TIntegerField
      FieldName = 'ind_operacao'
    end
    object FAT_CD_R_GAM_E120ind_emitente: TIntegerField
      FieldName = 'ind_emitente'
    end
    object FAT_CD_R_GAM_E120cpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object FAT_CD_R_GAM_E120id_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object FAT_CD_R_GAM_E120modelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_GAM_E120situacao_lancto: TWideStringField
      FieldName = 'situacao_lancto'
      Size = 2
    end
    object FAT_CD_R_GAM_E120serie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_GAM_E120sub_serie: TWideStringField
      FieldName = 'sub_serie'
      Size = 3
    end
    object FAT_CD_R_GAM_E120numero: TIntegerField
      FieldName = 'numero'
    end
    object FAT_CD_R_GAM_E120nfe_chave: TWideStringField
      FieldName = 'nfe_chave'
      Size = 44
    end
    object FAT_CD_R_GAM_E120dta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object FAT_CD_R_GAM_E120dta_documento: TDateField
      FieldName = 'dta_documento'
    end
    object FAT_CD_R_GAM_E120id_classe: TWideStringField
      FieldName = 'id_classe'
      Size = 4
    end
    object FAT_CD_R_GAM_E120num_lancto_contabil: TWideMemoField
      FieldName = 'num_lancto_contabil'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E120ind_pagamento: TIntegerField
      FieldName = 'ind_pagamento'
    end
    object FAT_CD_R_GAM_E120vlr_contabil: TFMTBCDField
      FieldName = 'vlr_contabil'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E120id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_E120vlr_base_icms: TFMTBCDField
      FieldName = 'vlr_base_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E120alq_icms: TFMTBCDField
      FieldName = 'alq_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E120vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E120vlr_icms_subst: TFMTBCDField
      FieldName = 'vlr_icms_subst'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E120vlr_isenta: TFMTBCDField
      FieldName = 'vlr_isenta'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E120vlr_outras: TFMTBCDField
      FieldName = 'vlr_outras'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_E120cod_observacao: TWideMemoField
      FieldName = 'cod_observacao'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_H20: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_H20'
    RemoteServer = dmGeral.pcConecao
    Left = 1085
    Top = 482
    object FAT_CD_R_GAM_H20id_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object FAT_CD_R_GAM_H20dta_inventario: TDateField
      FieldName = 'dta_inventario'
    end
    object FAT_CD_R_GAM_H20ind_data: TWideMemoField
      FieldName = 'ind_data'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_H20vlr_estoque: TFloatField
      FieldName = 'vlr_estoque'
    end
    object FAT_CD_R_GAM_H20vlr_icms_recup: TIntegerField
      FieldName = 'vlr_icms_recup'
    end
    object FAT_CD_R_GAM_H20vlr_ipi_recup: TIntegerField
      FieldName = 'vlr_ipi_recup'
    end
    object FAT_CD_R_GAM_H20vlr_cofins_recup: TIntegerField
      FieldName = 'vlr_cofins_recup'
    end
    object FAT_CD_R_GAM_H20vlr_trib_n_cumul: TIntegerField
      FieldName = 'vlr_trib_n_cumul'
    end
    object FAT_CD_R_GAM_H20vlr_estoque_1: TFloatField
      FieldName = 'vlr_estoque_1'
    end
    object FAT_CD_R_GAM_H20num_lancto: TWideMemoField
      FieldName = 'num_lancto'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_H20cod_observacao: TWideMemoField
      FieldName = 'cod_observacao'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_H30: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_H30'
    RemoteServer = dmGeral.pcConecao
    Left = 1205
    Top = 482
    object FAT_CD_R_GAM_H30ind_posse: TWideMemoField
      FieldName = 'ind_posse'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_H30emp_cnpj: TWideStringField
      FieldName = 'emp_cnpj'
      Size = 14
    end
    object FAT_CD_R_GAM_H30ind_item: TWideStringField
      FieldName = 'ind_item'
      Size = 2
    end
    object FAT_CD_R_GAM_H30id_ncm: TWideStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object FAT_CD_R_GAM_H30id_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object FAT_CD_R_GAM_H30id_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_GAM_H30vlr_unit: TFMTBCDField
      FieldName = 'vlr_unit'
      Precision = 32
    end
    object FAT_CD_R_GAM_H30qtd: TFloatField
      FieldName = 'qtd'
    end
    object FAT_CD_R_GAM_H30vlr_liquido: TFloatField
      FieldName = 'vlr_liquido'
    end
    object FAT_CD_R_GAM_H30vlr_icms: TIntegerField
      FieldName = 'vlr_icms'
    end
    object FAT_CD_R_GAM_H30vlr_ipi: TIntegerField
      FieldName = 'vlr_ipi'
    end
    object FAT_CD_R_GAM_H30vlr_pis: TIntegerField
      FieldName = 'vlr_pis'
    end
    object FAT_CD_R_GAM_H30vlr_cofins: TIntegerField
      FieldName = 'vlr_cofins'
    end
    object FAT_CD_R_GAM_H30vlr_trib_n_cumul: TIntegerField
      FieldName = 'vlr_trib_n_cumul'
    end
    object FAT_CD_R_GAM_H30cod_observacao: TWideMemoField
      FieldName = 'cod_observacao'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_H30id_und_compra: TWideStringField
      FieldName = 'id_und_compra'
      Size = 3
    end
    object FAT_CD_R_GAM_H30cod_cta: TIntegerField
      FieldName = 'cod_cta'
    end
    object FAT_CD_R_GAM_H30int_codncm: TWideStringField
      FieldName = 'int_codncm'
      Size = 10
    end
    object FAT_CD_R_GAM_H30int_nomeite: TWideStringField
      FieldName = 'int_nomeite'
      Size = 100
    end
    object FAT_CD_R_GAM_H30cod_barra: TWideStringField
      FieldName = 'cod_barra'
      Size = 50
    end
    object FAT_CD_R_GAM_H30tipo_item: TWideStringField
      FieldName = 'tipo_item'
      Size = 2
    end
    object FAT_CD_R_GAM_H30ex_ipi: TWideMemoField
      FieldName = 'ex_ipi'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_H30cod_gen: TWideMemoField
      FieldName = 'cod_gen'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_H30aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object FAT_CD_R_GAM_H30int_id_und: TWideStringField
      FieldName = 'int_id_und'
      Size = 3
    end
    object FAT_CD_R_GAM_H30int_desc_und: TWideStringField
      FieldName = 'int_desc_und'
      Size = 30
    end
    object FAT_CD_R_GAM_H30cest: TWideStringField
      FieldName = 'cest'
      Size = 7
    end
  end
  object FAT_CD_R_GAM_H50: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_H50'
    RemoteServer = dmGeral.pcConecao
    Left = 1325
    Top = 482
    object FAT_CD_R_GAM_H50id_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object FAT_CD_R_GAM_H50dta_inventario: TDateField
      FieldName = 'dta_inventario'
    end
    object FAT_CD_R_GAM_H50tipo_item: TWideStringField
      FieldName = 'tipo_item'
      Size = 2
    end
    object FAT_CD_R_GAM_H50vlr_total: TFloatField
      FieldName = 'vlr_total'
    end
  end
  object FAT_CD_R_GAM_H60: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_H60'
    RemoteServer = dmGeral.pcConecao
    Left = 1445
    Top = 482
    object FAT_CD_R_GAM_H60id_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object FAT_CD_R_GAM_H60dta_inventario: TDateField
      FieldName = 'dta_inventario'
    end
    object FAT_CD_R_GAM_H60id_ncm: TWideStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object FAT_CD_R_GAM_H60vlr_total: TFloatField
      FieldName = 'vlr_total'
    end
  end
  object FAT_CD_R_GAM_C20: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_C20'
    RemoteServer = dmGeral.pcConecao
    Left = 1085
    Top = 146
    object FAT_CD_R_GAM_C20id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_C20ind_operacao: TIntegerField
      FieldName = 'ind_operacao'
    end
    object FAT_CD_R_GAM_C20ind_emitente: TIntegerField
      FieldName = 'ind_emitente'
    end
    object FAT_CD_R_GAM_C20cpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object FAT_CD_R_GAM_C20modelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_GAM_C20situacao_lancto: TWideStringField
      FieldName = 'situacao_lancto'
      Size = 2
    end
    object FAT_CD_R_GAM_C20serie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_GAM_C20numero: TIntegerField
      FieldName = 'numero'
    end
    object FAT_CD_R_GAM_C20nfe_chave: TWideStringField
      FieldName = 'nfe_chave'
      Size = 44
    end
    object FAT_CD_R_GAM_C20dta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object FAT_CD_R_GAM_C20dta_documento: TDateField
      FieldName = 'dta_documento'
    end
    object FAT_CD_R_GAM_C20ind_pagamento: TIntegerField
      FieldName = 'ind_pagamento'
    end
    object FAT_CD_R_GAM_C20vlr_contabil: TFMTBCDField
      FieldName = 'vlr_contabil'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20vlr_acrescimo: TFMTBCDField
      FieldName = 'vlr_acrescimo'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20vlr_mercadoria: TFMTBCDField
      FieldName = 'vlr_mercadoria'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20fre_valor: TFMTBCDField
      FieldName = 'fre_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20vlr_seguro: TFMTBCDField
      FieldName = 'vlr_seguro'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20vlr_outras: TFMTBCDField
      FieldName = 'vlr_outras'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20vlr_op_iss: TIntegerField
      FieldName = 'vlr_op_iss'
    end
    object FAT_CD_R_GAM_C20vlr_base_icms: TFMTBCDField
      FieldName = 'vlr_base_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20vlr_base_icms_subst: TFMTBCDField
      FieldName = 'vlr_base_icms_subst'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20vlr_icms_subst: TFMTBCDField
      FieldName = 'vlr_icms_subst'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20vlr_at: TIntegerField
      FieldName = 'vlr_at'
    end
    object FAT_CD_R_GAM_C20vlr_ipi: TFMTBCDField
      FieldName = 'vlr_ipi'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20ind_frete: TIntegerField
      FieldName = 'ind_frete'
    end
    object FAT_CD_R_GAM_C20vlr_aba_nt: TIntegerField
      FieldName = 'vlr_aba_nt'
    end
    object FAT_CD_R_GAM_C20pis_valor: TFMTBCDField
      FieldName = 'pis_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20pis_valor_st: TFMTBCDField
      FieldName = 'pis_valor_st'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20cof_valor: TFMTBCDField
      FieldName = 'cof_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20cof_valor_st: TFMTBCDField
      FieldName = 'cof_valor_st'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C20cod_participantes: TIntegerField
      FieldName = 'cod_participantes'
    end
    object FAT_CD_R_GAM_C20id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
  end
  object FAT_CD_R_GAM_C600: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_600'
    RemoteServer = dmGeral.pcConecao
    Left = 1085
    Top = 338
    object FAT_CD_R_GAM_C600n_cupom: TIntegerField
      FieldName = 'n_cupom'
    end
    object FAT_CD_R_GAM_C600serial_impressora: TWideStringField
      FieldName = 'serial_impressora'
      Size = 60
    end
    object FAT_CD_R_GAM_C600data_movimento: TDateField
      FieldName = 'data_movimento'
    end
    object FAT_CD_R_GAM_C600cpf_cnpj: TWideMemoField
      FieldName = 'cpf_cnpj'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C600n_caixa: TWideStringField
      FieldName = 'n_caixa'
      Size = 3
    end
    object FAT_CD_R_GAM_C600situacao: TWideMemoField
      FieldName = 'situacao'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C600classe: TWideStringField
      FieldName = 'classe'
      Size = 4
    end
    object FAT_CD_R_GAM_C600vlr_total: TFMTBCDField
      FieldName = 'vlr_total'
      Precision = 32
    end
    object FAT_CD_R_GAM_C600vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 32
    end
    object FAT_CD_R_GAM_C600vlr_cancelado: TFMTBCDField
      FieldName = 'vlr_cancelado'
      Precision = 32
    end
    object FAT_CD_R_GAM_C600base_icms: TFMTBCDField
      FieldName = 'base_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_C600vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_C600base_icms_sub: TFMTBCDField
      FieldName = 'base_icms_sub'
      Precision = 32
    end
    object FAT_CD_R_GAM_C600vlr_isento: TFMTBCDField
      FieldName = 'vlr_isento'
      Precision = 32
    end
    object FAT_CD_R_GAM_C600cro: TWideStringField
      FieldName = 'cro'
    end
    object FAT_CD_R_GAM_C600crz: TWideStringField
      FieldName = 'crz'
    end
  end
  object FAT_CD_R_GAM_C300: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_300'
    RemoteServer = dmGeral.pcConecao
    Left = 1325
    Top = 146
    object FAT_CD_R_GAM_C300id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_C300id_sequencia: TIntegerField
      FieldName = 'id_sequencia'
    end
    object FAT_CD_R_GAM_C300id_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_GAM_C300id_und_compra: TWideStringField
      FieldName = 'id_und_compra'
      Size = 3
    end
    object FAT_CD_R_GAM_C300vlr_unitario: TFMTBCDField
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300qtde: TFloatField
      FieldName = 'qtde'
    end
    object FAT_CD_R_GAM_C300vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300vlr_acrescimo: TFMTBCDField
      FieldName = 'vlr_acrescimo'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300vlr_mercadoria: TFMTBCDField
      FieldName = 'vlr_mercadoria'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300id_ncm: TWideStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object FAT_CD_R_GAM_C300id_st_icm: TWideStringField
      FieldName = 'id_st_icm'
      Size = 3
    end
    object FAT_CD_R_GAM_C300id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_C300icm_n_base: TFMTBCDField
      FieldName = 'icm_n_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300aliq_icms_i: TFloatField
      FieldName = 'aliq_icms_i'
    end
    object FAT_CD_R_GAM_C300icm_n_valor: TFMTBCDField
      FieldName = 'icm_n_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300icm_s_base: TFMTBCDField
      FieldName = 'icm_s_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300aliq_st: TIntegerField
      FieldName = 'aliq_st'
    end
    object FAT_CD_R_GAM_C300icm_s_valor: TFMTBCDField
      FieldName = 'icm_s_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300ipi_base: TFMTBCDField
      FieldName = 'ipi_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300ipi_aliquota: TFloatField
      FieldName = 'ipi_aliquota'
    end
    object FAT_CD_R_GAM_C300ipi_valor: TFMTBCDField
      FieldName = 'ipi_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300ind_mov: TIntegerField
      FieldName = 'ind_mov'
    end
    object FAT_CD_R_GAM_C300ind_apur: TIntegerField
      FieldName = 'ind_apur'
    end
    object FAT_CD_R_GAM_C300id_st_ipi: TWideStringField
      FieldName = 'id_st_ipi'
      Size = 2
    end
    object FAT_CD_R_GAM_C300cod_enq: TWideMemoField
      FieldName = 'cod_enq'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C300id_st_pis: TWideStringField
      FieldName = 'id_st_pis'
      Size = 2
    end
    object FAT_CD_R_GAM_C300pis_base: TFMTBCDField
      FieldName = 'pis_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300pis_aliquota: TFloatField
      FieldName = 'pis_aliquota'
    end
    object FAT_CD_R_GAM_C300quant_bc_pis: TWideMemoField
      FieldName = 'quant_bc_pis'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C300aliq_pis: TIntegerField
      FieldName = 'aliq_pis'
    end
    object FAT_CD_R_GAM_C300pis_valor: TFMTBCDField
      FieldName = 'pis_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300id_st_cof: TWideStringField
      FieldName = 'id_st_cof'
      Size = 2
    end
    object FAT_CD_R_GAM_C300cof_base: TFMTBCDField
      FieldName = 'cof_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300cof_aliquota: TFloatField
      FieldName = 'cof_aliquota'
    end
    object FAT_CD_R_GAM_C300quant_bc_cof: TWideMemoField
      FieldName = 'quant_bc_cof'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C300aliq_cof: TIntegerField
      FieldName = 'aliq_cof'
    end
    object FAT_CD_R_GAM_C300cof_valor: TFMTBCDField
      FieldName = 'cof_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300desc_item: TWideStringField
      FieldName = 'desc_item'
      Size = 100
    end
    object FAT_CD_R_GAM_C300vlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C300cod_nat: TWideStringField
      FieldName = 'cod_nat'
      Size = 5
    end
    object FAT_CD_R_GAM_C300cod_cta: TWideStringField
      FieldName = 'cod_cta'
    end
    object FAT_CD_R_GAM_C300cest: TWideStringField
      FieldName = 'cest'
      Size = 7
    end
    object FAT_CD_R_GAM_C300cod_barra: TWideStringField
      FieldName = 'cod_barra'
      Size = 50
    end
    object FAT_CD_R_GAM_C300tipo_item: TWideStringField
      FieldName = 'tipo_item'
      Size = 2
    end
    object FAT_CD_R_GAM_C300aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object FAT_CD_R_GAM_C300ex_ipi: TWideMemoField
      FieldName = 'ex_ipi'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C300cod_gen: TWideMemoField
      FieldName = 'cod_gen'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C300nat_rec: TWideStringField
      FieldName = 'nat_rec'
      Size = 3
    end
  end
  object FAT_CD_R_GAM_C610: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_610'
    RemoteServer = dmGeral.pcConecao
    Left = 1205
    Top = 338
    object FAT_CD_R_GAM_C610n_item: TIntegerField
      FieldName = 'n_item'
    end
    object FAT_CD_R_GAM_C610cod_produto: TWideStringField
      FieldName = 'cod_produto'
      Size = 15
    end
    object FAT_CD_R_GAM_C610unidade: TWideStringField
      FieldName = 'unidade'
      Size = 3
    end
    object FAT_CD_R_GAM_C610valor_unitario: TFMTBCDField
      FieldName = 'valor_unitario'
      Precision = 18
      Size = 3
    end
    object FAT_CD_R_GAM_C610qtde: TFMTBCDField
      FieldName = 'qtde'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C610desconto: TFMTBCDField
      FieldName = 'desconto'
      Precision = 18
      Size = 3
    end
    object FAT_CD_R_GAM_C610valor_total: TFMTBCDField
      FieldName = 'valor_total'
      Precision = 18
      Size = 3
    end
    object FAT_CD_R_GAM_C610cst_icms: TWideStringField
      FieldName = 'cst_icms'
      Size = 2
    end
    object FAT_CD_R_GAM_C610cfop: TIntegerField
      FieldName = 'cfop'
    end
    object FAT_CD_R_GAM_C610aliquota: TWideStringField
      FieldName = 'aliquota'
    end
    object FAT_CD_R_GAM_C610base_icms: TFMTBCDField
      FieldName = 'base_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_C610vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_C610base_icms_sub: TFMTBCDField
      FieldName = 'base_icms_sub'
      Precision = 32
    end
    object FAT_CD_R_GAM_C610vlr_isento: TFMTBCDField
      FieldName = 'vlr_isento'
      Precision = 32
    end
  end
  object FAT_CD_R_GAM_200: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_200'
    RemoteServer = dmGeral.pcConecao
    Left = 1325
    Top = 50
    object FAT_CD_R_GAM_200id_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_GAM_200id_ncm: TWideStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object FAT_CD_R_GAM_200descricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object FAT_CD_R_GAM_200id_und_compra: TWideStringField
      FieldName = 'id_und_compra'
      Size = 3
    end
    object FAT_CD_R_GAM_200cod_barra: TWideStringField
      FieldName = 'cod_barra'
      Size = 50
    end
    object FAT_CD_R_GAM_200tipo_item: TWideStringField
      FieldName = 'tipo_item'
      Size = 2
    end
    object FAT_CD_R_GAM_200ex_ipi: TWideMemoField
      FieldName = 'ex_ipi'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_200aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object FAT_CD_R_GAM_200cod_gen: TWideMemoField
      FieldName = 'cod_gen'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_200cest: TWideStringField
      FieldName = 'cest'
      Size = 7
    end
  end
  object FAT_CD_R_GAM_400: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_0400'
    RemoteServer = dmGeral.pcConecao
    Left = 1205
    Top = 50
    object FAT_CD_R_GAM_400codigo: TWideStringField
      FieldName = 'codigo'
      Size = 5
    end
    object FAT_CD_R_GAM_400descricao: TWideStringField
      FieldName = 'descricao'
      Size = 400
    end
    object FAT_CD_R_GAM_400id_classe: TWideStringField
      FieldName = 'id_classe'
      Size = 4
    end
  end
  object FAT_CD_R_GAM_C190: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_190'
    RemoteServer = dmGeral.pcConecao
    Left = 1205
    Top = 146
    object FAT_CD_R_GAM_C190id_st_icm: TWideStringField
      FieldName = 'id_st_icm'
      Size = 3
    end
    object FAT_CD_R_GAM_C190id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_C190icm_n_aliquota: TFloatField
      FieldName = 'icm_n_aliquota'
    end
    object FAT_CD_R_GAM_C190vlr_operacao: TFMTBCDField
      FieldName = 'vlr_operacao'
      Precision = 32
    end
    object FAT_CD_R_GAM_C190vlr_bc_icms: TFMTBCDField
      FieldName = 'vlr_bc_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_C190vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_C190vlr_base_icms_sub: TFMTBCDField
      FieldName = 'vlr_base_icms_sub'
      Precision = 32
    end
    object FAT_CD_R_GAM_C190vlr_icms_sub: TFMTBCDField
      FieldName = 'vlr_icms_sub'
      Precision = 32
    end
    object FAT_CD_R_GAM_C190vlr_base_reduzida: TFloatField
      FieldName = 'vlr_base_reduzida'
    end
    object FAT_CD_R_GAM_C190vlr_ipi: TFMTBCDField
      FieldName = 'vlr_ipi'
      Precision = 32
    end
  end
  object FAT_CD_R_GAM_C400: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_ECF'
    RemoteServer = dmGeral.pcConecao
    Left = 1085
    Top = 194
    object FAT_CD_R_GAM_C400ecf_serial_impressora: TWideStringField
      FieldName = 'ecf_serial_impressora'
      Size = 60
    end
    object FAT_CD_R_GAM_C400ecf_marca_impressora: TWideStringField
      FieldName = 'ecf_marca_impressora'
      Size = 50
    end
    object FAT_CD_R_GAM_C400ecf_modelo_impressora: TWideStringField
      FieldName = 'ecf_modelo_impressora'
      Size = 50
    end
    object FAT_CD_R_GAM_C400ecf_caixa: TWideStringField
      FieldName = 'ecf_caixa'
      Size = 3
    end
    object FAT_CD_R_GAM_C400serie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_GAM_C400cod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object FAT_CD_R_GAM_C400rev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object FAT_CD_R_GAM_C400paf_serial_pv: TWideStringField
      FieldName = 'paf_serial_pv'
      Size = 30
    end
  end
  object FAT_CD_R_GAM_C405: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_405'
    RemoteServer = dmGeral.pcConecao
    Left = 1205
    Top = 194
    object FAT_CD_R_GAM_C405data_movimento: TDateField
      FieldName = 'data_movimento'
    end
    object FAT_CD_R_GAM_C405cro: TWideMemoField
      FieldName = 'cro'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C405crz: TWideMemoField
      FieldName = 'crz'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C405num_coo_fin: TWideMemoField
      FieldName = 'num_coo_fin'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C405gt_fin: TWideMemoField
      FieldName = 'gt_fin'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C405vl_brt: TWideMemoField
      FieldName = 'vl_brt'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_C500: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_500'
    RemoteServer = dmGeral.pcConecao
    Left = 1085
    Top = 290
    object FAT_CD_R_GAM_C500id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_C500ind_operacao: TIntegerField
      FieldName = 'ind_operacao'
    end
    object FAT_CD_R_GAM_C500ind_emitente: TIntegerField
      FieldName = 'ind_emitente'
    end
    object FAT_CD_R_GAM_C500cpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object FAT_CD_R_GAM_C500cod_participantes: TIntegerField
      FieldName = 'cod_participantes'
    end
    object FAT_CD_R_GAM_C500modelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_GAM_C500cod_sit: TWideStringField
      FieldName = 'cod_sit'
      Size = 2
    end
    object FAT_CD_R_GAM_C500serie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_GAM_C500sub_serie: TWideStringField
      FieldName = 'sub_serie'
      Size = 3
    end
    object FAT_CD_R_GAM_C500numero: TIntegerField
      FieldName = 'numero'
    end
    object FAT_CD_R_GAM_C500nfe_chave: TWideStringField
      FieldName = 'nfe_chave'
      Size = 44
    end
    object FAT_CD_R_GAM_C500cod_cons: TWideMemoField
      FieldName = 'cod_cons'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C500dta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object FAT_CD_R_GAM_C500dta_documento: TDateField
      FieldName = 'dta_documento'
    end
    object FAT_CD_R_GAM_C500vlr_doc: TFMTBCDField
      FieldName = 'vlr_doc'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C500vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C500vlr_forn: TIntegerField
      FieldName = 'vlr_forn'
    end
    object FAT_CD_R_GAM_C500vlr_serv_nt: TIntegerField
      FieldName = 'vlr_serv_nt'
    end
    object FAT_CD_R_GAM_C500vlr_terc: TIntegerField
      FieldName = 'vlr_terc'
    end
    object FAT_CD_R_GAM_C500vlr_da: TIntegerField
      FieldName = 'vlr_da'
    end
    object FAT_CD_R_GAM_C500vlr_base_icms: TFMTBCDField
      FieldName = 'vlr_base_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C500vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C500vlr_base_icms_subst: TFMTBCDField
      FieldName = 'vlr_base_icms_subst'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C500vlr_icms_subst: TFMTBCDField
      FieldName = 'vlr_icms_subst'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C500cod_inf: TWideMemoField
      FieldName = 'cod_inf'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C500vlr_ipi: TFMTBCDField
      FieldName = 'vlr_ipi'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C500vlr_pis: TFMTBCDField
      FieldName = 'vlr_pis'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C500vlr_cof: TFMTBCDField
      FieldName = 'vlr_cof'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C500tp_ligacao: TWideMemoField
      FieldName = 'tp_ligacao'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C500cod_grupo_tencao: TWideMemoField
      FieldName = 'cod_grupo_tencao'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_C510: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_510'
    RemoteServer = dmGeral.pcConecao
    Left = 1445
    Top = 290
    object FAT_CD_R_GAM_C510id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_C510id_sequencia: TIntegerField
      FieldName = 'id_sequencia'
    end
    object FAT_CD_R_GAM_C510id_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_GAM_C510cod_class: TWideMemoField
      FieldName = 'cod_class'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C510id_und_venda: TWideStringField
      FieldName = 'id_und_venda'
      Size = 3
    end
    object FAT_CD_R_GAM_C510vlr_unitario: TFMTBCDField
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C510qtde: TFloatField
      FieldName = 'qtde'
    end
    object FAT_CD_R_GAM_C510vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C510id_st_icm: TWideStringField
      FieldName = 'id_st_icm'
      Size = 3
    end
    object FAT_CD_R_GAM_C510id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_C510icm_n_base: TFMTBCDField
      FieldName = 'icm_n_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C510aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object FAT_CD_R_GAM_C510icm_s_base: TFMTBCDField
      FieldName = 'icm_s_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C510icm_s_valor: TFMTBCDField
      FieldName = 'icm_s_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C510ind_rec: TIntegerField
      FieldName = 'ind_rec'
    end
    object FAT_CD_R_GAM_C510cod_part: TWideMemoField
      FieldName = 'cod_part'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C510pis_valor: TFMTBCDField
      FieldName = 'pis_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C510cof_valor: TFMTBCDField
      FieldName = 'cof_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C510cod_cta: TIntegerField
      FieldName = 'cod_cta'
    end
  end
  object FAT_CD_R_GAM_C590: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_590'
    RemoteServer = dmGeral.pcConecao
    Left = 1565
    Top = 290
    object FAT_CD_R_GAM_C590id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_C590id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_C590aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object FAT_CD_R_GAM_C590vlr_operacao: TFMTBCDField
      FieldName = 'vlr_operacao'
      Precision = 32
    end
    object FAT_CD_R_GAM_C590vlr_base_icms: TFMTBCDField
      FieldName = 'vlr_base_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_C590vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_C590vlr_base_icms_subst: TFMTBCDField
      FieldName = 'vlr_base_icms_subst'
      Precision = 32
    end
    object FAT_CD_R_GAM_C590vlr_icms_subst: TFMTBCDField
      FieldName = 'vlr_icms_subst'
      Precision = 32
    end
    object FAT_CD_R_GAM_C590vlr_base_reduzida: TFloatField
      FieldName = 'vlr_base_reduzida'
    end
    object FAT_CD_R_GAM_C590cod_obs: TWideMemoField
      FieldName = 'cod_obs'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_D100: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_D_100'
    RemoteServer = dmGeral.pcConecao
    Left = 1085
    Top = 386
    object FAT_CD_R_GAM_D100id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_D100ind_operacao: TIntegerField
      FieldName = 'ind_operacao'
    end
    object FAT_CD_R_GAM_D100ind_emitente: TIntegerField
      FieldName = 'ind_emitente'
    end
    object FAT_CD_R_GAM_D100cpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object FAT_CD_R_GAM_D100cod_participantes: TIntegerField
      FieldName = 'cod_participantes'
    end
    object FAT_CD_R_GAM_D100modelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_GAM_D100cod_sit: TWideStringField
      FieldName = 'cod_sit'
      Size = 2
    end
    object FAT_CD_R_GAM_D100serie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_GAM_D100sub_serie: TWideStringField
      FieldName = 'sub_serie'
      Size = 3
    end
    object FAT_CD_R_GAM_D100numero: TIntegerField
      FieldName = 'numero'
    end
    object FAT_CD_R_GAM_D100nfe_chave: TWideStringField
      FieldName = 'nfe_chave'
      Size = 44
    end
    object FAT_CD_R_GAM_D100dta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object FAT_CD_R_GAM_D100dta_documento: TDateField
      FieldName = 'dta_documento'
    end
    object FAT_CD_R_GAM_D100tp_ct_e: TWideMemoField
      FieldName = 'tp_ct_e'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_D100vlr_doc: TFMTBCDField
      FieldName = 'vlr_doc'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D100vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D100ind_frete: TIntegerField
      FieldName = 'ind_frete'
    end
    object FAT_CD_R_GAM_D100vlr_serv: TFMTBCDField
      FieldName = 'vlr_serv'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D100vlr_base_icms: TFMTBCDField
      FieldName = 'vlr_base_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D100vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D100vl_nt: TIntegerField
      FieldName = 'vl_nt'
    end
    object FAT_CD_R_GAM_D100cod_inf: TWideMemoField
      FieldName = 'cod_inf'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_D100cod_cta: TWideMemoField
      FieldName = 'cod_cta'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_D500: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_D_500'
    RemoteServer = dmGeral.pcConecao
    Left = 1205
    Top = 386
    object FAT_CD_R_GAM_D500id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_D500ind_operacao: TIntegerField
      FieldName = 'ind_operacao'
    end
    object FAT_CD_R_GAM_D500ind_emitente: TIntegerField
      FieldName = 'ind_emitente'
    end
    object FAT_CD_R_GAM_D500cpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object FAT_CD_R_GAM_D500cod_participantes: TIntegerField
      FieldName = 'cod_participantes'
    end
    object FAT_CD_R_GAM_D500modelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_GAM_D500cod_sit: TWideStringField
      FieldName = 'cod_sit'
      Size = 2
    end
    object FAT_CD_R_GAM_D500serie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_GAM_D500sub_serie: TWideStringField
      FieldName = 'sub_serie'
      Size = 3
    end
    object FAT_CD_R_GAM_D500numero: TIntegerField
      FieldName = 'numero'
    end
    object FAT_CD_R_GAM_D500nfe_chave: TWideStringField
      FieldName = 'nfe_chave'
      Size = 44
    end
    object FAT_CD_R_GAM_D500dta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object FAT_CD_R_GAM_D500dta_documento: TDateField
      FieldName = 'dta_documento'
    end
    object FAT_CD_R_GAM_D500tp_ct_e: TWideMemoField
      FieldName = 'tp_ct_e'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_D500vlr_doc: TFMTBCDField
      FieldName = 'vlr_doc'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D500vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D500vlr_serv: TFMTBCDField
      FieldName = 'vlr_serv'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D500vlr_serv_nt: TIntegerField
      FieldName = 'vlr_serv_nt'
    end
    object FAT_CD_R_GAM_D500vlr_terc: TIntegerField
      FieldName = 'vlr_terc'
    end
    object FAT_CD_R_GAM_D500vlr_da: TIntegerField
      FieldName = 'vlr_da'
    end
    object FAT_CD_R_GAM_D500vlr_base_icms: TFMTBCDField
      FieldName = 'vlr_base_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D500vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D500cod_inf: TWideMemoField
      FieldName = 'cod_inf'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_D500pis_valor: TFMTBCDField
      FieldName = 'pis_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D500cof_valor: TFMTBCDField
      FieldName = 'cof_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D500cod_cta: TWideMemoField
      FieldName = 'cod_cta'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_D500tp_assinante: TWideMemoField
      FieldName = 'tp_assinante'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_D510: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_D_510'
    RemoteServer = dmGeral.pcConecao
    Left = 1325
    Top = 386
    object FAT_CD_R_GAM_D510id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_D510id_sequencia: TIntegerField
      FieldName = 'id_sequencia'
    end
    object FAT_CD_R_GAM_D510id_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_GAM_D510cod_class: TWideMemoField
      FieldName = 'cod_class'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_D510id_und_venda: TWideStringField
      FieldName = 'id_und_venda'
      Size = 3
    end
    object FAT_CD_R_GAM_D510vlr_unitario: TFMTBCDField
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D510qtde: TFloatField
      FieldName = 'qtde'
    end
    object FAT_CD_R_GAM_D510vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D510id_st_icm: TWideStringField
      FieldName = 'id_st_icm'
      Size = 3
    end
    object FAT_CD_R_GAM_D510id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_D510icm_n_base: TFMTBCDField
      FieldName = 'icm_n_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D510aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object FAT_CD_R_GAM_D510icm_s_base: TFMTBCDField
      FieldName = 'icm_s_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D510icm_s_valor: TFMTBCDField
      FieldName = 'icm_s_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D510ind_rec: TIntegerField
      FieldName = 'ind_rec'
    end
    object FAT_CD_R_GAM_D510cod_part: TWideMemoField
      FieldName = 'cod_part'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_D510pis_valor: TFMTBCDField
      FieldName = 'pis_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D510cof_valor: TFMTBCDField
      FieldName = 'cof_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_D510cod_cta: TIntegerField
      FieldName = 'cod_cta'
    end
  end
  object FAT_CD_R_GAM_D590: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_D_590'
    RemoteServer = dmGeral.pcConecao
    Left = 1445
    Top = 386
    object FAT_CD_R_GAM_D590id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_D590id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_D590aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object FAT_CD_R_GAM_D590vlr_operacao: TFMTBCDField
      FieldName = 'vlr_operacao'
      Precision = 32
    end
    object FAT_CD_R_GAM_D590vlr_base_icms: TFMTBCDField
      FieldName = 'vlr_base_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_D590vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_D590vlr_base_icms_subst: TFMTBCDField
      FieldName = 'vlr_base_icms_subst'
      Precision = 32
    end
    object FAT_CD_R_GAM_D590vlr_icms_subst: TFMTBCDField
      FieldName = 'vlr_icms_subst'
      Precision = 32
    end
    object FAT_CD_R_GAM_D590vlr_base_reduzida: TFloatField
      FieldName = 'vlr_base_reduzida'
    end
    object FAT_CD_R_GAM_D590cod_obs: TWideMemoField
      FieldName = 'cod_obs'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_C420: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_420'
    RemoteServer = dmGeral.pcConecao
    Left = 1325
    Top = 194
    object FAT_CD_R_GAM_C420data_movimento: TDateField
      FieldName = 'data_movimento'
    end
    object FAT_CD_R_GAM_C420totalizador: TWideMemoField
      FieldName = 'totalizador'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C420vlr_acum: TWideMemoField
      FieldName = 'vlr_acum'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C420num_totalizador: TWideStringField
      FieldName = 'num_totalizador'
      Size = 10
    end
    object FAT_CD_R_GAM_C420descricao: TWideStringField
      FieldName = 'descricao'
      Size = 60
    end
  end
  object FAT_CD_R_GAM_C425: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_425'
    RemoteServer = dmGeral.pcConecao
    Left = 1445
    Top = 194
    object FAT_CD_R_GAM_C425id_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_GAM_C425id_und_compra: TWideStringField
      FieldName = 'id_und_compra'
      Size = 3
    end
    object FAT_CD_R_GAM_C425quantidade: TFloatField
      FieldName = 'quantidade'
    end
    object FAT_CD_R_GAM_C425vlr_total: TFMTBCDField
      FieldName = 'vlr_total'
      Precision = 32
    end
    object FAT_CD_R_GAM_C425vlr_pis: TFMTBCDField
      FieldName = 'vlr_pis'
      Precision = 32
    end
    object FAT_CD_R_GAM_C425vlr_cofins: TFMTBCDField
      FieldName = 'vlr_cofins'
      Precision = 32
    end
    object FAT_CD_R_GAM_C425id_ncm: TWideStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object FAT_CD_R_GAM_C425cest: TWideStringField
      FieldName = 'cest'
      Size = 7
    end
    object FAT_CD_R_GAM_C425descricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object FAT_CD_R_GAM_C425cod_barra: TWideStringField
      FieldName = 'cod_barra'
      Size = 50
    end
    object FAT_CD_R_GAM_C425tipo_item: TWideStringField
      FieldName = 'tipo_item'
      Size = 2
    end
    object FAT_CD_R_GAM_C425ex_ipi: TWideMemoField
      FieldName = 'ex_ipi'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C425cod_gen: TWideMemoField
      FieldName = 'cod_gen'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_C425aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
  end
  object FAT_CD_R_GAM_C490: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_490'
    RemoteServer = dmGeral.pcConecao
    Left = 1565
    Top = 242
    object FAT_CD_R_GAM_C490id_st_icm: TWideStringField
      FieldName = 'id_st_icm'
      Size = 3
    end
    object FAT_CD_R_GAM_C490icm_n_aliquota: TFloatField
      FieldName = 'icm_n_aliquota'
    end
    object FAT_CD_R_GAM_C490vlr_operacao: TFMTBCDField
      FieldName = 'vlr_operacao'
      Precision = 32
    end
    object FAT_CD_R_GAM_C490vlr_base_icm: TFMTBCDField
      FieldName = 'vlr_base_icm'
      Precision = 32
    end
    object FAT_CD_R_GAM_C490vlr_icm: TFMTBCDField
      FieldName = 'vlr_icm'
      Precision = 32
    end
    object FAT_CD_R_GAM_C490id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
  end
  object FAT_CD_R_GAM_A100: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_A_100'
    RemoteServer = dmGeral.pcConecao
    Left = 1085
    Top = 98
    object FAT_CD_R_GAM_A100id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_A100ind_operacao: TIntegerField
      FieldName = 'ind_operacao'
    end
    object FAT_CD_R_GAM_A100ind_emitente: TIntegerField
      FieldName = 'ind_emitente'
    end
    object FAT_CD_R_GAM_A100cpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object FAT_CD_R_GAM_A100cod_sit: TWideStringField
      FieldName = 'cod_sit'
      Size = 2
    end
    object FAT_CD_R_GAM_A100cod_participantes: TIntegerField
      FieldName = 'cod_participantes'
    end
    object FAT_CD_R_GAM_A100serie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_GAM_A100sub_serie: TWideStringField
      FieldName = 'sub_serie'
      Size = 3
    end
    object FAT_CD_R_GAM_A100numero: TIntegerField
      FieldName = 'numero'
    end
    object FAT_CD_R_GAM_A100nfe_chave: TWideStringField
      FieldName = 'nfe_chave'
      Size = 44
    end
    object FAT_CD_R_GAM_A100modelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_GAM_A100dta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object FAT_CD_R_GAM_A100dta_documento: TDateField
      FieldName = 'dta_documento'
    end
    object FAT_CD_R_GAM_A100vlr_doc: TFMTBCDField
      FieldName = 'vlr_doc'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A100int_tipopgto: TIntegerField
      FieldName = 'int_tipopgto'
    end
    object FAT_CD_R_GAM_A100vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A100pis_base: TFMTBCDField
      FieldName = 'pis_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A100vlr_pis: TFMTBCDField
      FieldName = 'vlr_pis'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A100cof_base: TFMTBCDField
      FieldName = 'cof_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A100vlr_cof: TFMTBCDField
      FieldName = 'vlr_cof'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A100vlr_pis_ret: TIntegerField
      FieldName = 'vlr_pis_ret'
    end
    object FAT_CD_R_GAM_A100vlr_cof_ret: TIntegerField
      FieldName = 'vlr_cof_ret'
    end
    object FAT_CD_R_GAM_A100vlr_iss: TFMTBCDField
      FieldName = 'vlr_iss'
      Precision = 18
      Size = 4
    end
  end
  object FAT_CD_R_GAM_A170: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_A_170'
    RemoteServer = dmGeral.pcConecao
    Left = 1205
    Top = 98
    object FAT_CD_R_GAM_A170id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_A170id_sequencia: TIntegerField
      FieldName = 'id_sequencia'
    end
    object FAT_CD_R_GAM_A170id_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_GAM_A170desc_item: TWideStringField
      FieldName = 'desc_item'
      Size = 100
    end
    object FAT_CD_R_GAM_A170vlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A170vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A170nat_bc_cred: TIntegerField
      FieldName = 'nat_bc_cred'
    end
    object FAT_CD_R_GAM_A170ind_orig_cred: TIntegerField
      FieldName = 'ind_orig_cred'
    end
    object FAT_CD_R_GAM_A170id_st_pis: TWideStringField
      FieldName = 'id_st_pis'
      Size = 2
    end
    object FAT_CD_R_GAM_A170pis_base: TFMTBCDField
      FieldName = 'pis_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A170pis_valor: TFMTBCDField
      FieldName = 'pis_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A170pis_aliquota: TFloatField
      FieldName = 'pis_aliquota'
    end
    object FAT_CD_R_GAM_A170id_st_cof: TWideStringField
      FieldName = 'id_st_cof'
      Size = 2
    end
    object FAT_CD_R_GAM_A170cof_base: TFMTBCDField
      FieldName = 'cof_base'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A170cof_valor: TFMTBCDField
      FieldName = 'cof_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_A170cof_aliquota: TFloatField
      FieldName = 'cof_aliquota'
    end
    object FAT_CD_R_GAM_A170cod_ccus: TWideMemoField
      FieldName = 'cod_ccus'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_A170cod_cta: TWideStringField
      FieldName = 'cod_cta'
    end
    object FAT_CD_R_GAM_A170nat_rec: TWideStringField
      FieldName = 'nat_rec'
      Size = 3
    end
  end
  object FAT_CD_R_GAM_C481: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_481'
    RemoteServer = dmGeral.pcConecao
    Left = 1445
    Top = 242
    object FAT_CD_R_GAM_C481vlr_item: TFloatField
      FieldName = 'vlr_item'
    end
    object FAT_CD_R_GAM_C481pis_aliquota: TFloatField
      FieldName = 'pis_aliquota'
    end
    object FAT_CD_R_GAM_C481id_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_GAM_C481id_st_pis: TWideStringField
      FieldName = 'id_st_pis'
      Size = 2
    end
    object FAT_CD_R_GAM_C481id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_C481vlr_pis: TFMTBCDField
      FieldName = 'vlr_pis'
      Precision = 32
    end
    object FAT_CD_R_GAM_C481vlr_pis_base: TFMTBCDField
      FieldName = 'vlr_pis_base'
      Precision = 32
    end
  end
  object FAT_CD_R_GAM_C485: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_485'
    RemoteServer = dmGeral.pcConecao
    Left = 1325
    Top = 242
    object FAT_CD_R_GAM_C485id_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_GAM_C485id_st_cof: TWideStringField
      FieldName = 'id_st_cof'
      Size = 2
    end
    object FAT_CD_R_GAM_C485id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_C485cof_aliquota: TFloatField
      FieldName = 'cof_aliquota'
    end
    object FAT_CD_R_GAM_C485vlr_item: TFloatField
      FieldName = 'vlr_item'
    end
    object FAT_CD_R_GAM_C485vlr_cofins: TFMTBCDField
      FieldName = 'vlr_cofins'
      Precision = 32
    end
    object FAT_CD_R_GAM_C485vlr_cof_base: TFMTBCDField
      FieldName = 'vlr_cof_base'
      Precision = 32
    end
  end
  object FAT_CD_R_GAM_C505: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_505'
    RemoteServer = dmGeral.pcConecao
    Left = 1325
    Top = 290
    object FAT_CD_R_GAM_C505id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_C505id_st_cof: TWideStringField
      FieldName = 'id_st_cof'
      Size = 2
    end
    object FAT_CD_R_GAM_C505id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_C505aliq_cof: TFloatField
      FieldName = 'aliq_cof'
    end
    object FAT_CD_R_GAM_C505vlr_base_cof: TFMTBCDField
      FieldName = 'vlr_base_cof'
      Precision = 32
    end
    object FAT_CD_R_GAM_C505vlr_cof: TFMTBCDField
      FieldName = 'vlr_cof'
      Precision = 32
    end
    object FAT_CD_R_GAM_C505cod_cta: TWideMemoField
      FieldName = 'cod_cta'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_C501: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_501'
    RemoteServer = dmGeral.pcConecao
    Left = 1205
    Top = 290
    object FAT_CD_R_GAM_C501id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_C501id_st_pis: TWideStringField
      FieldName = 'id_st_pis'
      Size = 2
    end
    object FAT_CD_R_GAM_C501id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_C501aliq_pis: TFloatField
      FieldName = 'aliq_pis'
    end
    object FAT_CD_R_GAM_C501vlr_base_pis: TFMTBCDField
      FieldName = 'vlr_base_pis'
      Precision = 32
    end
    object FAT_CD_R_GAM_C501vlr_pis: TFMTBCDField
      FieldName = 'vlr_pis'
      Precision = 32
    end
    object FAT_CD_R_GAM_C501cod_cta: TWideMemoField
      FieldName = 'cod_cta'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_C460: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_460'
    RemoteServer = dmGeral.pcConecao
    Left = 1085
    Top = 242
    object FAT_CD_R_GAM_C460id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_C460cpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object FAT_CD_R_GAM_C460modelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_GAM_C460nfe_cod_sit: TWideStringField
      FieldName = 'nfe_cod_sit'
      Size = 2
    end
    object FAT_CD_R_GAM_C460numero: TIntegerField
      FieldName = 'numero'
    end
    object FAT_CD_R_GAM_C460dta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
    object FAT_CD_R_GAM_C460vlr_contabil: TFMTBCDField
      FieldName = 'vlr_contabil'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C460pis_valor: TFMTBCDField
      FieldName = 'pis_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C460cof_valor: TFMTBCDField
      FieldName = 'cof_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C460nome_adq: TWideMemoField
      FieldName = 'nome_adq'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_C470: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_470'
    RemoteServer = dmGeral.pcConecao
    Left = 1205
    Top = 242
    object FAT_CD_R_GAM_C470id_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
    object FAT_CD_R_GAM_C470id_sequencia: TIntegerField
      FieldName = 'id_sequencia'
    end
    object FAT_CD_R_GAM_C470id_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_GAM_C470id_und_venda: TWideStringField
      FieldName = 'id_und_venda'
      Size = 3
    end
    object FAT_CD_R_GAM_C470vlr_unitario: TFMTBCDField
      FieldName = 'vlr_unitario'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C470qtde: TFloatField
      FieldName = 'qtde'
    end
    object FAT_CD_R_GAM_C470qtde_canc: TIntegerField
      FieldName = 'qtde_canc'
    end
    object FAT_CD_R_GAM_C470vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C470vlr_acrescimo: TFMTBCDField
      FieldName = 'vlr_acrescimo'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C470vlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C470id_st_icm: TWideStringField
      FieldName = 'id_st_icm'
      Size = 3
    end
    object FAT_CD_R_GAM_C470id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_C470aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object FAT_CD_R_GAM_C470pis_valor: TFMTBCDField
      FieldName = 'pis_valor'
      Precision = 18
      Size = 4
    end
    object FAT_CD_R_GAM_C470cof_valor: TFMTBCDField
      FieldName = 'cof_valor'
      Precision = 18
      Size = 4
    end
  end
  object ACBrSEF2: TACBrSEF2
    Path = 'C:\Program Files (x86)\Embarcadero\Studio\15.0\bin\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 874
    Top = 156
  end
  object FAT_CD_X_GAM_150: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'doc_cnpj_cpf'
    Params = <>
    StoreDefs = True
    Left = 1544
    Top = 24
    object FAT_CD_X_GAM_150codigo: TIntegerField
      FieldName = 'codigo'
    end
    object FAT_CD_X_GAM_150cod_pais: TStringField
      FieldName = 'cod_pais'
      Size = 10
    end
    object FAT_CD_X_GAM_150nome: TStringField
      DisplayWidth = 50
      FieldName = 'nome'
      Size = 50
    end
    object FAT_CD_X_GAM_150doc_cnpj_cpf: TStringField
      DisplayWidth = 20
      FieldName = 'doc_cnpj_cpf'
    end
    object FAT_CD_X_GAM_150uf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object FAT_CD_X_GAM_150ie: TStringField
      DisplayWidth = 20
      FieldName = 'ie'
    end
    object FAT_CD_X_GAM_150id_cidade: TStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object FAT_CD_X_GAM_150im: TStringField
      FieldName = 'im'
    end
    object FAT_CD_X_GAM_150suframa: TStringField
      FieldName = 'suframa'
      Size = 10
    end
    object FAT_CD_X_GAM_150endereco: TStringField
      DisplayWidth = 50
      FieldName = 'endereco'
      Size = 50
    end
    object FAT_CD_X_GAM_150numero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object FAT_CD_X_GAM_150end_complemento: TStringField
      DisplayWidth = 30
      FieldName = 'end_complemento'
      Size = 30
    end
    object FAT_CD_X_GAM_150bairro: TStringField
      FieldName = 'bairro'
      Size = 40
    end
  end
  object FAT_CD_R_GAM_190: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_0190'
    RemoteServer = dmGeral.pcConecao
    Left = 1440
    Top = 144
    object FAT_CD_R_GAM_190id_unidade: TWideStringField
      FieldName = 'id_unidade'
      Size = 3
    end
    object FAT_CD_R_GAM_190descricao: TWideStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object FAT_CD_R_GAM_450: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_0405'
    RemoteServer = dmGeral.pcConecao
    Left = 1325
    Top = 106
    object FAT_CD_R_GAM_450codigo: TIntegerField
      FieldName = 'codigo'
    end
    object FAT_CD_R_GAM_450descricao: TWideStringField
      FieldName = 'descricao'
      Size = 800
    end
  end
  object FAT_CD_X_GAM_H30_190: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1544
    Top = 72
    object FAT_CD_X_GAM_H30_190id_unidade: TStringField
      FieldName = 'id_unidade'
      Size = 3
    end
    object FAT_CD_X_GAM_H30_190descricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object FAT_CD_X_GAM_H30_200: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1544
    Top = 120
    object FAT_CD_X_GAM_H30_200id_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_X_GAM_H30_200id_ncm: TStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object FAT_CD_X_GAM_H30_200descricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object FAT_CD_X_GAM_H30_200id_und_compra: TStringField
      FieldName = 'id_und_compra'
      Size = 3
    end
    object FAT_CD_X_GAM_H30_200cod_barra: TStringField
      FieldName = 'cod_barra'
      Size = 50
    end
    object FAT_CD_X_GAM_H30_200tipo_item: TStringField
      FieldName = 'tipo_item'
      Size = 2
    end
    object FAT_CD_X_GAM_H30_200ex_ipi: TIntegerField
      FieldName = 'ex_ipi'
    end
    object FAT_CD_X_GAM_H30_200aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object FAT_CD_X_GAM_H30_200cod_gen: TIntegerField
      FieldName = 'cod_gen'
    end
    object FAT_CD_X_GAM_H30_200cest: TStringField
      FieldName = 'cest'
      Size = 7
    end
  end
  object ACBrDeSTDA1: TACBrDeSTDA
    Path = 'C:\Program Files (x86)\Embarcadero\Studio\15.0\bin\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 954
    Top = 44
  end
  object FAT_CD_R_GAM_G600: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_G_600'
    RemoteServer = dmGeral.pcConecao
    Left = 1080
    Top = 544
    object FAT_CD_R_GAM_G600vl_tot_nf: TFMTBCDField
      FieldName = 'vl_tot_nf'
      Precision = 32
    end
    object FAT_CD_R_GAM_G600vl_tot_aj: TFMTBCDField
      FieldName = 'vl_tot_aj'
      Precision = 19
      Size = 0
    end
    object FAT_CD_R_GAM_G600vl_tot_da: TFMTBCDField
      FieldName = 'vl_tot_da'
      Precision = 19
      Size = 0
    end
  end
  object FAT_CD_R_GAM_G605: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_G_605'
    RemoteServer = dmGeral.pcConecao
    Left = 1568
    Top = 544
    object FAT_CD_R_GAM_G605uf_emitente: TWideStringField
      FieldName = 'uf_emitente'
      Size = 2
    end
    object FAT_CD_R_GAM_G605ind_sit: TIntegerField
      FieldName = 'ind_sit'
    end
    object FAT_CD_R_GAM_G605vl_tot_nf: TFMTBCDField
      FieldName = 'vl_tot_nf'
      Precision = 32
    end
    object FAT_CD_R_GAM_G605vl_tot_aj: TFMTBCDField
      FieldName = 'vl_tot_aj'
      Precision = 19
      Size = 0
    end
    object FAT_CD_R_GAM_G605vl_tot_da: TFMTBCDField
      FieldName = 'vl_tot_da'
      Precision = 19
      Size = 0
    end
  end
  object FAT_CD_R_GAM_G610: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_G_610'
    RemoteServer = dmGeral.pcConecao
    Left = 1208
    Top = 544
    object FAT_CD_R_GAM_G610vl_tot_part_nf: TFMTBCDField
      FieldName = 'vl_tot_part_nf'
      Precision = 32
    end
    object FAT_CD_R_GAM_G610vl_aj_part: TFMTBCDField
      FieldName = 'vl_aj_part'
      Precision = 19
      Size = 0
    end
    object FAT_CD_R_GAM_G610vl_tot_part_desc: TFMTBCDField
      FieldName = 'vl_tot_part_desc'
      Precision = 32
    end
  end
  object FAT_CD_R_GAM_G615: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_G_615'
    RemoteServer = dmGeral.pcConecao
    Left = 1328
    Top = 544
    object FAT_CD_R_GAM_G615uf_emitente: TWideStringField
      FieldName = 'uf_emitente'
      Size = 2
    end
    object FAT_CD_R_GAM_G615vl_tot_part_uf_nf: TFMTBCDField
      FieldName = 'vl_tot_part_uf_nf'
      Precision = 32
    end
    object FAT_CD_R_GAM_G615vl_aj_part_uf: TFMTBCDField
      FieldName = 'vl_aj_part_uf'
      Precision = 19
      Size = 0
    end
    object FAT_CD_R_GAM_G615vl_tot_part_uf_desc: TFMTBCDField
      FieldName = 'vl_tot_part_uf_desc'
      Precision = 32
    end
  end
  object FAT_CD_R_GAM_G620: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_G_620'
    RemoteServer = dmGeral.pcConecao
    Left = 1448
    Top = 544
    object FAT_CD_R_GAM_G620ind_operacao: TIntegerField
      FieldName = 'ind_operacao'
    end
    object FAT_CD_R_GAM_G620ind_emitente: TIntegerField
      FieldName = 'ind_emitente'
    end
    object FAT_CD_R_GAM_G620vl_tot_st_nf: TFMTBCDField
      FieldName = 'vl_tot_st_nf'
      Precision = 32
    end
    object FAT_CD_R_GAM_G620vl_tot_aj_st: TFMTBCDField
      FieldName = 'vl_tot_aj_st'
      Precision = 19
      Size = 0
    end
    object FAT_CD_R_GAM_G620vl_tot_aj_st_1: TFMTBCDField
      FieldName = 'vl_tot_aj_st_1'
      Precision = 32
    end
    object FAT_CD_R_GAM_G620vl_tot_st_comb: TIntegerField
      FieldName = 'vl_tot_st_comb'
    end
  end
  object FAT_CD_R_GAM_G625: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_G_625'
    RemoteServer = dmGeral.pcConecao
    Left = 1568
    Top = 488
    object FAT_CD_R_GAM_G625uf_emitente: TWideStringField
      FieldName = 'uf_emitente'
      Size = 2
    end
    object FAT_CD_R_GAM_G625ind_tp_st: TIntegerField
      FieldName = 'ind_tp_st'
    end
    object FAT_CD_R_GAM_G625vl_tot_st_nf: TFMTBCDField
      FieldName = 'vl_tot_st_nf'
      Precision = 32
    end
    object FAT_CD_R_GAM_G625vl_tot_aj_st: TFMTBCDField
      FieldName = 'vl_tot_aj_st'
      Precision = 19
      Size = 0
    end
    object FAT_CD_R_GAM_G625vl_tot_aj_st_1: TFMTBCDField
      FieldName = 'vl_tot_aj_st_1'
      Precision = 32
    end
  end
  object FAT_CD_R_GAM_E60: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_E60'
    RemoteServer = dmGeral.pcConecao
    Left = 1692
    Top = 64
    object FAT_CD_R_GAM_E60data_movimento: TDateField
      FieldName = 'data_movimento'
    end
    object FAT_CD_R_GAM_E60ecf_fab: TWideStringField
      FieldName = 'ecf_fab'
      Size = 60
    end
    object FAT_CD_R_GAM_E60ecf_cx: TWideStringField
      FieldName = 'ecf_cx'
      Size = 3
    end
    object FAT_CD_R_GAM_E60num_doc_ini: TIntegerField
      FieldName = 'num_doc_ini'
    end
    object FAT_CD_R_GAM_E60num_doc_fin: TIntegerField
      FieldName = 'num_doc_fin'
    end
    object FAT_CD_R_GAM_E60gt_ini: TFMTBCDField
      FieldName = 'gt_ini'
      Precision = 32
    end
    object FAT_CD_R_GAM_E60cro: TWideMemoField
      FieldName = 'cro'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E60crz: TWideMemoField
      FieldName = 'crz'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E60gt_fin: TFMTBCDField
      FieldName = 'gt_fin'
      Precision = 32
    end
    object FAT_CD_R_GAM_E60vlr_op_iss: TFMTBCDField
      FieldName = 'vlr_op_iss'
      Precision = 19
      Size = 0
    end
    object FAT_CD_R_GAM_E60vlr_canc_icms: TFMTBCDField
      FieldName = 'vlr_canc_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E60vlr_desc_icms: TFMTBCDField
      FieldName = 'vlr_desc_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E60vlr_acmo_icms: TFMTBCDField
      FieldName = 'vlr_acmo_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E60vlr_liq: TFMTBCDField
      FieldName = 'vlr_liq'
      Precision = 32
    end
    object FAT_CD_R_GAM_E60vlr_isn: TFMTBCDField
      FieldName = 'vlr_isn'
      Precision = 32
    end
    object FAT_CD_R_GAM_E60vlr_nt: TFMTBCDField
      FieldName = 'vlr_nt'
      Precision = 32
    end
    object FAT_CD_R_GAM_E60vlr_st: TFMTBCDField
      FieldName = 'vlr_st'
      Precision = 32
    end
    object FAT_CD_R_GAM_E60vlr_bc_icms: TFMTBCDField
      FieldName = 'vlr_bc_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E60vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E60vlr_brt: TFMTBCDField
      FieldName = 'vlr_brt'
      Precision = 32
    end
  end
  object FAT_CD_R_GAM_E65: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_E65'
    RemoteServer = dmGeral.pcConecao
    Left = 1692
    Top = 120
    object FAT_CD_R_GAM_E65id_cfo: TIntegerField
      FieldName = 'id_cfo'
    end
    object FAT_CD_R_GAM_E65aliq_icms: TWideMemoField
      FieldName = 'aliq_icms'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E65ind_imun: TWideMemoField
      FieldName = 'ind_imun'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E65vrl_bc_icms_p: TFMTBCDField
      FieldName = 'vrl_bc_icms_p'
      Precision = 32
    end
  end
  object FAT_CD_R_GAM_E80: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_E80'
    RemoteServer = dmGeral.pcConecao
    Left = 1692
    Top = 176
    object FAT_CD_R_GAM_E80id_classe: TWideStringField
      FieldName = 'id_classe'
      Size = 4
    end
    object FAT_CD_R_GAM_E80num_mr: TWideMemoField
      FieldName = 'num_mr'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E80dt_doc: TDateField
      FieldName = 'dt_doc'
    end
    object FAT_CD_R_GAM_E80int_tot: TWideMemoField
      FieldName = 'int_tot'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E80cod_mod: TWideMemoField
      FieldName = 'cod_mod'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E80num_lcto: TWideMemoField
      FieldName = 'num_lcto'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E80ind_obs: TWideMemoField
      FieldName = 'ind_obs'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E80vlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 32
    end
    object FAT_CD_R_GAM_E80vlr_cancelado: TFMTBCDField
      FieldName = 'vlr_cancelado'
      Precision = 32
    end
    object FAT_CD_R_GAM_E80vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 32
    end
    object FAT_CD_R_GAM_E80vlr_bc_icms: TFMTBCDField
      FieldName = 'vlr_bc_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E80vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E80vlr_contabil: TFMTBCDField
      FieldName = 'vlr_contabil'
      Precision = 32
    end
    object FAT_CD_R_GAM_E80vlr_isento: TFMTBCDField
      FieldName = 'vlr_isento'
      Precision = 32
    end
    object FAT_CD_R_GAM_E80vlr_st: TFMTBCDField
      FieldName = 'vlr_st'
      Precision = 32
    end
    object FAT_CD_R_GAM_E80vlr_op_iss: TFMTBCDField
      FieldName = 'vlr_op_iss'
      Precision = 19
      Size = 0
    end
    object FAT_CD_R_GAM_E80vl_acmo_icms: TFMTBCDField
      FieldName = 'vl_acmo_icms'
      Precision = 19
      Size = 0
    end
  end
  object FAT_CD_R_GAM_E85: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_E85'
    RemoteServer = dmGeral.pcConecao
    Left = 1692
    Top = 224
    object FAT_CD_R_GAM_E85cfop: TIntegerField
      FieldName = 'cfop'
    end
    object FAT_CD_R_GAM_E85aliquota: TWideStringField
      FieldName = 'aliquota'
    end
    object FAT_CD_R_GAM_E85ind_imun: TWideMemoField
      FieldName = 'ind_imun'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E85vlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 32
    end
    object FAT_CD_R_GAM_E85vlr_cancelado: TFMTBCDField
      FieldName = 'vlr_cancelado'
      Precision = 32
    end
    object FAT_CD_R_GAM_E85vlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 32
    end
    object FAT_CD_R_GAM_E85vlr_bc_icms: TFMTBCDField
      FieldName = 'vlr_bc_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E85vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E85vlr_contabil: TFMTBCDField
      FieldName = 'vlr_contabil'
      Precision = 32
    end
    object FAT_CD_R_GAM_E85vlr_isento: TFMTBCDField
      FieldName = 'vlr_isento'
      Precision = 32
    end
    object FAT_CD_R_GAM_E85vlr_st: TFMTBCDField
      FieldName = 'vlr_st'
      Precision = 32
    end
    object FAT_CD_R_GAM_E85vlr_op_iss_p: TFMTBCDField
      FieldName = 'vlr_op_iss_p'
      Precision = 19
      Size = 0
    end
  end
  object FAT_CD_R_GAM_200P: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_700'
    RemoteServer = dmGeral.pcConecao
    Left = 1272
    Top = 8
    object FAT_CD_R_GAM_200Pid_item: TIntegerField
      FieldName = 'id_item'
    end
    object FAT_CD_R_GAM_200Pid_st_pis: TWideStringField
      FieldName = 'id_st_pis'
      Size = 2
    end
    object FAT_CD_R_GAM_200Pid_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_200Ppis_aliquota: TFloatField
      FieldName = 'pis_aliquota'
    end
    object FAT_CD_R_GAM_200Pid_ncm: TWideStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object FAT_CD_R_GAM_200Pdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object FAT_CD_R_GAM_200Pid_und_compra: TWideStringField
      FieldName = 'id_und_compra'
      Size = 3
    end
    object FAT_CD_R_GAM_200Pcod_barra: TWideStringField
      FieldName = 'cod_barra'
      Size = 50
    end
    object FAT_CD_R_GAM_200Ptipo_item: TWideStringField
      FieldName = 'tipo_item'
      Size = 2
    end
    object FAT_CD_R_GAM_200Pex_ipi: TWideMemoField
      FieldName = 'ex_ipi'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_200Pcod_gen: TWideMemoField
      FieldName = 'cod_gen'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_200Paliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object FAT_CD_R_GAM_200Pvlr_item: TFloatField
      FieldName = 'vlr_item'
    end
    object FAT_CD_R_GAM_200Pvlr_pis: TFMTBCDField
      FieldName = 'vlr_pis'
      Precision = 32
    end
    object FAT_CD_R_GAM_200Pvlr_pis_base: TFMTBCDField
      FieldName = 'vlr_pis_base'
      Precision = 32
    end
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1152
    Top = 16
    object cdsItensID_ITEM: TStringField
      FieldName = 'ID_ITEM'
      Size = 10
    end
    object cdsItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsItensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 50
    end
    object cdsItensCOD_ANT_ITEM: TStringField
      FieldName = 'COD_ANT_ITEM'
      Size = 10
    end
    object cdsItensUND_COMPRA: TStringField
      FieldName = 'UND_COMPRA'
      Size = 3
    end
    object cdsItensTIPO_ITEM: TStringField
      FieldName = 'TIPO_ITEM'
      Size = 2
    end
    object cdsItensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 10
    end
    object cdsItensEX_IPI: TStringField
      FieldName = 'EX_IPI'
      Size = 10
    end
    object cdsItensCOD_GEN: TStringField
      FieldName = 'COD_GEN'
      Size = 10
    end
    object cdsItensALIQ_ICMS: TIntegerField
      FieldName = 'ALIQ_ICMS'
    end
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1408
    Top = 16
    object cdsUnidadeunid: TStringField
      FieldName = 'unid'
      Size = 3
    end
    object cdsUnidadedesc: TStringField
      FieldName = 'desc'
      Size = 30
    end
  end
  object FAT_CD_R_NFE_CHV_VAZ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_710'
    RemoteServer = dmGeral.pcConecao
    Left = 926
    Top = 408
    object FAT_CD_R_NFE_CHV_VAZnumero: TIntegerField
      FieldName = 'numero'
    end
    object FAT_CD_R_NFE_CHV_VAZserie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_NFE_CHV_VAZmodelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_NFE_CHV_VAZnfe_chave: TWideStringField
      FieldName = 'nfe_chave'
      Size = 44
    end
    object FAT_CD_R_NFE_CHV_VAZid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object FAT_CD_R_NFE_CHV_VAZdta_emissao: TDateField
      FieldName = 'dta_emissao'
    end
  end
  object FAT_CD_R_GAM_INV_ITE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_INV_ITE'
    RemoteServer = dmGeral.pcConecao
    Left = 1704
    Top = 312
  end
  object BUS_CD_C_PCC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_PCC'
    RemoteServer = dmGeral.pcConecao
    Left = 926
    Top = 472
    object BUS_CD_C_PCCcod_nat_cc: TWideStringField
      FieldName = 'cod_nat_cc'
      Size = 2
    end
    object BUS_CD_C_PCCind_cta: TWideStringField
      FieldName = 'ind_cta'
      Size = 1
    end
    object BUS_CD_C_PCCcod_cta: TWideStringField
      FieldName = 'cod_cta'
    end
    object BUS_CD_C_PCCnome_cta: TWideStringField
      FieldName = 'nome_cta'
      Size = 60
    end
    object BUS_CD_C_PCCcod_cta_ref: TWideStringField
      FieldName = 'cod_cta_ref'
    end
    object BUS_CD_C_PCCnivel: TWideStringField
      FieldName = 'nivel'
      Size = 5
    end
  end
  object FAT_CD_R_GAM_D_190: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_D_190'
    RemoteServer = dmGeral.pcConecao
    Left = 1440
    Top = 88
    object FAT_CD_R_GAM_D_190id_st_icm: TWideMemoField
      FieldName = 'id_st_icm'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_D_190id_cfo: TWideStringField
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_GAM_D_190icm_n_aliquota: TFMTBCDField
      FieldName = 'icm_n_aliquota'
      Precision = 32
    end
    object FAT_CD_R_GAM_D_190vlr_operacao: TFMTBCDField
      FieldName = 'vlr_operacao'
      Precision = 32
    end
    object FAT_CD_R_GAM_D_190vlr_bc_icms: TFMTBCDField
      FieldName = 'vlr_bc_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_D_190vlr_icms: TFMTBCDField
      FieldName = 'vlr_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_D_190vlr_base_icms_sub: TFMTBCDField
      FieldName = 'vlr_base_icms_sub'
      Precision = 32
    end
    object FAT_CD_R_GAM_D_190vlr_icms_sub: TFMTBCDField
      FieldName = 'vlr_icms_sub'
      Precision = 32
    end
    object FAT_CD_R_GAM_D_190vlr_base_reduzida: TIntegerField
      FieldName = 'vlr_base_reduzida'
    end
  end
  object cdsItens0200: TClientDataSet
    PersistDataPacket.Data = {
      2A0000009619E0BD0100000018000000010000000000030000002A000769645F
      6974656D04000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 960
    Top = 264
    object cdsItens0200id_item: TIntegerField
      FieldName = 'id_item'
    end
  end
  object BUS_CD_C_ITE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_ITE'
    RemoteServer = dmGeral.pcConecao
    Left = 424
    Top = 56
    object BUS_CD_C_ITEid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_C_ITEativo: TBooleanField
      FieldName = 'ativo'
    end
    object BUS_CD_C_ITEcardapio: TBooleanField
      FieldName = 'cardapio'
    end
    object BUS_CD_C_ITEdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object BUS_CD_C_ITEfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 30
    end
    object BUS_CD_C_ITEreferencia: TWideStringField
      FieldName = 'referencia'
      Size = 100
    end
    object BUS_CD_C_ITEaplicacao: TWideStringField
      FieldName = 'aplicacao'
      Size = 100
    end
    object BUS_CD_C_ITEid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
    end
    object BUS_CD_C_ITEid_grupo: TWideStringField
      FieldName = 'id_grupo'
      Size = 11
    end
    object BUS_CD_C_ITEid_und_compra: TWideStringField
      FieldName = 'id_und_compra'
      Size = 3
    end
    object BUS_CD_C_ITEid_und_venda: TWideStringField
      FieldName = 'id_und_venda'
      Size = 3
    end
    object BUS_CD_C_ITEemb_compra: TFloatField
      FieldName = 'emb_compra'
    end
    object BUS_CD_C_ITEemb_venda: TFloatField
      FieldName = 'emb_venda'
    end
    object BUS_CD_C_ITEcod_barra: TWideStringField
      FieldName = 'cod_barra'
      Size = 50
    end
    object BUS_CD_C_ITEcod_fabrica: TWideStringField
      FieldName = 'cod_fabrica'
      Size = 30
    end
    object BUS_CD_C_ITEpes_liquido: TFloatField
      FieldName = 'pes_liquido'
    end
    object BUS_CD_C_ITEpes_bruto: TFloatField
      FieldName = 'pes_bruto'
    end
    object BUS_CD_C_ITEest_minimo: TFloatField
      FieldName = 'est_minimo'
    end
    object BUS_CD_C_ITEloca_rua: TWideStringField
      FieldName = 'loca_rua'
      Size = 4
    end
    object BUS_CD_C_ITEloca_prateleira: TWideStringField
      FieldName = 'loca_prateleira'
      Size = 4
    end
    object BUS_CD_C_ITEloca_escaninho: TWideStringField
      FieldName = 'loca_escaninho'
      Size = 4
    end
    object BUS_CD_C_ITEtam_largura: TFloatField
      FieldName = 'tam_largura'
    end
    object BUS_CD_C_ITEtam_comprimento: TFloatField
      FieldName = 'tam_comprimento'
    end
    object BUS_CD_C_ITEtam_espessura: TFloatField
      FieldName = 'tam_espessura'
    end
    object BUS_CD_C_ITEdensidade: TIntegerField
      FieldName = 'densidade'
    end
    object BUS_CD_C_ITEdensidade_2: TIntegerField
      FieldName = 'densidade_2'
    end
    object BUS_CD_C_ITEdensidade_3: TIntegerField
      FieldName = 'densidade_3'
    end
    object BUS_CD_C_ITEtipo: TIntegerField
      FieldName = 'tipo'
    end
    object BUS_CD_C_ITEgeracao_lote_interno: TIntegerField
      FieldName = 'geracao_lote_interno'
    end
    object BUS_CD_C_ITEdestino_reclamado: TIntegerField
      FieldName = 'destino_reclamado'
    end
    object BUS_CD_C_ITEetiq_classificacao_pro: TIntegerField
      FieldName = 'etiq_classificacao_pro'
    end
    object BUS_CD_C_ITEetiq_medidas: TWideStringField
      FieldName = 'etiq_medidas'
      Size = 60
    end
    object BUS_CD_C_ITEetiq_recomendacoes_1: TWideStringField
      FieldName = 'etiq_recomendacoes_1'
      Size = 80
    end
    object BUS_CD_C_ITEetiq_recomendacoes_2: TWideStringField
      FieldName = 'etiq_recomendacoes_2'
      Size = 80
    end
    object BUS_CD_C_ITElote_fabric_obrigatorio: TIntegerField
      FieldName = 'lote_fabric_obrigatorio'
    end
    object BUS_CD_C_ITEid_ncm: TWideStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object BUS_CD_C_ITEint_nomencm: TWideStringField
      FieldName = 'int_nomencm'
      ProviderFlags = []
      Size = 100
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
    object BUS_CD_C_ITEint_origem: TWideStringField
      FieldName = 'int_origem'
      ProviderFlags = []
      Size = 1
    end
    object BUS_CD_C_ITEint_tributo: TIntegerField
      FieldName = 'int_tributo'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_nomefor: TWideStringField
      FieldName = 'int_nomefor'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_ESP: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_ESP'
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_COM: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_COM'
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
    object BUS_CD_C_ITEdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
    end
    object BUS_CD_C_ITEetiq_modelo: TWideStringField
      FieldName = 'etiq_modelo'
      Size = 70
    end
    object BUS_CD_C_ITEcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_ITErev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_C_ITEint_mva: TFloatField
      FieldName = 'int_mva'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_fteetq: TIntegerField
      FieldName = 'int_fteetq'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_impselo: TBooleanField
      FieldName = 'int_impselo'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_pis_entrada: TWideStringField
      FieldName = 'int_pis_entrada'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_pis_saida: TWideStringField
      FieldName = 'int_pis_saida'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_cof_entrada: TWideStringField
      FieldName = 'int_cof_entrada'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_cof_saida: TWideStringField
      FieldName = 'int_cof_saida'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEid_familia: TIntegerField
      FieldName = 'id_familia'
    end
    object BUS_CD_C_ITEdes_completa: TWideStringField
      FieldName = 'des_completa'
      Size = 250
    end
    object BUS_CD_C_ITErt_pricipio_ativo: TWideStringField
      FieldName = 'rt_pricipio_ativo'
      Size = 400
    end
    object BUS_CD_C_ITErt_composicao: TWideStringField
      FieldName = 'rt_composicao'
      Size = 400
    end
    object BUS_CD_C_ITEcod_onu: TWideStringField
      FieldName = 'cod_onu'
    end
    object BUS_CD_C_ITEret_emb_nao_lavavel: TIntegerField
      FieldName = 'ret_emb_nao_lavavel'
    end
    object BUS_CD_C_ITEret_emb_lavaveis: TIntegerField
      FieldName = 'ret_emb_lavaveis'
    end
    object BUS_CD_C_ITEtam_observacoes: TWideStringField
      FieldName = 'tam_observacoes'
      Size = 150
    end
    object BUS_CD_C_ITEint_perimpostoncm: TFloatField
      FieldName = 'int_perimpostoncm'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEret_emb_capacidade: TWideStringField
      FieldName = 'ret_emb_capacidade'
    end
    object BUS_CD_C_ITEsgq_critica_laudo_fab: TBooleanField
      FieldName = 'sgq_critica_laudo_fab'
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_XML: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_XML'
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_APL: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_APL'
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_TPR: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_TPR'
    end
    object BUS_CD_C_ITEint_ipi_entrada: TWideStringField
      FieldName = 'int_ipi_entrada'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_ipi_saida: TWideStringField
      FieldName = 'int_ipi_saida'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_C_ITEint_serterceiro: TBooleanField
      FieldName = 'int_serterceiro'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEetiq_id_cue: TIntegerField
      FieldName = 'etiq_id_cue'
    end
    object BUS_CD_C_ITEint_msg_etq1: TWideStringField
      FieldName = 'int_msg_etq1'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_msg_etq2: TWideStringField
      FieldName = 'int_msg_etq2'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_msg_etq3: TWideStringField
      FieldName = 'int_msg_etq3'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_msg_etq4: TWideStringField
      FieldName = 'int_msg_etq4'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_msg_etq5: TWideStringField
      FieldName = 'int_msg_etq5'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_impmsgetq: TBooleanField
      FieldName = 'int_impmsgetq'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_msg_etq6: TWideStringField
      FieldName = 'int_msg_etq6'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_msg_etq7: TWideStringField
      FieldName = 'int_msg_etq7'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEcubagem: TFMTBCDField
      FieldName = 'cubagem'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEpreco_avista_ant_reajuste: TFMTBCDField
      FieldName = 'preco_avista_ant_reajuste'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEpreco_aprazo_ant_reajuste: TFMTBCDField
      FieldName = 'preco_aprazo_ant_reajuste'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEdta_ult_reajuste: TDateField
      FieldName = 'dta_ult_reajuste'
    end
    object BUS_CD_C_ITEint_ctcepi: TBooleanField
      FieldName = 'int_ctcepi'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_dre_perc_ircs: TFloatField
      FieldName = 'int_dre_perc_ircs'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_dre_perc_out_ded_ven: TFloatField
      FieldName = 'int_dre_perc_out_ded_ven'
      ProviderFlags = []
    end
    object BUS_CD_C_ITErt_registro: TWideStringField
      FieldName = 'rt_registro'
      Size = 25
    end
    object BUS_CD_C_ITEint_ctr_lot_entr: TBooleanField
      FieldName = 'int_ctr_lot_entr'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEcusto_servico: TFMTBCDField
      FieldName = 'custo_servico'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEint_impetqsimples: TBooleanField
      FieldName = 'int_impetqsimples'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_pathetqsimples: TWideStringField
      FieldName = 'int_pathetqsimples'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_C_ITEint_inf_tempo_ite_coj: TBooleanField
      FieldName = 'int_inf_tempo_ite_coj'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_ctc_epi: TBooleanField
      FieldName = 'int_ctc_epi'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEper_cmv_interno: TFMTBCDField
      FieldName = 'per_cmv_interno'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITEper_cmv_externo: TFMTBCDField
      FieldName = 'per_cmv_externo'
      Precision = 18
      Size = 4
    end
    object BUS_CD_C_ITECAD_SQ_C_ITE_LOC: TDataSetField
      FieldName = 'CAD_SQ_C_ITE_LOC'
    end
    object BUS_CD_C_ITEetiq_madeira: TWideStringField
      FieldName = 'etiq_madeira'
      Size = 120
    end
    object BUS_CD_C_ITEetiq_marca: TWideStringField
      FieldName = 'etiq_marca'
      Size = 30
    end
    object BUS_CD_C_ITEetiq_espuma1: TWideStringField
      FieldName = 'etiq_espuma1'
      Size = 150
    end
    object BUS_CD_C_ITEetiq_espuma2: TWideStringField
      FieldName = 'etiq_espuma2'
      Size = 150
    end
    object BUS_CD_C_ITEetiq_espuma3: TWideStringField
      FieldName = 'etiq_espuma3'
      Size = 150
    end
    object BUS_CD_C_ITEetiq_revestimento1: TWideStringField
      FieldName = 'etiq_revestimento1'
      Size = 150
    end
    object BUS_CD_C_ITEetiq_revestimento2: TWideStringField
      FieldName = 'etiq_revestimento2'
      Size = 150
    end
    object BUS_CD_C_ITEetiq_revestimento3: TWideStringField
      FieldName = 'etiq_revestimento3'
      Size = 150
    end
    object BUS_CD_C_ITEetiq_espuma4: TWideStringField
      FieldName = 'etiq_espuma4'
      Size = 150
    end
    object BUS_CD_C_ITEetiq_espuma5: TWideStringField
      FieldName = 'etiq_espuma5'
      Size = 150
    end
    object BUS_CD_C_ITEetiq_espuma6: TWideStringField
      FieldName = 'etiq_espuma6'
      Size = 150
    end
    object BUS_CD_C_ITEetiq_revestimento4: TWideStringField
      FieldName = 'etiq_revestimento4'
      Size = 150
    end
    object BUS_CD_C_ITEetiq_revestimento5: TWideStringField
      FieldName = 'etiq_revestimento5'
      Size = 150
    end
    object BUS_CD_C_ITEetiq_revestimento6: TWideStringField
      FieldName = 'etiq_revestimento6'
      Size = 150
    end
    object BUS_CD_C_ITEint_lote_gru: TBooleanField
      FieldName = 'int_lote_gru'
      ProviderFlags = []
    end
    object BUS_CD_C_ITEint_ali_interna_icms: TFloatField
      FieldName = 'int_ali_interna_icms'
    end
    object BUS_CD_C_ITEint_cest: TWideStringField
      FieldName = 'int_cest'
      Size = 7
    end
  end
  object cdsCli_For: TClientDataSet
    PersistDataPacket.Data = {
      3B0000009619E0BD0100000018000000010000000000030000003B000C646F63
      5F636E706A5F6370660100490000000100055749445448020002000E000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1056
    Top = 8
    object cdsCli_Fordoc_cnpj_cpf: TStringField
      FieldName = 'doc_cnpj_cpf'
      Size = 14
    end
  end
  object cdsM400: TClientDataSet
    PersistDataPacket.Data = {
      790000009619E0BD010000001800000003000000000003000000790007435354
      5F50495301004900000001000557494454480200020002000A564C5F544F545F
      524543080004000000010007535542545950450200490006004D6F6E65790007
      434F445F43544101004900000001000557494454480200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 178
    Top = 132
    object cdsM400CST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 2
    end
    object cdsM400VL_TOT_REC: TCurrencyField
      FieldName = 'VL_TOT_REC'
    end
    object cdsM400COD_CTA: TStringField
      FieldName = 'COD_CTA'
    end
  end
  object cdsM410: TClientDataSet
    PersistDataPacket.Data = {
      750000009619E0BD0100000018000000030000000000030000007500074E4154
      5F524543010049000000010005574944544802000200030007434F445F435441
      010049000000010005574944544802000200140006564C5F5245430800040000
      00010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 266
    Top = 132
    object cdsM410NAT_REC: TStringField
      FieldName = 'NAT_REC'
      Size = 3
    end
    object cdsM410COD_CTA: TStringField
      FieldName = 'COD_CTA'
    end
    object cdsM410VL_REC: TCurrencyField
      FieldName = 'VL_REC'
    end
  end
  object dsM400: TDataSource
    DataSet = cdsM400
    Left = 194
    Top = 292
  end
  object dsM410: TDataSource
    DataSet = cdsM410
    Left = 274
    Top = 292
  end
  object FAT_CD_R_GAM_E_A_305: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_E_A_305'
    RemoteServer = dmGeral.pcConecao
    Left = 1576
    Top = 384
    object FAT_CD_R_GAM_E_A_305ind_mro: TIntegerField
      FieldName = 'ind_mro'
    end
    object FAT_CD_R_GAM_E_A_305ind_ope: TIntegerField
      FieldName = 'ind_ope'
    end
    object FAT_CD_R_GAM_E_A_305dt_doc: TDateField
      FieldName = 'dt_doc'
    end
    object FAT_CD_R_GAM_E_A_305cop: TWideStringField
      FieldName = 'cop'
      Size = 4
    end
    object FAT_CD_R_GAM_E_A_305num_lcto: TWideMemoField
      FieldName = 'num_lcto'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_A_305qtd_lcto: TIntegerField
      FieldName = 'qtd_lcto'
    end
    object FAT_CD_R_GAM_E_A_305vl_cont: TFMTBCDField
      FieldName = 'vl_cont'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_A_305vlr_op_iss: TFMTBCDField
      FieldName = 'vlr_op_iss'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_A_305vl_bc_icms: TFMTBCDField
      FieldName = 'vl_bc_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_A_305vl_icms: TFMTBCDField
      FieldName = 'vl_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_A_305vl_icms_st: TFMTBCDField
      FieldName = 'vl_icms_st'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_A_305vl_st_ent: TWideMemoField
      FieldName = 'vl_st_ent'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_A_305vl_st_fnt: TWideMemoField
      FieldName = 'vl_st_fnt'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_A_305vl_st_uf: TWideMemoField
      FieldName = 'vl_st_uf'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_A_305vl_st_oe: TWideMemoField
      FieldName = 'vl_st_oe'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_A_305vl_at: TWideMemoField
      FieldName = 'vl_at'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_A_305vl_isnt_icms: TFMTBCDField
      FieldName = 'vl_isnt_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_A_305vl_out_icms: TFMTBCDField
      FieldName = 'vl_out_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_A_305vl_bc_ipi: TFMTBCDField
      FieldName = 'vl_bc_ipi'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_A_305vl_ipi: TFMTBCDField
      FieldName = 'vl_ipi'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_A_305vl_isnt_ipi: TWideMemoField
      FieldName = 'vl_isnt_ipi'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_A_305vl_out_ipi: TWideMemoField
      FieldName = 'vl_out_ipi'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_E_B_305: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_E_B_305'
    RemoteServer = dmGeral.pcConecao
    Left = 1736
    Top = 384
    object FAT_CD_R_GAM_E_B_305ind_mro: TIntegerField
      FieldName = 'ind_mro'
    end
    object FAT_CD_R_GAM_E_B_305ind_ope: TIntegerField
      FieldName = 'ind_ope'
    end
    object FAT_CD_R_GAM_E_B_305cop: TWideStringField
      FieldName = 'cop'
      Size = 4
    end
    object FAT_CD_R_GAM_E_B_305num_lcto: TWideMemoField
      FieldName = 'num_lcto'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_B_305qtd_lcto: TIntegerField
      FieldName = 'qtd_lcto'
    end
    object FAT_CD_R_GAM_E_B_305vl_cont: TFMTBCDField
      FieldName = 'vl_cont'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_B_305vlr_op_iss: TFMTBCDField
      FieldName = 'vlr_op_iss'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_B_305vl_bc_icms: TFMTBCDField
      FieldName = 'vl_bc_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_B_305vl_icms: TFMTBCDField
      FieldName = 'vl_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_B_305vl_icms_st: TFMTBCDField
      FieldName = 'vl_icms_st'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_B_305vl_st_ent: TWideMemoField
      FieldName = 'vl_st_ent'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_B_305vl_st_fnt: TWideMemoField
      FieldName = 'vl_st_fnt'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_B_305vl_st_uf: TWideMemoField
      FieldName = 'vl_st_uf'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_B_305vl_st_oe: TWideMemoField
      FieldName = 'vl_st_oe'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_B_305vl_at: TWideMemoField
      FieldName = 'vl_at'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_B_305vl_isnt_icms: TFMTBCDField
      FieldName = 'vl_isnt_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_B_305vl_out_icms: TFMTBCDField
      FieldName = 'vl_out_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_B_305vl_bc_ipi: TFMTBCDField
      FieldName = 'vl_bc_ipi'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_B_305vl_ipi: TFMTBCDField
      FieldName = 'vl_ipi'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_B_305vl_isnt_ipi: TWideMemoField
      FieldName = 'vl_isnt_ipi'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_B_305vl_out_ipi: TWideMemoField
      FieldName = 'vl_out_ipi'
      BlobType = ftWideMemo
    end
  end
  object FAT_CD_R_GAM_E_C_305: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_GAM_E_C_305'
    RemoteServer = dmGeral.pcConecao
    Left = 1736
    Top = 440
    object FAT_CD_R_GAM_E_C_305ind_mro: TIntegerField
      FieldName = 'ind_mro'
    end
    object FAT_CD_R_GAM_E_C_305ind_ope: TIntegerField
      FieldName = 'ind_ope'
    end
    object FAT_CD_R_GAM_E_C_305dt_doc: TDateField
      FieldName = 'dt_doc'
    end
    object FAT_CD_R_GAM_E_C_305num_lcto: TWideMemoField
      FieldName = 'num_lcto'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_C_305qtd_lcto: TIntegerField
      FieldName = 'qtd_lcto'
    end
    object FAT_CD_R_GAM_E_C_305vl_cont: TFMTBCDField
      FieldName = 'vl_cont'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_C_305vlr_op_iss: TFMTBCDField
      FieldName = 'vlr_op_iss'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_C_305vl_bc_icms: TFMTBCDField
      FieldName = 'vl_bc_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_C_305vl_icms: TFMTBCDField
      FieldName = 'vl_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_C_305vl_icms_st: TFMTBCDField
      FieldName = 'vl_icms_st'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_C_305vl_st_ent: TWideMemoField
      FieldName = 'vl_st_ent'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_C_305vl_st_fnt: TWideMemoField
      FieldName = 'vl_st_fnt'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_C_305vl_st_uf: TWideMemoField
      FieldName = 'vl_st_uf'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_C_305vl_st_oe: TWideMemoField
      FieldName = 'vl_st_oe'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_C_305vl_at: TWideMemoField
      FieldName = 'vl_at'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_C_305vl_isnt_icms: TFMTBCDField
      FieldName = 'vl_isnt_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_C_305vl_out_icms: TFMTBCDField
      FieldName = 'vl_out_icms'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_C_305vl_bc_ipi: TFMTBCDField
      FieldName = 'vl_bc_ipi'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_C_305vl_ipi: TFMTBCDField
      FieldName = 'vl_ipi'
      Precision = 32
    end
    object FAT_CD_R_GAM_E_C_305vl_isnt_ipi: TWideMemoField
      FieldName = 'vl_isnt_ipi'
      BlobType = ftWideMemo
    end
    object FAT_CD_R_GAM_E_C_305vl_out_ipi: TWideMemoField
      FieldName = 'vl_out_ipi'
      BlobType = ftWideMemo
    end
  end
end
