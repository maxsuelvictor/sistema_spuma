object FAT_FM_M_SIN: TFAT_FM_M_SIN
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gera'#231#227'o de Sintegra'
  ClientHeight = 471
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 944
    Height = 471
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados para gera'#231#227'o'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 936
        Height = 121
        Align = alTop
        Caption = ' Cabe'#231'alho do Arquivo '
        TabOrder = 0
        object Label3: TLabel
          Left = 374
          Top = 23
          Width = 211
          Height = 13
          Caption = 'C'#243'digo de Identifica'#231#227'o do Conv'#234'nio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 27
          Top = 68
          Width = 207
          Height = 13
          Caption = 'Natureza das Opera'#231#245'es Informadas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 374
          Top = 68
          Width = 124
          Height = 13
          Caption = 'Finalidade do Arquivo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 27
          Top = 23
          Width = 49
          Height = 13
          Caption = 'Empresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboBox1: TComboBox
          Left = 374
          Top = 39
          Width = 245
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 2
          ParentFont = False
          TabOrder = 0
          Text = '3 - Conv'#234'nio 57/95 Alt. 76/03'
          Items.Strings = (
            '1 - Conv'#234'nio 57/95 Vers'#227'o 31/99 Alt. 30/02'
            '2 - Conv'#234'nio 57/95 Vers'#227'o 69/02 Alt. 142/02  '
            '3 - Conv'#234'nio 57/95 Alt. 76/03')
        end
        object ComboBox2: TComboBox
          Left = 27
          Top = 84
          Width = 266
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 2
          ParentFont = False
          TabOrder = 1
          Text = '3 - Totalidade das opera'#231#245'es do informante'
          Items.Strings = (
            
              '1 - Interestaduais - Somente opera'#231#245'es sujeitas ao regime de Sub' +
              'stitui'#231#227'o Tribut'#225'ria'
            
              '2 - Interestaduais - Opera'#231#245'es com ou sem Substitui'#231#227'o Tribut'#225'ri' +
              'a'
            '3 - Totalidade das opera'#231#245'es do informante')
        end
        object ComboBox3: TComboBox
          Left = 374
          Top = 84
          Width = 245
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 2
          Text = '1 - Normal'
          Items.Strings = (
            '1 - Normal'
            '2 - Retifica'#231#227'o Total de Arquivo'
            '5 - Desfazimento de Arquivo')
        end
        object cbbEmpresas: TComboBox
          Left = 27
          Top = 39
          Width = 266
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = cbbEmpresasChange
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 121
        Width = 936
        Height = 85
        Align = alBottom
        Caption = ' Dados Complementares '
        TabOrder = 1
        object Label6: TLabel
          Left = 27
          Top = 23
          Width = 74
          Height = 13
          Caption = 'Respons'#225'vel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 27
          Top = 42
          Width = 334
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 28
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object GroupBox3: TGroupBox
          Left = 374
          Top = 7
          Width = 274
          Height = 74
          Caption = ' Per'#237'odo '
          TabOrder = 1
          object Label7: TLabel
            Left = 33
            Top = 24
            Width = 35
            Height = 13
            Caption = 'Inicial'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 152
            Top = 24
            Width = 28
            Height = 13
            Caption = 'Final'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 128
            Top = 43
            Width = 16
            Height = 13
            Caption = 'at'#233
          end
          object dta_inicial: TJvDateEdit
            Left = 32
            Top = 39
            Width = 90
            Height = 21
            ShowNullDate = False
            TabOrder = 0
          end
          object dta_final: TJvDateEdit
            Left = 152
            Top = 39
            Width = 90
            Height = 21
            ShowNullDate = False
            TabOrder = 1
          end
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 206
        Width = 936
        Height = 156
        Align = alBottom
        Caption = ' Gerar registros '
        TabOrder = 2
        object CheckListBox1: TCheckListBox
          Left = 2
          Top = 15
          Width = 932
          Height = 139
          Align = alClient
          Columns = 3
          ItemHeight = 13
          Items.Strings = (
            'Gerar 50'
            'Gerar 54'
            'Gerar 60M'
            'Gerar 60A'
            'Gerar 75')
          TabOrder = 0
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 362
        Width = 936
        Height = 81
        Align = alBottom
        TabOrder = 3
        object Label9: TLabel
          Left = 826
          Top = 7
          Width = 103
          Height = 13
          Caption = 'Engine de gera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label10: TLabel
          Left = 117
          Top = 7
          Width = 112
          Height = 13
          Caption = 'Vers'#227'o do validador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 246
          Top = 38
          Width = 100
          Height = 13
          Caption = 'Local do arquivo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboBox4: TComboBox
          Left = 826
          Top = 23
          Width = 77
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'VCL'
          Visible = False
          Items.Strings = (
            'VCL')
        end
        object ComboBox5: TComboBox
          Left = 117
          Top = 23
          Width = 112
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 1
          Text = '5.2.4'
          Items.Strings = (
            '5.2.3'
            '5.2.4')
        end
        object Button1: TButton
          Left = 2
          Top = 11
          Width = 99
          Height = 64
          Caption = 'Gerar'
          TabOrder = 2
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 117
          Top = 50
          Width = 112
          Height = 25
          Caption = 'Vers'#227'o'
          TabOrder = 3
          OnClick = Button2Click
        end
        object txtLocalArquivo: TEdit
          Left = 246
          Top = 54
          Width = 547
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 28
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
    object ts50: TTabSheet
      Caption = '50'
      ImageIndex = 1
      object grd50: TwwDBGrid
        Left = 0
        Top = 0
        Width = 936
        Height = 443
        Selected.Strings = (
          'id_empresa'#9'10'#9'Empresa'#9#9
          'id_st_icm'#9'3'#9'cst icms'#9#9
          'id_cfo'#9'5'#9'cfop'#9#9
          'icm_n_aliquota'#9'10'#9'Al'#237'quota'#9#9
          'nfe_cod_sit'#9'2'#9'C'#243'd. situa'#231#227'o nfe'#9#9
          'id_emitente'#9'10'#9'C'#243'd. emitente'#9#9
          'modelo'#9'2'#9'Modelo'#9#9
          'serie'#9'3'#9'S'#233'rie'#9#9
          'numero'#9'10'#9'N'#250'mero'#9#9
          'dta_emissao'#9'10'#9'Emiss'#227'o'#9#9
          'ind_emitente'#9'10'#9'Ind. emitente'#9#9
          'int_cnpjcpf'#9'10'#9'Cnpj/Cpf'#9#9
          'int_doc_ie'#9'10'#9'IE'#9#9
          'int_estado'#9'2'#9'UF'#9#9
          'vlr_contabil'#9'11'#9'Vlr. L'#237'quido'#9'F'#9
          'vlr_base_icm'#9'11'#9'Vlr. base icms'#9#9
          'vlr_icm'#9'11'#9'Vlr. Icms'#9#9
          'vlr_outras'#9'11'#9'Vlr. Outras'#9#9
          'vlr_isenta'#9'11'#9'Vlr. Isenta'#9#9)
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = ds50
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object ts54: TTabSheet
      Caption = '54'
      ImageIndex = 2
      object grd54: TwwDBGrid
        Left = 0
        Top = 0
        Width = 936
        Height = 443
        Selected.Strings = (
          'int_cnpjcpf'#9'10'#9'Cnpj/Cpf'
          'dta_emissao'#9'10'#9'Emiss'#227'o'
          'serie'#9'3'#9'S'#233'rie'
          'numero'#9'10'#9'N'#250'mero'
          'id_cfo'#9'5'#9'CFOP'
          'modelo'#9'2'#9'Modelo'
          'id_item'#9'10'#9'C'#243'digo'
          'int_nomeite'#9'40'#9'Item'
          'nfe_cod_sit'#9'2'#9'C'#243'd. Situa'#231#227'o Nfe'
          'ind_emitente'#9'10'#9'Ind. emitente'
          'id_st_icm'#9'3'#9'cst icms'
          'icm_n_aliquota'#9'10'#9'Al'#237'quota'
          'qtde'#9'10'#9'Qtde'
          'vlr_liquido'#9'11'#9'Vlr. L'#237'quido'
          'vlr_desconto'#9'11'#9'Vlr. Desconto'
          'vlr_base_icm'#9'11'#9'Vlr. base icms'
          'vlr_base_subst'#9'11'#9'Vlr. base icms subst'
          'vlr_ipi'#9'11'#9'Vlr. IPI')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = ds54
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object ts60M: TTabSheet
      Caption = '60M'
      ImageIndex = 3
      object grd60M: TwwDBGrid
        Left = 0
        Top = 0
        Width = 936
        Height = 443
        Selected.Strings = (
          'data_movimento'#9'10'#9'Data'
          'ecf_fab'#9'35'#9'Serial impressora'#9'F'
          'ecf_cx'#9'3'#9'Nro caixa'
          'num_doc_ini'#9'10'#9'COO Primeiro'
          'num_doc_fin'#9'10'#9'COO '#218'ltimo'
          'cro'#9'10'#9'cro'
          'crz'#9'10'#9'crz'
          'vlr_brt'#9'12'#9'Vlr Venda Bruta'
          'gt_fin'#9'12'#9'Vlr. Totalizador (GT FIN)')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = ds60M
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object ts60A: TTabSheet
      Caption = '60A'
      ImageIndex = 4
      object grd60A: TwwDBGrid
        Left = 0
        Top = 0
        Width = 936
        Height = 443
        Selected.Strings = (
          'data_movimento'#9'10'#9'Data'
          'serial_impressora'#9'60'#9'Serial impressora'#9'F'
          'aliquota'#9'11'#9'Al'#237'quota'
          'valor_total'#9'11'#9'Vlr. Total')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = ds60A
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object ts75: TTabSheet
      Caption = '75'
      ImageIndex = 5
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 936
        Height = 443
        Selected.Strings = (
          'id_item'#9'10'#9'C'#243'digo'
          'descricao'#9'60'#9'Item'
          'id_ncm'#9'10'#9'NCM'
          'id_und_venda'#9'3'#9'Und'
          'ipi_aliquota'#9'10'#9'Al'#237'quota IPI'
          'icm_n_aliquota'#9'11'#9'Al'#237'quota ICMS'
          'icm_n_base'#9'21'#9'Vlr. base ICMS')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = ds75
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Arquivos Texto|*.txt'
    Options = [ofHideReadOnly]
    Title = 'Salvar Arquivo'
    Left = 504
    Top = 244
  end
  object ACBrSintegra: TACBrSintegra
    VersaoValidador = vv523
    Informa88SME = False
    Informa88SMS = False
    Informa88EAN = False
    Informa88C = False
    InformaSapiMG = False
    Left = 448
    Top = 236
  end
  object FAT_CD_R_SIN_050: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_SIN_050'
    RemoteServer = dmGeral.pcConecao
    Left = 600
    Top = 135
    object FAT_CD_R_SIN_050id_empresa: TIntegerField
      DisplayLabel = 'Empresa'
      DisplayWidth = 10
      FieldName = 'id_empresa'
    end
    object FAT_CD_R_SIN_050id_cfo: TWideStringField
      DisplayLabel = 'cfop'
      DisplayWidth = 5
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_SIN_050icm_n_aliquota: TFMTBCDField
      DisplayLabel = 'Al'#237'quota'
      DisplayWidth = 10
      FieldName = 'icm_n_aliquota'
      Precision = 32
    end
    object FAT_CD_R_SIN_050nfe_cod_sit: TWideStringField
      DisplayLabel = 'C'#243'd. situa'#231#227'o nfe'
      DisplayWidth = 2
      FieldName = 'nfe_cod_sit'
      Size = 2
    end
    object FAT_CD_R_SIN_050id_emitente: TIntegerField
      DisplayLabel = 'C'#243'd. emitente'
      DisplayWidth = 10
      FieldName = 'id_emitente'
    end
    object FAT_CD_R_SIN_050modelo: TWideStringField
      DisplayLabel = 'Modelo'
      DisplayWidth = 2
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_SIN_050serie: TWideStringField
      DisplayLabel = 'S'#233'rie'
      DisplayWidth = 3
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_SIN_050numero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 10
      FieldName = 'numero'
    end
    object FAT_CD_R_SIN_050dta_emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'dta_emissao'
    end
    object FAT_CD_R_SIN_050ind_emitente: TIntegerField
      DisplayLabel = 'Ind. emitente'
      DisplayWidth = 10
      FieldName = 'ind_emitente'
    end
    object FAT_CD_R_SIN_050int_cnpjcpf: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Cnpj/Cpf'
      DisplayWidth = 10
      FieldName = 'int_cnpjcpf'
      Size = 14
    end
    object FAT_CD_R_SIN_050int_doc_ie: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'IE'
      DisplayWidth = 10
      FieldName = 'int_doc_ie'
      Size = 14
    end
    object FAT_CD_R_SIN_050int_estado: TWideStringField
      DisplayLabel = 'UF'
      DisplayWidth = 2
      FieldName = 'int_estado'
      Size = 2
    end
    object FAT_CD_R_SIN_050vlr_contabil: TFMTBCDField
      DisplayLabel = 'Vlr. L'#237'quido'
      DisplayWidth = 11
      FieldName = 'vlr_contabil'
      Precision = 32
    end
    object FAT_CD_R_SIN_050vlr_base_icm: TFMTBCDField
      DisplayLabel = 'Vlr. base icms'
      DisplayWidth = 11
      FieldName = 'vlr_base_icm'
      Precision = 32
    end
    object FAT_CD_R_SIN_050vlr_icm: TFMTBCDField
      DisplayLabel = 'Vlr. Icms'
      DisplayWidth = 11
      FieldName = 'vlr_icm'
      Precision = 32
    end
    object FAT_CD_R_SIN_050vlr_outras: TFMTBCDField
      DisplayLabel = 'Vlr. Outras'
      DisplayWidth = 11
      FieldName = 'vlr_outras'
      Precision = 32
    end
    object FAT_CD_R_SIN_050vlr_isenta: TFMTBCDField
      DisplayLabel = 'Vlr. Isenta'
      DisplayWidth = 11
      FieldName = 'vlr_isenta'
      Precision = 32
    end
  end
  object FAT_CD_R_SIN_051: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 191
  end
  object FAT_CD_R_SIN_053: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 247
  end
  object FAT_CD_R_SIN_054: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_SIN_054'
    RemoteServer = dmGeral.pcConecao
    Left = 600
    Top = 303
    object FAT_CD_R_SIN_054int_cnpjcpf: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Cnpj/Cpf'
      DisplayWidth = 10
      FieldName = 'int_cnpjcpf'
      Size = 14
    end
    object FAT_CD_R_SIN_054dta_emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'dta_emissao'
    end
    object FAT_CD_R_SIN_054serie: TWideStringField
      DisplayLabel = 'S'#233'rie'
      DisplayWidth = 3
      FieldName = 'serie'
      Size = 3
    end
    object FAT_CD_R_SIN_054numero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 10
      FieldName = 'numero'
    end
    object FAT_CD_R_SIN_054id_cfo: TWideStringField
      DisplayLabel = 'CFOP'
      DisplayWidth = 5
      FieldName = 'id_cfo'
      Size = 5
    end
    object FAT_CD_R_SIN_054modelo: TWideStringField
      DisplayLabel = 'Modelo'
      DisplayWidth = 2
      FieldName = 'modelo'
      Size = 2
    end
    object FAT_CD_R_SIN_054id_item: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'id_item'
    end
    object FAT_CD_R_SIN_054int_nomeite: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 40
      FieldName = 'int_nomeite'
      Size = 100
    end
    object FAT_CD_R_SIN_054nfe_cod_sit: TWideStringField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Nfe'
      DisplayWidth = 2
      FieldName = 'nfe_cod_sit'
      Size = 2
    end
    object FAT_CD_R_SIN_054ind_emitente: TIntegerField
      DisplayLabel = 'Ind. emitente'
      DisplayWidth = 10
      FieldName = 'ind_emitente'
    end
    object FAT_CD_R_SIN_054id_st_icm: TWideStringField
      DisplayLabel = 'cst icms'
      DisplayWidth = 3
      FieldName = 'id_st_icm'
      Size = 3
    end
    object FAT_CD_R_SIN_054icm_n_aliquota: TFloatField
      DisplayLabel = 'Al'#237'quota'
      DisplayWidth = 10
      FieldName = 'icm_n_aliquota'
    end
    object FAT_CD_R_SIN_054qtde: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'qtde'
    end
    object FAT_CD_R_SIN_054vlr_liquido: TFMTBCDField
      DisplayLabel = 'Vlr. L'#237'quido'
      DisplayWidth = 11
      FieldName = 'vlr_liquido'
      Precision = 32
    end
    object FAT_CD_R_SIN_054vlr_desconto: TFMTBCDField
      DisplayLabel = 'Vlr. Desconto'
      DisplayWidth = 11
      FieldName = 'vlr_desconto'
      Precision = 32
    end
    object FAT_CD_R_SIN_054vlr_base_icm: TFMTBCDField
      DisplayLabel = 'Vlr. base icms'
      DisplayWidth = 11
      FieldName = 'vlr_base_icm'
      Precision = 32
    end
    object FAT_CD_R_SIN_054vlr_base_subst: TFMTBCDField
      DisplayLabel = 'Vlr. base icms subst'
      DisplayWidth = 11
      FieldName = 'vlr_base_subst'
      Precision = 32
    end
    object FAT_CD_R_SIN_054vlr_ipi: TFMTBCDField
      DisplayLabel = 'Vlr. IPI'
      DisplayWidth = 11
      FieldName = 'vlr_ipi'
      Precision = 32
    end
    object FAT_CD_R_SIN_054origem_mercadoria: TWideStringField
      FieldName = 'origem_mercadoria'
      Size = 1
    end
  end
  object FAT_CD_R_SIN_60M: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_SIN_60M'
    RemoteServer = dmGeral.pcConecao
    Left = 600
    Top = 367
    object FAT_CD_R_SIN_60Mdata_movimento: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'data_movimento'
    end
    object FAT_CD_R_SIN_60Mecf_fab: TWideStringField
      DisplayLabel = 'Serial impressora'
      DisplayWidth = 35
      FieldName = 'ecf_fab'
      Size = 60
    end
    object FAT_CD_R_SIN_60Mecf_cx: TWideStringField
      DisplayLabel = 'Nro caixa'
      DisplayWidth = 3
      FieldName = 'ecf_cx'
      Size = 3
    end
    object FAT_CD_R_SIN_60Mnum_doc_ini: TIntegerField
      DisplayLabel = 'COO Primeiro'
      DisplayWidth = 10
      FieldName = 'num_doc_ini'
    end
    object FAT_CD_R_SIN_60Mnum_doc_fin: TIntegerField
      DisplayLabel = 'COO '#218'ltimo'
      DisplayWidth = 10
      FieldName = 'num_doc_fin'
    end
    object FAT_CD_R_SIN_60Mcro: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 10
      FieldName = 'cro'
    end
    object FAT_CD_R_SIN_60Mcrz: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 10
      FieldName = 'crz'
    end
    object FAT_CD_R_SIN_60Mvlr_brt: TFMTBCDField
      DisplayLabel = 'Vlr Venda Bruta'
      DisplayWidth = 12
      FieldName = 'vlr_brt'
      Precision = 32
    end
    object FAT_CD_R_SIN_60Mgt_fin: TFMTBCDField
      DisplayLabel = 'Vlr. Totalizador (GT FIN)'
      DisplayWidth = 12
      FieldName = 'gt_fin'
      Precision = 32
    end
  end
  object FAT_CD_R_SIN_60A: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_SIN_60A'
    RemoteServer = dmGeral.pcConecao
    Left = 712
    Top = 135
  end
  object FAT_CD_R_SIN_60D: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 712
    Top = 191
  end
  object FAT_CD_R_SIN_60I: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 712
    Top = 247
  end
  object FAT_CD_R_SIN_075: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_R_SIN_075'
    RemoteServer = dmGeral.pcConecao
    Left = 712
    Top = 303
  end
  object ds50: TDataSource
    DataSet = FAT_CD_R_SIN_050
    Left = 796
    Top = 136
  end
  object ds54: TDataSource
    DataSet = FAT_CD_R_SIN_054
    Left = 796
    Top = 192
  end
  object ds60M: TDataSource
    DataSet = FAT_CD_R_SIN_60M
    Left = 796
    Top = 248
  end
  object ds60A: TDataSource
    DataSet = FAT_CD_R_SIN_60A
    Left = 796
    Top = 312
  end
  object ds75: TDataSource
    DataSet = FAT_CD_R_SIN_075
    Left = 796
    Top = 376
  end
end
