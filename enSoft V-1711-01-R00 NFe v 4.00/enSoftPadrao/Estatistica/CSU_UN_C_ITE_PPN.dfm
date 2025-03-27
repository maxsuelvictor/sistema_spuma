object CSU_FM_C_ITE_PPN: TCSU_FM_C_ITE_PPN
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 550
  ClientWidth = 771
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
  object Label6: TLabel
    Left = 0
    Top = 0
    Width = 771
    Height = 25
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pedidos pendentes '
    Color = 3355443
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitWidth = 892
  end
  object Label1: TLabel
    Left = 0
    Top = 51
    Width = 771
    Height = 17
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pedidos'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitTop = 57
    ExplicitWidth = 475
  end
  object Label2: TLabel
    Left = 0
    Top = 281
    Width = 771
    Height = 17
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Itens do pedido'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitLeft = 24
    ExplicitTop = 356
    ExplicitWidth = 496
  end
  object grdPedidosPend: TwwDBGrid
    Left = 0
    Top = 68
    Width = 771
    Height = 213
    Selected.Strings = (
      'id_pedido'#9'11'#9'Pedido'
      'int_num_lote_opr'#9'7'#9'Nro O.P'
      'dta_pedido'#9'10'#9'Data'
      'id_cliente'#9'9'#9'C'#243'd.'
      'int_nomecli'#9'57'#9'Cliente'
      'vlr_liquido'#9'13'#9'Vlr L'#237'quido'
      'cubagem'#9'9'#9'Cubagem')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dsPedPend
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 771
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
  end
  object grdPedidosItensPend: TwwDBGrid
    Left = 0
    Top = 298
    Width = 771
    Height = 252
    Selected.Strings = (
      'id_item'#9'7'#9'C'#243'digo'
      'int_nomeite'#9'55'#9'Item'
      'int_id_und_venda'#9'4'#9'Und'
      'int_nomecor'#9'23'#9'Cor'
      'int_nometam'#9'9'#9'Tamanho'
      'qtde'#9'8'#9'Qtde'
      'vlr_liquido'#9'11'#9'Vlr. L'#237'quido')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsPedPendItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = grdPedidosItensPendCalcCellColors
  end
  object dsPedPend: TwwDataSource
    DataSet = BUS_CD_M_PED_PEN
    Left = 123
    Top = 347
  end
  object BUS_CD_M_PED_PEN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BUS_DP_M_PED'
    RemoteServer = dmGeral.pcConecao
    Left = 254
    Top = 346
    object BUS_CD_M_PED_PENid_pedido: TIntegerField
      DisplayLabel = 'Pedido'
      DisplayWidth = 11
      FieldName = 'id_pedido'
    end
    object BUS_CD_M_PED_PENint_num_lote_opr: TWideStringField
      DisplayLabel = 'Nro O.P'
      DisplayWidth = 7
      FieldName = 'int_num_lote_opr'
      ProviderFlags = []
      Size = 15
    end
    object BUS_CD_M_PED_PENdta_pedido: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'dta_pedido'
    end
    object BUS_CD_M_PED_PENid_cliente: TIntegerField
      DisplayLabel = 'C'#243'd.'
      DisplayWidth = 9
      FieldName = 'id_cliente'
    end
    object BUS_CD_M_PED_PENint_nomecli: TWideStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 57
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PENvlr_liquido: TFMTBCDField
      DisplayLabel = 'Vlr L'#237'quido'
      DisplayWidth = 13
      FieldName = 'vlr_liquido'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PENcubagem: TFloatField
      DisplayLabel = 'Cubagem'
      DisplayWidth = 9
      FieldName = 'cubagem'
    end
    object BUS_CD_M_PED_PENint_selecao: TBooleanField
      DisplayWidth = 5
      FieldName = 'int_selecao'
      ProviderFlags = []
      Visible = False
    end
    object BUS_CD_M_PED_PENid_empresa: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_empresa'
      Visible = False
    end
    object BUS_CD_M_PED_PENid_tipo_mov_estoque: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_tipo_mov_estoque'
      Visible = False
    end
    object BUS_CD_M_PED_PENid_vendedor: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_vendedor'
      Visible = False
    end
    object BUS_CD_M_PED_PENobs: TWideStringField
      DisplayWidth = 100
      FieldName = 'obs'
      Visible = False
      Size = 100
    end
    object BUS_CD_M_PED_PENvlr_bruto: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_bruto'
      Visible = False
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PENvlr_desconto: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_desconto'
      Visible = False
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PENper_desconto: TFloatField
      DisplayWidth = 10
      FieldName = 'per_desconto'
      Visible = False
    end
    object BUS_CD_M_PED_PENhor_pedido: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'hor_pedido'
      Visible = False
    end
    object BUS_CD_M_PED_PENid_condicao_pag: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_condicao_pag'
      Visible = False
    end
    object BUS_CD_M_PED_PENpcp_obs: TWideStringField
      DisplayWidth = 100
      FieldName = 'pcp_obs'
      Visible = False
      Size = 100
    end
    object BUS_CD_M_PED_PENpcp_id_opr: TIntegerField
      DisplayLabel = 'Nro. OP'
      DisplayWidth = 10
      FieldName = 'pcp_id_opr'
      Visible = False
    end
    object BUS_CD_M_PED_PENsituacao: TIntegerField
      DisplayWidth = 10
      FieldName = 'situacao'
      Visible = False
    end
    object BUS_CD_M_PED_PENsituacao_aprovacao: TIntegerField
      DisplayWidth = 10
      FieldName = 'situacao_aprovacao'
      Visible = False
    end
    object BUS_CD_M_PED_PENid_atendente: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_atendente'
      Visible = False
    end
    object BUS_CD_M_PED_PENid_responsavel: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_responsavel'
      Visible = False
    end
    object BUS_CD_M_PED_PENtipo_restricao: TWideStringField
      DisplayWidth = 100
      FieldName = 'tipo_restricao'
      Visible = False
      Size = 100
    end
    object BUS_CD_M_PED_PENid_almoxarifado: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_almoxarifado'
      Visible = False
    end
    object BUS_CD_M_PED_PENjustificativa: TWideStringField
      DisplayWidth = 100
      FieldName = 'justificativa'
      Visible = False
      Size = 100
    end
    object BUS_CD_M_PED_PENid_usuario_lib: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_usuario_lib'
      Visible = False
    end
    object BUS_CD_M_PED_PENcod_lme: TWideStringField
      DisplayWidth = 20
      FieldName = 'cod_lme'
      Visible = False
    end
    object BUS_CD_M_PED_PENrev_lme: TWideStringField
      DisplayWidth = 5
      FieldName = 'rev_lme'
      Visible = False
      Size = 5
    end
    object BUS_CD_M_PED_PENorigem: TIntegerField
      DisplayWidth = 10
      FieldName = 'origem'
      Visible = False
    end
    object BUS_CD_M_PED_PENdispositivo: TWideStringField
      DisplayWidth = 50
      FieldName = 'dispositivo'
      Visible = False
      Size = 50
    end
    object BUS_CD_M_PED_PENgps_latitude: TFloatField
      DisplayWidth = 10
      FieldName = 'gps_latitude'
      Visible = False
    end
    object BUS_CD_M_PED_PENgps_longitude: TFloatField
      DisplayWidth = 10
      FieldName = 'gps_longitude'
      Visible = False
    end
    object BUS_CD_M_PED_PENid_orcamento: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_orcamento'
      Visible = False
    end
    object BUS_CD_M_PED_PENenvia_carga: TBooleanField
      DisplayWidth = 5
      FieldName = 'envia_carga'
      Visible = False
    end
    object BUS_CD_M_PED_PENdta_prev_entrega: TDateField
      DisplayWidth = 10
      FieldName = 'dta_prev_entrega'
      Visible = False
    end
    object BUS_CD_M_PED_PENid_abertura: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_abertura'
      Visible = False
    end
    object BUS_CD_M_PED_PENdias_cpg_prazo: TIntegerField
      DisplayWidth = 10
      FieldName = 'dias_cpg_prazo'
      Visible = False
    end
    object BUS_CD_M_PED_PENoffline: TBooleanField
      DisplayWidth = 5
      FieldName = 'offline'
      Visible = False
    end
    object BUS_CD_M_PED_PENconferido: TBooleanField
      DisplayWidth = 5
      FieldName = 'conferido'
      Visible = False
    end
    object BUS_CD_M_PED_PENid_conf: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_conf'
      Visible = False
    end
    object BUS_CD_M_PED_PENdta_conf: TDateField
      DisplayWidth = 10
      FieldName = 'dta_conf'
      Visible = False
    end
    object BUS_CD_M_PED_PENhor_conf: TTimeField
      DisplayWidth = 10
      FieldName = 'hor_conf'
      Visible = False
    end
    object BUS_CD_M_PED_PENresultado_conf: TIntegerField
      DisplayWidth = 10
      FieldName = 'resultado_conf'
      Visible = False
    end
    object BUS_CD_M_PED_PENid_resp_conf: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_resp_conf'
      Visible = False
    end
    object BUS_CD_M_PED_PENint_nometme: TWideStringField
      DisplayWidth = 30
      FieldName = 'int_nometme'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object BUS_CD_M_PED_PENint_nomefun: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomefun'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object BUS_CD_M_PED_PENint_nomecpg: TWideStringField
      DisplayWidth = 30
      FieldName = 'int_nomecpg'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object BUS_CD_M_PED_PENint_nomeate: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomeate'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object BUS_CD_M_PED_PENint_nome_rcn: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nome_rcn'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object BUS_CD_M_PED_PENint_nomeres: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object BUS_CD_M_PED_PENint_nomecid: TWideStringField
      DisplayWidth = 60
      FieldName = 'int_nomecid'
      ProviderFlags = []
      Visible = False
      Size = 60
    end
    object BUS_CD_M_PED_PENint_nomeest: TWideStringField
      DisplayWidth = 2
      FieldName = 'int_nomeest'
      ProviderFlags = []
      Visible = False
      Size = 2
    end
    object BUS_CD_M_PED_PENint_cpfcnpj: TWideStringField
      DisplayWidth = 14
      FieldName = 'int_cpfcnpj'
      ProviderFlags = []
      Visible = False
      Size = 14
    end
    object BUS_CD_M_PED_PENint_pessoacli: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_pessoacli'
      ProviderFlags = []
      Visible = False
    end
    object BUS_CD_M_PED_PENint_id_perfil: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_id_perfil'
      ProviderFlags = []
      Visible = False
    end
    object BUS_CD_M_PED_PENid_ors: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_ors'
      ProviderFlags = []
      Visible = False
    end
    object BUS_CD_M_PED_PENint_sitaprov: TWideStringField
      DisplayWidth = 20
      FieldName = 'int_sitaprov'
      ProviderFlags = []
      Visible = False
    end
    object BUS_CD_M_PED_PENint_sitped: TWideStringField
      DisplayWidth = 20
      FieldName = 'int_sitped'
      ProviderFlags = []
      Visible = False
    end
    object BUS_CD_M_PED_PENint_ie_rg_cli: TWideStringField
      DisplayWidth = 20
      FieldName = 'int_ie_rg_cli'
      ProviderFlags = []
      Visible = False
    end
    object BUS_CD_M_PED_PENint_nomereg: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomereg'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object BUS_CD_M_PED_PENBUS_SQ_M_PED_ITE: TDataSetField
      DisplayWidth = 10
      FieldName = 'BUS_SQ_M_PED_ITE'
      Visible = False
    end
  end
  object BUS_CD_M_PED_PEN_ITE: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_M_PED_PENBUS_SQ_M_PED_ITE
    Params = <>
    Left = 254
    Top = 394
    object BUS_CD_M_PED_PEN_ITEid_item: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'id_item'
    end
    object BUS_CD_M_PED_PEN_ITEint_nomeite: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 55
      FieldName = 'int_nomeite'
      ProviderFlags = []
      Size = 100
    end
    object BUS_CD_M_PED_PEN_ITEint_id_und_venda: TWideStringField
      DisplayLabel = 'Und'
      DisplayWidth = 4
      FieldName = 'int_id_und_venda'
      ProviderFlags = []
      Size = 3
    end
    object BUS_CD_M_PED_PEN_ITEint_nomecor: TWideStringField
      DisplayLabel = 'Cor'
      DisplayWidth = 23
      FieldName = 'int_nomecor'
      ProviderFlags = []
      Size = 40
    end
    object BUS_CD_M_PED_PEN_ITEint_nometam: TWideStringField
      DisplayLabel = 'Tamanho'
      DisplayWidth = 9
      FieldName = 'int_nometam'
      ProviderFlags = []
      Size = 40
    end
    object BUS_CD_M_PED_PEN_ITEqtde: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 8
      FieldName = 'qtde'
    end
    object BUS_CD_M_PED_PEN_ITEvlr_liquido: TFMTBCDField
      DisplayLabel = 'Vlr. L'#237'quido'
      DisplayWidth = 11
      FieldName = 'vlr_liquido'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PEN_ITEid_pedido: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_pedido'
      Visible = False
    end
    object BUS_CD_M_PED_PEN_ITEvlr_unitario: TFMTBCDField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      DisplayWidth = 19
      FieldName = 'vlr_unitario'
      Visible = False
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PEN_ITEvlr_bruto: TFMTBCDField
      DisplayLabel = 'Vlr'
      DisplayWidth = 19
      FieldName = 'vlr_bruto'
      Visible = False
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PEN_ITEvlr_desconto: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_desconto'
      Visible = False
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PEN_ITEid_cor: TIntegerField
      FieldName = 'id_cor'
      Visible = False
    end
    object BUS_CD_M_PED_PEN_ITEid_tamanho: TIntegerField
      FieldName = 'id_tamanho'
      Visible = False
    end
  end
  object dsPedPendItens: TwwDataSource
    DataSet = BUS_CD_M_PED_PEN_ITE
    Left = 123
    Top = 395
  end
  object cdsOpr: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 176
  end
  object dsOpr: TDataSource
    Left = 464
    Top = 176
  end
end
