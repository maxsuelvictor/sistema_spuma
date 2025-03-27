object FAT_FM_M_FPR: TFAT_FM_M_FPR
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Movimenta'#231#227'o'
  ClientHeight = 577
  ClientWidth = 936
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
  object Label7: TLabel
    Left = 8
    Top = 292
    Width = 910
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = 'Par'#226'metros para formar o pre'#231'o do item selcionado'
    Color = 14342874
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label6: TLabel
    Left = 50
    Top = 316
    Width = 152
    Height = 13
    Caption = 'Total dos custos fixos mensais :'
  end
  object Label24: TLabel
    Left = 88
    Top = 338
    Width = 114
    Height = 13
    Caption = 'Vendas m'#233'dia mensais :'
  end
  object Label9: TLabel
    Left = 8
    Top = 362
    Width = 281
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = '% de incid'#234'ncia sobre o pre'#231'o de venda'
    Color = 14342874
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label10: TLabel
    Left = 8
    Top = 387
    Width = 194
    Height = 13
    Caption = '% do Custo fixo sobre vendas mensais :'
  end
  object Label11: TLabel
    Left = 102
    Top = 410
    Width = 100
    Height = 13
    Caption = 'ICMS sobre vendas :'
  end
  object Label12: TLabel
    Left = 160
    Top = 434
    Width = 42
    Height = 13
    Caption = 'Simples :'
  end
  object Label13: TLabel
    Left = 145
    Top = 457
    Width = 57
    Height = 13
    Caption = 'Comiss'#245'es :'
  end
  object Label14: TLabel
    Left = 96
    Top = 480
    Width = 106
    Height = 13
    Caption = 'Fretes sobre vendas :'
  end
  object Label15: TLabel
    Left = 49
    Top = 503
    Width = 153
    Height = 13
    Caption = 'Custo financeiro sobre vendas :'
  end
  object Label16: TLabel
    Left = 54
    Top = 526
    Width = 148
    Height = 13
    Caption = 'Lucro desejado sobre vendas :'
  end
  object Label17: TLabel
    Left = 102
    Top = 549
    Width = 100
    Height = 13
    Caption = 'Total incid'#234'ncias :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 427
    Top = 387
    Width = 82
    Height = 13
    Caption = 'Marckup Divisor :'
  end
  object Label19: TLabel
    Left = 400
    Top = 410
    Width = 109
    Height = 13
    Caption = 'Marckup Multiplicador :'
  end
  object Label20: TLabel
    Left = 304
    Top = 362
    Width = 297
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = 'C'#225'lculo do Markup'
    Color = 14342874
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label21: TLabel
    Left = 304
    Top = 452
    Width = 297
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = 'C'#225'lculo do Pre'#231'o de Venda'
    Color = 14342874
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label22: TLabel
    Left = 385
    Top = 480
    Width = 129
    Height = 13
    Caption = 'Pre'#231'o de venda calculado :'
  end
  object Label23: TLabel
    Left = 333
    Top = 502
    Width = 181
    Height = 14
    Alignment = taRightJustify
    Caption = 'Pre'#231'o a vista a ser praticado :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 502
    Top = 338
    Width = 11
    Height = 13
    Caption = '%'
  end
  object Label25: TLabel
    Left = 304
    Top = 315
    Width = 297
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = '% Para Pre'#231'o a Prazo'
    Color = 14342874
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label26: TLabel
    Left = 328
    Top = 530
    Width = 186
    Height = 14
    Alignment = taRightJustify
    Caption = 'Pre'#231'o a prazo a ser praticado :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlTop: TJvPanel
    Tag = 1
    Left = 0
    Top = 0
    Width = 936
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = 14342874
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 884
    object pnlCima: TJvPanel
      Tag = 1
      Left = 0
      Top = 0
      Width = 936
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 14342874
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 884
      object Label1: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 936
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Forma'#231#227'o de Pre'#231'o'
        Color = 14342874
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ExplicitTop = -4
        ExplicitWidth = 1060
      end
      object pnlBaixo: TPanel
        Left = 0
        Top = 0
        Width = 936
        Height = 0
        Align = alTop
        BevelOuter = bvNone
        Color = 14342874
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 884
      end
    end
  end
  object btnAtuPreco: TBitBtn
    Left = 766
    Top = 518
    Width = 140
    Height = 41
    Caption = 'Atualizar o pre'#231'o'
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000070707241919197B262626BC2B2B2BD72E2E2EE62F2F2FEB2D2D2DDF2929
      29CC1F1F1F9C0E0E0E4701010103000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505171D1D
      1D8F303030F1333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF282828C90F0F0F490000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B382C2C2CDE3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF1C1C1C8A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000011111157313131F3333333FF3333
      33FF333333FF333333FF333333FF323232FC2F2F2FE92E2E2EE6313131F43333
      33FF333333FF333333FF282828C90202020B000000000505051B050505170000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C3A323232F8333333FF333333FF3333
      33FF333333FF2B2B2BD6171717740909092D030303100303030E0606061E0F0F
      0F4D232323AE2F2F2FEC0909092C0000000000000000242424B62E2E2EE71818
      1876030303100000000000000000000000000000000000000000000000000000
      0000000000000000000001010104292929CB333333FF333333FF333333FF3333
      33FF1D1D1D8F0202020B00000000000000000000000000000000000000000000
      0000000000000606061E0000000000000000040404122F2F2FED333333FF3333
      33FF2C2C2CDA1414146302020208000000000000000000000000000000000000
      000000000000000000001515156B333333FF333333FF333333FF333333FF1616
      166C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F4C333333FF333333FF3333
      33FF333333FF333333FF2A2A2AD31616166E0303030D00000000000000000000
      000000000000020202092C2C2CDD333333FF333333FF333333FF1D1D1D8F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D1D1D93333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF2C2C2CDE1616166F000000000000
      0000000000000E0E0E45333333FF333333FF333333FF2F2F2FEB030303110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101032A2A2AD2333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF303030EE1C1C1C8C000000000000
      0000000000001C1C1C8B333333FF333333FF333333FF212121A4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000909092C323232FB333333FF333333FF3333
      33FF333333FF333333FF2C2C2CDA141414640404041600000000000000000000
      000000000000252525B9333333FF333333FF333333FF1313135F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001616166D333333FF333333FF333333FF3333
      33FF333333FF333333FF232323AF000000000000000000000000000000000000
      000000000000282828CA333333FF333333FF333333FF0D0D0D40000000000000
      00000202020B0101010400000000000000000000000000000000000000000000
      0000000000000000000000000000222222AA333333FF313131F5262626BC3232
      32FB333333FF333333FF2B2B2BD6010101050000000000000000000000000000
      000000000000292929CB333333FF333333FF333333FF0C0C0C3D0A0A0A321C1C
      1C8A272727C50303030D00000000000000000000000000000000000000000000
      0000000000000000000001010103212121A51C1C1C8E0808082A0606061F3232
      32F9333333FF333333FF2D2D2DE30303030D0000000000000000000000000000
      000000000000252525BA333333FF333333FF333333FF2A2A2AD4323232FB3333
      33FF252525B70000000000000000000000000000000000000000000000000000
      00000000000000000000000000010000000200000000000000000808082A3232
      32FC333333FF333333FF2D2D2DE00202020B0000000000000000000000000000
      0000000000001C1C1C8D333333FF333333FF333333FF333333FF333333FF3333
      33FF1A1A1A810000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E473333
      33FF333333FF333333FF2A2A2AD0000000020000000000000000000000000606
      061F161616702C2C2CDA333333FF333333FF333333FF333333FF333333FF3333
      33FF0D0D0D400000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001D1D1D923333
      33FF333333FF333333FF212121A40000000000000000000000001D1D1D903232
      32FA333333FF333333FF333333FF333333FF333333FF333333FF333333FF2D2D
      2DE30202020B0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040404122F2F2FEC3333
      33FF333333FF333333FF1212125A0000000000000000000000000F0F0F4A2525
      25BA333333FF333333FF333333FF333333FF333333FF333333FF333333FF2222
      22AA000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B1B1B86333333FF3333
      33FF333333FF2F2F2FE903030311000000000000000000000000000000000000
      00000F0F0F4B272727C1333333FF333333FF333333FF333333FF333333FF1414
      1465000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014141463333333FD333333FF3333
      33FF333333FF1919197E00000000000000000000000000000000000000000000
      000000000000000000000C0C0C3C252525B8333333FF333333FF323232FA0707
      072200000000000000000909092E0202020C0000000000000000000000000000
      00000000000000000000030303111E1E1E95333333FF333333FF333333FF3333
      33FF2A2A2AD20202020900000000000000000000000000000000000000000000
      0000000000000000000000000000000000001010104E282828C9272727C30000
      00020000000007070725303030F12A2A2AD4171717740B0B0B390606061F0707
      07220D0D0D411B1B1B882D2D2DE0333333FF333333FF333333FF333333FF3232
      32FA0D0D0D400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010104040404120000
      00000202020A272727C1333333FF333333FF333333FF333333FF313131F43131
      31F6333333FF333333FF333333FF333333FF333333FF333333FF303030F21212
      1258000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181877333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF2B2B2BD50A0A0A310000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000808082A212121A3313131F6333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF2E2E2EE81A1A1A8403030311000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000808082718181877252525B72B2B2BD82F2F2FEB2E2E
      2EE62A2A2AD2222222AA15151568050505180000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 1
    OnClick = btnAtuPrecoClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 39
    Width = 909
    Height = 66
    Caption = 'Informe a  Nota Fiscal '
    TabOrder = 2
    object Label2: TLabel
      Left = 21
      Top = 19
      Width = 53
      Height = 13
      Caption = 'N'#250'mero NF'
    end
    object Label3: TLabel
      Left = 119
      Top = 19
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object Label4: TLabel
      Left = 378
      Top = 19
      Width = 38
      Height = 13
      Caption = 'Emiss'#227'o'
    end
    object Label5: TLabel
      Left = 478
      Top = 19
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object txtCodNfe: TJvComboEdit
      Left = 19
      Top = 33
      Width = 102
      Height = 21
      ClickKey = 114
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0066B6DB903AFFFFFFFFFFFFFFFFFFFF
        FFFFDBFFFF003A900000000000003A0000FFDB90FFFFFFFFFFFFFFFFFFFFFFFF
        0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFF90DBFFB6663AFFFFFFFFFFFF3A90
        DB660000FFFFB6FFFFFFFFFFFFFFFFFF0066B6DB903AFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF90DBFF3A003AFFDB90FFFFFFFFFFFFFFFFFF
        0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A90
        DB660000FFFFB6FFFFFFFFFFFFFFFFFF0066B6000000000000000000660000FF
        FFB6FFFFFF66B6FF000000000000B66600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6FFFF0000
        66DB903AFFFFFFFFFFFFFFFFFFFFFFFF0066B6DB903AFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A90DB903A00FFFFDBFFFFFFFFFFFFFFFFFF
        0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFFB6FFFF903A66FFFFDBFFFFFF0066
        B6B66600FFFFFFFFFFFFFFFFFFFFFFFF0066B6000000000000000000000000FF
        B666FFFFFF3A90DB000000000000660000FFFFB6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 0
      Text = ''
      OnButtonClick = txtCodNfeButtonClick
      OnExit = txtCodNfeExit
    end
    object txtNomeEmi: TwwDBEdit
      Left = 119
      Top = 33
      Width = 258
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'int_nomeemi'
      DataSource = dso
      ReadOnly = True
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit1: TwwDBEdit
      Left = 378
      Top = 33
      Width = 98
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'dta_emissao'
      DataSource = dso
      EditAlignment = eaRightAlignEditing
      ReadOnly = True
      TabOrder = 2
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
    end
    object txtVlrTotal: TwwDBEdit
      Left = 478
      Top = 33
      Width = 98
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'vlr_liquido'
      DataSource = dso
      ReadOnly = True
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object btnNovaNota: TButton
      Left = 758
      Top = 17
      Width = 140
      Height = 41
      Caption = 'Nova nota'
      TabOrder = 4
      TabStop = False
      OnClick = btnNovaNotaClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 103
    Width = 909
    Height = 184
    TabOrder = 3
    object Label97: TLabel
      Left = 12
      Top = 15
      Width = 886
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Itens da nota fiscal'
      Color = 14342874
      ParentColor = False
      Transparent = False
    end
    object Label27: TLabel
      Left = 487
      Top = 162
      Width = 96
      Height = 13
      Caption = 'Pre'#231'o '#224' vista atual :'
    end
    object Label28: TLabel
      Left = 679
      Top = 162
      Width = 100
      Height = 13
      Caption = 'Pre'#231'o a prazo atual :'
    end
    object Label29: TLabel
      Left = 12
      Top = 162
      Width = 16
      Height = 13
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label30: TLabel
      Left = 33
      Top = 162
      Width = 79
      Height = 13
      Caption = 'Pre'#231'o atualizado'
    end
    object grdItens: TwwDBGrid
      Left = 12
      Top = 37
      Width = 886
      Height = 117
      PictureMasks.Strings = (
        'vlr_custo'#9'###,###,###,##0.00'#9'T'#9'T')
      Selected.Strings = (
        'ID_ITEM'#9'11'#9'Item'#9'F'
        'INT_DESC_ITEM'#9'34'#9'Descri'#231#227'o'#9'F'
        'int_und_venda'#9'7'#9'Und'#9'F'
        'int_nomecor'#9'10'#9'Cor'#9'F'
        'int_nometam'#9'9'#9'Tamanho'#9'F'
        'vlr_mercadoria'#9'10'#9'Vlr. Merc.'#9'F'
        'ipi_aliquota'#9'5'#9'% IPI'#9'F'
        'ipi_valor'#9'8'#9'Valor IPI'#9'F'
        'vlr_desconto'#9'11'#9'Vlr. Desc'#9'F'
        'vlr_liquido'#9'11'#9'Vlr. Total'#9'F'
        'icm_n_valor'#9'9'#9'Vlr. ICMS'#9'F'
        'fre_valor'#9'9'#9'Vlr. Frete'#9'F'
        'icm_s_valor'#9'14'#9'Vlr. ICMS Sub'#9'F'
        'vlr_custo'#9'11'#9'Vlr. Custo'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = 14408667
      OnRowChanged = grdItensRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clWhite
      DataSource = dsoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
      OnCalcCellColors = grdItensCalcCellColors
      OnMouseUp = grdItensMouseUp
    end
    object txtPrcAvistaAtual: TJvValidateEdit
      Left = 586
      Top = 158
      Width = 82
      Height = 21
      TabStop = False
      Color = 14342874
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      ReadOnly = True
      TabOrder = 1
    end
    object txtPrcAPrazoAtual: TJvValidateEdit
      Left = 783
      Top = 158
      Width = 82
      Height = 21
      TabStop = False
      Color = 14342874
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      ReadOnly = True
      TabOrder = 2
    end
  end
  object txtTotCusFixMen: TJvValidateEdit
    Left = 207
    Top = 312
    Width = 82
    Height = 21
    Color = 14342874
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    ReadOnly = True
    TabOrder = 4
  end
  object txtTotVenMedMen: TJvValidateEdit
    Left = 207
    Top = 335
    Width = 82
    Height = 21
    Color = 14342874
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    ReadOnly = True
    TabOrder = 5
  end
  object txtPerCusFixVenMen: TJvValidateEdit
    Left = 207
    Top = 383
    Width = 82
    Height = 21
    TabStop = False
    Color = 14342874
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    ReadOnly = True
    TabOrder = 6
    OnExit = txtPerCusFixVenMenExit
  end
  object txtPerICMSobVen: TJvValidateEdit
    Left = 207
    Top = 406
    Width = 82
    Height = 21
    Color = clWhite
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    TabOrder = 7
    OnExit = txtPerICMSobVenExit
  end
  object txtPerSimples: TJvValidateEdit
    Left = 207
    Top = 430
    Width = 82
    Height = 21
    Color = clWhite
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    TabOrder = 8
    OnExit = txtPerSimplesExit
  end
  object txtPerComissoes: TJvValidateEdit
    Left = 207
    Top = 453
    Width = 82
    Height = 21
    Color = clWhite
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    TabOrder = 9
    OnExit = txtPerComissoesExit
  end
  object txtPerFretesVen: TJvValidateEdit
    Left = 207
    Top = 476
    Width = 82
    Height = 21
    Color = clWhite
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    TabOrder = 10
    OnExit = txtPerFretesVenExit
  end
  object txtPerCusFinSobVen: TJvValidateEdit
    Left = 207
    Top = 499
    Width = 82
    Height = 21
    Color = clWhite
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    TabOrder = 11
    OnExit = txtPerCusFinSobVenExit
  end
  object txtPerLucDesSobVen: TJvValidateEdit
    Left = 207
    Top = 522
    Width = 82
    Height = 21
    Color = clWhite
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    TabOrder = 12
    OnExit = txtPerLucDesSobVenExit
  end
  object txtTotIncid: TJvValidateEdit
    Left = 207
    Top = 545
    Width = 82
    Height = 21
    TabStop = False
    Color = 14342874
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 13
  end
  object txtMarckDiv: TJvValidateEdit
    Left = 519
    Top = 383
    Width = 82
    Height = 21
    TabStop = False
    Color = 14342874
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 4
    ReadOnly = True
    TabOrder = 15
  end
  object txtMarckMult: TJvValidateEdit
    Left = 519
    Top = 406
    Width = 82
    Height = 21
    TabStop = False
    Color = 14342874
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 4
    ReadOnly = True
    TabOrder = 16
  end
  object txtPrecVenCalc: TJvValidateEdit
    Left = 519
    Top = 476
    Width = 82
    Height = 21
    TabStop = False
    Color = 14342874
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    ReadOnly = True
    TabOrder = 17
  end
  object txtPrecVenPrat: TJvValidateEdit
    Left = 519
    Top = 498
    Width = 82
    Height = 22
    Color = clWhite
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    OnExit = txtPrecVenPratExit
  end
  object txtPerPrcPrazo: TJvValidateEdit
    Left = 519
    Top = 335
    Width = 82
    Height = 21
    Color = clWhite
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    TabOrder = 14
    OnExit = txtPerPrcPrazoExit
  end
  object txtPrecVenPratPrazo: TJvValidateEdit
    Left = 519
    Top = 526
    Width = 82
    Height = 22
    Color = clWhite
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_2
    Left = 842
    Top = 355
  end
  object dsoItens: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE_2
    Left = 842
    Top = 403
  end
end
