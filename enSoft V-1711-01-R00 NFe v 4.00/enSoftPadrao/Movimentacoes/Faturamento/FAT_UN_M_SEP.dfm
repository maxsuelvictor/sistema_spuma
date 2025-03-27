object FAT_FM_M_SEP: TFAT_FM_M_SEP
  Left = 0
  Top = 0
  ClientHeight = 572
  ClientWidth = 899
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 899
    Height = 41
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 897
      Height = 39
      Hint = 'FAT_FM_M_SEP'
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Separa'#231#227'o de Mercadoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      ExplicitLeft = 216
      ExplicitTop = 16
      ExplicitWidth = 36
      ExplicitHeight = 13
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 41
    Width = 899
    Height = 531
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlDados: TPanel
      Left = 1
      Top = 6
      Width = 895
      Height = 499
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 34
        Top = 29
        Width = 65
        Height = 16
        Caption = 'N'#186' Pedido :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 641
        Top = 30
        Width = 125
        Height = 16
        Caption = 'Data da Confer'#234'ncia :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 558
        Top = 57
        Width = 80
        Height = 16
        Caption = 'Respons'#225'vel :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 51
        Top = 57
        Width = 48
        Height = 16
        Caption = 'Cliente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 316
        Top = 30
        Width = 95
        Height = 16
        Caption = 'Data do Pedido :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtDtaConf: TJvDBDateEdit
        Left = 772
        Top = 27
        Width = 121
        Height = 24
        TabStop = False
        DataField = 'dta_conf'
        DataSource = dsoPed
        ReadOnly = True
        BorderStyle = bsNone
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowNullDate = False
        TabOrder = 2
      end
      object btnSair: TcxButton
        Left = 788
        Top = 455
        Width = 105
        Height = 32
        Caption = 'Sair'
        OptionsImage.Glyph.Data = {
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
        TabOrder = 8
        OnClick = btnSairClick
      end
      object btnCancelar: TcxButton
        Left = 569
        Top = 455
        Width = 105
        Height = 32
        Caption = 'Cancelar'
        TabOrder = 7
        OnClick = btnCancelarClick
      end
      object btnFinalizar: TcxButton
        Left = 458
        Top = 455
        Width = 105
        Height = 32
        Caption = 'Finalizar'
        TabOrder = 6
        OnClick = btnFinalizarClick
      end
      object txtRespConf: TwwDBEdit
        Left = 645
        Top = 54
        Width = 248
        Height = 22
        TabStop = False
        BorderStyle = bsNone
        Color = 14342874
        DataField = 'int_nome_rcn'
        DataSource = dsoPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object txtIdPedido: TJvComboEdit
        Left = 104
        Top = 27
        Width = 117
        Height = 24
        ClickKey = 114
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
        ParentFont = False
        TabOrder = 0
        Text = ''
        OnButtonClick = txtIdPedidoButtonClick
        OnExit = txtIdPedidoExit
      end
      object txtCliente: TwwDBEdit
        Left = 104
        Top = 54
        Width = 433
        Height = 22
        TabStop = False
        BorderStyle = bsNone
        Color = 14342874
        DataField = 'int_nomecli'
        DataSource = dsoPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object gbIte: TGroupBox
        Left = 11
        Top = 81
        Width = 886
        Height = 368
        TabOrder = 5
        object Label4: TLabel
          Left = 26
          Top = 344
          Width = 52
          Height = 16
          Caption = 'Volume :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object grdItens: TwwDBGrid
          Left = 3
          Top = 56
          Width = 868
          Height = 274
          Selected.Strings = (
            'id_item'#9'12'#9'C'#243'd. Item'#9'T'
            'int_nomeite'#9'35'#9'Descri'#231#227'o'#9'T'
            'int_nomecor'#9'17'#9'Cor'#9'T'
            'int_nometam'#9'10'#9'Tamanho'#9'T'
            'int_id_und_venda'#9'4'#9'Und'#9'T'
            'vlr_unitario'#9'12'#9'Vlr.Unit'#225'rio'#9'T'
            'qtde'#9'10'#9'Qtde'#9'T'
            'qtde_conferida'#9'10'#9'Qtde Conferida'#9'T'
            'num_lote'#9'10'#9'N'#186' Lote'#9'T'
            'int_rua2'#9'4'#9'Rua'#9'T'#9'Localiza'#231#227'o'
            'int_prateleira2'#9'4'#9'Prat.'#9'T'#9'Localiza'#231#227'o'
            'int_escaninho2'#9'4'#9'Escan.'#9'T'#9'Localiza'#231#227'o')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsoPedIte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
          object wwDBGrid1IButton: TwwIButton
            Left = 0
            Top = 0
            Width = 23
            Height = 23
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
            OnClick = wwDBGrid1IButtonClick
          end
        end
        object pnlIte: TPanel
          Left = 26
          Top = 6
          Width = 307
          Height = 45
          BevelOuter = bvNone
          TabOrder = 1
          object lblItem: TLabel
            Left = 89
            Top = 3
            Width = 97
            Height = 16
            Caption = '<F7> C'#243'd. Barra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 6
            Top = 1
            Width = 27
            Height = 16
            Caption = 'Qtde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 213
            Top = 3
            Width = 24
            Height = 16
            Caption = 'Lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object txtQtde: TEdit
            Left = 6
            Top = 16
            Width = 81
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = txtQtdeExit
          end
          object txtCodIte: TJvComboEdit
            Left = 89
            Top = 16
            Width = 121
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
            TabOrder = 1
            Text = ''
            OnButtonClick = txtCodIteButtonClick
            OnExit = txtCodIteExit
            OnKeyDown = txtCodIteKeyDown
            NumbersOnly = True
          end
          object cbbLote: TwwDBLookupCombo
            Left = 213
            Top = 16
            Width = 90
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'num_lote'#9'15'#9'Lote'#9'T'
              'dta_vencimento'#9'10'#9'Vencimento'#9'T')
            DataField = 'num_lote'
            DataSource = dsoLote
            LookupTable = BUS_CD_M_LOT
            LookupField = 'num_lote'
            Options = [loRowLines, loTitles]
            Style = csDropDownList
            TabOrder = 2
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbLoteEnter
            OnExit = cbbLoteExit
          end
        end
        object pnlCorTamanho: TPanel
          Left = 339
          Top = 1
          Width = 276
          Height = 46
          TabOrder = 2
          Visible = False
          object lblTamanho: TLabel
            Left = 4
            Top = 4
            Width = 54
            Height = 16
            Caption = 'Tamanho'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblCor: TLabel
            Left = 140
            Top = 4
            Width = 20
            Height = 16
            Caption = 'Cor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbbTamanho: TComboBox
            Left = 4
            Top = 18
            Width = 131
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = cbbTamanhoExit
          end
          object cbbCor: TComboBox
            Left = 140
            Top = 18
            Width = 129
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = cbbCorExit
          end
        end
        object txtVolume: TwwDBEdit
          Left = 81
          Top = 340
          Width = 94
          Height = 21
          DataField = 'qtde_volume'
          DataSource = dsoPed
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object txtDtaPedido: TJvDBDateEdit
        Left = 416
        Top = 27
        Width = 121
        Height = 24
        TabStop = False
        DataField = 'dta_pedido'
        DataSource = dsoPed
        ReadOnly = True
        BorderStyle = bsNone
        Color = 14342874
        BevelInner = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowNullDate = False
        TabOrder = 1
      end
      object btnImprimir: TcxButton
        Left = 680
        Top = 455
        Width = 106
        Height = 32
        Caption = 'Imprimir'
        TabOrder = 9
        OnClick = btnImprimirClick
      end
    end
  end
  object dsoPed: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_PED
    Left = 672
    Top = 167
  end
  object dsoPedIte: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_PED_ITE
    Left = 672
    Top = 231
  end
  object cdsLote: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 572
    Top = 312
    object cdsLotenum_lote: TStringField
      FieldName = 'num_lote'
      Size = 15
    end
  end
  object BUS_CD_M_LOT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'EST_DP_M_LOT'
    RemoteServer = dmGeral.pcConecao
    Left = 756
    Top = 360
    object BUS_CD_M_LOTnum_lote: TWideStringField
      FieldName = 'num_lote'
      Size = 15
    end
    object BUS_CD_M_LOTqtde_atual: TFloatField
      FieldName = 'qtde_atual'
    end
    object BUS_CD_M_LOTdta_vencimento: TDateField
      FieldName = 'dta_vencimento'
    end
  end
  object dsoLote: TwwDataSource
    DataSet = cdsLote
    Left = 484
    Top = 304
  end
  object FAT_FD_M_PED: TfrxDBDataset
    UserName = 'FAT_FD_M_PED'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_pedido=id_pedido'
      'id_empresa=id_empresa'
      'dta_pedido=dta_pedido'
      'id_tipo_mov_estoque=id_tipo_mov_estoque'
      'id_vendedor=id_vendedor'
      'obs=obs'
      'vlr_bruto=vlr_bruto'
      'vlr_desconto=vlr_desconto'
      'per_desconto=per_desconto'
      'vlr_liquido=vlr_liquido'
      'id_condicao_pag=id_condicao_pag'
      'pcp_obs=pcp_obs'
      'pcp_id_opr=pcp_id_opr'
      'situacao=situacao'
      'situacao_aprovacao=situacao_aprovacao'
      'id_atendente=id_atendente'
      'id_responsavel=id_responsavel'
      'id_cliente=id_cliente'
      'tipo_restricao=tipo_restricao'
      'id_almoxarifado=id_almoxarifado'
      'int_nomecli=int_nomecli'
      'int_nometme=int_nometme'
      'int_nomefun=int_nomefun'
      'int_nomecpg=int_nomecpg'
      'int_nomeate=int_nomeate'
      'int_nomeres=int_nomeres'
      'FAT_SQ_M_PED_TIT=FAT_SQ_M_PED_TIT'
      'FAT_SQ_M_PED_ITE=FAT_SQ_M_PED_ITE'
      'int_nomeest=int_nomeest'
      'int_cpfcnpj=int_cpfcnpj'
      'int_id_perfil=int_id_perfil'
      'justificativa=justificativa'
      'id_usuario_lib=id_usuario_lib'
      'hor_pedido=hor_pedido'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'origem=origem'
      'dispositivo=dispositivo'
      'gps_latitude=gps_latitude'
      'gps_longitude=gps_longitude'
      'cubagem=cubagem'
      'int_pessoacli=int_pessoacli'
      'id_orcamento=id_orcamento'
      'int_sitaprov=int_sitaprov'
      'int_sitped=int_sitped'
      'envia_carga=envia_carga'
      'dta_prev_entrega=dta_prev_entrega'
      'id_ors=id_ors'
      'int_nomecid=int_nomecid'
      'id_abertura=id_abertura'
      'int_ie_rg_cli=int_ie_rg_cli'
      'int_selecao=int_selecao'
      'dias_cpg_prazo=dias_cpg_prazo'
      'int_nomereg=int_nomereg'
      'offline=offline'
      'conferido=conferido'
      'id_conf=id_conf'
      'dta_conf=dta_conf'
      'hor_conf=hor_conf'
      'resultado_conf=resultado_conf'
      'id_resp_conf=id_resp_conf'
      'int_nome_rcn=int_nome_rcn'
      'id_propriedade=id_propriedade'
      'mod_frete=mod_frete'
      'vlr_frete=vlr_frete'
      'id_mkt=id_mkt'
      'int_numloteopr=int_numloteopr'
      'id_motorista=id_motorista'
      'id_placa=id_placa'
      'int_nomemta=int_nomemta'
      'vlr_credito=vlr_credito'
      'vlr_desc_especial=vlr_desc_especial'
      'vlr_desc_basico=vlr_desc_basico'
      'sgq_per_comissao=sgq_per_comissao'
      'int_sitped2=int_sitped2'
      'qtde_volume=qtde_volume'
      'vlr_icm_desn=vlr_icm_desn')
    DataSet = dmGeral.FAT_CD_M_PED
    BCDToCurrency = False
    Left = 110
    Top = 368
  end
  object FAT_FD_M_PED_ITE: TfrxDBDataset
    UserName = 'FAT_FD_M_PED_ITE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'int_nomeite=int_nomeite'
      'vlr_unitario=vlr_unitario'
      'qtde=qtde'
      'vlr_liquido=vlr_liquido'
      'id_pedido=id_pedido'
      'id_sequencia=id_sequencia'
      'id_item=id_item'
      'vlr_bruto=vlr_bruto'
      'per_desconto=per_desconto'
      'vlr_desconto=vlr_desconto'
      'id_cor=id_cor'
      'id_tamanho=id_tamanho'
      'id_busca_item=id_busca_item'
      'int_nomecor=int_nomecor'
      'int_id_und_venda=int_id_und_venda'
      'int_nometam=int_nometam'
      'vlr_unitario_orig=vlr_unitario_orig'
      'int_tipo_item=int_tipo_item'
      'int_seqitem=int_seqitem'
      'int_rua=int_rua'
      'int_prateleira=int_prateleira'
      'int_escaninho=int_escaninho'
      'per_desc_max=per_desc_max'
      'qtde_conferida=qtde_conferida'
      'pcp_obs_item=pcp_obs_item'
      'int_nomecul=int_nomecul'
      'id_cultura=id_cultura'
      'int_selecao=int_selecao'
      'vlr_frete=vlr_frete'
      'int_rua2=int_rua2'
      'int_prateleira2=int_prateleira2'
      'int_escaninho2=int_escaninho2'
      'vlr_icm_desn=vlr_icm_desn'
      'num_lote=num_lote'
      'int_lote_gru=int_lote_gru')
    DataSet = dmGeral.FAT_CD_M_PED_ITE
    BCDToCurrency = False
    Left = 110
    Top = 416
  end
  object FAT_FR_M_PED_REV_LOC: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41800.997059467600000000
    ReportOptions.LastChange = 41801.026114062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      'cont: integer;'
      'nomeite_width:Currency=5.5; //em cm                      '
      'conversaoCmParaPixel:Currency=37.7953;    '
      '  '
      'procedure fstCabItem1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<ativado_cor> = false) then'
      '  begin'
      
        '    mmlblCor.Visible := false;                                  ' +
        '                                   '
      '    mmlblUnd.Left := mmlblCor.Left;            '
      '  end;            '
      'end;'
      ''
      
        'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);      ' +
        '                            '
      'begin'
      '  if (<ativado_cor> = false) then'
      '   begin'
      
        '    mmCor.Visible := false;                                     ' +
        '                                '
      '    mmUnd.Left := mmCor.Left;                 '
      
        '    mmIte.Width := nomeite_width*conversaoCmParaPixel + mmUnd.Wi' +
        'dth;                       '
      '   end;'
      '  cont := cont + 1;'
      '  memo8.Text := '#39'Total de Itens : '#39' + IntToStr(cont);           '
      'end;'
      '  '
      'procedure mmCpfCnpjOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  mmCpfCnpj.Text := '#39'CPF:'#39';'
      '  if (<FAT_FD_M_PED."int_pessoacli"> = 1) then'
      '    begin'
      '      mmCpfCnpj.Text := '#39'CNPJ:'#39';  '
      '    end;              '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 254
    Top = 400
    Datasets = <
      item
        DataSet = BUS_FD_C_CLI
        DataSetName = 'BUS_FD_C_CLI'
      end
      item
        DataSet = CAD_FD_C_PAR
        DataSetName = 'CAD_FD_C_PAR'
      end
      item
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
      end
      item
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
      end>
    Variables = <
      item
        Name = ' Externas'
        Value = Null
      end
      item
        Name = 'SituacaoPed'
        Value = Null
      end
      item
        Name = 'ativado_cor'
        Value = Null
      end
      item
        Name = 'ativado_sgq'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 95.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Shape1: TfrxShapeView
          Top = 25.377860000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object Shape2: TfrxShapeView
          Left = -1.000000000000000000
          Top = 111.960730000000000000
          Width = 718.110700000000000000
          Height = 83.149660000000000000
        end
        object Memo28: TfrxMemoView
          Left = 275.905690000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO DE VENDA')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 11.559060000000000000
          Top = 132.976500000000000000
          Width = 71.811070000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente :')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 11.559060000000000000
          Top = 162.551330000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 582.606680000000000000
          Top = 162.551330000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object frxBusClinome: TfrxMemoView
          Left = 87.149660000000000000
          Top = 132.976500000000000000
          Width = 201.859664620000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."id_cliente"] - [BUS_FD_C_CLI."nome"]')
          ParentFont = False
        end
        object frxBusCliendereco: TfrxMemoView
          Left = 87.149660000000000000
          Top = 162.551330000000000000
          Width = 457.323130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[Trim(<BUS_FD_C_CLI."endereco">)]  N'#186' [Trim(<BUS_FD_C_CLI."numer' +
              'o">)], [Trim(<BUS_FD_C_CLI."bairro">)], [Trim(<BUS_FD_C_CLI."int' +
              '_nomecid">)]  -  [Trim(<BUS_FD_C_CLI."int_uf">)]')
          ParentFont = False
        end
        object frxBusCliint_nomecid: TfrxMemoView
          Left = 620.181510000000000000
          Top = 162.551330000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            ' [BUS_FD_C_CLI."cep"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 7.559060000000000000
          Top = 35.133890000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 7.559060000000000000
          Top = 66.708720000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object frxCadParemp_endereco: TfrxMemoView
          Left = 83.149660000000000000
          Top = 66.708720000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[CAD_FD_C_PAR."emp_endereco"] N'#186' [CAD_FD_C_PAR."emp_numero"], [C' +
              'AD_FD_C_PAR."emp_bairro"], [CAD_FD_C_PAR."int_nomecid"]-[CAD_FD_' +
              'C_PAR."int_uf"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object frxCadParemp_razao: TfrxMemoView
          Left = 83.149660000000000000
          Top = 35.133890000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          DataField = 'emp_fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_fantasia"]')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 585.827150000000000000
          Top = 31.133890000000000000
          Width = 128.504020000000000000
          Height = 56.692950000000000000
          Center = True
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object frxPeddta_pedido: TfrxMemoView
          Left = 87.315090000000000000
          Top = 119.417444880000000000
          Width = 71.811035830000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_pedido"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 40.960730000000000000
          Top = 119.417444880000000000
          Width = 41.574830000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 393.732530000000000000
          Top = 119.417444880000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[SituacaoPed]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 345.819110000000000000
          Top = 119.417444880000000000
          Width = 45.354360000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 323.141930000000000000
          Top = 176.202440770000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendedor :')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 45.354360000000000000
          Top = 80.504020000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 83.149660000000000000
          Top = 80.504020000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cep"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 170.078850000000000000
          Top = 80.504020000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 204.094620000000000000
          Top = 80.504020000000000000
          Width = 219.212740000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_telefone"] / [CAD_FD_C_PAR."emp_fax"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 52.354360000000000000
          Top = 176.202440770000000000
          Width = 30.236240000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object frxBusClitel_fixo: TfrxMemoView
          Left = 87.370130000000000000
          Top = 176.202440770000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."tel_fixo"]  /  [BUS_FD_C_CLI."tel_movel"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 478.071120000000000000
          Top = 30.354360000000000000
          Width = 101.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCodeCodabar
          DataField = 'id_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo56: TfrxMemoView
          Left = 11.559060000000000000
          Top = 147.889915120000000000
          Width = 71.811070000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fantasia :')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 87.149660000000000000
          Top = 146.889920000000000000
          Width = 347.716760000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."apelido"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Left = 209.992270000000000000
          Top = 119.417444880000000000
          Width = 37.795300000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hor'#225'rio:')
          ParentFont = False
        end
        object FAT_FD_M_PEDhor_pedido: TfrxMemoView
          Left = 250.228510000000000000
          Top = 119.417444880000000000
          Width = 37.795275590000000000
          Height = 15.118110236220500000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."hor_pedido"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 527.052448460000000000
          Top = 115.637905120000000000
          Width = 89.570001540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' do pedido :')
          ParentFont = False
        end
        object frxPedid_pedido: TfrxMemoView
          Left = 620.181510000000000000
          Top = 115.637914880000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataField = 'id_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_pedido"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 620.181510000000000000
          Top = 131.976500000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=11,FormatMaskTe' +
              'xt('#39'000\.000\.000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)),' +
              'IIF(Length(trim(<BUS_FD_C_CLI."doc_cnpj_cpf">))=14,FormatMaskTex' +
              't('#39'00\.000\.000\/0000\-00;0;_'#39',trim(<BUS_FD_C_CLI."doc_cnpj_cpf"' +
              '>)),trim(<BUS_FD_C_CLI."doc_cnpj_cpf">)))]')
          ParentFont = False
        end
        object mmCpfCnpj: TfrxMemoView
          Left = 586.386210000000000000
          Top = 131.976500000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'mmCpfCnpjOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF :')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 354.382998460000000000
          Top = 132.976500000000000000
          Width = 36.892821540000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/IE :')
          ParentFont = False
        end
        object FAT_FD_M_PEDint_ie_rg_cli: TfrxMemoView
          Left = 393.911803080000000000
          Top = 132.976500000000000000
          Width = 87.668165380000000000
          Height = 15.118110240000000000
          DataField = 'int_ie_rg_cli'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_ie_rg_cli"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 393.850650000000000000
          Top = 176.202440770000000000
          Width = 148.752486150000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_vendedor"] - [FAT_FD_M_PED."int_nomefun"]')
          ParentFont = False
        end
        object mmCabVlrFrete: TfrxMemoView
          Left = 560.149970000000000000
          Top = 177.858380000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Frete :')
          ParentFont = False
        end
        object FAT_FD_M_PEDvlr_frete: TfrxMemoView
          Left = 619.842920000000000000
          Top = 178.858380000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."vlr_frete"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 50.913420000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 83.149660000000000000
          Top = 50.913420000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cnpj"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 196.535560000000000000
          Top = 50.913420000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'I.E. :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 234.330860000000000000
          Top = 50.913420000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_ie"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 676.535870000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 283.464750000000000000
          Top = 7.559060000000050000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 616.063390000000000000
          Top = 7.559060000000050000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
        RowCount = 0
        Stretched = True
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118115120000000000
        ParentFont = False
        Top = 559.370440000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
        RowCount = 0
        Stretched = True
        object frxPedIteid_item: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'id_item'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."id_item"]')
          ParentFont = False
        end
        object mmIte: TfrxMemoView
          Left = 69.811070000000000000
          Width = 226.315090000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataField = 'int_nomeite'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomeite"]')
          ParentFont = False
        end
        object mmCor: TfrxMemoView
          Left = 332.685220000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomecor'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomecor"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 380.157700000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          DataField = 'qtde'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."qtde"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object mmUnd: TfrxMemoView
          Left = 306.905690000000000000
          Width = 22.677180000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Trim(<FAT_FD_M_PED_ITE."int_id_und_venda">)]')
          ParentFont = False
        end
        object FAT_FD_M_PED_ITEint_rua2: TfrxMemoView
          Left = 552.188976377952800000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'int_rua2'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_rua2"]')
          ParentFont = False
        end
        object FAT_FD_M_PED_ITEint_prateleira2: TfrxMemoView
          Left = 611.149606300000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          DataField = 'int_prateleira2'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_prateleira2"]')
          ParentFont = False
        end
        object FAT_FD_M_PED_ITEint_escaninho2: TfrxMemoView
          Left = 668.220472440000000000
          Width = 45.354330708661420000
          Height = 15.118120000000000000
          DataField = 'int_escaninho2'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_escaninho2"]')
          ParentFont = False
        end
        object FAT_FD_M_PED_ITEnum_lote: TfrxMemoView
          Left = 487.181102360000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          DataField = 'num_lote'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."num_lote"]')
          ParentFont = False
        end
        object FAT_FD_M_PED_ITEqtde_conferida: TfrxMemoView
          Left = 418.015748031496100000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'qtde_conferida'
          DataSet = FAT_FD_M_PED_ITE
          DataSetName = 'FAT_FD_M_PED_ITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."qtde_conferida"]')
          ParentFont = False
        end
      end
      object fstCabItem1: TfrxHeader
        FillType = ftBrush
        Height = 20.409448820000000000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'fstCabItem1OnBeforePrint'
        object Shape14: TfrxShapeView
          Top = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 14342874
        end
        object Memo13: TfrxMemoView
          Left = 5.000000000000000000
          Top = 2.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object mmlblIte: TfrxMemoView
          Left = 69.921259842519690000
          Top = 2.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object mmlblUnd: TfrxMemoView
          Left = 306.889920000000000000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object mmlblCor: TfrxMemoView
          Left = 332.850393700000000000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 380.496290000000000000
          Top = 2.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 552.291590000000000000
          Top = 2.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Rua')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 611.323130000000000000
          Top = 2.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Prateleira')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 668.134200000000000000
          Top = 2.779530000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Escaninho')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 487.000000000000000000
          Top = 3.519480000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' Lote')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 418.000000000000000000
          Top = 2.519480000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde Conf.')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 597.165740000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Top = 0.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo8: TfrxMemoView
          Left = 3.000000000000000000
          Top = 2.149350000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 151.181200000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        object Shape5: TfrxShapeView
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object frxPedpcp_obs: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.456710000000000000
          Width = 702.992580000000000000
          Height = 49.133890000000000000
          DataField = 'obs'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."obs"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 1.000000000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = 14342874
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 236.330860000000000000
          Top = 113.826840000000000000
          Width = 275.905690000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Memo.UTF8W = (
            '_____________________________________'
            '                        Ass. cliente')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 2.677180000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object BUS_FD_C_CLI: TfrxDBDataset
    UserName = 'BUS_FD_C_CLI'
    CloseDataSource = False
    DataSet = dmGeral.BUS_CD_C_CLI
    BCDToCurrency = False
    Left = 254
    Top = 456
  end
  object CAD_FD_C_PAR: TfrxDBDataset
    UserName = 'CAD_FD_C_PAR'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'emp_cnpj=emp_cnpj'
      'id_ramo=id_ramo'
      'emp_razao=emp_razao'
      'emp_endereco=emp_endereco'
      'emp_numero=emp_numero'
      'emp_complemento=emp_complemento'
      'emp_bairro=emp_bairro'
      'id_cidade=id_cidade'
      'emp_cep=emp_cep'
      'emp_telefone=emp_telefone'
      'emp_fax=emp_fax'
      'emp_email=emp_email'
      'emp_site=emp_site'
      'emp_fantasia=emp_fantasia'
      'emp_im=emp_im'
      'emp_ie=emp_ie'
      'emp_suframa=emp_suframa'
      'emp_numero_junta=emp_numero_junta'
      'res_nome=res_nome'
      'res_qualificacao=res_qualificacao'
      'res_cpf=res_cpf'
      'res_cep=res_cep'
      'res_endereco=res_endereco'
      'res_numero=res_numero'
      'res_complemento=res_complemento'
      'res_cidade=res_cidade'
      'res_id_cidade=res_id_cidade'
      'res_bairro=res_bairro'
      'res_cp=res_cp'
      'res_telefone=res_telefone'
      'res_fax=res_fax'
      'res_email=res_email'
      'cnt_nome=cnt_nome'
      'cnt_cpf=cnt_cpf'
      'cnt_crc=cnt_crc'
      'cnt_cnpj=cnt_cnpj'
      'cnt_cep=cnt_cep'
      'cnt_endereco=cnt_endereco'
      'cnt_numero=cnt_numero'
      'cnt_complemento=cnt_complemento'
      'cnt_bairro=cnt_bairro'
      'cnt_telefone=cnt_telefone'
      'cnt_fax=cnt_fax'
      'cnt_email=cnt_email'
      'cnt_id_cidade=cnt_id_cidade'
      'cnt_qualificacao=cnt_qualificacao'
      'cnt_cp=cnt_cp'
      'int_uf=int_uf'
      'int_reg_tributario=int_reg_tributario'
      'CAD_SQ_C_PAR_SER=CAD_SQ_C_PAR_SER'
      'CAD_SQ_C_PAR_MOD=CAD_SQ_C_PAR_MOD'
      'CAD_SQ_C_PAR_CTR=CAD_SQ_C_PAR_CTR'
      'int_nomecid=int_nomecid'
      'CAD_SQ_C_PAR_NFE=CAD_SQ_C_PAR_NFE'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'int_id_cnae=int_id_cnae'
      'CAD_SQ_C_PAR_CPG=CAD_SQ_C_PAR_CPG'
      'CAD_SQ_C_PAR_BXP=CAD_SQ_C_PAR_BXP'
      'CAD_SQ_C_PAR_RST=CAD_SQ_C_PAR_RST'
      'CAD_SQ_C_PAR_BXR=CAD_SQ_C_PAR_BXR'
      'banco=banco'
      'agencia=agencia'
      'conta_corrente=conta_corrente'
      'agencia_dig=agencia_dig'
      'conta_corrente_dig=conta_corrente_dig')
    DataSet = dmGeral.CAD_CD_C_PAR
    BCDToCurrency = False
    Left = 206
    Top = 368
  end
end
