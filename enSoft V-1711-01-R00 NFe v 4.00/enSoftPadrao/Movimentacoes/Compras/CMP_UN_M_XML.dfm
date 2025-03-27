object CMP_FM_M_XML: TCMP_FM_M_XML
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Compras'
  ClientHeight = 491
  ClientWidth = 1106
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDados: TPanel
    Left = 124
    Top = 30
    Width = 909
    Height = 459
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 110
      Top = 16
      Width = 59
      Height = 13
      Caption = 'Nota Fiscal :'
    end
    object Label2: TLabel
      Left = 120
      Top = 39
      Width = 49
      Height = 13
      Caption = 'Emitente :'
    end
    object Label3: TLabel
      Left = 124
      Top = 63
      Width = 45
      Height = 13
      Caption = 'Emiss'#227'o :'
    end
    object Label4: TLabel
      Left = 262
      Top = 63
      Width = 31
      Height = 13
      Caption = 'S'#233'rie :'
    end
    object Label5: TLabel
      Left = 432
      Top = 63
      Width = 34
      Height = 13
      Caption = 'CFOP :'
    end
    object Label9: TLabel
      Left = 85
      Top = 86
      Width = 84
      Height = 13
      Caption = 'Tipo de Estoque :'
    end
    object Label6: TLabel
      Left = 79
      Top = 110
      Width = 90
      Height = 13
      Caption = 'Cond.Pagamento :'
    end
    object Label7: TLabel
      Left = 5
      Top = 199
      Width = 895
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Itens da Nota Fiscal'
      Color = 14212062
      ParentColor = False
      Transparent = False
    end
    object Label8: TLabel
      Left = 5
      Top = 354
      Width = 737
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'T'#237'tulos da Nota Fiscal'
      Color = 14212062
      ParentColor = False
      Transparent = False
    end
    object Label10: TLabel
      Left = 758
      Top = 354
      Width = 142
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Totaliza'#231#227'o'
      Color = 14212062
      ParentColor = False
      Transparent = False
    end
    object Label11: TLabel
      Left = 131
      Top = 157
      Width = 38
      Height = 13
      Caption = 'Chave :'
    end
    object Label12: TLabel
      Left = 773
      Top = 376
      Width = 49
      Height = 13
      Caption = 'Vlr.Bruto :'
    end
    object Label13: TLabel
      Left = 766
      Top = 424
      Width = 56
      Height = 13
      Caption = 'Vlr.L'#237'quido :'
    end
    object Label14: TLabel
      Left = 99
      Top = 133
      Width = 70
      Height = 13
      Caption = 'Almoxarifado :'
    end
    object Label29: TLabel
      Left = 118
      Top = 180
      Width = 51
      Height = 13
      Caption = 'Inspe'#231#227'o :'
    end
    object Label15: TLabel
      Left = 747
      Top = 400
      Width = 75
      Height = 13
      Caption = 'Vlr.Icms Desc. :'
    end
    object grdItens: TwwDBGrid
      Left = 5
      Top = 214
      Width = 895
      Height = 135
      ControlType.Strings = (
        'ID_COR;CustomEdit;cbbCor;T'
        'ID_TAMANHO;CustomEdit;cbbTamanho;T'
        'ID_ITEM;CustomEdit;wwDBEdit1;F'
        'INT_NOMECOR;CustomEdit;;F'
        'INT_NOMETAM;CustomEdit;;F')
      Selected.Strings = (
        'SEQ'#9'4'#9'Seq'#9'F'
        'ID_ITEM'#9'13'#9'Item (F3)'#9'F'
        'COD_FABRICA'#9'14'#9'C'#243'd.F'#225'brica'#9'F'
        'DEC_ITEM'#9'27'#9'Descri'#231#227'o'#9'F'
        'UND'#9'3'#9'Und'#9'F'
        'INT_NOMECOR'#9'13'#9'Cor (F3)'#9'F'
        'INT_NOMETAM'#9'7'#9'Tam (F3)'#9'F'
        'QTDE'#9'7'#9'Qtde'#9'F'
        'VLR_UNITARIO'#9'12'#9'Vlr.Unit'#225'rio'#9'F'
        'VLR_DESCONTO'#9'10'#9'Vlr.Desconto'#9'F'
        'VLR_LIQUIDO'#9'8'#9'Vlr.L'#237'quido'#9'F'
        'ID_CST_ICMS'#9'5'#9'CST'#9'F'
        'ID_CFOP'#9'5'#9'CFOP (F3)'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      OnCellChanged = grdItensCellChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsXmlNotasItens
      KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 13
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      OnEnter = grdItensEnter
      OnExit = grdItensExit
      OnKeyDown = grdItensKeyDown
    end
    object grdTitulos: TwwDBGrid
      Left = 5
      Top = 369
      Width = 737
      Height = 87
      Selected.Strings = (
        'NUM_TITULO'#9'13'#9'N'#250'mero'#9'F'
        'ID_FORMA_PAG'#9'10'#9'C'#243'digo (F3)'#9'F'
        'DESC_FORMA'#9'54'#9'Forma de pagamento'#9'F'
        'ID_PLANO'#9'12'#9'Plano Contas (F3)'#9'F'
        'DTA_VENCIMENTO'#9'10'#9'Vencimento'#9'F'
        'VLR_TITULO'#9'11'#9'Vlr.T'#237'tulo'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      OnCellChanged = grdTitulosCellChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsXmlNotasTitulos
      KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
      TabOrder = 14
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      OnEnter = grdTitulosEnter
      OnExit = grdTitulosExit
      OnKeyDown = grdTitulosKeyDown
    end
    object txtNumero: TwwDBEdit
      Left = 174
      Top = 12
      Width = 80
      Height = 21
      Color = 14212062
      DataField = 'NOTA_FISCAL'
      DataSource = dsXmlNotas
      Enabled = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object txtDescEmitente: TwwDBEdit
      Left = 174
      Top = 35
      Width = 381
      Height = 21
      Color = 14212062
      DataField = 'NOME_EMITENTE'
      DataSource = dsXmlNotas
      Enabled = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object txtDataEmissao: TwwDBEdit
      Left = 174
      Top = 59
      Width = 80
      Height = 21
      Color = 14212062
      DataField = 'DTA_EMISSAO'
      DataSource = dsXmlNotas
      Enabled = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object txtSerie: TwwDBEdit
      Left = 299
      Top = 59
      Width = 51
      Height = 21
      Color = 14212062
      DataField = 'SERIE'
      DataSource = dsXmlNotas
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object cbbTipoTme: TwwDBLookupCombo
      Left = 174
      Top = 82
      Width = 382
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F'
        'CODIGO'#9'1'#9'Codigo'#9'F')
      DataField = 'ID_TIPO_ESTOQUE'
      DataSource = dsXmlNotas
      LookupTable = dmGeral.BUS_CD_C_TME
      LookupField = 'id_tipo_mov_estoque'
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = cbbTipoTmeEnter
      OnExit = cbbTipoTmeExit
    end
    object cbbCondicaoPagamento: TwwDBLookupCombo
      Left = 174
      Top = 106
      Width = 382
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F'
        'CODIGO'#9'1'#9'Codigo'#9'F')
      DataField = 'ID_CONDICAO_PAG'
      DataSource = dsXmlNotas
      LookupTable = dmGeral.BUS_CD_C_CPG
      LookupField = 'id_condicao_pag'
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = cbbCondicaoPagamentoEnter
      OnExit = cbbCondicaoPagamentoExit
    end
    object txtNfeChave: TwwDBEdit
      Left = 174
      Top = 153
      Width = 382
      Height = 21
      Color = 14212062
      DataField = 'CHAVE'
      DataSource = dsXmlNotas
      ReadOnly = True
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object txtVlrBruto: TwwDBEdit
      Left = 823
      Top = 373
      Width = 77
      Height = 21
      TabStop = False
      Color = 14212062
      DataField = 'VLR_BRUTO'
      DataSource = dsXmlNotas
      ReadOnly = True
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object txtVlrLiquido: TwwDBEdit
      Left = 823
      Top = 421
      Width = 77
      Height = 21
      TabStop = False
      Color = 14212062
      DataField = 'VLR_LIQUIDO'
      DataSource = dsXmlNotas
      ReadOnly = True
      TabOrder = 12
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object cbbAlmoxarifado: TwwDBLookupCombo
      Left = 174
      Top = 129
      Width = 381
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'descricao'#9'50'#9'descricao'#9'F')
      DataField = 'id_almoxarifado'
      DataSource = dsXmlNotas
      LookupTable = dmGeral.BUS_CD_C_ALM
      LookupField = 'id_almoxarifado'
      Color = clWhite
      TabOrder = 7
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = cbbAlmoxarifadoEnter
      OnExit = cbbAlmoxarifadoExit
    end
    object txtCFOP: TJvDBComboEdit
      Left = 471
      Top = 59
      Width = 84
      Height = 21
      ClickKey = 114
      DataField = 'CFOP'
      DataSource = dsXmlNotas
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
      TabOrder = 4
      OnButtonClick = txtCFOPButtonClick
    end
    object txtCodIqm: TJvDBComboEdit
      Left = 174
      Top = 176
      Width = 80
      Height = 21
      ClickKey = 114
      DataField = 'id_iqm'
      DataSource = dsXmlNotas
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
      ReadOnly = True
      TabOrder = 9
      OnButtonClick = txtCodIqmButtonClick
    end
    object txtVlrIcmsDesc: TwwDBEdit
      Left = 823
      Top = 397
      Width = 77
      Height = 21
      TabStop = False
      Color = 14212062
      DataField = 'VLR_ICM_DESC'
      DataSource = dsXmlNotas
      ReadOnly = True
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
    Height = 461
    Align = alLeft
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object btnSair: TBitBtn
      Left = 4
      Top = 261
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
      Layout = blGlyphTop
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
      OnClick = btnGerarClick
    end
    object btnSalvarXmlNfe: TcxButton
      Left = 4
      Top = 57
      Width = 115
      Height = 50
      Caption = 'Salvar Nota Fiscal'
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      OnClick = btnSalvarXmlNfeClick
    end
    object btnAbriXmlNfe: TcxButton
      Left = 4
      Top = 108
      Width = 115
      Height = 50
      Caption = 'Abrir Nota Fiscal'
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
      OnClick = btnAbriXmlNfeClick
    end
    object btnImprimirEspelho: TBitBtn
      Left = 4
      Top = 209
      Width = 115
      Height = 50
      Caption = 'Imprimir Espelho'
      Glyph.Data = {
        56080000424D560800000000000036000000280000001A0000001A0000000100
        18000000000020080000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFF2F2F28080803333333333333333333333333333333333333333
        33333333333333333333333333333333333333333333808080F2F2F2FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF80808033333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        333333333333333333808080FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF333333333333D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF333333333333FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF333333333333FFFFFFFFFFFF3333333333333333333333333333
        33333333333333CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
        FFFF333333333333333333333333333333333333333333CCCCCCFFFFFFFFFFFF
        FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFF0000F2F2F2666666
        333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333333333
        3333666666F2F2F20000666666333333333333333333333333333333FFFFFFFF
        FFFF333333333333333333333333333333333333333333333333333333333333
        CCCCCCFFFFFF3333333333333333333333333333336666660000333333333333
        333333333333333333333333FFFFFFFFFFFF3333333333333333333333333333
        33333333333333333333333333333333CCCCCCFFFFFF33333333333333333333
        33333333333333330000333333333333333333333333333333333333FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3333333333333333333333333333333333330000333333333333
        333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333333333
        3333333333333333000033333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333330000333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333000033333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        333333333333808080CCCCCC8080803333333333333333330000333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333333333333333CCCCCCFFFFFFCCCCCC33
        3333333333333333000033333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        333333333333808080CCCCCC8080803333333333333333330000666666333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333336666660000F2F2F266666633333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        333333333333333333333333333333333333666666F2F2F20000FFFFFFFFFFFF
        FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF333333333333FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF333333333333D9D9D9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFBFBFBF333333333333FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF8080803333333333333333333333333333333333333333333333
        33333333333333333333333333333333333333333333333333808080FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF2F2F280808033333333
        3333333333333333333333333333333333333333333333333333333333333333
        333333333333808080F2F2F2FFFFFFFFFFFFFFFFFFFFFFFF0000}
      Layout = blGlyphTop
      Margin = 0
      Spacing = 2
      TabOrder = 5
      OnClick = btnImprimirEspelhoClick
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1106
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
      Width = 1106
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
        Width = 1101
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
        Width = 1106
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
        Width = 1106
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
      end
      item
        Name = 'ID_ALMOXARIFADO'
        DataType = ftInteger
      end
      item
        Name = 'ID_IQM'
        DataType = ftInteger
      end
      item
        Name = 'VLR_ICM_DESC'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1032
    Top = 136
    object cdsXmlNotasNOTA_FISCAL: TIntegerField
      FieldName = 'NOTA_FISCAL'
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
    object cdsXmlNotasID_ALMOXARIFADO: TIntegerField
      FieldName = 'ID_ALMOXARIFADO'
    end
    object cdsXmlNotasID_IQM: TIntegerField
      FieldName = 'ID_IQM'
    end
    object cdsXmlNotasVLR_ICM_DESC: TCurrencyField
      FieldName = 'VLR_ICM_DESC'
      currency = False
    end
    object cdsXmlNotasDTA_EMISSAO: TDateField
      FieldKind = fkCalculated
      FieldName = 'DTA_EMISSAO'
      Calculated = True
    end
  end
  object cdsXmlNotasItens: TClientDataSet
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
      end
      item
        Name = 'ID_COR'
        DataType = ftInteger
      end
      item
        Name = 'ID_TAMANHO'
        DataType = ftInteger
      end
      item
        Name = 'INT_NOMECOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INT_NOMETAM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUM_LOTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ID_SEQUENCIA_ITE_IQM'
        DataType = ftInteger
      end
      item
        Name = 'ID_BUSCA_ITEM'
        DataType = ftString
        Size = 30
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
    Left = 1064
    Top = 269
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
      OnChange = cdsXmlNotasItensID_ITEMChange
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
    object cdsXmlNotasItensID_COR: TIntegerField
      FieldName = 'ID_COR'
      OnChange = cdsXmlNotasItensID_CORChange
    end
    object cdsXmlNotasItensID_TAMANHO: TIntegerField
      FieldName = 'ID_TAMANHO'
      OnChange = cdsXmlNotasItensID_TAMANHOChange
    end
    object cdsXmlNotasItensINT_NOMECOR: TStringField
      FieldName = 'INT_NOMECOR'
    end
    object cdsXmlNotasItensINT_NOMETAM: TStringField
      FieldName = 'INT_NOMETAM'
    end
    object cdsXmlNotasItensNUM_LOTE: TStringField
      FieldName = 'NUM_LOTE'
      Size = 15
    end
    object cdsXmlNotasItensID_SEQUENCIA_ITE_IQM: TIntegerField
      FieldName = 'ID_SEQUENCIA_ITE_IQM'
    end
    object cdsXmlNotasItensID_BUSCA_ITEM: TStringField
      FieldName = 'ID_BUSCA_ITEM'
      Size = 30
    end
  end
  object cdsXmlNotasTitulos: TClientDataSet
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
    Left = 1080
    Top = 356
    object cdsXmlNotasTitulosNOTA_FISCAL: TIntegerField
      FieldName = 'NOTA_FISCAL'
    end
    object cdsXmlNotasTitulosID_FORMA_PAG: TIntegerField
      FieldName = 'ID_FORMA_PAG'
      OnChange = cdsXmlNotasTitulosID_FORMA_PAGChange
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
    Left = 1128
    Top = 136
  end
  object dsXmlNotasItens: TwwDataSource
    DataSet = cdsXmlNotasItens
    Left = 1128
    Top = 182
  end
  object dsXmlNotasTitulos: TwwDataSource
    DataSet = cdsXmlNotasTitulos
    Left = 1128
    Top = 228
  end
  object NFE: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 1080
    Top = 56
  end
  object odAbreXml: TOpenDialog
    DefaultExt = '*.xml'
    Filter = 'xml nfe|*.xml'
    Title = 'Abrir XML'
    Left = 1028
    Top = 88
  end
  object opAbreXml_Salvo: TOpenDialog
    Left = 1112
    Top = 94
  end
end
