object PCP_FM_M_CPA_PRE: TPCP_FM_M_CPA_PRE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 328
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTipoItem: TLabel
    Left = 114
    Top = 62
    Width = 67
    Height = 13
    Caption = 'Tipo do Item :'
  end
  object imPasso2: TImage
    Left = 319
    Top = 119
    Width = 26
    Height = 23
    Picture.Data = {
      0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
      00140000001708060000000B1D6FA30000000467414D410000B18F0BFC610500
      0000206348524D00007A26000080840000FA00000080E8000075300000EA6000
      003A98000017709CBA513C000000097048597300000EBC00000EBC0195BC7249
      0000008749444154484BEDD03D1240301086E19CC501D46E81432835EEA7F077
      21854611D6C8CC5A11EC6EA1F0CE7C8D244FC1886B73BB4D2580BA1D14A30EC1
      63A78E35992246C7EEBB180400FE6FA21C82176CBD10F5858D87D27F1943BEF3
      53A107E46C9C270608735D7DBF8D3E244BFAEA05E6F24087B1F241307614AA53
      210851542575F0EF79C62CEF29E02DC4F120A70000000049454E44AE426082}
    Stretch = True
  end
  object imPasso3: TImage
    Left = 319
    Top = 176
    Width = 26
    Height = 23
    Picture.Data = {
      0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
      00140000001708060000000B1D6FA30000000467414D410000B18F0BFC610500
      0000206348524D00007A26000080840000FA00000080E8000075300000EA6000
      003A98000017709CBA513C000000097048597300000EBC00000EBC0195BC7249
      0000008749444154484BEDD03D1240301086E19CC501D46E81432835EEA7F077
      21854611D6C8CC5A11EC6EA1F0CE7C8D244FC1886B73BB4D2580BA1D14A30EC1
      63A78E35992246C7EEBB180400FE6FA21C82176CBD10F5858D87D27F1943BEF3
      53A107E46C9C270608735D7DBF8D3E244BFAEA05E6F24087B1F241307614AA53
      210851542575F0EF79C62CEF29E02DC4F120A70000000049454E44AE426082}
    Stretch = True
  end
  object lblTempo: TLabel
    Left = 319
    Top = 148
    Width = 197
    Height = 16
    Caption = 'Isso pode levar mais de 10 minutos ...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object imPasso4: TImage
    Left = 319
    Top = 236
    Width = 26
    Height = 23
    Picture.Data = {
      0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
      00140000001708060000000B1D6FA30000000467414D410000B18F0BFC610500
      0000206348524D00007A26000080840000FA00000080E8000075300000EA6000
      003A98000017709CBA513C000000097048597300000EBC00000EBC0195BC7249
      0000008749444154484BEDD03D1240301086E19CC501D46E81432835EEA7F077
      21854611D6C8CC5A11EC6EA1F0CE7C8D244FC1886B73BB4D2580BA1D14A30EC1
      63A78E35992246C7EEBB180400FE6FA21C82176CBD10F5858D87D27F1943BEF3
      53A107E46C9C270608735D7DBF8D3E244BFAEA05E6F24087B1F241307614AA53
      210851542575F0EF79C62CEF29E02DC4F120A70000000049454E44AE426082}
    Stretch = True
  end
  object btnAtualizarSaldoEst: TBitBtn
    Left = 112
    Top = 105
    Width = 201
    Height = 51
    Caption = 'Atualizar o saldo do estoque'
    Enabled = False
    TabOrder = 1
    OnClick = btnAtualizarSaldoEstClick
  end
  object btnZerarEstoque: TBitBtn
    Left = 112
    Top = 162
    Width = 201
    Height = 51
    Caption = 'Zerar o estoque'
    Enabled = False
    TabOrder = 2
    OnClick = btnZerarEstoqueClick
  end
  object btnZerarQtdeProduzida: TBitBtn
    Left = 112
    Top = 218
    Width = 201
    Height = 55
    Caption = 'Atualizar qtde produzida das   produ'#231#245'es em aberto'
    Enabled = False
    TabOrder = 3
    WordWrap = True
    OnClick = btnZerarQtdeProduzidaClick
  end
  object pnZerarOp: TPanel
    Left = 441
    Top = 187
    Width = 75
    Height = 54
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
    object Label2: TLabel
      Left = 3
      Top = 21
      Width = 41
      Height = 13
      Caption = 'Da O.P :'
    end
    object txtOpIni: TEdit
      Left = 50
      Top = 17
      Width = 57
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object btnExecutarZerarOp: TBitBtn
      Left = 113
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Executar'
      TabOrder = 1
      OnClick = btnExecutarZerarOpClick
    end
  end
  object pnlCima: TJvPanel
    Tag = 1
    Left = 0
    Top = 0
    Width = 568
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 6
    object lblCodificacaoLMestre: TLabel
      AlignWithMargins = True
      Left = 0
      Top = 4
      Width = 563
      Height = 25
      Margins.Left = 0
      Margins.Top = 4
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alTop
      Alignment = taRightJustify
      AutoSize = False
      Color = 3355443
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 1013
    end
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 568
      Height = 30
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      Alignment = taCenter
      AutoSize = False
      Caption = 'Preparar Contagem de Protudos Acabados'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      ExplicitWidth = 1018
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 29
      Width = 568
      Height = 0
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
    end
  end
  object cbbTipoItem: TComboBox
    Left = 112
    Top = 77
    Width = 201
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 0
    Text = 'Nenhum'
    OnChange = cbbTipoItemChange
    Items.Strings = (
      'Nenhum'
      'Todos'
      '00 - Mercadoria para Revenda'
      '01 - Mat'#233'ria Prima'
      '02 - Embalagem'
      '03 - Produto em Processo'
      '04 - Produto Acabado'
      '05 - Subproduto'
      '06 - Produto Intermedi'#225'rio'
      '07 - Material de Uso e Consumo'
      '08 - Ativo Imobilizado'
      '09 - Servi'#231'os'
      '10 - Outros Insumos'
      '99 - Outros')
  end
  object Panel2: TPanel
    Left = 8
    Top = 106
    Width = 105
    Height = 49
    BevelOuter = bvNone
    Caption = 'Passo 1->'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 7
  end
  object Panel3: TPanel
    Left = 8
    Top = 163
    Width = 105
    Height = 49
    BevelOuter = bvNone
    Caption = 'Passo 2->'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 8
  end
  object Panel4: TPanel
    Left = 8
    Top = 219
    Width = 105
    Height = 52
    BevelOuter = bvNone
    Caption = 'Passo 3->'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 9
  end
  object btnRecomecar: TButton
    Left = 424
    Top = 75
    Width = 137
    Height = 25
    Caption = 'Recome'#231'ar os passos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TabStop = False
    OnClick = btnRecomecarClick
  end
  object btnSair: TBitBtn
    Left = 486
    Top = 288
    Width = 75
    Height = 35
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btnSairClick
  end
  object Button1: TButton
    Left = 424
    Top = 106
    Width = 137
    Height = 25
    Caption = 'Ir para o passo 3'
    TabOrder = 11
    OnClick = Button1Click
  end
  object BUS_CD_M_OPR_OPP_INT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_OPR_OPP_INT'
    RemoteServer = dmGeral.pcConecao
    Left = 168
    Top = 272
    object BUS_CD_M_OPR_OPP_INTid_opr: TIntegerField
      FieldName = 'id_opr'
    end
    object BUS_CD_M_OPR_OPP_INTid_opr_opp: TIntegerField
      FieldName = 'id_opr_opp'
    end
    object BUS_CD_M_OPR_OPP_INTid_item: TIntegerField
      FieldName = 'id_item'
    end
    object BUS_CD_M_OPR_OPP_INTid_cor: TIntegerField
      FieldName = 'id_cor'
    end
    object BUS_CD_M_OPR_OPP_INTid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
    end
    object BUS_CD_M_OPR_OPP_INTqtde_a_produzir: TFloatField
      FieldName = 'qtde_a_produzir'
    end
    object BUS_CD_M_OPR_OPP_INTqtde_produzida: TFloatField
      FieldName = 'qtde_produzida'
    end
    object BUS_CD_M_OPR_OPP_INTqtde_a_produzir_orig: TFloatField
      FieldName = 'qtde_a_produzir_orig'
    end
    object BUS_CD_M_OPR_OPP_INTid_resp_alt: TIntegerField
      FieldName = 'id_resp_alt'
    end
  end
  object cdsOppOpp_AZerar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 272
  end
end
