object CMP_FM_M_XML: TCMP_FM_M_XML
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Compras'
  ClientHeight = 510
  ClientWidth = 1150
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDados: TPanel
    Left = 124
    Top = 30
    Width = 1026
    Height = 480
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 54
      Top = 15
      Width = 59
      Height = 13
      Caption = 'Nota Fiscal :'
    end
    object Label2: TLabel
      Left = 64
      Top = 39
      Width = 49
      Height = 13
      Caption = 'Emitente :'
    end
    object Label3: TLabel
      Left = 68
      Top = 63
      Width = 45
      Height = 13
      Caption = 'Emiss'#227'o :'
    end
    object Label4: TLabel
      Left = 206
      Top = 63
      Width = 31
      Height = 13
      Caption = 'Serie :'
    end
    object Label5: TLabel
      Left = 412
      Top = 63
      Width = 34
      Height = 13
      Caption = 'CFOP :'
    end
    object Label9: TLabel
      Left = 29
      Top = 87
      Width = 84
      Height = 13
      Caption = 'Tipo de Estoque :'
    end
    object Label6: TLabel
      Left = 23
      Top = 111
      Width = 90
      Height = 13
      Caption = 'Cond.Pagamento :'
    end
    object Label7: TLabel
      Left = 8
      Top = 160
      Width = 737
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Itens da Nota Fiscal'
      Color = 14212062
      ParentColor = False
      Transparent = False
    end
    object Label8: TLabel
      Left = 8
      Top = 331
      Width = 505
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Titulos da Nota Fiscal'
      Color = 14212062
      ParentColor = False
      Transparent = False
    end
    object Label10: TLabel
      Left = 532
      Top = 331
      Width = 213
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Totaliza'#231#227'o'
      Color = 14212062
      ParentColor = False
      Transparent = False
    end
    object Label11: TLabel
      Left = 75
      Top = 135
      Width = 38
      Height = 13
      Caption = 'Chave :'
    end
    object Label12: TLabel
      Left = 546
      Top = 353
      Width = 49
      Height = 13
      Caption = 'Vlr.Bruto :'
    end
    object Label13: TLabel
      Left = 539
      Top = 377
      Width = 56
      Height = 13
      Caption = 'Vlr.Liquido :'
    end
    object wwDBGrid2: TwwDBGrid
      Left = 8
      Top = 175
      Width = 737
      Height = 151
      Selected.Strings = (
        'SEQ'#9'4'#9'Seq'#9'F'
        'COD_FABRICA'#9'14'#9'Cod.Fabrica'#9'F'
        'ID_ITEM'#9'10'#9'Item'#9'F'
        'DEC_ITEM'#9'29'#9'Descri'#231#227'o'#9'F'
        'UND'#9'3'#9'UND'#9'F'
        'QTDE'#9'7'#9'Qtde'#9'F'
        'VLR_UNITARIO'#9'12'#9'Vlr.Unitario'#9'F'
        'VLR_DESCONTO'#9'10'#9'Vlr.Desconto'#9'F'
        'VLR_LIQUIDO'#9'10'#9'Vlr.Liquido'#9'F'
        'ID_CST_ICMS'#9'3'#9'CST'#9'F'
        'ID_CFOP'#9'5'#9'CFOP'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsXmlNotasItens
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
    end
    object wwDBGrid3: TwwDBGrid
      Left = 8
      Top = 346
      Width = 505
      Height = 113
      Selected.Strings = (
        'NUM_TITULO'#9'13'#9'Numero'#9'F'
        'ID_FORMA_PAG'#9'10'#9'C'#243'digo'#9'F'
        'DESC_FORMA'#9'19'#9'Descri'#231#227'o'#9'F'
        'ID_PLANO'#9'11'#9'Plano Contas'#9'F'
        'DTA_VENCIMENTO'#9'10'#9'Vencimento'#9'F'
        'VLR_TITULO'#9'10'#9'Vlr.Titulo'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsXmlNotasTitulos
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
    end
    object wwDBEdit1: TwwDBEdit
      Left = 118
      Top = 12
      Width = 80
      Height = 21
      Color = 14212062
      DataField = 'NOTA_FISCAL'
      DataSource = dsXmlNotas
      Enabled = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 119
      Top = 36
      Width = 381
      Height = 21
      Color = 14212062
      DataField = 'NOME_EMITENTE'
      DataSource = dsXmlNotas
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 118
      Top = 60
      Width = 80
      Height = 21
      Color = 14212062
      DataField = 'EMISSAO'
      DataSource = dsXmlNotas
      Enabled = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit4: TwwDBEdit
      Left = 243
      Top = 60
      Width = 51
      Height = 21
      Color = 14212062
      DataField = 'SERIE'
      DataSource = dsXmlNotas
      Enabled = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit5: TwwDBEdit
      Left = 449
      Top = 60
      Width = 51
      Height = 21
      DataField = 'CFOP'
      DataSource = dsXmlNotas
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object cbbTipoFrete: TwwDBLookupCombo
      Left = 118
      Top = 84
      Width = 382
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F'
        'CODIGO'#9'1'#9'Codigo'#9'F')
      DataField = 'ID_TIPO_ESTOQUE'
      DataSource = dsXmlNotas
      LookupTable = dmGeral.BUS_CD_X_FRE
      LookupField = 'CODIGO'
      TabOrder = 7
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 118
      Top = 108
      Width = 382
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F'
        'CODIGO'#9'1'#9'Codigo'#9'F')
      DataField = 'ID_CONDICAO_PAG'
      DataSource = dsXmlNotas
      LookupTable = dmGeral.BUS_CD_X_FRE
      LookupField = 'CODIGO'
      TabOrder = 8
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object wwDBEdit6: TwwDBEdit
      Left = 118
      Top = 132
      Width = 382
      Height = 21
      Color = 14212062
      DataField = 'CHAVE'
      DataSource = dsXmlNotas
      Enabled = False
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit7: TwwDBEdit
      Left = 601
      Top = 350
      Width = 80
      Height = 21
      DataField = 'VLR_BRUTO'
      DataSource = dsXmlNotas
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit8: TwwDBEdit
      Left = 601
      Top = 374
      Width = 80
      Height = 21
      DataField = 'VLR_LIQUIDO'
      DataSource = dsXmlNotas
      TabOrder = 11
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object pnlDireita: TPanel
    Left = 0
    Top = 30
    Width = 124
    Height = 480
    Align = alLeft
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object btnSair: TBitBtn
      Left = 4
      Top = 211
      Width = 115
      Height = 50
      Caption = 'Sair'
      Glyph.Data = {
        0E070000424D0E0700000000000036040000280000001A0000001A0000000100
        080000000000D8020000120B0000120B00000001000000000000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
        5100525252005353530054545400555555005656560057575700585858005959
        59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
        6100626262006363630064646400656565006666660067676700686868006969
        69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
        7100727272007373730074747400757575007676760077777700787878007979
        79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
        8100828282008383830084848400858585008686860087878700888888008989
        89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
        9100929292009393930094949400959595009696960097979700989898009999
        99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
        A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
        A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
        B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
        B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
        C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
        C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
        D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7D700D8D8D800D9D9
        D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDFDF00E0E0E000E1E1
        E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
        E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEFEF00F0F0F000F1F1
        F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9
        F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
        FFFFFFFF9A81DAF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        87353572B9E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B1FF91353536
        35559ACDFBFFFFFFFFFFFFFFF9F9FFFFFFFFFFFFFF3535FF9F35353535363642
        7BFFFFFFFFFFFFFFCCCCFFFFFFFFFFFFFF3B35FF9D3635353535353535FFFFFF
        FFFFFFFFCCCCFFFFFFFFFFFFFF3C36FF9D363535353536353CFFFFFFFFFFFFFF
        CCCCFFFFFFFFFFFFFF3B35FF9D353535353535353CFFFFFFFFFFFFFFC0C0FFFF
        FFFFFFFFFF3B36FF9D353635353636353BFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FF3C35FF9D353535363535353CFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF3B35FF
        9D353535363535353BFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF3C35FF9D353635
        353535363BFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF3C35FF9E35353535353635
        3BFFFFFFFFFFFFFFD90DFFFFFFFFFFFFFF3B35FF8EA5E33A353636353BFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFF3C35FF8EA5E33A363536353BFFFFFFFFFFFFFF
        F354FFFFFFFFFFFFFF3C35FF9E353535353535363BFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFF3B35FF9D363536353535353CFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FF3B35FF9D363535353535353BFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF3B36FF
        9D353535353635363BFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF3B35FF9D363535
        353535353BFFFFFFFFFFFFFF7973FFFFFFFFFFFFFF3C35FF9D36353635353535
        3BFFFFFFFFFFFFFF7874FFFFFFFFFFFFFF3B35FF9D353535353635353BFFFFFF
        FFFFFFFF0014FFFFFFFFFFFFFF3B35FF9D363535353536363BFFFFFFFFFFFFFF
        00C0FFFFFFFFFFFFFF3536FF9F3535353536353535FFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFB3B2FF91353635353538689BFFFFFFFFFFFFFF4245FFFFFFFFFFFF
        FFFFFFFF8735353C70ABD5ECFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        976DB8E6F4FFFFFFFFFFFFFFFFFFFFFF0006}
      Margin = 0
      Spacing = 2
      TabOrder = 0
      OnClick = btnSairClick
    end
    object btnAbrir: TcxButton
      Left = 4
      Top = 6
      Width = 115
      Height = 50
      Caption = 'Abrir XML'
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
      OnClick = btnAbrirClick
    end
    object btnGerar: TcxButton
      Left = 4
      Top = 159
      Width = 115
      Height = 50
      Caption = 'Gerar Nota Fiscal'
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
    end
    object cxButton1: TcxButton
      Left = 4
      Top = 57
      Width = 115
      Height = 50
      Caption = 'Salva Nota Fiscal'
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 4
      Top = 108
      Width = 115
      Height = 50
      Caption = 'Abre Nota Fiscal'
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
      OnClick = cxButton2Click
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1150
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 2
    object pnlCima: TPanel
      Left = 0
      Top = 0
      Width = 1150
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblCodificacaoLMestre: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 4
        Width = 1145
        Height = 25
        Margins.Left = 0
        Margins.Top = 4
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Lista Mestre'
        Color = 3355443
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -1
        ExplicitWidth = 1195
      end
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = -5
        Width = 1150
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Importa'#231#227'o de XML'
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
        ExplicitTop = -4
        ExplicitWidth = 1200
      end
      object pnlBaixo: TPanel
        Left = 0
        Top = 0
        Width = 1150
        Height = 0
        Align = alTop
        BevelOuter = bvNone
        Color = 3355443
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
  object cdsXmlNotas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NOTA_FISCAL'
        DataType = ftInteger
      end
      item
        Name = 'EMISSAO'
        DataType = ftDate
      end
      item
        Name = 'SERIE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CFOP'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ID_TIPO_ESTOQUE'
        DataType = ftInteger
      end
      item
        Name = 'ID_CONDICAO_PAG'
        DataType = ftInteger
      end
      item
        Name = 'CHAVE'
        DataType = ftString
        Size = 44
      end
      item
        Name = 'VLR_BRUTO'
        DataType = ftCurrency
      end
      item
        Name = 'VLR_LIQUIDO'
        DataType = ftCurrency
      end
      item
        Name = 'CNPJ_EMITENTE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'NOME_EMITENTE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'GERADO_NOTA'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 992
    Top = 104
    Data = {
      610100009619E0BD01000000180000000C00000000000300000061010B4E4F54
      415F46495343414C040001000000000007454D495353414F0400060000000000
      05534552494501004900000001000557494454480200020003000443464F5001
      004900000001000557494454480200020005000F49445F5449504F5F4553544F
      51554504000100000000000F49445F434F4E444943414F5F5041470400010000
      0000000543484156450100490000000100055749445448020002002C0009564C
      525F425255544F080004000000010007535542545950450200490006004D6F6E
      6579000B564C525F4C49515549444F0800040000000100075355425459504502
      00490006004D6F6E6579000D434E504A5F454D4954454E544501004900000001
      00055749445448020002000E000D4E4F4D455F454D4954454E54450100490000
      0001000557494454480200020032000B47455241444F5F4E4F54410200030000
      0000000000}
    object cdsXmlNotasNOTA_FISCAL: TIntegerField
      FieldName = 'NOTA_FISCAL'
    end
    object cdsXmlNotasEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsXmlNotasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsXmlNotasCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object cdsXmlNotasID_TIPO_ESTOQUE: TIntegerField
      FieldName = 'ID_TIPO_ESTOQUE'
    end
    object cdsXmlNotasID_CONDICAO_PAG: TIntegerField
      FieldName = 'ID_CONDICAO_PAG'
    end
    object cdsXmlNotasCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 44
    end
    object cdsXmlNotasVLR_BRUTO: TCurrencyField
      FieldName = 'VLR_BRUTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsXmlNotasVLR_LIQUIDO: TCurrencyField
      FieldName = 'VLR_LIQUIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsXmlNotasCNPJ_EMITENTE: TStringField
      FieldName = 'CNPJ_EMITENTE'
      Size = 14
    end
    object cdsXmlNotasNOME_EMITENTE: TStringField
      FieldName = 'NOME_EMITENTE'
      Size = 50
    end
  end
  object cdsXmlNotasItens: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NOTA_FISCAL'
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'COD_FABRICA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ID_ITEM'
        DataType = ftInteger
      end
      item
        Name = 'ID_CST_ICMS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ID_CFOP'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'VLR_BRUTO'
        DataType = ftCurrency
      end
      item
        Name = 'VLR_LIQUIDO'
        DataType = ftCurrency
      end
      item
        Name = 'DEC_ITEM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UND'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'QTDE'
        DataType = ftFloat
      end
      item
        Name = 'VLR_UNITARIO'
        DataType = ftCurrency
      end
      item
        Name = 'VLR_DESCONTO'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
        Fields = 'SEQ'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexName = 'DEFAULT_ORDER'
    Params = <>
    StoreDefs = True
    Left = 992
    Top = 149
    Data = {
      A00100009619E0BD01000000180000000D000000000003000000A0010B4E4F54
      415F46495343414C04000100000000000353455104000100000000000B434F44
      5F464142524943410100490000000100055749445448020002001E000749445F
      4954454D04000100000000000B49445F4353545F49434D530100490000000100
      0557494454480200020003000749445F43464F50010049000000010005574944
      544802000200050009564C525F425255544F0800040000000100075355425459
      50450200490006004D6F6E6579000B564C525F4C49515549444F080004000000
      010007535542545950450200490006004D6F6E657900084445435F4954454D01
      0049000000010005574944544802000200320003554E44010049000000010005
      5749445448020002000300045154444508000400000000000C564C525F554E49
      544152494F080004000000010007535542545950450200490006004D6F6E6579
      000C564C525F444553434F4E544F080004000000010007535542545950450200
      490006004D6F6E65790001000D44454641554C545F4F52444552020082000100
      00000200}
    object cdsXmlNotasItensNOTA_FISCAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'NOTA_FISCAL'
    end
    object cdsXmlNotasItensSEQ: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQ'
    end
    object cdsXmlNotasItensCOD_FABRICA: TStringField
      DisplayWidth = 30
      FieldName = 'COD_FABRICA'
      Size = 30
    end
    object cdsXmlNotasItensID_ITEM: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_ITEM'
    end
    object cdsXmlNotasItensID_CST_ICMS: TStringField
      DisplayWidth = 3
      FieldName = 'ID_CST_ICMS'
      Size = 3
    end
    object cdsXmlNotasItensID_CFOP: TStringField
      DisplayWidth = 5
      FieldName = 'ID_CFOP'
      Size = 5
    end
    object cdsXmlNotasItensVLR_BRUTO: TCurrencyField
      DisplayWidth = 10
      FieldName = 'VLR_BRUTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsXmlNotasItensVLR_LIQUIDO: TCurrencyField
      DisplayWidth = 10
      FieldName = 'VLR_LIQUIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsXmlNotasItensDEC_ITEM: TStringField
      FieldName = 'DEC_ITEM'
      Size = 50
    end
    object cdsXmlNotasItensUND: TStringField
      FieldName = 'UND'
      Size = 3
    end
    object cdsXmlNotasItensQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object cdsXmlNotasItensVLR_UNITARIO: TCurrencyField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsXmlNotasItensVLR_DESCONTO: TCurrencyField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object cdsXmlNotasTitulos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NOTA_FISCAL'
        DataType = ftInteger
      end
      item
        Name = 'ID_FORMA_PAG'
        DataType = ftInteger
      end
      item
        Name = 'ID_PLANO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'DTA_VENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'VLR_TITULO'
        DataType = ftCurrency
      end
      item
        Name = 'DESC_FORMA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NUM_TITULO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 992
    Top = 196
    Data = {
      DC0000009619E0BD010000001800000007000000000003000000DC000B4E4F54
      415F46495343414C04000100000000000C49445F464F524D415F504147040001
      00000000000849445F504C414E4F010049000000010005574944544802000200
      0B000E4454415F56454E43494D454E544F04000600000000000A564C525F5449
      54554C4F080004000000010007535542545950450200490006004D6F6E657900
      0A444553435F464F524D410100490000000100055749445448020002001E000A
      4E554D5F544954554C4F01004900000001000557494454480200020014000000}
    object cdsXmlNotasTitulosNOTA_FISCAL: TIntegerField
      FieldName = 'NOTA_FISCAL'
    end
    object cdsXmlNotasTitulosID_FORMA_PAG: TIntegerField
      FieldName = 'ID_FORMA_PAG'
    end
    object cdsXmlNotasTitulosID_PLANO: TStringField
      FieldName = 'ID_PLANO'
      Size = 11
    end
    object cdsXmlNotasTitulosDTA_VENCIMENTO: TDateField
      FieldName = 'DTA_VENCIMENTO'
    end
    object cdsXmlNotasTitulosVLR_TITULO: TCurrencyField
      FieldName = 'VLR_TITULO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsXmlNotasTitulosDESC_FORMA: TStringField
      FieldName = 'DESC_FORMA'
      Size = 30
    end
    object cdsXmlNotasTitulosNUM_TITULO: TStringField
      FieldName = 'NUM_TITULO'
    end
  end
  object dsXmlNotas: TwwDataSource
    DataSet = cdsXmlNotas
    Left = 1088
    Top = 104
  end
  object dsXmlNotasItens: TwwDataSource
    DataSet = cdsXmlNotasItens
    Left = 1088
    Top = 150
  end
  object dsXmlNotasTitulos: TwwDataSource
    DataSet = cdsXmlNotasTitulos
    Left = 1088
    Top = 196
  end
  object NFE: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'C:\Desenvolvimento\Bin\'
    Configuracoes.Geral.ExibirErroSchema = True
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = False
    Left = 1088
    Top = 56
  end
  object odAbreXml: TOpenDialog
    DefaultExt = '*.xml'
    Filter = 'xml nfe|*.xml'
    Title = 'Abrir XML'
    Left = 988
    Top = 56
  end
end
