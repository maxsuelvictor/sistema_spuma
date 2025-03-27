object FAT_FM_M_CXA_NFE: TFAT_FM_M_CXA_NFE
  Left = -41
  Top = 0
  ClientHeight = 615
  ClientWidth = 899
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 899
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object pnlCima: TPanel
      Left = 0
      Top = 0
      Width = 899
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = -5
        Width = 899
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Nota Fiscal'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitTop = -10
        ExplicitWidth = 1200
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 25
      Width = 899
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 899
    Height = 572
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label3: TLabel
      Left = 546
      Top = 417
      Width = 117
      Height = 13
      Caption = 'Validade do Certificado :'
    end
    object Label4: TLabel
      Left = 562
      Top = 394
      Width = 101
      Height = 13
      Caption = 'S'#233'rie do Certificado :'
    end
    object Label10: TLabel
      Left = 636
      Top = 465
      Width = 27
      Height = 13
      Caption = 'CSC :'
    end
    object Label11: TLabel
      Left = 619
      Top = 442
      Width = 44
      Height = 13
      Caption = 'Id token:'
    end
    object Label12: TLabel
      Left = 614
      Top = 488
      Width = 49
      Height = 13
      Caption = 'Schemas :'
    end
    object Label13: TLabel
      Left = 623
      Top = 511
      Width = 40
      Height = 13
      Caption = 'Report :'
    end
    object Label24: TLabel
      Left = 528
      Top = 530
      Width = 115
      Height = 13
      Caption = 'Time out (webServices) '
    end
    object gbxFaturamento: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 5
      Width = 891
      Height = 202
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 0
      object lblProtocolo: TLabel
        Left = 675
        Top = 155
        Width = 52
        Height = 13
        Caption = 'Protocolo :'
      end
      object lblChave: TLabel
        Left = 36
        Top = 154
        Width = 38
        Height = 13
        Caption = 'Chave :'
      end
      object lblPedido: TLabel
        Left = 688
        Top = 179
        Width = 39
        Height = 13
        Caption = 'Pedido :'
      end
      object Label1: TLabel
        Left = 21
        Top = 178
        Width = 53
        Height = 13
        Caption = 'Vendedor :'
      end
      object Label2: TLabel
        Left = 344
        Top = 178
        Width = 68
        Height = 13
        Caption = 'Respons'#225'vel :'
      end
      object Label5: TLabel
        Left = 288
        Top = 129
        Width = 44
        Height = 13
        Caption = 'Faturada'
      end
      object Label6: TLabel
        Left = 371
        Top = 129
        Width = 50
        Height = 13
        Caption = 'Cancelada'
      end
      object lblAberto: TLabel
        Left = 37
        Top = 129
        Width = 46
        Height = 13
        Caption = 'Pendente'
      end
      object Label7: TLabel
        Left = 120
        Top = 129
        Width = 49
        Height = 13
        Caption = 'Inutilizada'
      end
      object Label8: TLabel
        Left = 205
        Top = 129
        Width = 49
        Height = 13
        Caption = 'Denegada'
      end
      object Label9: TLabel
        Left = 457
        Top = 129
        Width = 99
        Height = 13
        Caption = 'Pr'#233'-venda pendente'
      end
      object txtProtocolo: TDBEdit
        Left = 733
        Top = 151
        Width = 154
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'nfe_protocolo'
        DataSource = dso
        ReadOnly = True
        TabOrder = 2
      end
      object txtChave: TDBEdit
        Left = 80
        Top = 151
        Width = 589
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'nfe_chave'
        DataSource = dso
        ReadOnly = True
        TabOrder = 1
      end
      object dbGrid: TwwDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 6
        Width = 881
        Height = 115
        Hint = 'Clique com o bot'#227'o direito para outras tarefas...'
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ControlType.Strings = (
          'int_nomeemi;RichEdit;;F'
          'int_nfeecf;RichEdit;;F'
          'int_nometme;RichEdit;;F'
          'int_nomeope;RichEdit;;F'
          'int_nomeem;RichEdit;;F'
          'prevenda;CheckBox;True;False')
        Selected.Strings = (
          'legenda'#9'2'#9#9'F'
          'id_fiscal'#9'10'#9'Controle'#9'F'
          'id_ordem'#9'10'#9'N'#186' OS'#9'F'
          'numero'#9'10'#9'N'#250'mero'#9'F'
          'id_cfo'#9'5'#9'Cfop'#9'F'
          'int_nfeecf'#9'8'#9'Tipo'#9'F'
          'int_nometme'#9'16'#9'Tipo de Estoque'#9'F'
          'int_nomecpg'#9'15'#9'Condi'#231#227'o'#9'F'
          'dta_emissao'#9'10'#9'Emiss'#227'o'#9'F'
          'serie'#9'6'#9'S'#233'rie'#9'F'
          'modelo'#9'9'#9'Modelo'#9'F'
          'int_nomeemi'#9'34'#9'Emitente'#9'F'
          'vlr_liquido'#9'15'#9'Vlr Total'#9'F'
          'prevenda'#9'5'#9'PV'#9'F'
          'ecf_prevenda'#9'10'#9'Pr'#233'-venda'#9'F'
          'icm_n_base'#9'19'#9'Vlr.Base'#9'F'#9'ICMS Normal'
          'icm_n_valor'#9'19'#9'Vlr.Liquido'#9'F'#9'ICMS Normal'
          'icm_s_base'#9'19'#9'Vrl.Base'#9'F'#9'ICMS Substituido'
          'icm_s_valor'#9'19'#9'Vlr.Liquido'#9'F'#9'ICMS Substituido'
          'pis_base'#9'19'#9'Vlr.Base'#9'F'#9'PIS'
          'pis_valor'#9'19'#9'Vlr.Liquido'#9'F'#9'PIS'
          'cof_base'#9'19'#9'Vlr.Base'#9'F'#9'COFINS'
          'cof_valor'#9'19'#9'Vlr.Liquido'#9'F'#9'COFINS'
          'vlr_part_orig'#9'19'#9'Vlr.Origem'#9'F'#9'Partilha'
          'vlr_part_dest'#9'19'#9'Vlr.Destino'#9'F'#9'Partilha')
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
        ParentShowHint = False
        PopupMenu = pmApoio
        ShowHint = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnCalcCellColors = dbGridCalcCellColors
        OnKeyDown = dbGridKeyDown
      end
      object txtPedido: TDBEdit
        Left = 733
        Top = 175
        Width = 154
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'id_pedido_venda'
        DataSource = dso
        ReadOnly = True
        TabOrder = 3
      end
      object txtVendedor: TDBEdit
        Left = 80
        Top = 175
        Width = 251
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'int_nomevnd'
        DataSource = dso
        ReadOnly = True
        TabOrder = 4
      end
      object txtResponsavel: TDBEdit
        Left = 412
        Top = 175
        Width = 257
        Height = 21
        TabStop = False
        Color = cl3DLight
        DataField = 'int_nomeres'
        DataSource = dso
        ReadOnly = True
        TabOrder = 5
      end
      object Panel4: TPanel
        Left = 268
        Top = 128
        Width = 15
        Height = 15
        BevelOuter = bvNone
        Color = clGreen
        ParentBackground = False
        TabOrder = 6
      end
      object Panel5: TPanel
        Left = 352
        Top = 128
        Width = 15
        Height = 15
        BevelOuter = bvNone
        Color = clRed
        ParentBackground = False
        TabOrder = 7
      end
      object pnlAberto: TPanel
        Left = 18
        Top = 128
        Width = 15
        Height = 15
        BevelOuter = bvNone
        Color = clBlue
        ParentBackground = False
        TabOrder = 8
      end
      object Panel6: TPanel
        Left = 101
        Top = 128
        Width = 15
        Height = 15
        BevelOuter = bvNone
        Color = clMaroon
        ParentBackground = False
        TabOrder = 9
      end
      object Panel7: TPanel
        Left = 185
        Top = 128
        Width = 15
        Height = 15
        BevelOuter = bvNone
        Color = clPurple
        ParentBackground = False
        TabOrder = 10
      end
      object Panel1: TPanel
        Left = 438
        Top = 128
        Width = 15
        Height = 15
        BevelOuter = bvNone
        Color = 11889407
        ParentBackground = False
        TabOrder = 11
      end
    end
    object gbStatus: TGroupBox
      AlignWithMargins = True
      Left = 533
      Top = 210
      Width = 362
      Height = 177
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 1
      object MemoDados: TMemo
        Left = 2
        Top = 15
        Width = 358
        Height = 160
        Align = alClient
        TabOrder = 0
      end
      object memoLog: TMemo
        Left = 143
        Top = 67
        Width = 195
        Height = 57
        ScrollBars = ssVertical
        TabOrder = 1
        Visible = False
      end
      object WBResposta: TWebBrowser
        Left = 94
        Top = 176
        Width = 244
        Height = 48
        TabOrder = 2
        ControlData = {
          4C00000038190000F60400000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object MemoResp: TMemo
        Left = 40
        Top = 34
        Width = 197
        Height = 86
        ScrollBars = ssVertical
        TabOrder = 3
        Visible = False
      end
      object memoRespWS: TMemo
        Left = 126
        Top = 57
        Width = 201
        Height = 86
        ScrollBars = ssVertical
        TabOrder = 4
        Visible = False
      end
    end
    object pgNfeDados: TPageControl
      Left = 4
      Top = 212
      Width = 524
      Height = 173
      ActivePage = tsTitulos
      TabOrder = 2
      TabPosition = tpBottom
      object tsItens: TTabSheet
        Caption = 'Itens'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dgItens: TwwDBGrid
          AlignWithMargins = True
          Left = 2
          Top = 0
          Width = 514
          Height = 147
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Selected.Strings = (
            'id_item'#9'10'#9'Item'#9'F'
            'int_desc_item'#9'17'#9'Descri'#231#227'o'#9'F'
            'int_und_venda'#9'5'#9'Und'#9'F'
            'int_nomecor'#9'8'#9'Cor'#9'F'
            'int_nometam'#9'10'#9'Tamanho'#9'F'
            'qtde'#9'7'#9'Qtde'#9'F'
            'vlr_unitario'#9'11'#9'Vlr Unit'#225'rio'#9'F'
            'vlr_desconto'#9'8'#9'Desc.'#9'F'
            'vlr_liquido'#9'10'#9'Vlr Total'#9'F'
            'icm_n_base'#9'19'#9'Vlr.base'#9'F'#9'ICMS Normal'
            'icm_n_aliquota'#9'10'#9'Aliquota'#9'F'#9'ICMS Normal'
            'icm_n_valor'#9'19'#9'Vlr.Liquido'#9'F'#9'ICMS Normal'
            'icm_per_reducao'#9'10'#9'Vlr.Redu'#231#227'o'#9'F'#9'ICMS Normal'
            'icm_s_base'#9'19'#9'Vlr.Base'#9'F'#9'ICMS Substituido'
            'icm_s_valor'#9'19'#9'Vlr.Liquido'#9'F'#9'ICMS Substituido'
            'pis_base'#9'19'#9'Vlr.Base'#9'F'#9'PIS'
            'pis_aliquota'#9'10'#9'Aliquota'#9'F'#9'PIS'
            'pis_valor'#9'19'#9'Vlr.Liquido'#9'F'#9'PIS'
            'cof_base'#9'19'#9'Vlr.Base'#9'F'#9'COFINS'
            'cof_aliquota'#9'10'#9'Aliquota'#9'F'#9'COFINS'
            'cof_valor'#9'19'#9'Vlr.Liquido'#9'F'#9'COFINS'
            'part_per_part_orig'#9'10'#9'% Origem'#9'F'#9'Partilha'
            'vlr_part_orig'#9'19'#9'Vlr. Origem'#9'F'#9'Partilha'
            'part_per_part_dest'#9'10'#9'% Destino'#9'F'#9'Partilha'
            'vlr_part_dest'#9'19'#9'Vlr.Destino'#9'F'#9'Partilha')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = FAT_DS_M_NFE_ITE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
        end
      end
      object tsTitulos: TTabSheet
        Caption = 'T'#237'tulos'
        ImageIndex = 2
        object grdTitulos: TwwDBGrid
          AlignWithMargins = True
          Left = 2
          Top = 0
          Width = 514
          Height = 147
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Selected.Strings = (
            'id_forma_pag'#9'8'#9'C'#243'digo'#9'F'
            'int_nomefpg'#9'22'#9'Forma de pagamento'#9'F'
            'dta_vencimento'#9'12'#9'Vencimento'#9'F'
            'vlr_titulo'#9'11'#9'Vlr T'#237'tulo'#9'F'
            'che_agencia'#9'7'#9'Ag'#234'ncia'#9'F'
            'che_banco'#9'7'#9'Banco'#9'F'
            'che_conta'#9'10'#9'Conta'#9'F'
            'che_numero'#9'8'#9'Nro'#9'F'
            'che_emitente'#9'50'#9'Emitente'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          OnCellChanged = grdTitulosCellChanged
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = FAT_DS_M_NFE_TIT
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          ParentFont = False
          PopupMenu = pmApoioTit
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
          OnDblClick = grdTitulosDblClick
          OnKeyDown = grdTitulosKeyDown
        end
      end
      object tsInfFiscal: TTabSheet
        Caption = 'Informa'#231#227'o fiscal'
        ImageIndex = 2
        OnExit = tsInfFiscalExit
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object txtNfeObs: TDBMemo
          Left = 0
          Top = 0
          Width = 516
          Height = 110
          DataField = 'nfe_obs'
          DataSource = dso
          Enabled = False
          TabOrder = 0
        end
        object btnSalvarInfFis: TBitBtn
          Left = 442
          Top = 116
          Width = 71
          Height = 25
          Caption = '&Salvar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000010170000101700000000000000000000B5B5B54F4F4F
            8585859494949191919191919191919191919191919191919191919191919494
            948585854F4F4FB5B5B54141414D4D4DFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC4D4D4D414141363636595959
            FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFDFDFD595959363636393939585858FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB585858393939393939585858
            FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFBFBFB585858393939393939585858FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB5858583939393939395A5A5A
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF5A5A5A3939393A3A3A494949E5E5E5F3F3F3F3F3F3F3F3F3F3F3F3F3
            F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E5E5E54949493A3A3A3F3F3F333333
            3C3C3C3B3B3B3939393939393939393939393939393939393939393939393E3E
            3E3C3C3C3333333F3F3F3F3F3F33333333333345454559595958585858585858
            58585858586161616565655454543333333333333333333F3F3F3F3F3F333333
            393939D7D7D7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBAAAAAA919191EDEDED6E6E
            6E3333333333333F3F3F3F3F3F3333333B3B3BE8E8E8FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF5E5E5E333333EAEAEA7F7F7F3333333333333D3D3D3F3F3F333333
            3B3B3BE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666343434E9E9E97D7D
            7D3333333333334545453D3D3D3333333B3B3BE6E6E6FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF616161333333E9E9E97E7E7E333333333333A5A5A5484848333333
            363636E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949494707070F2F2F27171
            71333333959595FFFFFFB7B7B74D4D4D40404077777795959591919191919191
            91919191919191919393938C8C8C525252A3A3A3FFFFFFFFFFFF}
          TabOrder = 2
          OnClick = btnSalvarInfFisClick
        end
        object btnAlterarInfFis: TBitBtn
          Left = 371
          Top = 116
          Width = 71
          Height = 25
          Caption = '&Alterar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000010170000101700000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFE9E9E97B7B7B4D4D4D4D4D4D4D4D4D4C4C4C6969699A
            9A9A6F6F6FA2A2A2DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D6D515151
            AFAFAFB9B9B9B7B7B7B6B6B6C3C3C3B7B7B7959595BEBEBE434343C3C3C3FFFF
            FFFFFFFFFFFFFFFFFFFF3D3D3DBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1
            F1F17272727474743333333C3C3CBDBDBDFFFFFFFFFFFFFFFFFF3E3E3EC7C7C7
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B93333333333333333333939
            39B3B3B3FFFFFFFFFFFF3F3F3FC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFC2C2C23D3D3D333333333333505050DADADAFFFFFF3F3F3FC5C5C5
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C83D3D3D5050
            508F8F8F828282D5D5D53F3F3FC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFDADADA9393937F7F7F7272725F5F5F3F3F3FC5C5C5
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1C9C9C9E4E4
            E4898989414141C9C9C93F3F3FC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF858585626262FFFFFFE5E5E5E2E2E2FFFFFF3F3F3FC5C5C5
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383686868FFFF
            FFFFFFFFFFFFFFFFFFFF3F3F3FC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFE5E5E56E
            6E6E6464646060603737378D8D8DFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FC6C6C6
            FFFFFFFFFFFFFFFFFFFFFFFFC6C6C6333333333333333333515151E7E7E7FFFF
            FFFFFFFFFFFFFFFFFFFF3C3C3CC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFCECECE33
            3333333333535353E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6161615D5D5D
            C2C2C2CDCDCDCCCCCCCECECE909090333333585858E3E3E3FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFDEDEDE6464643F3F3F4242424141414242423E3E3E79
            7979EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 1
          OnClick = btnAlterarInfFisClick
        end
      end
      object tsPedidosProd: TTabSheet
        Caption = 'Pedidos da produ'#231#227'o'
        ImageIndex = 3
        OnShow = tsPedidosProdShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label14: TLabel
          Left = 8
          Top = 8
          Width = 41
          Height = 13
          Caption = 'Pedido 1'
        end
        object Label15: TLabel
          Left = 77
          Top = 8
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label16: TLabel
          Left = 158
          Top = 8
          Width = 41
          Height = 13
          Caption = 'Pedido 2'
        end
        object Label17: TLabel
          Left = 227
          Top = 8
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label18: TLabel
          Left = 316
          Top = 8
          Width = 41
          Height = 13
          Caption = 'Pedido 3'
        end
        object Label19: TLabel
          Left = 385
          Top = 8
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label20: TLabel
          Left = 8
          Top = 56
          Width = 41
          Height = 13
          Caption = 'Pedido 4'
        end
        object Label21: TLabel
          Left = 77
          Top = 56
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label22: TLabel
          Left = 158
          Top = 56
          Width = 41
          Height = 13
          Caption = 'Pedido 5'
        end
        object Label23: TLabel
          Left = 227
          Top = 56
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object txtPedidoProd1: TwwDBEdit
          Left = 7
          Top = 22
          Width = 64
          Height = 21
          DataField = 'id_pedido_prod_1'
          DataSource = dso
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = txtPedidoProd1Exit
        end
        object vlrPedProd1: TwwDBEdit
          Left = 77
          Top = 22
          Width = 64
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'vlr_liquido_ped_prod_1'
          DataSource = dso
          ReadOnly = True
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtPedidoProd2: TwwDBEdit
          Left = 157
          Top = 22
          Width = 64
          Height = 21
          DataField = 'id_pedido_prod_2'
          DataSource = dso
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = txtPedidoProd2Exit
        end
        object vlrPedProd2: TwwDBEdit
          Left = 227
          Top = 22
          Width = 64
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'vlr_liquido_ped_prod_2'
          DataSource = dso
          ReadOnly = True
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtPedidoProd3: TwwDBEdit
          Left = 315
          Top = 22
          Width = 64
          Height = 21
          DataField = 'id_pedido_prod_3'
          DataSource = dso
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = txtPedidoProd3Exit
        end
        object vlrPedProd3: TwwDBEdit
          Left = 385
          Top = 22
          Width = 64
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'vlr_liquido_ped_prod_3'
          DataSource = dso
          ReadOnly = True
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object vlrPedProd4: TwwDBEdit
          Left = 77
          Top = 70
          Width = 64
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'vlr_liquido_ped_prod_4'
          DataSource = dso
          ReadOnly = True
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtPedidoProd4: TwwDBEdit
          Left = 7
          Top = 70
          Width = 64
          Height = 21
          DataField = 'id_pedido_prod_4'
          DataSource = dso
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = txtPedidoProd4Exit
        end
        object txtPedidoProd5: TwwDBEdit
          Left = 157
          Top = 70
          Width = 64
          Height = 21
          DataField = 'id_pedido_prod_5'
          DataSource = dso
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = txtPedidoProd5Exit
        end
        object vlrPedProd5: TwwDBEdit
          Left = 227
          Top = 70
          Width = 64
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'vlr_liquido_ped_prod_5'
          DataSource = dso
          ReadOnly = True
          TabOrder = 9
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
    object btnGeraPdf: TButton
      Left = 509
      Top = 443
      Width = 41
      Height = 22
      Caption = 'Gera PDF'
      TabOrder = 4
      Visible = False
      OnClick = btnGeraPdfClick
    end
    object txtValidadeCert: TEdit
      Left = 669
      Top = 414
      Width = 100
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 5
    end
    object txtSerieCert: TEdit
      Left = 669
      Top = 390
      Width = 220
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 8
    end
    object TreeViewRetornoConsulta: TTreeView
      Left = 900
      Top = 225
      Width = 211
      Height = 92
      Ctl3D = True
      Indent = 19
      ParentCtl3D = False
      TabOrder = 9
      Visible = False
    end
    object btnEnviarEmail: TButton
      Left = 509
      Top = 466
      Width = 40
      Height = 22
      Caption = 'Enviar e-mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = btnEnviarEmailClick
    end
    object mmEmailMsg: TMemo
      Left = 900
      Top = 323
      Width = 211
      Height = 64
      TabOrder = 10
    end
    object txtCSC: TEdit
      Left = 669
      Top = 461
      Width = 220
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 7
    end
    object txtToken: TEdit
      Left = 669
      Top = 438
      Width = 220
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 6
    end
    object txtAmbiente: TEdit
      Left = 669
      Top = 542
      Width = 219
      Height = 24
      TabStop = False
      Alignment = taCenter
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object txtSchemas: TEdit
      Left = 669
      Top = 484
      Width = 220
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 12
    end
    object txtReport: TEdit
      Left = 669
      Top = 507
      Width = 220
      Height = 21
      TabStop = False
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 13
    end
    object mmoReciboBoleto: TMemo
      Left = 913
      Top = 379
      Width = 565
      Height = 150
      Lines.Strings = (
        
          '<table border=0 cellpadding=0 cellspacing=0 width=730><tr><td wi' +
          'dth=75%>&nbsp;</td><td width=25% '
        
          'valign=bottom><p align=center><font size=2><b>Comprovante de Ent' +
          'rega</b></font></td></tr></table>'
        
          '<table border=1 cellpadding=1 cellspacing=0 width=730><tr><td co' +
          'lspan=3 width=320><table border=0 '
        'cellpadding=0 cellspacing=0 width=100%><tr><td width=100%><font '
        'size=1>Cedente</font></td></tr><tr><td width=100%><font '
        'size=2><b><#NomeCedente></b></font></td></tr></table>'
        
          '</td><td width=168><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>Ag'#234'ncia/C'#243'digo Cedente</font></td></tr><tr><td width=100%' +
          '><p align=center><font '
        'size=2><b><#AgenciaCodigoCedente></b></font></td></tr></table>'
        
          '</td><td width=146><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>Vencimento</font></td></tr><tr><td width=100%><p align=ce' +
          'nter><font '
        'size=2><b><#Vencimento></b></font></td></tr></table>'
        
          '</td></tr><tr><td width=320 colspan=3><table border=0 cellpaddin' +
          'g=0 cellspacing=0 width=100%><tr><td '
        
          'width=100%><font size=1>Sacado</font></td></tr><tr><td width=100' +
          '%><font '
        'size=2><b><#NomeSacado></b></font></td></tr></table>'
        
          '</td><td width=168><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>N'#250'mero do Documento</font></td></tr><tr><td width=100%><p' +
          ' align=center><font '
        'size=2><b><#NumeroDocumento></b></font></td></tr></table>'
        
          '</td><td width=146><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>Nosso N'#250'mero</font></td></tr><tr><td width=100%><p align=' +
          'center><font '
        'size=2><b><#NossoNumeroExibicao></b></font></td></tr></table>'
        
          '</td></tr><tr><td width=66><table border=0 cellpadding=0 cellspa' +
          'cing=0 width=100%><tr><td '
        
          'width=100%><font size=1>Esp'#233'cie</font></td></tr><tr><td width=10' +
          '0%><p align=center><font '
        'size=2><b><#Moeda></b></font></td></tr></table>'
        
          '</td><td width=100><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>Quantidade</font></td></tr><tr><td width=100%><p align=ce' +
          'nter><font '
        'size=2><b><#Quantidade></b></font></td></tr></table>'
        
          '</td><td width=150><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>(x) Valor</font></td></tr><tr><td width=100%><p align=cen' +
          'ter><font size=2><b>&nbsp; '
        '</b></font></td></tr></table>'
        
          '</td><td width=168><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>(=) Valor do Documento</font></td></tr><tr><td width=100%' +
          '><p align=center><font '
        'size=2><b><#ValorDocumentoExibicao></b></font></td></tr></table>'
        
          '</td><td width=168><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>(-) Desconto</font></td></tr><tr><td width=100%><p align=' +
          'center><font '
        'size=2><b><#ValorDescontoExibicao></b></font></td></tr></table>'
        
          '</td></tr><tr><td width=320 colspan=3 valign=bottom><p align=lef' +
          't><font '
        
          'size=2><b>Demonstrativo:</b></font></td><td width=168><table bor' +
          'der=0 cellpadding=0 cellspacing=0 '
        
          'width=100%><tr><td width=100%><font size=1>(+) Outros Acr'#233'scimos' +
          '</font></td></tr><tr><td '
        'width=100%><p align=center><font '
        
          'size=2><b><#ValorOutrosAcrescimosExibicao></b></font></td></tr><' +
          '/table>'
        
          '</td><td width=146><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>(=) Valor Cobrado</font></td></tr><tr><td width=100%><p a' +
          'lign=center><font '
        'size=2><b>&nbsp; </b></font></td></tr></table>'
        
          '</td></tr><tr><td width=100% height=120 colspan=5 valign=top><fo' +
          'nt '
        'size=2><#Demonstrativo></font></td></tr></table>'
        
          '<table border=0 cellpadding=0 cellspacing=0 border=0 width=730><' +
          'tr><td nowrap height=25 '
        'valign=bottom><font '
        
          'size=1>---------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-------'
        
          '-------------------------------- Corte Aqui --------------------' +
          '----------</font></td></tr></table>'
        
          '<table border=0 cellpadding=0 cellspacing=0 width=730><tr><td wi' +
          'dth=40% valign=bottom height=60><p '
        
          'align=left><#LogotipoCedente></td><td width=30% valign=baseline>' +
          '<font '
        
          'size=2><#IdentificacaoCedente></font></td><td width=15% valign=b' +
          'ottom><p align=center><font '
        'size=2><b>Recibo do Sacado</b></font></td></tr></table>'
        
          '<table border=1 cellpadding=1 cellspacing=0 width=730><tr><td co' +
          'lspan=3 width=320><table border=0 '
        'cellpadding=0 cellspacing=0 width=100%><tr><td width=100%><font '
        'size=1>Cedente</font></td></tr><tr><td width=100%><font '
        'size=2><b><#NomeCedente></b></font></td></tr></table>'
        
          '</td><td width=168><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>Ag'#234'ncia/C'#243'digo Cedente</font></td></tr><tr><td width=100%' +
          '><p align=center><font '
        'size=2><b><#AgenciaCodigoCedente></b></font></td></tr></table>'
        
          '</td><td width=146><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>Vencimento</font></td></tr><tr><td width=100%><p align=ce' +
          'nter><font '
        'size=2><b><#Vencimento></b></font></td></tr></table>'
        
          '</td></tr><tr><td width=320 colspan=3><table border=0 cellpaddin' +
          'g=0 cellspacing=0 width=100%><tr><td '
        
          'width=100%><font size=1>Sacado</font></td></tr><tr><td width=100' +
          '%><font '
        'size=2><b><#NomeSacado></b></font></td></tr></table>'
        
          '</td><td width=168><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>N'#250'mero do Documento</font></td></tr><tr><td width=100%><p' +
          ' align=center><font '
        'size=2><b><#NumeroDocumento></b></font></td></tr></table>'
        
          '</td><td width=146><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>Nosso N'#250'mero</font></td></tr><tr><td width=100%><p align=' +
          'center><font '
        'size=2><b><#NossoNumeroExibicao></b></font></td></tr></table>'
        
          '</td></tr><tr><td width=66><table border=0 cellpadding=0 cellspa' +
          'cing=0 width=100%><tr><td '
        
          'width=100%><font size=1>Esp'#233'cie</font></td></tr><tr><td width=10' +
          '0%><p align=center><font '
        'size=2><b><#Moeda></b></font></td></tr></table>'
        
          '</td><td width=100><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>Quantidade</font></td></tr><tr><td width=100%><p align=ce' +
          'nter><font '
        'size=2><b><#Quantidade></b></font></td></tr></table>'
        
          '</td><td width=150><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>(x) Valor</font></td></tr><tr><td width=100%><p align=cen' +
          'ter><font size=2><b>&nbsp; '
        '</b></font></td></tr></table>'
        
          '</td><td width=168><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>(=) Valor do Documento</font></td></tr><tr><td width=100%' +
          '><p align=center><font '
        'size=2><b><#ValorDocumentoExibicao></b></font></td></tr></table>'
        
          '</td><td width=168><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>(-) Desconto</font></td></tr><tr><td width=100%><p align=' +
          'center><font '
        'size=2><b><#ValorDescontoExibicao></b></font></td></tr></table>'
        
          '</td></tr><tr><td width=320 colspan=3 valign=bottom><p align=lef' +
          't><font '
        
          'size=2><b>Demonstrativo:</b></font></td><td width=168><table bor' +
          'der=0 cellpadding=0 cellspacing=0 '
        
          'width=100%><tr><td width=100%><font size=1>(+) Outros Acr'#233'scimos' +
          '</font></td></tr><tr><td '
        'width=100%><p align=center><font '
        
          'size=2><b><#ValorOutrosAcrescimosExibicao></b></font></td></tr><' +
          '/table>'
        
          '</td><td width=146><table border=0 cellpadding=0 cellspacing=0 w' +
          'idth=100%><tr><td width=100%><font '
        
          'size=1>(=) Valor Cobrado</font></td></tr><tr><td width=100%><p a' +
          'lign=center><font '
        'size=2><b>&nbsp; </b></font></td></tr></table>'
        
          '</td></tr><tr><td width=100% height=120 colspan=5 valign=top><fo' +
          'nt '
        'size=2><#Demonstrativo></font></td></tr></table>'
        
          '<table border=0 cellpadding=0 cellspacing=0 width=730><tr><td wi' +
          'dth=308><p align=left><font '
        
          'size=1><#URLOrigem></font></td><td width=332 valign=top><p align' +
          '=center><font size=1>Autentica'#231#227'o '
        
          'Mec'#226'nica</font></td></tr><tr><td width=308><p align=center><font' +
          ' size=1>&nbsp; </font></td><td '
        
          'width=332><p align=center><font size=1>&nbsp; </font></td></tr><' +
          'tr><td width=308><p '
        
          'align=center><font size=1>&nbsp; </font></td><td width=332><p al' +
          'ign=center><font size=1>&nbsp; '
        '</font></td></tr></table>')
      TabOrder = 14
      Visible = False
    end
    object pnNfeNFSe: TPanel
      Left = 0
      Top = 384
      Width = 522
      Height = 188
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 15
      object lblPIS: TLabel
        Left = 3
        Top = 143
        Width = 500
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'Faturamento de Servi'#231'o'
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object btnNotaFiscal: TButton
        Left = 4
        Top = 2
        Width = 100
        Height = 46
        Caption = 'Gerar NFe/Envia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnNotaFiscalClick
      end
      object btnCupomFiscal: TButton
        Left = 4
        Top = 49
        Width = 100
        Height = 41
        Caption = 'Finalizar Cupom GerConWin'
        TabOrder = 1
        WordWrap = True
        OnClick = btnCupomFiscalClick
      end
      object btnNfc: TBitBtn
        Left = 4
        Top = 92
        Width = 100
        Height = 46
        Caption = 'Gerar NFCe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        WordWrap = True
        OnClick = btnNfcClick
      end
      object btnInutilizar: TButton
        Left = 106
        Top = 2
        Width = 130
        Height = 22
        Caption = 'Inutilizar'
        TabOrder = 3
        OnClick = btnInutilizarClick
      end
      object btnCancelaNFE: TButton
        Left = 106
        Top = 25
        Width = 130
        Height = 22
        Caption = 'Cancela NFe'
        TabOrder = 4
        OnClick = btnCancelaNFEClick
      end
      object btnCartaCorrecao: TButton
        Left = 106
        Top = 50
        Width = 130
        Height = 22
        Caption = 'Carta Corre'#231#227'o'
        TabOrder = 5
        OnClick = btnCartaCorrecaoClick
      end
      object btnImprimeEvento: TButton
        Left = 106
        Top = 73
        Width = 130
        Height = 22
        Caption = 'Imprimir Evento'
        TabOrder = 6
        OnClick = btnImprimeEventoClick
      end
      object btnCancelaNfeAnt: TButton
        Left = 106
        Top = 96
        Width = 130
        Height = 22
        Caption = 'Cancela NFe dia anterior'
        TabOrder = 7
        OnClick = btnCancelaNfeAntClick
      end
      object btnCancelaEcf: TButton
        Left = 106
        Top = 118
        Width = 130
        Height = 22
        Caption = 'Cancela Ecf'
        TabOrder = 8
        OnClick = btnCancelaEcfClick
      end
      object btnImprimeNFE: TButton
        Left = 239
        Top = 2
        Width = 130
        Height = 22
        Caption = 'Imprime NFe'
        TabOrder = 9
        OnClick = btnImprimeNFEClick
      end
      object btnVerificaServico: TButton
        Left = 239
        Top = 25
        Width = 130
        Height = 22
        Caption = 'Verifica Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = btnVerificaServicoClick
      end
      object btnConsultaNfe: TButton
        Left = 239
        Top = 49
        Width = 130
        Height = 22
        Caption = 'Consultar NFe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = btnConsultaNfeClick
      end
      object btnImprimirPromissoria: TButton
        Left = 239
        Top = 72
        Width = 130
        Height = 22
        Caption = 'Nota Promiss'#243'ria'
        TabOrder = 12
        OnClick = btnImprimirPromissoriaClick
      end
      object btnAtualizaTela: TButton
        Left = 239
        Top = 95
        Width = 130
        Height = 22
        Caption = 'Atualizar tela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = btnAtualizaTelaClick
      end
      object btnGeraBoleto: TButton
        Left = 373
        Top = 2
        Width = 130
        Height = 22
        Caption = 'Gera Boleto'
        TabOrder = 14
        OnClick = btnGeraBoletoClick
      end
      object btnImprimeTitulo: TButton
        Left = 373
        Top = 25
        Width = 130
        Height = 22
        Caption = 'Imprime T'#237'tulo'
        PopupMenu = pmImpTitCheque
        TabOrder = 15
        OnClick = btnImprimeTituloClick
      end
      object btnGeraNFeECF: TButton
        Left = 373
        Top = 49
        Width = 130
        Height = 22
        Caption = 'Gera NFe de ECF'
        TabOrder = 16
        OnClick = btnGeraNFeECFClick
      end
      object btnBuscarPedido: TButton
        Left = 373
        Top = 72
        Width = 130
        Height = 22
        Caption = 'Buscar Pedido'
        TabOrder = 17
        OnClick = btnBuscarPedidoClick
      end
      object btnSair: TButton
        Left = 373
        Top = 95
        Width = 130
        Height = 22
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
        OnClick = btnSairClick
      end
      object btnGeraEnviaRPS: TBitBtn
        Left = 373
        Top = 159
        Width = 130
        Height = 25
        Caption = 'Gerar\Enviar RPS '
        TabOrder = 19
        OnClick = btnGeraEnviaRPSClick
      end
      object btnNFSeAvulsa: TBitBtn
        Left = 4
        Top = 159
        Width = 100
        Height = 25
        Caption = 'NFS-e avulsa'
        PopupMenu = pmApoioNFSe
        TabOrder = 20
        OnClick = btnNFSeAvulsaClick
      end
      object btnCancelarNFSe: TButton
        Left = 106
        Top = 159
        Width = 130
        Height = 25
        Caption = 'Cancela NFS-e'
        TabOrder = 21
        OnClick = btnCancelarNFSeClick
      end
      object btnCancelarNFSDiaAnt: TBitBtn
        Left = 239
        Top = 159
        Width = 136
        Height = 25
        Caption = 'Cancela NFS-e dia anterior'
        TabOrder = 22
        OnClick = btnCancelarNFSDiaAntClick
      end
    end
    object Button1: TButton
      Left = 556
      Top = 457
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 16
    end
    object cbTimeServices: TComboBox
      Left = 528
      Top = 545
      Width = 119
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 17
      Text = '10000'
      Items.Strings = (
        '5000'
        '10000'
        '15000'
        '30000'
        '40000')
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_CXA
    Left = 948
    Top = 382
  end
  object FAT_DS_M_NFE_ITE: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE_CXA
    Left = 948
    Top = 326
  end
  object FAT_DS_M_NFE_TIT: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_TIT_CXA
    Left = 948
    Top = 278
  end
  object NFE: TACBrNFe
    MAIL = ACBrMail1
    OnStatusChange = NFEStatusChange
    OnGerarLog = NFEGerarLog
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = Danfe
    Left = 947
    Top = 65
  end
  object Danfe: TACBrNFeDANFEFR
    NumCopias = 2
    MostraSetup = True
    PathPDF = 'C:\Program Files\Borland\Delphi7\Bin\'
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    ACBrNFe = NFE
    TipoDANFE = tiSemGeracao
    EspessuraBorda = 1
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 640
    Top = 104
  end
  object odNfe: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 944
    Top = 176
  end
  object pmApoio: TPopupMenu
    Left = 828
    Top = 384
    object GerarPrVenda1: TMenuItem
      Caption = 'Gerar Pr'#233'-Venda'
      OnClick = GerarPrVenda1Click
    end
    object btnDesfazerPreVenda: TMenuItem
      Caption = 'Desfazer Pr'#233'-Venda'
      OnClick = btnDesfazerPreVendaClick
    end
    object DadosdoTransportador1: TMenuItem
      Caption = 'Dados do Transportador'
      OnClick = DadosdoTransportador1Click
    end
    object btnImprimirDupAceite: TMenuItem
      Caption = 'Imprimir Duplicata de Aceite'
      OnClick = btnImprimirDupAceiteClick
    end
    object ImprimirTermo1: TMenuItem
      Caption = 'Imprimir Termo'
      OnClick = ImprimirTermo1Click
    end
    object btnImpEtiqueta: TMenuItem
      Caption = 'Imprimir Etiqueta'
      OnClick = btnImpEtiquetaClick
    end
    object btnImprimirPedVenda: TMenuItem
      Caption = 'Imprimir Pedido de Venda'
      OnClick = btnImprimirPedVendaClick
    end
    object FaturarnotafiscalapsXML1: TMenuItem
      Caption = 'Faturar nota fiscal ap'#243's XML'
      OnClick = FaturarnotafiscalapsXML1Click
    end
    object Cancelarnotafiscalsomentenosistema1: TMenuItem
      Caption = 'Cancelar nota fiscal somente no sistema'
      OnClick = Cancelarnotafiscalsomentenosistema1Click
    end
    object CancelarnotafiscalsomentenaSEFAZ1: TMenuItem
      Caption = 'Cancelar nota fiscal somente na SEFAZ'
      OnClick = CancelarnotafiscalsomentenaSEFAZ1Click
    end
    object btnGerarXMLImportacao: TMenuItem
      Caption = 'Inserir dados na NF de Importa'#231#227'o'
      OnClick = btnGerarXMLImportacaoClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miFaturaSemPedido: TMenuItem
      Caption = 'Faturar sem informar nro pedido'
      OnClick = miFaturaSemPedidoClick
    end
  end
  object FAT_PD_M_TER_NFE: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 1026
    Top = 64
  end
  object FAT_XL_M_TER_NFE: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 1026
    Top = 128
  end
  object FAT_CD_M_TER_NFE: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42088.744515231500000000
    ReportOptions.LastChange = 42173.705079444400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 624
    Top = 75
    Datasets = <
      item
        DataSet = BUS_DB_M_CXA_NFE
        DataSetName = 'BUS_DB_M_CXA_NFE'
      end
      item
        DataSet = FAT_DB_M_TER_NFE
        DataSetName = 'FAT_DB_M_TER_NFE'
      end>
    Variables = <
      item
        Name = ' Externa'
        Value = Null
      end
      item
        Name = 'Extenso'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118105350000000000
        ParentFont = False
        Top = 684.094930000000000000
        Width = 718.110700000000000000
        DataSet = FAT_DB_M_TER_NFE
        DataSetName = 'FAT_DB_M_TER_NFE'
        RowCount = 0
        object FAT_DB_M_TER_NFEret_emb_capacidade: TfrxMemoView
          Width = 188.976377950000000000
          Height = 15.118105350000000000
          DataField = 'ret_emb_capacidade'
          DataSet = FAT_DB_M_TER_NFE
          DataSetName = 'FAT_DB_M_TER_NFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_DB_M_TER_NFE."ret_emb_capacidade"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FAT_DB_M_TER_NFEqtde_plasticos: TfrxMemoView
          Left = 188.976500000000000000
          Width = 88.062992130000000000
          Height = 15.118105350000000000
          DataField = 'qtde_plasticos'
          DataSet = FAT_DB_M_TER_NFE
          DataSetName = 'FAT_DB_M_TER_NFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_DB_M_TER_NFE."qtde_plasticos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FAT_DB_M_TER_NFEqtde_metal: TfrxMemoView
          Left = 276.685220000000000000
          Width = 88.062992130000000000
          Height = 15.118105350000000000
          DataField = 'qtde_metal'
          DataSet = FAT_DB_M_TER_NFE
          DataSetName = 'FAT_DB_M_TER_NFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_DB_M_TER_NFE."qtde_metal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FAT_DB_M_TER_NFEqtde_contaminada: TfrxMemoView
          Left = 453.543600000000000000
          Width = 132.283464570000000000
          Height = 15.118105350000000000
          DataField = 'qtde_contaminada'
          DataSet = FAT_DB_M_TER_NFE
          DataSetName = 'FAT_DB_M_TER_NFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_DB_M_TER_NFE."qtde_contaminada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FAT_DB_M_TER_NFEqtde_vidro: TfrxMemoView
          Left = 365.614410000000000000
          Width = 88.062992130000000000
          Height = 15.118105350000000000
          DataField = 'qtde_vidro'
          DataSet = FAT_DB_M_TER_NFE
          DataSetName = 'FAT_DB_M_TER_NFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_DB_M_TER_NFE."qtde_vidro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FAT_DB_M_TER_NFEqtde_nao_contaminada: TfrxMemoView
          Left = 585.827150000000000000
          Width = 132.283464570000000000
          Height = 15.118105350000000000
          DataField = 'qtde_nao_contaminada'
          DataSet = FAT_DB_M_TER_NFE
          DataSetName = 'FAT_DB_M_TER_NFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_DB_M_TER_NFE."qtde_nao_contaminada"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 526.575140000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 98.267780000000000000
          Width = 718.110700000000000000
          Height = 83.149660000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '<b>ASSOCIA'#199#195'O DO COM'#201'RCIO AGROPEC'#193'RIA DO VALE DO S'#195'O FRANCISCO</' +
              'b>'
            
              'Central Vale do S'#227'o Francisco de Recebimento de Embalagens Tripl' +
              'ice Lavadas de Agrot'#243'xicos'
            'Projeto Senador Nilo Coelho, N-1, Lote 1.540 - Petrolina - PE'
            
              'End. para Correspond'#234'ncia: A C Petrolina - PE, Cx Postal: 135 - ' +
              'CEP: 56302-970'
            'Fone: (87) 3986-4004 / 4000')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 506.457020000000000000
          Top = 185.196970000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Formul'#225'rio N'#186' [BUS_DB_M_CXA_NFE."nro_termo"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 222.874150000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TERMO DE REMESSA E DE RESPONSABILIDADE')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 250.669450000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome do Produtor : <b>[BUS_DB_M_CXA_NFE."int_nomeemi"]</b>')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 273.346630000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o : <b>[BUS_DB_M_CXA_NFE."int_endereco"]</b>')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 296.023810000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Munic'#237'pio : <b>[BUS_DB_M_CXA_NFE."int_nom_cidade"]</b>')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 318.700990000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CPF / CNPJ : <b>[BUS_DB_M_CXA_NFE."int_cnpjcpf"]</b>')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 341.378170000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fone / Fax : <b>[BUS_DB_M_CXA_NFE."int_telefone"]</b>')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 226.771800000000000000
          Top = 296.023810000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Estado : <b>[BUS_DB_M_CXA_NFE."int_estado"]</b>')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 226.771800000000000000
          Top = 318.700990000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Insc. Estadual : <b>[BUS_DB_M_CXA_NFE."int_doc_ie"]</b>')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 226.771800000000000000
          Top = 341.378170000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N.NF. : <b>[BUS_DB_M_CXA_NFE."numero"]</b>')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 457.323130000000000000
          Top = 296.023810000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CEP : <b>[BUS_DB_M_CXA_NFE."int_cep"]</b>')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 457.323130000000000000
          Top = 341.378170000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data de Emiss'#227'o : <b>[BUS_DB_M_CXA_NFE."dta_emissao"]</b>')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 382.953000000000000000
          Width = 718.110700000000000000
          Height = 143.622140000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '     Estamos remetendo '#224' CENTRAL VALE DO S'#195'O FRANCISCO DE RECEBI' +
              'MENTO DE EMBALAGENS TR'#205'PLICE LAVADAS DE AGROT'#211'XICOS, as embalage' +
              'ns vazias de produtos adquiridos no prazo de um ano contado da d' +
              'ata de compra conforme a descri'#231#227'o abaixo.'
            ''
            
              '     Assumimos Inteira responsabilidade pelas embalagens ora adq' +
              'uiridas, garantindo que as mesmas passar'#227'o pelo tratamento de tr' +
              #237'plice lavagem, conforme NBR 13968, ABNT - SET 1997 sendo perfur' +
              'adas e entregues na Central de Recebimento, Prensagem para Desti' +
              'na'#231#227'o Final. Tenho ci'#234'ncia de que caso n'#227'o cumpra, sofrerei as p' +
              'enalidades previstas.')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 718.110236220000000000
          Height = 92.881880000000000000
          Center = True
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D49484452000000D800
            00006C0806000000087B7C8E0000000467414D410000B18E7CFB519300000A39
            6943435050686F746F73686F70204943432070726F66696C65000048C79D9677
            5454D71687CFBD777AA1CD30025286DEBBC000D27B935E456198196028030E33
            34B121A2021145449A224850C480D150245644B1101454B00724082831184554
            2C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9FBECBDCF5A170092A72F979706
            4B0190CA13F0833C9CE911915174EC0080011E608029004C5646BA5FB07B0810
            C9CBCD859E2172025F0401F07A58BC0270D3D033804E07FF9FA459E97C81E898
            00119BB339192C11178838254B902EB6CF8A981A972C66182566BE284111CB89
            3961910D3EFB2CB2A398D9A93CB688C539A7B353D962EE15F1B64C2147C488AF
            880B33B99C2C11DF12B1468A30952BE237E2D8540E33030014496C1770588922
            361131891F12E422E2E500E048095F71DC572CE0640BC49772494BCFE1731312
            05741D962EDDD4DA9A41F7E464A5700402C300262B99C967D35DD252D399BC1C
            0016EFFC5932E2DAD24545B634B5B6B434343332FDAA50FF75F36F4ADCDB457A
            19F8B96710ADFF8BEDAFFCD21A0060CC896AB3F38B2DAE0A80CE2D00C8DDFB62
            D3380080A4A86F1DD7BFBA0F4D3C2F890241BA8DB1715656961197C3321217F4
            0FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C618A802EAE1B2B2D254DC8A767
            A433591CBAE19F87F81F07FE751E06419C780E9FC313458489A68CCB4B10B59B
            C7E60AB8693C3A97F79F9AF80FC3FEA4C5B91689D2F81150638C80D4752A407E
            ED07280A1120D1FBC55DFFA36FBEF830207E79E12A938B73FFEF37FD67C1A5E2
            25839BF039CE252884CE12F23317F7C4CF12A0010148022A9007CA401DE80043
            6006AC802D70046EC01BF8831010095603164804A9800FB2401ED8040A4131D8
            09F6806A50071A41336805C741273805CE834BE01AB8016E83FB60144C806760
            16BC060B10046121324481E421154813D287CC2006640FB941BE50101409C542
            09100F124279D066A8182A83AAA17AA819FA1E3A099D87AE4083D05D680C9A86
            7E87DEC1084C82A9B012AC051BC30CD809F68143E0557002BC06CE850BE01D70
            25DC001F853BE0F3F035F8363C0A3F83E7108010111AA28A18220CC405F147A2
            9078848FAC478A900AA4016945BA913EE426328ACC206F51181405454719A26C
            519EA850140BB506B51E5582AA461D4675A07A51375163A859D4473419AD88D6
            47DBA0BDD011E8047416BA105D816E42B7A32FA26FA327D0AF31180C0DA38DB1
            C2786222314998B59812CC3E4C1BE61C6610338E99C362B1F2587DAC1DD61FCB
            C40AB085D82AEC51EC59EC107602FB0647C4A9E0CC70EEB8281C0F978FABC01D
            C19DC10DE126710B7829BC26DE06EF8F67E373F0A5F8467C37FE3A7E02BF4090
            266813EC08218424C2264225A1957091F080F0924824AA11AD8981442E7123B1
            92788C789938467C4B9221E9915C48D124216907E910E91CE92EE925994CD622
            3B92A3C802F20E7233F902F911F98D0445C248C24B822DB141A246A2436248E2
            B9245E5253D24972B564AE6485E409C9EB92335278292D291729A6D47AA91AA9
            9352235273D2146953697FE954E912E923D257A4A764B0325A326E326C990299
            83321764C62908459DE242615136531A29172913540C559BEA454DA21653BFA3
            0E506765656497C986C966CBD6C89E961DA521342D9A172D85564A3B4E1BA6BD
            5BA2B4C4690967C9F625AD4B8696CCCB2D957394E3C815C9B5C9DD967B274F97
            77934F96DF25DF29FF5001A5A0A710A890A5B05FE1A2C2CC52EA52DBA5ACA545
            4B8F2FBDA7082BEA290629AE553CA8D8AF38A7A4ACE4A194AE54A57441694699
            A6ECA89CA45CAE7C46795A85A262AFC255295739ABF2942E4B77A2A7D02BE9BD
            F4595545554F55A16ABDEA80EA829AB65AA85ABE5A9BDA4375823A433D5EBD5C
            BD477D564345C34F234FA345E39E265E93A199A8B957B34F735E4B5B2B5C6BAB
            56A7D694B69CB69776AE768BF6031DB28E83CE1A9D069D5BBA185D866EB2EE3E
            DD1B7AB09E855EA25E8DDE757D58DF529FABBF4F7FD0006D606DC03368301831
            24193A19661AB6188E19D18C7C8DF28D3A8D9E1B6B184719EF32EE33FE686261
            9262D26872DF54C6D4DB34DFB4DBF477333D3396598DD92D73B2B9BBF906F32E
            F317CBF4977196ED5F76C78262E167B1D5A2C7E283A59525DFB2D572DA4AC32A
            D6AAD66A84416504304A1897ADD1D6CED61BAC4F59BFB5B1B411D81CB7F9CDD6
            D036D9F688EDD472EDE59CE58DCBC7EDD4EC9876F576A3F674FB58FB03F6A30E
            AA0E4C870687C78EEA8E6CC726C749275DA724A7A34ECF9D4D9CF9CEEDCEF32E
            362EEB5CCEB922AE1EAE45AE036E326EA16ED56E8FDCD5DC13DC5BDC673D2C3C
            D67A9CF3447BFA78EEF21CF152F26279357BCD7A5B79AFF3EEF521F904FB54FB
            3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC15BD1E90FFCBDFC77FB3F0CD00E
            5813F06320263020B026F0499069505E505F30253826F848F0EB10E790D290FB
            A13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0D108E3887511D7221522B9915D
            51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C1E5EA5BD2A7BD595D50AAB5356
            9F8E918C61C69C8845C786C71E897DCFF4673630E7E2BCE26AE366592EACBDAC
            676C4776397B9A63C729E34CC6DBC597C54F25D825EC4E984E7448AC489CE1BA
            70ABB92F923C93EA92E693FD930F257F4A094F694BC5A5C6A69EE4C9F09279BD
            69CA69D96983E9FAE985E9A36B6CD6EC5933CBF7E137654019AB32BA0454D1CF
            54BF5047B8453896699F5993F9262B2CEB44B674362FBB3F472F677BCE64AE7B
            EEB76B516B596B7BF254F336E58DAD735A57BF1E5A1FB7BE6783FA86820D131B
            3D361EDE44D894BCE9A77C93FCB2FC579BC337771728156C2C18DFE2B1A5A550
            A2905F38B2D5766BDD36D436EEB681EDE6DBABB67F2C62175D2D3629AE287E5F
            C22AB9FA8DE93795DF7CDA11BF63A0D4B274FF4ECC4EDECEE15D0EBB0E974997
            E5968DEFF6DBDD514E2F2F2A7FB52766CF958A6515757B097B857B472B7D2BBB
            AA34AA7656BDAF4EACBE5DE35CD356AB58BBBD767E1F7BDFD07EC7FDAD754A75
            C575EF0E700FDCA9F7A8EF68D06AA83888399879F049635863DFB78C6F9B9B14
            9A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E291D216B845D8327D34FAE88DEF
            5CBFEB6A356CAD6FA3B5151F03C784C79E7E1FFBFDF0719FE33D2718275A7FD0
            FCA1B69DD25ED40175E474CC7626768E7645760D9EF43ED9D36DDBDDFEA3D18F
            874EA99EAA392D7BBAF40CE14CC1994F6773CFCE9D4B3F37733EE1FC784F4CCF
            FD0B11176EF506F60E5CF4B978F992FBA50B7D4E7D672FDB5D3E75C5E6CAC9AB
            8CAB9DD72CAF75F45BF4B7FF64F153FB80E540C775ABEB5D37AC6F740F2E1F3C
            33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070E8F09D91E891D13BEC3B537753
            EEBEB897796FE1FEC607E807450FA51E563C527CD4F0B3EECF6DA396A3A7C75C
            C7FA1F073FBE3FCE1A7FF64BC62FEF270A9E909F544CAA4C364F994D9D9A769F
            BEF174E5D38967E9CF16660A7F95FEB5F6B9CEF31F7E73FCAD7F366276E205FF
            C5A7DF4B5ECABF3CF46AD9AB9EB980B947AF535F2FCC17BD917F73F82DE36DDF
            BBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1A7D44F9FFE050398F3FCBAC4E8
            D3000000097048597300000B1200000B1201D2DD7EFC000061114944415478DA
            EC7D07805455D2F579A173989E04C310862839280A82226610132E1850045410
            152328EAAA2846141411318239E71C594489029273CE4C0E9DBB5FFAABEEEB61
            D9FDF7DB685AB60B9F33D3DDF3DEEB9E7BEE3955B7AAAE645916FE0FEB46C760
            3AFAD3D18C8E42642D6B59AB37838E95746CA2E33D3A3EC93CF61726FD0D8079
            E8B89F8EB1BFF53BC85AD6FE8B6C091DC36003EEA0FD35C0FAD2F12C1D6D7FEB
            BBCD5AD6FE0B2D41C79D743C56FFC0A100EB45C75C3A9CBFF55D662D6BFFE576
            161D9FF337F50093E82843D6CFCA5AD67E2E2BA163773DC0CEA4E3B3DFFA8EB2
            F6739A4987FC5BDFC4FFB2FD898E531960CC5E9574E4FDD67794B5BF34D3B2A5
            05FF854C0118FA9EFE9948D3E3FC9D4CFF1C50E827839E363403926CC1A9C890
            A4143DAFD257D76FFD36FE97AD0503AC097DB3E7B7BE93FF39B392102CC302C2
            E2AF2A6CF75716FFE932434A87863092A8460C5588D3A199B530CD2414521E6E
            47014268061F1A129442F4980B962E09C041A2734A069DCB415F95DFFADDFEAF
            DAB50CB0AC3CFCD54DA3236E038B894988080282E9A6AF8AC0992E5E67096095
            477760FBFE0DD859BE11B1D801389CC452B28CDC4033342FEC8C92061D91E76A
            4667F0DAE7E343D233D721042BBCF222FDD66FFA7FD17E60808DA66F9EF9ADEF
            E47FC92C532339A74355D50C83F141B425C9F4C5245844A028261228C3CA7DDF
            63D39E45081B3B11D5CA5057538DBCBC208C740A92968B7CEF1168DDE818B469
            DC0345FEB6702187CEEF2038B13C241969D8E252511DBFF5DBFE5FB428036C0C
            7DF3E46F7D27FF2BC65832351316F94BAAD371C88310D2D0524D18562DEAD2A5
            D85CBE10ABB7CF41457C2DE45039145F14E90401C6D0E05224E8F110D2B579C8
            915BA143F3BEE8DAFA5434F4B78064F9209B4E415A1639721A814C71907494B3
            418F5FDBB200FB954D33084DBA25E27B8A2A0B7071209755A22591A493E34849
            9558BFE7472C59FB356A53DBA1E6D4C27091FF2545A0CA2A12F13A04BC5EFAE3
            E5205EE18556E74751B01D3AB638016D5A742790B5866AFAE9D40E717EDDB404
            869D0432292B157F55CB02EC57348B7C2E3DCD435D2136B1BD22D3A083C1E5B0
            482112B8CCBDD855F713D66E9B8F3D652B10330F40F6D512B3C590D66DCFCCEF
            57C5F792A9C26915C04A04A0475CF0A92568DFB237BAB7EE8780A7395D254440
            56A01BF6759C4EE1E165ED57B42CC07E45330C1DF41F814B15004BA5F831FA99
            884676928C9393A888AEC70F2B3FC481DA8D70F822C4607B904439027912BC3E
            27E2F18408D447627128968A5C7F1301B248B98E78AD078D0B3AA153EB3E6855
            D21321475302944384F0199BEC8629922982FB59FB752C0BB05FCB88BD4C3D25
            E84A76B8C51A578C0146ECA5BAC81F93EB10C3366C289D8B45CB3F43DAAA405E
            5E8840A8211AD1087CB904962062F13064570A92AA116012044E6232498769A6
            214B0E38E522A87A23F43AF25CB4C93D012E34A24B3B05B0D9E373281C4B2129
            2A65831EBF866501F66B9949ECA5A54826CA509D1E01B0449A98CB05B138AC20
            828D1573317FD507489ABB1049ED832C4B240783041C17125115A98443B09DCB
            6F20AD4590D2AAC96F4BC2E190E174112FC94E58A910B4480847B6EB8FCE2D4E
            43BEBB2D54CB059D30C52B6D0E11AC4CD285592C6641F64B5B1660BF829926CB
            321276295E5C2606737B45E15092FE27F1A8277085CD2D58B6EB43ACDDF40DFC
            4107EA2295D0AC241A17764593FC23E1573AC02B3523200107A2DB70A07A03CA
            ABD7912F4640F45412566A904E116A0D2F54291785FEA3D0BED96968DBB02F42
            4A09DD0301CCB04196597CA31F186DD9A0C72F695980FDC2C6B99E7C30C0904C
            D8E1428F0F3A8DEDB8581026FF482AC3E6BA3958B9FD7D94552DA63F8A8CA2E2
            06681E6A8C06DE1E08F98E428EB307C9BD7CB1001DD62A118E6FC1DEF8226CDB
            F73DCAEA16C37496C3A57889ED3CC4560EA46A9AA04BC9D9E8D5FE423470B515
            C10D0698C056E6ABA55A909C5980FD929605D82F6C9669A743F13AB2A969F481
            4B509C2A012545122F49924F415A2AC7920D5F117B7D0FC91D454E300F1DBB76
            453B5F0778D004092B874E50407E5800C9B40EA764C2ED88238C1DD858350F2B
            367C8AD2BA5508E6F949FE2988C634A4C22134F07746EF4E03D1A5A8AFC094D7
            72D3FD702A952A960A04AF3A49766659EC17B32CC07E49E3052EC3AEB74B933F
            95A281ECA0B1EC461AA6514DCF554326068944F663C9A245D8535A89966D8F44
            C70EBDE00D3402BF92B332D2293BA4EF75D91950469CFC30B7781A099462D9F6
            CFB078CD8748118B59EE141495AE436C5655ADE1884647A15F97F3E072E42380
            0282149D84C38A1AE73C8660397CC47AF5D2316B3FB76501F64B9A9149E6254B
            1244D2C45E1C64F0289C231801E7235A56023FAD988B6DDB36A141716374ECDC
            030D822DE9F524F3E8D75304048FEA876239914A5A70D039FC0C2E3EAF432716
            DB85EDD50BB176E79FB0B362152C579AC0E784A93BA0A7BDF03B8BD1B5592FF4
            2E39957EC50987E9C7FE7DBBE93E5CC82B6809C9E517AA91C31DD9E0FDCF6F59
            80FD52C6BE9779483B06A209D394EC80879CA0C14C9053528827ABF0E5379FC2
            24D977ECB127A069416B68925314A4689A0AB7E2835B5661691C88245F8EB331
            32EB5A922B094BA940CADA87ADE1C598B3FA7DD4C4774322A6545427C94F0269
            5442D350270CEA359CAEA8225C06ECDEBA0FCD1A1D81762D8EA6933A6D092B65
            93EE7F09CB02EC17324EB23DD42402585AB701E6742405C0C00BCB153BB17AFD
            72346DDC14AD5AB6439C80E952F29064154700F33B83624199A31B1CF4ABCF74
            E2447C5D8D91ECDC4FF8284769621D7ED8F2210E546FA5F33B45D430A51B4845
            64E4B99AE3A8D627403202D8B9BE0AB9BE421C7BE409282AE8602FC4D5A76AC9
            621EC8DACF685980FD02561F393CD46459869EE2CC76030E974E7849D277492C
            5BB544E8B3162D5A21C7930B9DC0E49772ED403A8D7A994069257831598683A4
            1FA77F180E138A8BBDA63461A38E3017A57F7BB022FC1D7E5AF727C49265F45A
            5D0451E8C5F0AA8550F542B8F44628DBA9E39413CEC331AD4F864BCEA7F3C106
            6D06601C6ECCC63C7E3ECB02EC173066A97AB3328355610F8743795C04493E18
            894344D3B558B27C199A356F8526454D08672E7A9D17B5F130F6EDD9878E2DDB
            B3D704239986ACA80452452C589BF4FB69F2DDF696EE444D640F126619E25219
            A2CE03D8BCEF47026719546F129A4E9E9CEA2220E5215EED811C2F449EAF03FA
            1D7F111AF989BD525EB84CD74180A19E211564CBC77E26CB02EC6736662EF310
            F6AA0798FD859E2380E9C43CBAA5A35AABC281CA32B4247F2844AC5569D660DB
            D65D58BB720DE275310CBFE0121404432437397AA88B30BFECE532140DD1580D
            366D598F9DA55BB0AF6EABC85974879248394AE109C491964AA19B71A88A8B3C
            2F3FAC640EA444317A773F0F1D1B9E46F71582927220470ED80113E9CF87F0C7
            D42CC27E0ECB02EC673451D645CE517D0D25071BEACB438CCCEAAE46FF085E22
            A2B7C72010C804B85A0B95B561ACDBB6198BBF998F035BF6E0B2214331F88C01
            C80BF8B8DE04663241404B41F1919E54E93C241563C918EA2271ECABDA871D65
            AB5013DF02D357095D294752DE44AF8BD2D539A2483253F3117BF5C0893D2F42
            9172223433088F6121C80C8643E42CEB433A2C91B3988D2BFEA79605D8CF68CC
            5C0C2FE17FD120350C039AA10BA0A58CA4805A8AE0152366D17505CB77AD422C
            95C0BC458BB060C152541EA8819A92D0BE591B7CF5EE07DC0040645CC869CD96
            961CE5A0F3704B012D9D86C3417E98E4A1F3D562FDEE1FB17EDB3C241DFB5015
            DD02D9B717B23309992392490389888C362503D0B3FD3908388EA653142160A8
            E4971D1A8CB14455B5001857432BE4034A5990FD279605D8CF641C92E748612C
            95B44BF4C967DAB27D0B7E5AB15C84CBEBF408CA9355D85EBA1BDBF791DF6468
            D8BC7F5746423A48FEC93062069AE714E3D2732FC475970E23FF88ABB92CB855
            8E3E2660D0E1549DF6FA9AA85676C1925DA2CD40CA8AA12ABE1BEB77CEC6BAAD
            F361383693AF1621509217E772424FCBF039BAE1DC63AFA4FBE94ABFEC439033
            422C0D0AD195A56BB0D2341938DD9C2D098D18D390E9DAFEC06FFDD1FE575B16
            603F93718F0DDD3468D69745FF0B9D2461557515D6AF5F8F3973E762EEB2F9D8
            5BB71FF0A990DC4E44D349D486ABE129C883A4B8899188F1221A8E6CD909775D
            3F1EC777EC0C5593E0E61E380A87FD13E02E1D2A67078B4C786E98E325802A62
            0D8DC5670AE4D32596617FF55A929B9FD2CFD5A0DBA2EBD4A251C312F4EA3A1C
            6B9657A27B971168112C2150A5E124D9E9767AEDB8BF96C93E96ECA670CCC706
            B1265F33EB91FD7B9605D8CF61C2E9B26058A608C78769F6AF8B4751909B8F68
            3C8E0DE45B2DD8B40C1F7CF739566FDF0087DF8D1437BE21D9E708066085E320
            7282627A7056CF53F0CC1DF7C3EB72434F18F010BA64F6D3581A2A3A718B0497
            950199C5755E921D54E1C45D394DA03A00DDAAC48603DF60E9DA1F1089C6E172
            AB50552F069C76354ACB2C6C5CA5A16BDB63D1A9793131698C4E25C303150E3A
            8F9236EC15672E1C231FCD24996B399DD97CC57FD3B200FB198CE5A1A91B9055
            45C8C4DA641C3102594128FF60F8A08618EDE1F7A763C6CBCF925C2334B98815
            F202B6BF5653072415E405491E9E3E188F8CBA5E64DA1B491D7E7E9DAC433353
            994C0B138EA409D5E121A271880006138FC98BC40E8BC05843200CA3DA5C8315
            DB17924CDD860481DDE30DE294532E43B1D2052FBCF33DD29A03FD4FE98D5645
            8D104792FC3D625E626067DA9E2448E3DA0B630649576E3590F5C5FE2DCB02EC
            3FB54C40434F732F00492446E81CEAA0416A12DBB07873123B2CD9BD094F7C34
            0B9FFCE93318E9B8A87C94F209605A5AF4E6D56AD2E8D0F808DC34F46A5C7AC2
            9948A60C2225091CC790653BBC6F9014948825A5A406A7D345C073890A69EEB9
            A1F36DA81C11A9255087E9B5A5482382151B5762D1B205282C2CC699FDAE4008
            CDB1714B35DEFBEC5BF81AB870DEF90311720688C1089C2417FD26B11D2F8499
            991200CE0A110D4C65C19E59FBD72C0BB0FFD438842E41C82CDD349134D242BE
            59C400512D01BFC3878A6825C64DBD1F1F2F9C03F8D9A9E23CC514BD8E40994A
            C09B5380F8BE5A9CD6B537A6DC721F3AE6B580C44C42E8D2C84F52580E122013
            04198541C76DD844D71C87DD310799403BCB54292D7C35458A0A59B7BF662FE6
            2F9F8F482C890BCEB982B84A4121FD7BFD93AFF0D6C28FD1FE9C1E18D8F32C94
            28414E2F46AEA5905424CA22F614D4E8B13BE558B22AB249B2F6AF591660FF89
            F12C4F833D4D2CE4F4B8913674C15CA2268BD8209A8823E80EE0F3395FE1A197
            9FC2BACA5D70E7FB487569D015F26D98C9C235241703405502979C7B31A68F9D
            0C3995420E01930983C3F10C30CB211138D282453C0432EE5065590EC13232FB
            4799B16F493AF895401DC24635C94A92AC915AAC58B70E3D7B9E4ABFE3438E5C
            845DBB4B31E9AD27B1B06A0DC68F198B539A1C458FABC8E146C0ECE371F72B4D
            13CCC591163303B02C87FD6B9605D87F62F56B481244808343F41C9267F9C695
            C7095DC3D255CB70FBDD7762B71E453AC78348B8825E4C3E578098C1ABDAD913
            3551A89114C6913C7C68E4FDC45E317AD025FC1FD17E8AA379DCF1579585E874
            713D19F94B06E951894026CB0E7BBDEA60360681DE8C1083D16B2C1D113A9F4E
            1381612A905D6EBA743EBC04A207BF7905F77C310B03FA9C82F37B9C8C131A77
            4563C565073AB8E45A5489D27B74F17DA830944CDFFBACFDD39605D8BF6BCC5E
            F5E52834F093490297D381782A4DC04A21180809B978EBEDB761C98A9FB0235D
            8798D7018BDBC42B719290E47B11E09AB46C86AAEDBB11DFB60F375E7005265F
            3949E41B8A82489275F07808240674F6833C6E01302E6661D05916B38AB37EFB
            954C93515ED8E645694D002C6D26C57D381D5EFA1EC26FD309B8B98A171FED5A
            8E9BDF7F1C35BB4A31E4D8D370CBE0CB51E2C82556AD83450093BC01DBC7540C
            11F4482B9C17929589FF8A6501F6EF9A66FD39C388FB1D12D3C83400EB8C18F9
            410A6AB514DE98FD2E9E7D6126C2968678D001235A2DE49EECCF819318EBCA8B
            87E1BC5EFDF0CC8CE958F0A7B9B86EF4751877F91821F044BEB06E0F6CC0EEE9
            C1C9BE324BC3641CAACB45F24FA14B1BE279AEFF62B388D9EA08206EA70A97D3
            4924C4EB59764686468C2A4BAA90B10E62BD39356B71F7A29958F7E32AE4B973
            C8471B84F38EE88FA608909B98464071C3613A6CA62636E36F2547B637F0BF62
            5980FD1B66657606427D9611338E086D5B481033A568302FD9B516B74FBD0F1B
            776C419C7739C927C9A7C55937C21B6A8CD33A1C8BDB475C879E792DF0EA1B6F
            E0B5D7DFC059E70EC475578E14B5CE7AE6D4F549EE5C71CC052A0A5F339D12D9
            F51A31130348559D22833FCE3E5F2088143DCF1148111CA9671C7ADE24261421
            78D1135FC2C2E4464C5CF51296CC5924DA6C376DD61C579F3D0A7D835D5040AF
            E04E8CCE34FB63C84414717087A5ACFD739605D8BF6122BB3D23C984F1382626
            3168F44BAA8AED8932BCF8C55B78FAE59760F85544A36198B20197DF0B29A1A1
            55D323F0D02D13714CE34E08116CF6EDDD8DB7DE7E070D1B1661E4D04BC11E58
            A6E19418CBB265034BB62CF198CE99EE1CB14C26E024A0B91C24FBF43462B118
            42216E569A264653455AA121E230A6907A0E02972AD7177E4958A5ECC63D2B5F
            C097EF7E8AC2FC46A40CE3B89858ECE2CE67A3B3B318418BF320F904CA418099
            AA3D9764ED9FB32CC0FE4513BB4E9A1980D51BFF40A32E4EFE8E5375E3DBF58B
            70EBD48958B3752394A6F93013092065C14FB2ACC013C05927F6C3C4D113B84B
            8760253FD1C2F235AB914869E87574775103C9265AADF120E76B6976031D5E50
            AEF2C8229189C9C44D0070F26BEA831CF4A5A6A61672C007C5E5103B8469F6C3
            F041844E20C7EDB5BBF59E7D7860C38BF8ECCD8FE0F785B0BFB41ADD5AB4C74D
            E78EC4B9257DE027B9A9E81CC1510F024C57EDAAE72CC6FE39CB02EC9FB07AA2
            AA8F69C87F053083A49A42FE0E0713E28A81599FBE8E3BA73C0025D78F849BD3
            98549121A1574770DC514763FCE87138BECDB1485A75F0492E782C27C9BBA490
            853EAFF7A0F2E4416C03CCB2F7D3CB00ACDA2D135E350425456460C89CC99134
            048BB9021EF18B118E32F22E61047C51E7095BDD716F44852BA4E99E962BDBF1
            C0FA17B1E89B79884579CB5917D4A84E327128469E30088D2C1FDC164B5BC94E
            1571DA00E3984AB627F03F6759801D627F5DE67FE8CF5666CE3ED4C197324FA7
            CDB448F055891516EFDE88875F9C868FE67E8950B362D4452B609134CC2D251E
            D9558B4B870EC3A3773C089D3761307492786EC4E249A88A0247867144A49DF3
            1AC59A9491D1791008B7883EE21E27528626D2B22491980B113EAF8FF031F3D5
            C6A2BC051FFC1EAF68C12D1A8D9AA6784FBC48CD8FCDAE59865B963E81BD1B76
            A0B62642F2B22152E5119CDCE6185CDD7F084E68D48DC0EFC804745441649A62
            DF8AEFB7FE63FD97D8FF1CC0FE1E88FEEEEFFD1D8071A081EBBE5C04B2595FBC
            8F07664E4185419E94DF8D68A29A667E15F95534D86B0C8C1A310A775C7B0B6A
            9234A0DD1C76772095D6448988EC540EB2CD5F004CFF4B80D57A399D49B65D3F
            D310459D818C63B47EEB362C5EBC1847F73806AD5AB412CB684E9157C88BD604
            68879D2FC9F6D1F63918FECD5DB0EA78C74D0B5E5F1E5CA4661BA63D1875F2F9
            B8EA848B3359F67F09302653969A5916FBC7765803EC6F359FF9574C0CC37A10
            65D284ACBF7E9E8D9EAA4DC690EBF661E2CBD3F1C0B38FC2539C27A287864317
            51C6FCA81BB929172EBB7818C65D7E3DAA1335C8F78484FC93332BC49238BF7D
            0553B2E3889CCB6866DA105899DDFA4C3A9F535648AEB9B980858B52B0C3DC8B
            154B9763C3CAD5081832AE3A77083A346E2176989078C708FA5D835EA73B1C30
            24153BF46A4C5BF23A662E789A804AB2D2E9116DB7839C95B83B8CE17DCEC1C4
            73C7726F5392954C7F0AD2DCB8C7DE335080DBF35BFF81FF0BECB006D8A1CD67
            FE1DB3992473AEBF01B083AFE3C002A73D11334C9AF504A6BEF20CA41C077417
            0DC3100F51033915167CD526460D1F817B461383192978B95F064B36D306CFA1
            2B4CA6AC8B34434340CCCAEC302B930C54EC063A74F086470B776DC6E2BD9BB1
            A2620BB6AEDF4C0CA463E4C0C118D2F964E471DD7F8244A78B059D29CA5DE00C
            A00A49BCBAF45B3CBEEC35ECD2D688AA6891D7485FD538DD4F691C97F63E1B77
            0EBA1645F08B3216EE979F246072CC43CA7C0E7E647BE3FC23CB02ECEFD83F02
            D8C1E087C4E58E162A527598FCF4343CF7EECBD07D0487DC004C0EF1396438F6
            45E0880283075F883B46DD84868142B178AC92045435C3868D90799976030AE7
            E4733DB32224598CFE5F8330EAC255B0A261549695636DDD7E2CDCBB09AB4A77
            A1225A434C63A167F79EB86DE035E88C86E42725E0E2D66F041C1369949935D8
            170BE32702E49B73BFC682FD3F422F4A03EE80D8EA4572E5C0AA8E432D4DE2E2
            E3CEC2AD83AE4413E488B42A4E92E24CC87A80F1C13231DB72FBEFDB610BB0FF
            541EB231B8A4BF9688120E36B5A9EF1895B674C2908A1A2D8609D31EC2736FBF
            044783202C2FB1989C160BBB4A5413E9476D5AB5C345E79D8F4BFB0EA4A14B3E
            9899849748C62D3B6DDF8813860960712989BD04A6B2701861F283CAA418B6C5
            F762FFCE9DA8D94B6CB57113F6D3B9C3C49466AE4B841BD967EB71FC4938A7F0
            043491DD28A0F71F3238CA68206624B03ABE0F8B77ACC58F3B366367A48AEE8B
            1CAE1C7A036EBF9D96450043846E664F0C17F63E0B770C1C8D22D15AC0C1F148
            01F47A1F9125A2CBCCAE89FD233B6C01F69FB217DB3F0B3091F54E4CC4E5FBF7
            CF7A14D35F7D4EB40688D3A046A33C512716700511DF552AB6B53CB9FF005C7F
            E915E8D6B01D02BC504C3E8EC3940583892C795D4365328CEF972FC6D7CBE761
            EDFEED38900823ED90100A05A168B5F0BADDA8F528D81BAB40C249EFB5300449
            D3A12AE4EB990A9A2A7EE4D3E53989D8486A486A69541207D5CA1A220E4BE445
            1A05240B7935399102A2043089009F90E1893B318C18ECA6538613830505B418
            601CE13C14600EDE73AC9ECEB2F637EDB004D8CFC15E6CFFAC0FC651447E35FF
            7FC67B2FE22902588D1E438A465F9AC670BA7C3F2C0206822CC534F89C7E9C72
            6C1F0C1F7421BA1777849BCEEDE77D4F0C09A6AEC3E97289BEBF699266AB6AB7
            61C6872FE3DB85F320877C301A7A51ABEC2107C86B5F331225D7898091970F33
            1623B0242071585F566C9F2E53102A2608D36E6A2FDE83836F2C2D5ECF09C5A0
            7B6237CD99527184AF0817F7EA8F21470D4031BC228B843F0B5E0E3324FB9DB2
            BC55329BFA891D2DB2F6372D0BB0BF63FF0CC0F83A098D7C1D97070E1AC8F3B7
            ADC6632F4EC7C77FFA8A58CC05C9EF44A8281FD16884C673CADEF13C6171E800
            471DD101C3CFBD107F38EE4C8432CB0096A9D3984FC0E1F3A10271545B295410
            0BCDDFBE14EFCDFF12EB6AF7C2284A0A2929EE906BC154C506523C616B36A7C7
            BE53DE21C23848C1F663FC3AAE4E2610F322B4D8A482816392D4ACAE2166F2E3
            B4AEBD7059CF81E89BDB592848872989CB0806FB6B80718ABE3BEB89FD5F7658
            02ECE79087F5F6D7003BF838FFAFFE392E27A101CF7D0A530490AF7FFA1E8FBD
            34036BB66C425D4D19822D4A108D459013F0C3130CA2FC4029F49A080A8B9BA2
            55710B1C51DC1C47B6E980DE47F640D7961D44F0A03E5DCACC1CA5C4685F6FF9
            0E2FCFFE044BCC8D04A62854978F882C00339A40A2B6161E928D4E02665D8237
            1073881442536426DBED7A65EE1B92D205A8DCBCA53A31A49AB2104FA621395D
            702A4E74A0FBB8A4CF7938BDE951C8E7CC0E2D13DDB4449BFB4C98DE16C99C1B
            E9D24C91A992DD35E26F5B1660FFC0FE1EC0EA9FE366347534FBBB7C6EB889C9
            AA89D1E6AE5980CF177C8BEF972DC0B6CD5B45EF35AE7A16BFA8929FE3F0D07D
            CA88D7C4E0A213B46DD2029D4BDAA238A70041BF1FA1FC107C6E2F527411C3E3
            842BE885A3C0877D52028F6D7A0FE55BB788107CAE2F0F4A5247B4AA06819C1C
            38DC2EECAF2EB77BBD31B30867C961331BB18D14235998D6E0259CE5242538B9
            5915315E71CBE6E8DAFD68F4684A47514714AB2EF2F5D270A714C8AACD500260
            0AECE6AA1980B9752353499065B1BF655980FD03FBA700460C168B91ACF3BA60
            CA26C92899BECA585BB9156BB66FC29C857310AEAE406D7905F697735B6B4B48
            C59A6814E9485234130D798270A5892DA26914E4E4A16DCBD62820BF2A901F44
            5E7143141435409366CD91D7A2193EA95E84394B7EC0A6A5CB611183F80820EC
            7105F382A29B70349940921855A7FB324C83EE5D123D435C922AC0EC71B9E127
            B66BEA0CA1A5B71039058568D8AC041D5A77451314D9398BDC892A651211FA32
            652FF65662BAD849C9EE60CCB5699ECC672D29CEFFE8733E54D24B87518BB8C3
            1F60F5ABA287FC586F7F9D95F1F7BC360B7F1B600264DCBBC2E5103FC4531170
            DAAEE2E6B52707FD968A4AD4A16CC73AD4ECDD8D5D95E5D8B8771FF6D78511E3
            E637962C22744E02494076A2C81540CB86CD10E2EF1B3444F3268DD1A48806BD
            C32DAE5BA7C510719858B96F1D5EFFF84DAC59BB06C150081DDA77449B923648
            11B814F2C98CB421BE4F2753F4BD2EB24D1497131E9F0739B9B9F0848268172A
            C2D1F94DE126A045C57B72D2614021E078C3F495180EF4FAFA6A694EDDD0B81F
            8E0018EFF06CC07F1018CEFF13187F2B3D4D8294919AFFFF272F1F46B1FFC31B
            607F85A0FA7C89FA98DF9F139470B09F7CE6A587A448D57F2BFD45A645FD6B24
            11349004D0743D259ACC682A374E4B2025AEC74DD01CC813578C89C1A920C410
            A4D7E86201D799B9271659BECCB933618A838BBAECDBA5CCB4086854090F4DC1
            A7CBBEC0079F7D2092772F3CF7229CD3E5ECCCD612BAB86A7DBF292553C7A267
            369FB0DF0F2748690858BA5888AE15FDA65CB04C7A4C72D3E32E118C11CD6F38
            4AC8A504F490EEB4FD435E5C6730BA2D1B2632F9735C3273104C7F23A72C93EC
            05F9D0A7196C9274E88B04DB1E2E7658024CAC88B2AA49650E07CDB85E936669
            1D71911961C269D140A2EFDD92033AC92A76F43972C7A9B31E6E6941F2881DFA
            985B12410C876E0979A5D21F5FCA802E4D8343D739B8E1B05D2B7ED0E00EBF96
            BD8702CDC469C95E3B7213E815CBDE0C3DC65BBCC20651FDEF304BA46592772A
            32E950925DC59C298D49D3F9A232F386CEA107315479CFE7E7DF7D090B172EC4
            9903CEC690D3CFB50B3209E83EBA572EC6E4FBE3EEBC1CFAE7FB48A692703BE8
            0ADCB791EE5313D9F8A6B80FCED7101158F2AB04CBD06B843CE4960187EC37CD
            19C416812E4552372C890C47E4889DCD6097B598AAA8F8E63C6531C8B8B70F01
            3361A4C424E1A1CF2B6925E9F374098675AB6E514767A5E84E886D95C0E19346
            7C5802CC4A4344F5948421241A3C34701C06D2E4ACD789AE81690479063758F8
            D1E012FE43262589666A1F81CBA9B11C9205C0D44C71A36CC7B345D987485357
            EC345DCD3004FBB924D9169299699A27FDA865087FC54FA38C077182805DADE8
            423CE6580EB8ACCC0B6960A5692CC75CAA18E876F7283A7F8258919E4BB865F1
            9C1BF5CFDBCAEDA71D9BF0DDC2EF9013CAC5E033CF8383EE25A878E8BC96E88B
            984EA7C5E1F17809601612241BFD245F1545413C9D42D448C3EB7113D81D38B8
            4573A61538AF9B599A61F74394D54368C7146B7F2902592CC3BE3EBE5F62438B
            43FAE2DDE1604B058E83C409D8324962A7DB2176F78CA56208901CE6AA0093FE
            0E5682C3FE3481711F4667D607FB5D1B8F7F661185370DE7AEBB34F347D4B410
            455C8E1FA7A3116C4916155B833B848F95A4B998D36903F47B6E4EC055653121
            1F9AD1818C2462D0701319836BBAB88F3C7D2FD1EF38151AA80E7B305A34D80D
            D1FD8C60AEF1F392C8C68829B66CE3C565EE3D6A77A8B223742987DDF3D0D4D2
            F0A904315E78A241CEB23345034FB514688938DC6EB7584CE67D98976F5983F2
            CA4AF4EB730A4D02046862050627B78F136DBDE93EB82094B72412DF13B8F81A
            BA668A6D6A55D1B08724643A49AC48D2CF4900A1F76137CE324446244F2E0ECB
            6E5F60FB64866855C7D74F9BC4F03401A8BC51040355CA043C3200E3A4657E4D
            5C4A8B8DFD7260FB937AE6F0663EDA485A838BAEFD9F854B7E5F7658024CFCE1
            581671049906F2F235CBF1C6DCCF91F6395061A644B1633ED185930698C45BF4
            383D22D8E0097871D6803FA04B8326341BF399EC0129988B394384A3FF7C1D8D
            E5170D1C170D648EDE31B371A6BB98F179FD8991CE8BC0CC76A9B40092410328
            C9FB6E71FD30FD8EC4F7C02390238FC4083A0D529D582E118920E425119BB4F3
            E8751AC01AE945E62F939BDA3020143B40B2BFAE0C35E130DA366D2364A59688
            C229F3860F0E9B75F83E2D7BBF2F0697B81FA1710D3B3D4391C4FB32C9FF4AD3
            E7A1D33DEB2465532C2AE99E3D320D7A8B5B1348F667519F2BC68D74B8A316BF
            5702BFAC4AC2DF648968A6F9393B60C1EE9CA5D878DB99D88FB9DF7D8FEDBB76
            109853E21E9D1A7D263509B46DD316E79C730E1A7A0E9F72CEC3126049CB14E1
            6917FB52F4EF8DCFDFC6A8076E43DCC56C401CE6A5193492227690E1F3F98573
            9E4AA491DFA010D3A6CFC019AD8F819719CC30857C112D62B8F49ECEAB99BA1D
            A2E60A64A75348B5240F78622D95FC1E5135ACDBBBA0C85266477196908A9D86
            9E267087C9D712010D72F21CF5113A02785A31097C161C2427797F2EBFCB0339
            1C170B6D9ACF2936EFE3E0855B758805649D994E9644B1678A37FA63FFD1E114
            1252AC04C00EBE30939AEC4331B099BD14BB8D002F3C2B299B96B8A928B71130
            F87CCCCE624F4E53A45DB989291DEC7FB21CA4CF858B3C3990C4C9C90C10BB1D
            AA5D5823C42BD336EFAA69D99B46E80EBBA46773F91EBCF5A7F7F0CE27EF61CB
            AE6D620EE2BF8FC6EFB12689F3CF1F8EC99326A3C4EBFFAD87D0CF668725C062
            99C27B873D9F62E6176FE1CA2977402908C1D0E2904301B8E206DC3CC3D20089
            C71348D444E1F2FBF0F4134FE19C36C7238F0616B38BF0D0D944D5729AC09416
            89BD2CB9DC1E8F1850D138FD2EA71E29AA18CC9CC6C4605369E6172399FC2883
            9B77BA65E167D5F1B645342C43229C814C3A93DD67234232CAAB7885DFA7307B
            72FF0CBA0793FCC154A6A32F3F2BD1F54DBA17B1E0CB5DA5E842B1645C34BA61
            9F5231EDC08500F9A1A17002054F4069BA07F6E79C4C2D240D933C17A8DCB240
            12BE1A8F7E061427F32A86696F279B6175F63979A2E189C9ED7489C7F9DE0CC9
            8E998A7A6B53391831E468BF935E3BE3ABD770D7948924830147D02326092DA1
            41A743221F6CE8D94330F1B67BD1E2302A82392C019614E1689D069003897414
            D35F9F853B673D0A7793864826EA005E0FD2C95B20FF863723D7345D6455B868
            F6BFEBB63B31F4B833D184637CBC7E24362B86D84552C8BD4C135D3D33D0D204
            3A9FD37B30042D5C7E3393A7C7BDDC33A5FEF1688D68DC89809FE4177B19BC7B
            0AF924718DEE8341423E92DB45039FD9854045728D33EFBDB28B641DF9880E05
            A6905974E504F7C2F7122EE2A43CD3C25774904FE6925DA27F3D332C072DD84F
            62C6E1FBB034CD662D92A811BE2E494886B7954AD1B5742498DD9CF56529BC40
            4DFEA86E12301402BC534860560522624A138791596C669E8BC5634849E4F7B9
            C97F957C7465022AC94F8D37B0A06BA79DBC60EDC6E4B79FC4C407EF82DA2817
            0E9F5BC8CB802F072D1A35179BB11F7B640F0C1932041D4406E4E1618725C0D2
            2C70C4FA8E825D75A578F48DE7F0DCBB2F406EDE0466B456ACEBA89A2A5A92F1
            00D1251EE06E02838951978EC48DA70C425B5F31A12849835913A94D318F2C56
            8A5234AC78352B1AAE45B8B286C82985268D1BDB39B45E27BC8E20318C0B0EB1
            46446CC3858CDC769A00929038C022234AE788A01691FD65D06A89FD58DA1103
            860A1BC1132C44829ECDA1B310FC45DF44F086E734987597DB2ED2148C64B3A0
            9289E2B13863F6490062ADCBC9839CEED3492C11923C021046E675BBCD5AF28D
            3CA8AEA9C0B67DDB909F9F0FA7DF0B27013C9FEEBF017C22F9D8C1E179FDCF21
            51831CD324CD1C613A17B729A83223A8AEAB456D5D18B924611BE60450E0CC43
            2EDDBDCB16AAE24EA3F4A9118CF1F01B5331E3F9A9C869D5147575554055153A
            F5E98B5B47DC81BECD7B706C9100ED42C961D4EDE3B004588239CC32C51F6B4B
            E52E3CFCF29378E5A35781235AD0080F9354235953C783CF21C2C2712D6587BA
            12095C70FE30DC3E7018BAE5D26BB5241DA6603CCEB55B5BB1135FCFFF0EDFFD
            30177B76EC229CD2ECEEF589BEF41E928B6D3B7744BFB306A077876305302C2B
            016F828635C939DE2BB9428FE0BBB5CBF0C582EFB175D346A42B6BE14ADBE178
            0E572709F8CE06B9E875ECB1B872C870E4C34F2C6CE29BCF3FC107B3BF4619F9
            8F1C360F38DDD8B57D07460C1D8AC1030723E80962C5965598F2E413A84CC5E9
            72F49E6271F8BD1EF439F2689C79F2E968DFBC9D00E2EA3D1BF1C267EF61E14F
            4B118D4645C4937DC9047D06BC217BAB064D706E9F5371419FD3D0B851530237
            F7C9D7ED5C438F826DA5BBF0D982B9F8FCC71FB071CF0EE103FA83413171B948
            96362D28C6D11DBAE394E34F428F8EC70809BCABAE0CCBB6ADC3AB9FBD85AF16
            CF8614201F9298DFE5F3A255F3B6E87BF4F1E850D49AAE5D82B625EDD052A43B
            1F1E765802CC10DDDD79DE75E1BBCD8BF1C06BCF62CEF2EF6D602976F6770ECD
            E012F93731F27B34972A80245912DAB7EB80E72FBF0DBD5B1E49832021B6ED49
            910FF4FEB26FF0E1DC6FB074F50A945594418F93AF4412D341CCA393FCE2855B
            6F51014274F4ED7D3C2E39E37CB40F3445C04C8905D5BD7A0D5EFCFA03BCF1C5
            07D85B7100512E72AC8BC1ABBA51E00F221D8DA32215050A0368D6A419DA3669
            8EEB478CC2498DBAE1D36F3EC24333A761DD81DDC8F1F945E0A0B4AC0C575F32
            02570F1F89230A5AE29B35F370D9F557A1CE6567A8707045AAADC5A5834660DA
            D5B7A3DC9DC49BEFBF8B156B5761C1DE2D3840EC85DA08F957128205F9A8E1FD
            CA6AAA217BFC2829688401EDBAE3B27EE7A1FB31C7092607DDE7978BBEC51B73
            3EC78F3B3761676D39B16F9D1D2915FB97D9811C97A6205F0EA27BBB2E1874E6
            409C77CA3904EA0D98F1EA73F862F11C62BFA8F0456537670EA71174E620A4FA
            C4F64D671FDB0F77DD3A01858751A0FEB004187B61B643E4C6473F7D85BB5F7D
            1AAB776FC86CC5A38845ADD6C52D843CDB456041D02742D61249CABCBC3CBC77
            FD8338B1432F62200D09F213E66F5C8DBB674EC59235CB4528DD51900739495E
            5E592D14A70AB7DB23D6DB227A1C463C0A7F4909AEB8F052DC70D6652882BDFF
            F1535FBD8E296FCEC28E3DDB81901F2A0185B72D92488619F1A4F073A41CAFC8
            33244AE4DC285C7AE110DC7FF1386CA0EBDFF3EC642CDBBA514410D90F0AC7A2
            38FFE4FE18336C248E6CD6159FACFC16236F188378C825DE27FB74666539AE19
            7E1D1EBDE256BCBEF0633C3EE3496CDBB313091F493E92743237D8A0F7214A5A
            829C73688800895E1D4561AD8ED1A79D8B89F7DC2F7CB328B1ED1D3326E185D9
            1F23CACD541BE6D9C199248B52DED693A3B32E62D71C2815E40956C7D0A3CB51
            E4D3DE45D2388D87A63D82052B17C1D99826132D01C9437E25F98F2AD7D48475
            E8BBAB71E180419836F5093444E0B71E403F9B1D9600B3383F8A235F8A07AFFD
            F0910870ECAADD6F4B350E9793E439FDD8BE88975763C19A15B0F20376F72572
            E43D39B9F878EC2338ADDB09E24C5BEAF6E2F1375EC0AC4FDF458A0686924BFE
            85D70D2B9A42B13717DD8EEA86552B56211E8DA1325E23D6913875A14B874E98
            7CDF24F4F037412C1CC11577DE88AF97CD83D2A800A66A895D2A5D2E3F4EEAD3
            077BB7ECC0EEAD3B90260916E56637E5953400FD68E0F0E0C5479F430E0178F2
            CCE9F87AC90268E9149C244779D3BF3E1D8EC4F8CBAF47CF763DF1E6A2F771D3
            6DE3A137F0DB1997DC05982692DB2FBB1EC34F3D17773C701716FCB818B53401
            A4F25DB0E85A0DFD0538BA512BB188FDCDD27900F9501C3C31AB6A201FA8C309
            6DBAE1C631D7E2B89EC763EDAA15B8FB85E9984312972729C9E722D65651E8CB
            45F7A3BB9374DC8EAD1BD7C26338E123064BECAF4650F162F4E8D1E87C344D00
            DF7E81CF16CE26DF2D8274BCCECE6FE4FA35FA53F9532A8A951C0C25808D1C75
            A590C6878B1D960013B952BCFDA9D383273E7B157F7C7A12620E6205B7D7CE9A
            88C471C3B051A8DD7D00AF7CF531ACC62131932349BFE770E383B153705E9FFE
            7C22CCDDBF06E31E9988E5BB37DA65FA16F923F10831891F834F3E07A32FBB12
            8F3CFA1056AF5C857D5A0406B19055538B1C9707D75F3B16638E3F1BCB7EFC11
            373F763F3696EF80B34903A4D3319102954332F0C5279EC7EEEDDB3083FCA7CD
            3B36030504F6BA08DDBB1BD8B90F939F7806A7F53C114FBF3113CFBFF1322C92
            5662EF0655468B4003DC77E5ED38B1FB2978FEDB9998F8C07D40B35C7B919BCE
            EF6ED80013468D45EFC296B874F4082269532C36D7E4A9A488E3E8D1A20BEE1F
            7C155C85B938E9C6A13099DDDD4E11B677A72534F336C4F1C7F4C4F8ABC661F6
            BC6F30F5E3D7B0EDC01E3B2F311E237C78D1AF7D4FDC7CCD4DF8E2C01A3CFFFC
            E3A85CBB0DA1DC12E46A2AA4888E33CE3803832EBC0061F20D9FFAF0057C33EF
            4B2111ED644C37547ACD1121F2FB8E3E1917D1E7D9BE434738B261FADFB7F1FE
            C7122FF8AA1EDCFFF60C4C98F130D0802490CBCBD9AE24CDC27878C2FDA8DEB5
            1F935F7A1666718E9DFEC125F724D9668DB91F979F7EBEE8C8FBC38ED538FFA6
            CB5191AE819517B2B72AA201180AE4E3B2532FC0B5978CC113AF3D8E8F3FFC10
            3BB530D43C72F853E493118B9DDEB30FDE1CF730DE7CE7753CF3C99B584900B3
            7C0E48F94178C9EF0A911C7B6DE28BD85DB91D8F4C9F84F52B7F825544002170
            B2AB68EC39803FDEFC475C396004667DF92AEEBB7F02DC2D9A922A8B8AC119A2
            3963CA75F7E2F4BE6760DAFB4FE0B1E9D36035CB13528FDF4BB38E9D086037A2
            21BD7CD02517A1B85953A4E9FE2B5C2992C7A51870CA40CCBCF55154C562E839
            EE22C24C982626FA7C7C04EEBA14F2120ACE3FFB0FB8E39ADBF1EA47AFD0355E
            4479B8DAEEE1A16BE23D0CEE7A3C265E77373EDDB7040FBF341DFB566D469115
            845515133D16079C79266EBC6E2C1A1534C46D6F3C84E79E9E02A969112C5EBF
            60C95E93C0711D8EC1ED2465CFEC7A12923439BAA5AC0FF6BB369182237122AA
            82DB5F7C0433485EA1290D3C99DBA7919F5415C62B8F3F8DF0FE0AFCF1C94710
            2E70F10291ED4F90FFF3D0856371CBD943490E86F0DD96651870CDC548916AB1
            FC3E7BF092153A4318D9F3345C35FA2ABCF6CAABF8F0DDF7B1BA6637D27E72DE
            9D2E11423FB2553BCC9BFA0A5E7BE925CCFCFC1DACA9D8831807C8723C08E484
            D0C09F8397EE7D1E7BAA76E199579EC1A2258B90765A90E93955B79026093B7E
            D4188C3DFF5ABCF2F53B187FE70DF0B56989583ACABB44C0511AC6F49B27A1DF
            696760F28B53F0FCAB2F436B16E21ED98205BB1E7702260C1F03657B392EBDE2
            32B468DD0A0902DE9E9089A49C42BF1EA7E1B92B6E4194DEFA71E32F436D92CE
            CBF28D6BDB6226429A0BE70D381B775E7D075EFEE8253C4D00AB8830C07CE21A
            5C957D768BA370F71D77E293F54BF0FCFB6FE0C0DAEDF0D55A70C60C34C96988
            934F3A09C3475D8EA2E26698F0C6644C9FF918D4C60D443A98A8A3AB8CE2D8AE
            BD31F1F2B138BDD371A825151072647DB0DFB5A5CCA45874DD4BAC73FB8CC978
            ED83D7809202211B95781A665D0CEF3EFD0239E21121DDF6B37C747AC5AC8C68
            1463FB5E8C3BCF1F89DCE625F872D37C5C30F62AC41B05844F83BAB058C06D10
            6C88317DCEC595C34762F2B42958BE6429E6976D814E009148662A96845E1DBB
            E2A3BBA7E2856766E2998FDE409994841E7422595729FC8F1E7D4EC4B3B73D89
            9F362FC513CF4FC3EA0DEB007A5EE415B186DA5B8E7137DC8CF117DC800FE67F
            86310FDC028540AE4969F1FBD85589A97F7C08279F7A2A26CF9882773FFD08A9
            C641FA0092A22DC0A90307E1B6412350B16835AE1B77137CC1002A2BAB102B54
            448541FF53FE8037AF9B80722389AED75C20929D05759A1AFCB20FF9A6076D4B
            5A62EAC4A9F876FED798F2D1CBD8CB129133EB09A8CEB481EE39CD3178E04074
            3B6300A2F4F9442395C889CB70C7496DB32AA7C9A649CBE6E4B3B9F1C83B33F0
            F8ACA99082E4C3720D0EE74586D338AA79074C187113CE3DE6540258980016FC
            AD87D0CF668725C062564A6C0BB4B87433263CF3180D8E6F8126F9F4449C0685
            054FCAC2DB8F3F0F2565602CEFE315DE4B8C10B453E6096017B43A01F70CBD16
            EDBB76C1B704B081E4BF2472EC3DB984FFA138D02AA7116EE87B2EAEBA62347E
            5CBC0095FB4BB1D2AC46D4278B56669CF9D0BE694B0CED721256CC9D87CF967D
            8F2AEE535F18441D0D68DE28A255B316E854D2169F7DFE2916CC9B874A3D862A
            852680A42ED6C5F47D65B863EC6D1877F17598B7E647DCF6D844ECAC2A43C26B
            E735CADBABF0C86DF7A0D709C761DA13D3F0ED0F7351D3C42F76C0444515FE30
            7214EE1E321AE6EADD78E7E30FE82DFAA1C593D8DFC443D7D1704C8B0E38BEB8
            0D3E9CFD15A6FEF081C8F660E9C9FD3CE45D55C82D4FE1AC33CEC4D4FB1FC3AA
            0DCB71FDF353B086831C01AF6841A790DF9A574D934D61215A75E88093FAF5C7
            99DD4F451BF8441037154E887E1E9247418C3EDBFBDF988E47674EA1DF75D925
            29DC903525A353716BDC3AE46A0C39B6BFD86E971B9D1E2E7658022C2CEABD9C
            F862E3524C9CF93896F0A028CE85541B16190679960B6F4C7A5AD468DDF4C43D
            98B77B0D0D9A90F0B940FEC8A9A14E78E0B29BD0A3574F7CB36E2E068DB902B1
            A00C99FB0F721163388AA67210B7F4BB10D78D190B231543B4AA0AA57E62274E
            242619C9FD30024E278E48BB90A6D79725C348799C30F2FDD891AAC4E2F90BB0
            73C32684ABAAB17DD316D4921C8CBA2CD47865D126CD4AA52185E3B8F98AAB70
            E3B031D8B0632B264C7F103F6E5987449E478048DD5289876EBE0347F5E88EA7
            A73F85F9CB97A1B4C46F3358453986DD740B1E3EF75AE446A228AFAA4041285F
            949C2C7485F1D5869FB077E92A84B7EEC5863D3BB0D99BB07B24323BA9327CE5
            0934A9B4D0A76F5F4C7B742AB46812973D7B1F3E9CF389DD6D343F0752CA44A0
            326D779C3274B469D7012776EE85733AF4C149BDFAFC79973E22AA1A4BC75D2F
            4CC18C171EA3C98ED484873FEBA82821EAD6AC03C65E3812437AF413DBE71E3E
            FC7598022C65F0E2AE13AFCFFB0C0FBEF33CD6EFDB26FC1E89FC92A0E441D3FC
            224CBFF361045C6EDCF1CC43F87AE53CFAABE6DA7D04C9F1EE940CE291AB6EC5
            19679C8DD9EBE6E3C231A35053E485EC764122E965904C2C363C18D377206EBF
            FD1E7084C420FFADDAED0409A7833130DEC1B288667189B3C369265F95DA85EF
            562EC596CADD58B5660DD62C5C8A240D7E6EBBCD7B8B2569564F055DA212D920
            5FD1416C7BD5A04B70FDD0AB501D09E3E19953F1C977B309A43E02751212F92F
            63465C89965DDAE3B5F7DEC5A6B5AB116589C989BE1561DC79CB44DCDE7F04DD
            919D25B936B2035BB66DC5F7BBD662F1A655D8BE742D525BF6C1F4BB916AD750
            94B9887E8B3439F80D171AA43D38AA6D07CC9CFC24BC70E3439A6C9EFBE41D2C
            26C68EC5C350C817F3E9AA48B1E2FCC5483C4EBE237064EBF638FBF4B3D1FBE8
            5EE840E029A06BC7C9B79A40F73FF5F5A780E6453683D164266912DAB6EB82BB
            2EB80A43BA9D8A94CE15CED94C8EDFB7F14CEC7062C6FB3331E9DBB7B0375A29
            B2E139345E68FAD1AA454B4C187F17FC5E2F1E7C7E2ABE5C341BF00745F85E75
            7B91B7AB060F5F331E236860FFB061192E18391C158DBCA21C0324B11C04CCD6
            5210433BF7C11FEFBE2753F7A5A2869EE75C437BB32088228EC2183111499E05
            E56BF1D8FCD7F101F949A8A981D4A021ACDAA4F0B71A372A8641F2AC2A5E0BCD
            93C97EE756D6710DA3070FC3F5175E09D9A1E2F9B75FC08C59CF43CAF38A0465
            2E2AED3F6000728E684E12743E62EBD7675A2438D180DEF21337DE830BFB9F83
            722D864D7BB763EA82F7F0A745F311DEB401A451E9BF004A526EB80A72B055E5
            4E540958BC5D26DF428217BC659CD1F918BC7DEFD3A2D78797D8661949C5599F
            BC85392B7F442D01249A888956714EBF4ABFAF41E38C103D217CC4A34E3E0D57
            0F1A83C1A112848C34EE7BE1694C78EB39A126C4969D5C984A9F79836E5D3079
            F0180C6B7F8A9DCAE63D7C38ECF004588A01E6C123AF4FC3C35FBD85EA549D28
            5FE6C8701E49B686B9F9B872D42852290ECC7AFF2D2CD9BAC25E77B2208A2F83
            DBAB71E7C86B71ED6537E24FAB7FC425632E47459E0A8B2524F75E22501C21E7
            E0B2EE27E3C61B6E14FBD3C52B2BB19726DE24C9424EBC4F4B29529C128E7436
            82B6BF1C173D76133EDAF223DC0DF2918A4745CB6B8F3F1F6D5BB5C609C7F5C1
            8A9F7EC2BC45C4A40D0276890C6FC6104DE1DA0B46088079FC01BCFCC96B78E0
            D1C93009605CB6A213C84E3DF914F85A34C1372B1623BE7D47A6F5AE84AEAE62
            3C78D56D18D0EB442CDDBD1A8FCE7802F32AB7A29A582A958CD37B91E0895A38
            AD6537F4FBC339183BF351A478FDD0C97B312B9092069C753AFAB4EE8CF7A63C
            2FCA6F74B1C9AC07BBAD2A7CBA78363EFDEA4B6CD8B80155559504F6249C3941
            4804DC743A29D2A7DC74CFA79ED91F934F1E8AB6B94DF1E0CC69B8E3D5272135
            CEB781CC2530B1048ABB74C1C3E78FC1D08E04B00489444F368AF83B374EDFF1
            E0A699F7E1F1AFDE8168FACC19524E177CF4F72BF4E5404FA711A7411E574D24
            729D763E1D0707480262670DC68FBE0E775D7917166F5E894123CE47A4900096
            C3651434806B6BD0D09983EBCE1C8A1B2EBB0E2B37FF840FDF790FAB92E5083B
            2D1889B4D812B65BCB23F0E8906BB162F1128C7B722296966E82A759B15DEA42
            72B5C0978BC71F9E2C06EF8C69D331EF470258B306A23C05D134315C0CB70DB9
            0263E8280A15E3BD799FE0BA5B6F46AC40B5CB66521A7A1C790C1C45F958B879
            2DE2A5D5F6FD11F0CE6EDC051346DF88A3BBF5C0BCE53FE0B2AB46617F810483
            ABA6B9AD80A9A16D7E33DCF9875138F1F47E38FE868BB0BBA63C13DD238CE90A
            42C460C7B66C8F571F7D127ED587CA440D4D540EFA2F882A238A75073662E9D2
            65F87AF6B7D8BE730B24079D9F3EC7344B540279B482FCBE562DF0ED8419E8D6
            AA3B1E7B66126E7E653A9CC5F9A2E3960018C9CA565D3BE3A1F3AFC5F95D4E16
            B211816C45F3EFDBCC9858D71AF9E81F31EB3B92645E8768CD24797D709353EE
            146D022DB1BB64D2AB22C6004BDA2DD144E6F8960A5C3EF07CDC75FBBDD8B3E3
            00CE1A760E22C55E582EDBBF41388C06AE10AE1B3014378FBC01CB37FD84FBEF
            B9173F86F740CF71438BA744C648EF4EDDF0F9C427F0DEAB6F61E69C77B0B46A
            1B011A423E3908808DBD79786BEA2BD85FB50F4F3DFF24E6AD588264800630B3
            29014CAFACC3ED978CC235432E43136280EFD62CC2A5D78E425DD01095C9DCEF
            B04D494B18213FD696EE22564CDA6D86490A0FEB72226E1E76253AB7EB8A6F17
            7C839163AE86DEBE10B5A918E2299E48E238BDC7C97874F478B80B421878E7B5
            D8B87B9B28DFA1138B4A83023988E35A77C4AB0F4F47654D15BEFCE62BECABA9
            842B3F04CDA9889ABBBC827C346951824F3FFB10DFCE998D3292BF9E40005E8F
            0735555522F8B178FADBE8D1B627263F793F6E7DF369381B6501F65F6D35561D
            2C9AA5873D741B3EA7C125927979E07803701C88C091B6B76775AB4EE87E27B1
            8E6EB397DF6FA719EDAB46BF3EA762E24D7722559DC2C0CB07A1B6911F162FC4
            F242B3DF87829C06B8E8989370D588D1D85DB60B63AFBF119BAAF600C426DC32
            8053AF7AB5EF8AAF1E785EA441BD3CF7036CD76AA073922BFDE32CFC768D5AE0
            C1DB26209D48E2E5175EC4578BBE47DAA70A805904309300C60C76D5C5C3D12C
            AF043F6E5A8511E3AFC256B93A13E2D65118CC87EE76A094178075BBFF21FB35
            37F7BF08375E3C12450D8AF1F617EF60DCDD77406FD700B5D13A7A1983288533
            8EEB8FA9978F452D49C32113C66257C53E985E975870779044CC73E4E0F8B65D
            30F3C1A958F2D3123CFBD20B58BF630BD21E957C4D036EAF07BD7AF7C6B82B6E
            C1B6F24D7870CA4358B5F847781B3684D76B77B1E266AB739F7C077D3B1F8789
            331EC23D6F3D0B67C33CD1F28EABA42D02584B02D8A48B08609D4FA26BC7EC85
            ECC3C40E4B8095A31695956518F5F8442C5CB910E0AD8318600E17640258A12F
            8008B110EFB1A510F8CA5235992D1B9D7614AD3A869E47F5C63DD78C8757F2E2
            822B87A03CA488EC7A9125E1E1EEB805B8F0E85370D3B09BB0B97A13C68F1F8F
            4DFBB602B93E51FAC2B2EFD49E7DF1D6B8C978F1D59998F1F14BD8A94520E7F8
            08CB71D15EE0C8233AE1A19BEEA19F13983AED31CC9EF79D489552B8F62AAE41
            AE8EE296F34788DAB092C212ACDAB9116327FD11DF55AE83456CEB4C9BF0CAC4
            985C106A89E8865D6E1D8EE3E14BAFC398C1C3E0727BF1FA276FE0967B27A0AE
            594054600B468F87D1BF773F3C77CDDD086B1A4EB9F1129425493F07BD026072
            38811C92D927753E1A331F988AB9F3BEC7B46767901C5E0FCD4D7E964B818F7C
            AEA3BA75C3C3373D4C987061FC94F1F8F2A38FE12D28109FA7C3E345DD9E9DF8
            EAD157D1AFC7A9B8EFB92998F0EA0CB8086029021837C431330C3669C8180CAE
            07983B0BB0DFB595228CD5EB56E0D659536940AC86140C889665FC57F75626D0
            AE794BF4E8720C9A376C8625BB57E383EFBF128CC0512D8EFC597531941495E0
            AE5163D1ABED511879F3682CADD80147612EE12B099D7C3097D38BF3FB0FC684
            5177E0B3659F61D6CC99D858BE1B06771725F6CACF2FC4C503FE80DBCF1B8177
            DF7C034F7DFB2EB6C5CA09C4B26806CADB07B56AD20AEF4D7A0D9B76ADC7A4A9
            0F62F99A9540C390A84BE35A35259AC28DE70DC595170E478B8266585FBE1353
            5F790A2FFFF4A9A80F5589B1144D12EDDE0C0E4E30C0B80AB92E8EA7C7DD8DCB
            4FBB4054757F30FF538C1E7F236A1B3AEDB53E4EEAAD2EC709DDFBE2891BEE83
            E472E3C43117A286199A6BE33831339C822BADE014F2E15E7AE029FC4432F8BE
            472761D5A68D5072FD3088055D0490965DBA60FADD4F209CACC3A4E90FE1BB39
            DF898C7C5D4F0B007165F967F73D87012459EF7EED31DC3B732A94C202186686
            C112719474EB8C07096017773C915CE038FD29BCFFE108F8FDD86109B07D88E2
            4F240D27BDF53C366CDF4433B6CF6E55A619288C5BE8D5FD683C30EE3E74CA6D
            86C7E7BD869BEEBB53C83E907C13E93B9128F92032EE2016B8F1DCCB70DFD30F
            61DA476FC0D7B80112C48429AE21332C743DAA07060D1C88B973E662E3FAF5A8
            A0C1A1199AD8D8AEDD111D317EF8289CD2FA48BCFFD65B983EEF13EC08EF8368
            EFCB0C45ECE9D61DB8EBDA3BB069F306CC9EF3354AEBAA617A649B8552C48244
            4AD79C7B2146FF61189AE537C196F05EBC37FB134CFAF849D1C50986CAED72ED
            055D4ED03555BB2AA02E8AD71E9C81F3BAF703874667AF5B80F3C70C47BAB127
            C3D26911AD6B55D41A838EED0F39E0C1E31FBD8E64A4C65E44E65CC414012066
            E0B84E4711C09E416DBC06D7DC330E4B562C859A9F23BA07231A436E9BD6B866
            C4D5D8B6671BE6FDF03DF6EFDA2B9A8FAA04649DE468A8354D22B74E45DFE28E
            18FBE6644C7F710690976FB722E0BF0901ACF1919D712F01ECF2767D5147DE59
            4EB6A2F9F76DA5E421BCF3C99B98FEE9EBD851BA5724DF9AB2DD88B48066E5B3
            4FEF8FAB2E1A89CE0D8FC093735E26FFE436A8450D444F7745CCAA29514F35EE
            822BF1C0F05BF0F9B2AF70FD94FB519A0C4323804824CF38CA2C451222B4CF7D
            11396CCEFD2A0C02988B66F07E279F867BAE1A8B764A2116FEF83DC6BE3415AB
            F76FB63320F81A1C4C3950231C7D55F688E6323AB19BC6A51C5CCBC695338495
            316713C0060D47A38262EC8CEFC39F96CCC72D2FDE6FF7C1E716D57143B4B116
            A534DCEB3B9922FF49C3C7935E449F4E478BF66BCBD6AFC285632F47752EE749
            AAF4FEA20290DEB4139EDD6184C91F935A174127D9C88D5641BE9544138C3BA2
            A37B9B0E98F5C85328423E6E7AF62EBCF6C9DBA28DB7233747B4A8D3693212B2
            993E03B797FCD47842B4BFF6E486108FD4A2D719A7E38921B7A275A810B7CC7A
            04CFBC350B32018C3F3F6EB168261268DAAD13EEBD780C8677208059244D25CF
            6F3D847E363B2C0156493CF3E0A3F7E33D927E3A0D3EEE6F58555D8DFCDC5CB8
            22690C3EF31C5C7EC93074286A87B7677F8011B78C418392A6A84A45914BAF49
            2692A83CB01FC3CF1C8C97EE9A8618CDDE4FBDFB1A5E7CFF6DECAFAB823BE013
            0112AE46E6C247E14B180622241F659AFD7BF5E88951175C8AFE9D4F801B69D4
            5555E1F287EFC247F3BF814CFE8723C78F34679558DC854945D0E9A3C19D12BB
            5946BC8A18A0DCD3D1A88EE0C641C33066E848143728C281542D7E58FB132E9F
            7E3B127535F093366496E346A196D745C46489C63D47346B89E76E99881E2DBB
            886E856BF66FC4A49933F0DE8AEFA09234D56A6B455D5981E443418D29AA9B93
            4541D4A513A8ABA916913FCE94CF371DE8DE9A00F6F873F0C18B6F36CDC7E3AF
            3C8B05CB978AEEBFBCF14592D8321408422656767387E37892C8318A602807C1
            26451877EB2D38A7590FF84912DE396B1A1E7BF559E41634103B7C722F9318B1
            7DF3764760C28831E4D39E443235825C77761DEC776D3B5181299327E3F52F3F
            466DC26EECC29912B2ACA091EAC395978EC0B0C117A379A8193E9EFF05868EBB
            4A642420E4B3A3883400B92AF9E20B2EC3CBB73D247C9675E57BF0ED928578FF
            EBCFB178D912D1D22DE80BD0204988A6311A0D94C226C538E98CD330B8FF7938
            A671177889ED5C7A92C0E8C3175B97E2DED79FC1921FE6D849C534182502481E
            F972778CBB158B7F5880775E7B01685268770116FE147013C9C36B878F44F346
            25A221E8CAD29D3876D871A2264DF19098D254C4B9468D2BA9B94B2F01BF639B
            B69871E39DE8DBAE87509B07E295F860C937786EEE4758B76E032C96B8C47801
            C98F63F35AE098137BE3FBDD1BB1E0A725361BB1D1FB0B90843DAE4B773C3D6D
            3A72E420E2A40096576CC2073F7C86AF66CF46E9AE3D42CEFADDE47311B09395
            556299A3B8790BF43CAE37FA9E75067AB639161DD41089BE34C63DFD30664C7D
            00C8E18DE15D7643565545F34E1D70CF15D76238C9556EB9E746767795DFB585
            E9CFB465FB16ECAD29175D02DD8A1B0A3145C28CC10C277024F94779811CF85D
            3E54476BB164DD0A9167E8A49F9334580DF2D5A224554A8279E853DC56EC91A5
            D300AE210975A0A20A9B766DC5EE7D7B912239C6BDDB551A2485050568DCAC29
            9A356E8606B9F934E33BA11258158D37A0905196AA4369248C753BB660E9FAE5
            A2D36EAF369DD1D01742D7F69D50138E60DBFEBD487A5C629F66B1E7496D18ED
            1BB546099DD32DBA06EB88BB25CCD9B0C45E8392E99E358B043131A96AD7821A
            9A89C2DC027468D81CB92E7BD94193881DF51836D59561C3960DA8AA2845B4A6
            0EC58E1CF46E77241AB56D8D0D557B70A0AA1C1EF257B9C3949BCEDB480D88CA
            EC56EDDB8B2501C9EB05C36F67783FD6936F5B71A04C7C9E551515E4FE91D425
            566BD1A8B160502E8DC96DDA54B4EC2E30E83E490A6E2CDF878DD5E59068E2C9
            633F8B3E8304372BF5B9D0A661099AB9F36125E390F2B22D037ED716A761E044
            A6AD35ECBC40769BC5D63EE0FD8925F299D2B6BC2369C35BE7B0C578A082770A
            91C50611BCE1515E98BEF17B44548CCBED1D8AFDDA7DB14AD4126072FD2111A1
            749144F3485EBAAA2C5A721AE4D7182435792713CE37E4B6DB8AEAA26B183850
            4B328CAEDDD0E341C89F6FAFC1395D997BB0EFF560D1BC9579133440B90A58CA
            F50B56E2FBF31FDCEEE46FEC46124E8B2D63ED3D9088297C3ED1EF388C14F414
            C9B8BA6A042527F2F28A459F921A9A7CDCB24F6CA9C49773D79F475C2C26823F
            BA4A92902614EE2ACC19971A7D862AB16D241211C59AFE40008D731B65EE5B43
            1D077CE8DC7EC3214A5BC4E798794BFF5F410A3F1835EC4A80826C98FE776D71
            3329DA3773D323DE8ECEE02C0E6200DE64C1C11B26705F759280A6CEECA3C0E5
            F42065B20F1585A6B06A71D3EF4870D263217A803BE7EA862666635DACDFA822
            1CCF0BA9BC55100F9AB4107096A8E3E22ED91A01887748F1FBFCA2DDB69B0665
            5A13CDAFE17005C0BB6A99B13802ECCB71938D948624A1AAD6A3D81B3770032C
            2E99D21C222F96072C0F56D3AD8AC6A71CBC70252D380D490C785E17332C49F4
            EBE0B1EAAE4D88F6D562AF6602A6E950502B6B70D17B738B96A0BAD80D8663FC
            BC995E9D44930DB1BC085CD084E1A5EB7B75D1D2D8EEFEEBF7D34BEDCF88D3CA
            3CF41E782A719A764606E731B24A50FF5F7B571A1C57959DBFDE17A925B5F65D
            966479938D172D963DD8800D364BC2621206C250A460282695A9502932BF32C3
            9F245420617EA4263593502C09210C0C3819CC62161B8CE5DDB28D91ADC5D6BE
            EFEA6EA97775E77CE7B59809C3245529123B825BF56C49DDFDFABEF7EE77BEB3
            DD73E49E2E68137627FC26EE7A76C3118CE9FD8F3AAC089885D1E5BE7A13868A
            48C0F2F3DA5882128045895CDFA88857F548A47A78B1298245D4371E311AE462
            0F9953FD8663A1B0964073332D499B3358D5DDAD82540B542752BDB892888931
            CEE6E666EEB0102661F303B7CBAD1EC7B0FC4C27076BD82EC4E3468F8744523B
            AFB095ABCD66D7126B6E3265C228C1CDD6B111F9FE1CA7579829AC89C90418BD
            98A174F956395F4C189020D326E474B73176C5383217B485889305C9C60D74D5
            DB047802A2204B5D3B6D1A63728A3D668AA6FA2E59E9E88963CE1A814316BE9D
            69619A9C69D172756C0691708B0A2DECC19AF349112E6E59EC4E06D81CA9FBC3
            0612B2F093568D141A6D9D4482D9835A905B800F75F12783AC862C82CB9BA9DD
            05B98DC5EA8B68EA5ADC6D749691CB17953169008C1E4C01BFDDC4A67D269D2B
            775B2F95B1240196D420A649FB77CDCD8BE227A0F288FAA25D5152A5A60933AA
            61C91493599C76B5A9CC641AF96C7021ACEF61A5F570AA1F17D9CEAC729B056F
            E35A1198AC949196A199197C9F5D542917DB192D025C0036393D852CF91B3B3B
            B22D107B8451E5F468D16CF93D18D16E907322F167AD712DA7C625A66D01FD11
            A309056BB93B4C29802D20140DC1EE0BC2664D87C523EA5F328E797642118085
            E57AEC013942315885F1C4D834FA99D90D8D8FF6103BAB98446824C5D60A0759
            F0D4ABD7BB00A37F3237665A6246974AEDC6343523F69F304D96C7E8DC292F68
            F3070145622E880042723E9BD6E9B708EB69D8C29A505677880C59980B0BC004
            64696E1A8A704DCADCE599285B1995C035F6C73D79A68C6F8ADE5CD5231C1049
            EDB26BB3B7B6736D08040368DCDAA85BA5B48DEA42AA3308E1121689CDC66FB4
            0F58265A982E2A9FEB9B1C454C54273A2DA8B0F091D366B30BEB3113BF7BA01F
            23531328C8CF57F0167A73E1B4583EEF78194B35BD6379807F78F659ECD97923
            D6D5ACC078D08FA4DBAD8D17DC02C2B02CCEEEAE2E4D3C4EE47AE0CB70A0C25B
            AA3D4AF89D4E82946A1BEBDB9B2DA93E2931F8C7C711199F467E462E328B0A31
            2FA0A55D46901044BEDE61640A3BE715662B33F3DA836C3B2B9C922BA088CD06
            94B95C599998080B2B3BEDDA8DC6C8E310155158335D801D8B0918C4BE4C0810
            E7AC260DB5D1F51F967F6989E5A63A40CFC9EFECF56295EB76B3B59230554F70
            56CCA93C9844F0F45DEE80D9930DEFB22ACC0447616D1F43CDF21A44D26C5A4B
            D2256CEA947371EECEFFC943BF4AC79204986ED062468248E0D75EF9B94ADBEF
            FCE1FD38D3DAA69918058505F04FCFA2302B1B69261B2ECBDFD3333C5859BB06
            13A3A3E81E1BC64C2C84BCB22264E564A1A3BD03A5D9F9C2546908CCF8B42B08
            93556704B869A22A562CABC0CCC414E6E5B58A92321415E621226AEAF8EC8C9C
            6B10AFEFDD8B076EBF1DCB04086D437D482B2A406D41B500278A9FFDE4EF51B7
            B10E8D9B9BD446EA669B07017DD7E51E541697222D9440707206F3A202322997
            31A6EDDFDA8AB0FC6D6E70145E67264CC2605DBE498C0702C82EC8D3D6B0B921
            13569654684F64F6E2726665A06C4DB570A60305728B5A8E9D40CBA7E751BB61
            23EA9BEA71B8BB1D838343282A28307A9CCDCCA3D0ECD4DECEECEBBCA2BA0603
            B100CE765CD04CF9DA75EBB4BDC37CCF30BC99D998B5CD63D83701FFC0282ABD
            F9585757878F2F9D4779C532CC5CEE47722E847086132334500341144F2E604B
            D3160C867CB834D88B82AC1CD4CA772C32F752194B126073DC00990C63766616
            6FBFFDB6A88973D8B2A5099F341F813B3D0DF9B288023EBF068757AD58818AD2
            725CBA7C096D6D6DA8AEAE464565253ABA2E69AFAFC6863A0CC9C2BBD4D18931
            01DF2D37DF02BBA87D73E179CD187FEBADB7B455EB9EBBEE42A700914D20EAEB
            36A14F18EEDDFDEFE1DEFBFE002FFDCB3F6342D8EEF77E770FBC39393872EE38
            6A2A6AD050BB11DF7BEC513CF89D07B1ABF15A8C2583681330745DEAC2B6CDD7
            E2E3E68F71EC4833F6DC72A7365878BFF900B6CAA2ECEBEF15B68DA1282F4F1B
            088E4F08B866A690919585B4F4746CD8B811AD2D673139368EDCBC5C94969721
            233353B793DC77E77DC875A7CB1C8E62EFDBFB60CE7061CF9EBB313A398E3367
            CE68A0BD424031DA3F88D87C0837DD7413C6C6C7302AD7DEDA7111DB9AAE5375
            F99D03EFC093EEC16DBB6EC6679F9D476096F7780B66A7A631393286ADDBAEC5
            EBBFFC376CD8B41155651538D77206C7CF9C46D9F22A346EAAC78137DF416161
            214A4538151617A3A7BB0B89C8026EDEB11B59577A017D856349026C481422B7
            283C074F34633E32A73B7FDB65F12F5F5E8D0B9FB5A2A6A646F753714191CDEE
            BFFF7E91DE83F8EBA79E42437D3D1E7AE8211C3D72042D274EE2961D3BB51DED
            87073E4477770F9E7EF269513F1D22FD5BD49E7BE38DBD4813A0FDE8891FA1B9
            B9597B1DDF72E3ADF2DE6EFCD3CB2FE2891F3E81175F7C01EF7DF2111EFDDE1F
            61CDCAD5D8B77F1F36376CC6C6EAF5F8F3A79EC0E62D9B71C7F65B311DF263FF
            C177313A3C8AEF3FF27D3CF3936770F6FC39FCE04F7FA0DE9737DFF9251E7EF8
            613CF7C20BE817003FFCD023A82EADC43B1FBD8BA181015CB77D3B8E1F3F2EEF
            F92E0E7EFC115A2FB4A2A4A4049B366E426E6E2E7EF6D39FE2D1871F35D457AB
            19275BCFA2F9C269D4098B5D6EEB4041413E4ACBCAB5693AEF07854543438380
            380D6FBDFD96E65B3EF2E07745558EE1C9A79F14F5B8007FF9E45FE1D0E14318
            68EDC1EE1B76615ED4C14E11569B04E42FCA3C77DCB043187E9908B7C3B8D8DA
            8AADC2D45B84817FB1F70D150ECBABAAB0A6B616ED1DED9815AD628F08A1926F
            DA175DDD63925B3742719CEF6C131B2417D14854177F4363237A7B7A902F0B83
            6ACFD4E4A4B61F2A17094FC3FDAC00CE21D279A32C8EE12161AD4B97505A5CA8
            991A3DF23902959D4F323233108E86E117169C9E99561BACA9A9099D9D9DC220
            69D8BC61337CA22EBEFFC9FB58BF7E3D2EB65DD4E4D6EAAA4ADDCECFE29F1B65
            5127A34974767720140B23CF9B8758388A81D1416D3F5451518EB367CFC97B83
            B2C81B313D3D8D2E91F2BB77EFC6818F0E625C6CB086BA06AC5F750DDA7ADB65
            7EDDFABE93274E60D5AA55181D1BC5FC7C50AECF859C9C5CE409DB5DBC70019B
            36D5A1F35207CA8BCB60F3B870A8E528C647C73023CC535E5626C2240E87CD81
            32F9D9E3495727518E5754409F0F073EFC106BD7AEC57261F95611546CBCD750
            DF800C51AF2F5E906B4FF3E8F7F1336C86D1D6DEAEF736332313DD72FFFC7E3F
            5688C650525CA280CA1456A527569F4734A406F29A552C92F30DC0AEEA4127F4
            A8662538E172B8E1F3CD626A7A4A5DF485C258CC819B9A9C424579053C0E17DA
            7B2EEBA2AE2929C744D08F7151AD6867D8DC76F8E603B0B325AB301E99EBF537
            5E47617EA14A769FDF87E28222ED4E120E47B416A24B1658665A867AFB862686
            E09FF5C1230B6C4DD132F8A62631343C8C6522D1DD9E0C91D893C8CACE4530E0
            474F6FAFB6732E2B95852DEA608F30201BE3716B0B1D0D21993355DA4C510309
            02668F0C086B79B3BDC81500454488B85C4E7DFFB07C07D538029F2EBA783CA6
            F3A7FA67B6D8E4DC97E190EBCD2F29C4E0E88800F98CB0709AAAB1BEA9196C5C
            BF01750DF57A3D64D35824824A110E2FBFFCB29C3303B7DD7AAB9C3F1DD313A3
            3AEF3A61FD11B9C7A3226C0A72F3F5DC3D7DBD5A2F714E6C460F0592CC9FA109
            B7B0A1DD61939F233AC7C05C004E9937F318AD662BD25D69DF3839AEF6418F59
            341E51D7B4D3EA94C517514F62AE37575F6775285BCADD1E5B30AA2839E41F7A
            181752AFD15DCDE02903A4768D8601F3F1200647069193912386BD1781700059
            4EA3DDA9C67B908AB125E3A9BB6B7C17B34AAC89B8919D6132290808107D6FCC
            58FC5A8703D09DD8F45632F8ADAF336B5E3EC3B6421CF3C13901433AC2C27A4E
            9B137E01279373BD59D9F2DEA8323383DBA65FCBE78BC4C308F8E5FAB3F38C80
            396B66D86491CBFBFDA10022B2F8FBFB0744C8D8B0AE762D5C6607E662F3B0C9
            9CEC66BB9E6B6C7A149F9EFB541D3A55CB2AB5279ACB61A43445A34144AC16DD
            81C266E9DA36361183DBE2D059D0BB68D1E6B48617379EBAC71C21B6CA65982F
            556C94C17C97E99B38D8D53D1612BA00CCB288A8AA687F57F93FC18D8EB694FA
            217FE6567D2E36A7C66612CA107C9D89C1ACBD9190451363A6BA30945FEC238F
            D3D8B8C9BA1556567EE2DECAB8B1D0A766A7E0717964E15A116065A404E04DF7
            7EBED1D32220600764EE5626E391856C569B2EDE09615BF6FCCAF464695C8DA0
            212B51BAF37C0C9C73D1BA9C6ECD7D64AEA03C3755E5187F63DC8A71B1596191
            82BC023DB78292F997F277FEEE717B3426C5E68159AC7D4F80B30B2883DA72BD
            36FBE21EACA4DE077E7E212EDF25EA9E475853EF9FD86671614AF60B6356BED6
            27594CD362D09AEF91B932E0AEDFCF7B2DF3A48063B09FD7C21825BD94B481F9
            BF6EDD49263F6FD3CECF32A771A90C02ECF7E5FFD7AEF444BECA9188C6B46433
            1FD6821AF4C2107CD8F27029ADE97A3659CC9AA1B1B060008CFBB39459E4357A
            0FB968995E1414791B11B670595D489345F4DAFE7DAA7AEED8BE433B24871682
            70595CC250497C74B259BEC7826BAE59AF25093A3A3AB063EB0D0809A7EEFBF9
            6BA829AF44D3D66B65C185E010D534C0FA18F25DEAE616F5EAE4A9933AFF5DBB
            6ED6FFE30B510516597466660AE7CF9F57306CBFE17A9C3E7D5A55BE9A9AE57C
            8CDA3236D343364D623E12C4E1C387C5BEB1887D94216A991BEB56AF834FBE2F
            5DD88F7F37604F3E3158D73F33890C2FFD77569C3E754C801441D3B5D7432505
            33EC2D1A9637AA6FC9EF9AB5E24AD70CE3A4DC4793D36D84A8530C1D0E8534F4
            C1BE69B46B99ED42A14781A6992FCC8289186A22199CA0E6B3E2EB0ED7925112
            DB09B0D5F2C3C52B3D93AF7224E3090510F781311F90A908CCD4E05AA11466B6
            06A56F523B979B144C5C500C0C9BACA21E86A36AAFC56C26F845552209E5383C
            387AF6248E9D3CA15E481AEB931313C8C9CD416559A506699BCF1C439FD824CB
            97D788019FA15ECA651595585B5B8BE7FEF52514961461F7AEDD18191BC19C7F
            0EAB96AD844758E8F2F8004E9D3925EB3686F28A72652502C3E1103B29BB0099
            3637DE3FF1115A5A5AF0C0030FA8F0A0B79036567171B15E3317A75798C6E572
            23CBECC60BAFBF8CECBC6CF9EEB5989C9C5407CDF8C4382A2A2A9445588DD724
            0C363634ACA955BBB6DD8481C9010C0D0E63466CC5D2D25254562F173B715A1B
            38CCCFCFA993C2AE0228A1B99605854532BF3C0587336E1246B6CB6D8D2BF898
            441D0E06E170BB8D8E9B0CC29B8D942D42DBA455B122C2560E7D06147E7C1E14
            6EDC53B744C6DF1160144DB12B3D93AF74D01858D43954E54918CD12542D4AFE
            EA48494E828BCC6566C2AC2C72028E1296991C3CE896FEE0E00758B96A255A4E
            B768F3F0D5AB570B836489C436A3ABAB4B198D49C4BFF8F7BD181E1DC61D77DC
            81A89C979EB4BA8D9BB0FFF827E81B19C6E6CD8DA8282FC7D8D818B6356D43F7
            A5CB18F74D6A5A1559880E19826BFD860D3870E043ECD8B2132B05C0C73A4FE3
            D0A14F5495DCB67DBB3A0B4E9D3CA9E0A9AFAB475E5E3ECE9C6DC1B66DDB50EA
            29C20B6FBC24D763C69A35ABD1DBD38781817E343636EAE74E9F3AA5F1C0F2E2
            524C8F4FE866D4F2B27251136DC817D5B4EBF265B161631AE76BBBD88606393F
            173F3D9164E56CB13FCB4ACA704A04CECE9D372A0367312792798D30D2D40814
            3296538480EEDE067427389F0941664AA98F54DB17557386388CE7B264927DB7
            98548A037F21C70FAFF46CBEB2A1F8491A3F30912E91B2AFAC46655E2DBD46DB
            CC6CD81909590076514BF819DD98C98E20C6A7359D687C66024FFFEDDFE0B1C7
            FE04276551B70B68AAAAAA5029474E760E5E7DF5553C70FF03A82A2EC3FE8F0F
            E0D889A3A2265EA3E7EBEBEBC30A61B4136D9FE2C2A54EAC5BBB163B76EC5447
            447E51BEAA7221015655553546474770ECD871D4ACA8C15D77DE85677EFC0CEE
            BAED4E2CAFAEC1F4FC94B0633FDEDCF7A6807B8D9EFFC8916601D559DC7DE7DD
            A8AFAFC7F32F3EA731B0FCF47C3CFBF23F2A9B111CE72F7C86B3F2BEC71F7F1C
            9F9E3B87FDEFBD878282026C16C0D1FB79F1E205BD2D59595E5C77ED769C1255
            B5A7A757E654A982201631B6F6DCF7ED7B05E4875415656CEDF9179FC7637FFC
            185C0256AFC90E3353CDE49E92ADE229BB8B4C65D2E79130EE390F752C19361B
            EF37FF64B1DABE74D7CDFFE3312647F122C0E8B29AC5D2CA52F97CA8EAA1A8FB
            F2D76937A4EEC37FFA995B3FB8BD6466761A9F087B502D6400997610F73EB17A
            2F634E041C177C89A873FDE3C3E8EDEB55758A6E74B240B1A85217877AB48D6A
            91FCBCA266055657AF462C11C3C0503F7AFBFB441D74A8EA363434A84DD5AF17
            3BEBD8D1A358250C448F6598DD372D268C884A77410041C6191E19C1C0603F9A
            1A9AB07ACD1A1C39D68C1D37EC448EDD8B57DE7C1545A2926EAFDB8ED6AE5634
            1F3D8C7BEEF9363EF8E0038DE99594146355ED1ACDCBECD07895C1AAAB57ADC6
            C8F0B0CE9FD744A7CCA1830734B6F53BB7DE869191514DE42D2C2A44675B276E
            BFF9766EBC8197353C3497D0B8CF7A1F8D9BFF25371C9FBFC7B4843C865F1834
            A4DF5B0418C7B7E468BED2B3FADF1E06D8806432F95FBE8F6A22DDED2CD24957
            755C6C8B0159FC3E9F4F592B3B3B1BA15050E353850585DA2185991D33733E55
            91BCEE4CDD2D3D9F0ABAB2A04D48D4A1084B0C886467F037CD9AAE1EC989D971
            0D24D3E0A77AC8C038E37204317704A459D3E0F3CF62786218850250BAE5F332
            F2D0DEDDAE0E04C6CBE85470A5B944E592C5EECA46FF58BF961128CA29D298DC
            C8D488CC3B1B13A2527258644E363A18987D2F2CC6AC0D06AF3D6CF01735B645
            9201E90164156206D0E9B8617A141D11DC79909F9DAFA10A8FDD038FC9A205B3
            FEBBB108A8250C2C8E17E47848AFF30B0BED5E395EB9D2B3FBBF1ABAAF0930D8
            EDCB5E4F2634B197CCC2CA51B3B2C8C9346E875B3FC3229EB1484C83B4FC9DEE
            70F55A9A2DEA828FC6A36A87D083E912009AE8DA17E9BFC0A034372BB2D73117
            9AA8A93131F8A94ED1B51D17D0D2B3A6768AAAB266CCCFCE22180C228F4E0DEE
            24A5CA95AA6941758C8793B5F31962A0FA25735890F7732B9935E5688889ED68
            E3CF5495A351B5B316C4EE72DA8C06479158549D21746438A8E6C9F90930A682
            2D248CEB2290399CAE54E527EED9947371C3A73A2B7ECBA0F0A1A059D2B032C6
            5E39EE8111F2FB0D8071D4CA71408E822B3DD3AB79107C49DDDD4C37775217A3
            991E499361A053CAD35D4D3623D81684959816A471387A30E329C39FF5D9CD29
            A39E712401084309AEF474CC4E4D214D588C8E0D3A03F83EC35103F82726E0A6
            9ACAF3C96B4979CD940A5E2722C6BE3623761531FC066C394BF02D3A7A405F50
            4283C06454CEDF66B1A6A6B10884945A4D5B89DB66085AB6D9E57E310A82C580
            39777AE337059516F23699145C5F93F16772FC18BF668C987E8BAAC4277E871C
            4FCAB1EA4ACFFA6B3FBEF88CA8E6A61CA5CA70899443C76CD454D4381E17BE65
            F1F7B83A1A900220D98B2C972470859912A9FD71965480974E1F6E42A5B3827D
            C9B85F4E3FABEC68D5D429BAE29D220412645B016FC2F22B809952F1B0AF09AC
            9899479C1058812FBEF81F678E5054BA80A9DF0000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 230.551330000000000000
        Top = 721.890230000000000000
        Width = 718.110700000000000000
        object Memo31: TfrxMemoView
          Top = 24.338590000000000000
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Associa'#231#227'o do Com'#233'rcio Agropecu'#225'rio do Vale do S'#227'o Francisco'
            'ACAVASF'
            'RECIBO DA REVENDA')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Top = 78.574830000000000000
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '     Declaramos que recebemos da empresa (Revenda) <b>[BUS_DB_M_' +
              'CXA_NFE."int_nomeemp"]</b> sobre os procedimentos para devolu'#231#227'o' +
              ' das embalagens adqueridas pela NF N'#186' <b>[BUS_DB_M_CXA_NFE."nume' +
              'ro"]</b> de <b>[BUS_DB_M_CXA_NFE."dta_emissao"]</b> pelo que dam' +
              'os plena quita'#231#227'o.')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 381.732530000000000000
          Top = 144.842610000000000000
          Width = 336.378170000000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '_____________________________________________'
            ' Assinatura do Cliente'
            ''
            'RG.__________________________________________')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 56.692935350000000000
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Width = 188.976500000000000000
          Height = 56.692906060000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Capacidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 453.543600000000000000
          Top = 18.677180000000000000
          Width = 264.566929130000000000
          Height = 18.897635350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#227'o-Lav'#225'veis')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 453.543600000000000000
          Width = 264.566929130000000000
          Height = 18.897635350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 188.976500000000000000
          Top = 18.677180000000000000
          Width = 264.566929130000000000
          Height = 18.897635350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lav'#225'veis (Rigidas)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 188.976500000000000000
          Width = 264.566929130000000000
          Height = 18.897635350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 188.976500000000000000
          Top = 37.795300000000000000
          Width = 88.062992130000000000
          Height = 18.897635350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pl'#225'stico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 276.905690000000000000
          Top = 37.795300000000000000
          Width = 88.062992130000000000
          Height = 18.897635350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Metal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 364.614410000000000000
          Top = 37.795300000000000000
          Width = 89.196850390000000000
          Height = 18.897635350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Vidro')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 453.543600000000000000
          Top = 37.795300000000000000
          Width = 132.283464570000000000
          Height = 18.897635350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Contaminada')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 585.827150000000000000
          Top = 37.795300000000000000
          Width = 132.283464570000000000
          Height = 18.897635350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#227'o-Contaminada')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object BUS_DB_M_CXA_NFE: TfrxDBDataset
    UserName = 'BUS_DB_M_CXA_NFE'
    CloseDataSource = False
    DataSet = dmGeral.BUS_CD_M_NFE_CXA
    BCDToCurrency = False
    Left = 744
    Top = 123
  end
  object FAT_DB_M_TER_NFE: TfrxDBDataset
    UserName = 'FAT_DB_M_TER_NFE'
    CloseDataSource = False
    DataSet = dmGeral.BUS_CD_M_TER_NFE
    BCDToCurrency = False
    Left = 744
    Top = 75
  end
  object pmApoioTit: TPopupMenu
    Left = 708
    Top = 387
    object Informarmaquineta1: TMenuItem
      Caption = 'Informar maquineta'
      OnClick = Informarmaquineta1Click
    end
    object Reimprimir1: TMenuItem
      Caption = 'Reimprimir'
      OnClick = Reimprimir1Click
    end
  end
  object ImageListBtn: TImageList
    Left = 548
    Top = 112
    Bitmap = {
      494C0101010008006C0410001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD999FFEAD9
      99FFEAD999FFEAD999FFEAD999FFEAD999FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    TipoDANFE = tiSemGeracao
    ImprimeDescAcrescItem = False
    Left = 444
    Top = 96
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 893
    Top = 63
  end
  object NFSe: TACBrNFSe
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.ConsultaLoteAposEnvio = False
    Configuracoes.Geral.Emitente.DadosSenhaParams = <>
    Configuracoes.Geral.Resposta = 0
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 364
    Top = 96
  end
  object FAT_FR_M_PED_REV: TfrxReport
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
      
        '    mmIte.Width := mmIte.Width + mmUnd.Width;                   ' +
        '    '
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
    Left = 206
    Top = 360
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
      end
      item
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
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
        Height = 192.756030000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Shape1: TfrxShapeView
          Top = 26.377860000000000000
          Width = 718.110700000000000000
          Height = 64.252010000000000000
        end
        object Shape2: TfrxShapeView
          Left = -1.000000000000000000
          Top = 100.622140000000000000
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
          Top = 121.637910000000000000
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
          Top = 151.212740000000000000
          Width = 71.811070000000000000
          Height = 15.118110236220500000
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
          Top = 151.212740000000000000
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
          Top = 121.637910000000000000
          Width = 201.859664620000000000
          Height = 15.118110236220500000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
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
          Top = 151.212740000000000000
          Width = 457.323130000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
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
          Top = 151.212740000000000000
          Width = 90.708671180000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
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
          Height = 15.118110236220500000
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
          Top = 49.031540000000000000
          Width = 71.811070000000000000
          Height = 15.118110236220500000
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
          Top = 49.031540000000000000
          Width = 249.448980000000000000
          Height = 15.118110236220500000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
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
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
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
          Top = 108.078854880000000000
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
          Top = 108.078854880000000000
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
          Top = 108.078854880000000000
          Width = 94.488250000000000000
          Height = 15.118110236220500000
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
          Top = 108.078854880000000000
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
          Top = 164.863850770000000000
          Width = 68.031540000000000000
          Height = 15.118110236220500000
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
          Top = 62.826840000000000000
          Width = 34.015770000000000000
          Height = 15.118110236220500000
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
          Top = 62.826840000000000000
          Width = 83.149660000000000000
          Height = 15.118110236220500000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
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
          Top = 62.826840000000000000
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
        object Memo29: TfrxMemoView
          Left = 204.094620000000000000
          Top = 62.826840000000000000
          Width = 219.212740000000000000
          Height = 15.118110236220500000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
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
          Top = 164.863850770000000000
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
          Top = 164.863850770000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
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
          Top = 136.551325120000000000
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
          Top = 136.551330000000000000
          Width = 347.716760000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
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
          Top = 108.078854880000000000
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
          Top = 108.078854880000000000
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
          Top = 104.299315120000000000
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
          Top = 104.299324880000000000
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
          Top = 120.637910000000000000
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
          Top = 120.637910000000000000
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
          Top = 121.637910000000000000
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
          Top = 121.637910000000000000
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
          Top = 164.863850770000000000
          Width = 148.752486150000000000
          Height = 15.118110236220500000
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
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 721.890230000000000000
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
        Top = 272.126160000000000000
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
        Top = 351.496290000000000000
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
          Left = 63.811070000000000000
          Width = 207.874150000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataField = 'int_nomeite'
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
          Left = 300.685220000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomecor'
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
          Left = 344.157700000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataField = 'qtde'
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
        object Memo35: TfrxMemoView
          Left = 396.071120000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_unitario"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 464.102660000000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_bruto"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 534.913730000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."per_desconto"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 580.827150000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_desconto"]')
          ParentFont = False
        end
        object frxPedItevlr_liquido: TfrxMemoView
          Left = 645.079160000000000000
          Top = 0.000004880000000013
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_liquido"]')
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
          Left = 275.905690000000000000
          Width = 22.677180000000000000
          Height = 15.118110240000000000
          DataField = 'int_id_und_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_id_und_venda"]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
        RowCount = 0
        object Line2: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line1: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Height = 15.118110236220500000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object frxPedTitid_titulo: TfrxMemoView
          Left = 191.417440000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataField = 'dta_vencimento'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."dta_vencimento"]')
          ParentFont = False
        end
        object frxPedTitint_nomefpg: TfrxMemoView
          Left = 7.559060000000000000
          Width = 177.637910000000000000
          Height = 15.118110240000000000
          DataField = 'int_nomefpg'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."int_nomefpg"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 279.685220000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."vlr_titulo"]')
          ParentFont = False
        end
      end
      object fstCabItem1: TfrxHeader
        FillType = ftBrush
        Height = 20.409448820000000000
        Top = 309.921460000000000000
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
          Left = 65.031540000000000000
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
          Left = 275.889920000000000000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object mmlblCor: TfrxMemoView
          Left = 304.905690000000000000
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
          Left = 360.496290000000000000
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
          Left = 397.291590000000000000
          Top = 2.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. unit'#225'rio')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 465.323130000000000000
          Top = 2.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. bruto')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 536.134200000000000000
          Top = 2.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '% Desc')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 582.047620000000000000
          Top = 2.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. desc')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 646.299630000000000000
          Top = 2.779530000000020000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. l'#237'quido')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 430.866420000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897637800000000000
          Fill.BackColor = 14342874
        end
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 2.000000000000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 192.756030000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 279.685220000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Top = 0.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo12: TfrxMemoView
          Left = 536.693260000000000000
          Top = 2.559064880000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_desconto">,DetailData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 646.299630000000000000
          Top = 2.559064880000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_liquido">,DetailData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 401.630180000000000000
          Top = 2.779530000000000000
          Width = 132.283550000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_bruto">,DetailData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 321.260050000000000000
          Top = 2.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 2.779530000000000000
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
        Top = 510.236550000000000000
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
    end
  end
  object FAT_FR_M_PED_SGQ2: TfrxReport
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
      ''
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
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<ativado_cor> = false) then'
      '   begin'
      
        '    mmCor.Visible := false;                                     ' +
        '                                '
      '    mmUnd.Left := mmCor.Left;                 '
      
        '    mmIte.Width := mmIte.Width + mmUnd.Width;                   ' +
        '                                                                ' +
        '               '
      '   end;  '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<ativado_sgq> = false) then'
      '    begin'
      '      mmDtaEntrega.Visible := false;'
      '      FAT_FD_M_PEDdta_prev_entrega.Visible := false;'
      '      mmOrdProd.Visible := false;'
      
        '      FAT_FD_M_PEDpcp_id_opr.Visible := false;                  ' +
        '                                                                ' +
        '        '
      '      mmOrdFat.Visible := false;'
      '      FAT_FD_M_PEDid_ors.Visible := false;'
      '      mmLibPed.Visible := false;'
      
        '      FAT_FD_M_PEDint_sitaprov.Visible := false                 ' +
        '                                                                ' +
        '           '
      '    end;              '
      'end;'
      ''
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
    Left = 206
    Top = 320
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
      end
      item
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
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
        Height = 377.953000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Shape1: TfrxShapeView
          Top = 29.377860000000000000
          Width = 718.110700000000000000
          Height = 124.724490000000000000
        end
        object Shape2: TfrxShapeView
          Top = 157.960730000000000000
          Width = 718.110700000000000000
          Height = 211.653680000000000000
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
        object Memo52: TfrxMemoView
          Top = 158.740260000000000000
          Width = 718.110700000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Fill.BackColor = 14342874
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 13.559060000000000000
          Top = 204.196970000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente :')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 13.559060000000000000
          Top = 242.212740000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 13.559060000000000000
          Top = 261.110390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Municipio :')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 399.071120000000000000
          Top = 261.110390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object frxBusClinome: TfrxMemoView
          Left = 89.149660000000000000
          Top = 204.196970000000000000
          Width = 262.332144620000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."id_cliente"] - [BUS_FD_C_CLI."nome"]')
          ParentFont = False
        end
        object frxBusCliendereco: TfrxMemoView
          Left = 89.149660000000000000
          Top = 242.212740000000000000
          Width = 563.149970000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[BUS_FD_C_CLI."endereco"]  N'#186' [BUS_FD_C_CLI."numero"], [BUS_FD_C' +
              '_CLI."bairro"]')
          ParentFont = False
        end
        object frxBusClibairro: TfrxMemoView
          Left = 89.149660000000000000
          Top = 261.110390000000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."int_nomecid"]  -  [BUS_FD_C_CLI."int_uf"]')
          ParentFont = False
        end
        object frxBusCliint_nomecid: TfrxMemoView
          Left = 474.661720000000000000
          Top = 261.110390000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            ' [BUS_FD_C_CLI."cep"]')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 571.827150000000000000
          Top = 45.133889999999990000
          Width = 128.504020000000000000
          Height = 56.692950000000000000
          Center = True
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo30: TfrxMemoView
          Left = 649.181510000000000000
          Top = 177.417440000000000000
          Width = 68.031540000000000000
          Height = 22.677170240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_FD_M_PED."cubagem"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 522.496290000000000000
          Top = 177.417440000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            ' Total de Cubagem (m'#179')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 519.831978460000000000
          Top = 204.196965120000000000
          Width = 89.570001540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' do pedido :')
          ParentFont = False
        end
        object frxPedid_pedido: TfrxMemoView
          Left = 612.181510000000000000
          Top = 204.427739230000000000
          Width = 80.339232310000000000
          Height = 15.118110240000000000
          DataField = 'id_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_pedido"]')
          ParentFont = False
        end
        object frxPeddta_pedido: TfrxMemoView
          Left = 88.315090000000000000
          Top = 182.078859760000000000
          Width = 60.472445830000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_pedido"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 43.795300000000000000
          Top = 182.078850000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 425.071120000000000000
          Top = 182.078859760000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[SituacaoPed]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 372.378170000000000000
          Top = 182.078850000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 474.661720000000000000
          Top = 301.218215650000000000
          Width = 148.752486150000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_vendedor"] - [FAT_FD_M_PED."int_nomefun"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 372.614410000000000000
          Top = 301.218210770000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Representante :')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 47.574830000000000000
          Top = 279.976500000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object frxBusClitel_fixo: TfrxMemoView
          Left = 89.149660000000000000
          Top = 279.889920000000000000
          Width = 250.504020000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."tel_fixo"]  /  [BUS_FD_C_CLI."tel_movel"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Top = 30.236240000000000000
          Width = 718.110700000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Fill.BackColor = 14342874
          Memo.UTF8W = (
            'Dados da empresa')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 573.236550000000000000
          Top = 104.826840000000000000
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
        object Memo54: TfrxMemoView
          Left = 474.661720000000000000
          Top = 223.551330000000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        object Memo56: TfrxMemoView
          Left = 13.559060000000000000
          Top = 223.551325120000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fantasia :')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 89.149660000000000000
          Top = 223.551330000000000000
          Width = 343.937230000000000000
          Height = 15.118110240000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Left = 291.464750000000000000
          Top = 182.078859760000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hor'#225'rio:')
          ParentFont = False
        end
        object FAT_FD_M_PEDhor_pedido: TfrxMemoView
          Left = 333.480520000000000000
          Top = 182.078859760000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."hor_pedido"]')
          ParentFont = False
        end
        object FAT_FD_M_PEDint_nomeres: TfrxMemoView
          Left = 89.149660000000000000
          Top = 300.480520000000000000
          Width = 250.636293080000000000
          Height = 15.118110240000000000
          DataField = 'int_nomeres'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_nomeres"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = -1.559060000000000000
          Top = 300.480520000000000000
          Width = 86.929190000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Respons'#225'vel :')
          ParentFont = False
        end
        object mmDtaEntrega: TfrxMemoView
          Left = 149.685220000000000000
          Top = 182.078859760000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Prev. Entrega:')
          ParentFont = False
        end
        object FAT_FD_M_PEDdta_prev_entrega: TfrxMemoView
          Left = 226.889920000000000000
          Top = 182.078859760000000000
          Width = 60.472445830000000000
          Height = 15.118110240000000000
          DataField = 'dta_prev_entrega'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_prev_entrega"]')
          ParentFont = False
        end
        object mmOrdProd: TfrxMemoView
          Left = 0.292564600000000000
          Top = 328.716760000000000000
          Width = 132.683293080000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' Ordem Produ'#231#227'o :')
          ParentFont = False
        end
        object mmOrdFat: TfrxMemoView
          Left = 312.141930000000000000
          Top = 328.716760000000000000
          Width = 158.740260000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' Ordem Faturamento:')
          ParentFont = False
        end
        object FAT_FD_M_PEDpcp_id_opr: TfrxMemoView
          Left = 136.314447680000000000
          Top = 328.716760000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataField = 'pcp_id_opr'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."pcp_id_opr"]')
          ParentFont = False
        end
        object FAT_FD_M_PEDid_ors: TfrxMemoView
          Left = 474.121973850000000000
          Top = 328.716760000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataField = 'id_ors'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_ors"]')
          ParentFont = False
        end
        object mmLibPed: TfrxMemoView
          Left = 0.692307680000000000
          Top = 348.080776920000000000
          Width = 132.283550000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Libera'#231#227'o de Pedido:')
          ParentFont = False
        end
        object FAT_FD_M_PEDint_sitaprov: TfrxMemoView
          Left = 136.314447680000000000
          Top = 348.080776920000000000
          Width = 158.740260000000000000
          Height = 15.118110240000000000
          DataField = 'int_sitaprov'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_sitaprov"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 382.839708460000000000
          Top = 204.196965120000000000
          Width = 42.451881540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/IE :')
          ParentFont = False
        end
        object FAT_FD_M_PEDint_ie_rg_cli: TfrxMemoView
          Left = 425.359188460000000000
          Top = 204.196965120000000000
          Width = 95.227225380000000000
          Height = 15.118120000000000000
          DataField = 'int_ie_rg_cli'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_ie_rg_cli"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 2.000000000000000000
          Top = 60.472480000000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 2.000000000000000000
          Top = 79.370130000000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object frxCadParemp_endereco: TfrxMemoView
          Left = 88.929190000000000000
          Top = 79.370130000000000000
          Width = 249.448980000000000000
          Height = 18.897637800000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            
              '[CAD_FD_C_PAR."emp_endereco"] N'#186' [CAD_FD_C_PAR."emp_numero"], [C' +
              'AD_FD_C_PAR."emp_bairro"] ')
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
          Left = 88.929190000000000000
          Top = 60.472480000000000000
          Width = 249.448980000000000000
          Height = 18.897637800000000000
          DataField = 'emp_fantasia'
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_fantasia"]')
          ParentFont = False
        end
        object frxCadParemp_bairro: TfrxMemoView
          Left = 88.929190000000000000
          Top = 98.267780000000000000
          Width = 249.448980000000000000
          Height = 18.897637800000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."int_nomecid"]-[CAD_FD_C_PAR."int_uf"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo42: TfrxMemoView
          Left = 2.000000000000000000
          Top = 98.267780000000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Municipio :')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 39.795300000000000000
          Top = 117.165430000000000000
          Width = 45.354360000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP :')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 88.929190000000000000
          Top = 117.165430000000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_cep"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 175.858380000000000000
          Top = 117.165430000000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 217.433210000000000000
          Top = 117.165430000000000000
          Width = 219.212740000000000000
          Height = 18.897637800000000000
          DataSet = CAD_FD_C_PAR
          DataSetName = 'CAD_FD_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_FD_C_PAR."emp_telefone"] / [CAD_FD_C_PAR."emp_fax"]')
          ParentFont = False
        end
        object mmCpfCnpj: TfrxMemoView
          Left = 436.866420000000000000
          Top = 222.992270000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'mmCpfCnpjOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF :')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 922.205320000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 283.464750000000000000
          Top = 7.559060000000045000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 616.063390000000000000
          Top = 7.559060000000045000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 22.677180000000000000
        Top = 457.323130000000000000
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
        Height = 18.897637800000000000
        ParentFont = False
        Top = 544.252320000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
        RowCount = 0
        Stretched = True
        object frxPedIteid_item: TfrxMemoView
          Left = 1.220470000000000000
          Width = 60.472480000000000000
          Height = 18.897637795275600000
          DataField = 'id_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."id_item"]')
          ParentFont = False
        end
        object mmIte: TfrxMemoView
          Left = 65.031540000000000000
          Width = 207.874150000000000000
          Height = 18.897637795275600000
          StretchMode = smMaxHeight
          DataField = 'int_nomeite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomeite"]')
          ParentFont = False
        end
        object mmUnd: TfrxMemoView
          Left = 275.889920000000000000
          Width = 22.677180000000000000
          Height = 18.897637795275600000
          DataField = 'int_id_und_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_id_und_venda"]')
          ParentFont = False
        end
        object mmCor: TfrxMemoView
          Left = 301.905690000000000000
          Width = 41.574830000000000000
          Height = 18.897637795275600000
          DataField = 'int_nomecor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomecor"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 345.378170000000000000
          Width = 49.133890000000000000
          Height = 18.897637795275600000
          DataField = 'qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."qtde"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 397.291590000000000000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_unitario"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 465.323130000000000000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_bruto"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 536.134200000000000000
          Width = 41.574830000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."per_desconto"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 582.047620000000000000
          Width = 60.472480000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_desconto"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Top = 0.110241100000052900
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object frxPedItevlr_liquido: TfrxMemoView
          Left = 646.299630000000000000
          Top = 0.000004880000005869
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_liquido"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897637795275600000
        ParentFont = False
        Top = 668.976810000000000000
        Width = 718.110700000000000000
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
        RowCount = 0
        object frxPedTitid_titulo: TfrxMemoView
          Left = 192.756030000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          DataField = 'dta_vencimento'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."dta_vencimento"]')
          ParentFont = False
        end
        object frxPedTitint_nomefpg: TfrxMemoView
          Left = 1.338590000000000000
          Width = 188.976500000000000000
          Height = 18.897637800000000000
          DataField = 'int_nomefpg'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."int_nomefpg"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 281.023810000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Font.Quality = fqDraft
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."vlr_titulo"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          ShiftMode = smWhenOverlapped
          Height = 18.897637795275600000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line1: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 718.110700000000000000
          Height = 18.897637795275600000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object fstCabItem1: TfrxHeader
        FillType = ftBrush
        Height = 20.409448820000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'fstCabItem1OnBeforePrint'
        object Shape14: TfrxShapeView
          Top = 0.779530000000022500
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 14342874
        end
        object Memo13: TfrxMemoView
          Left = 5.000000000000000000
          Top = 2.779530000000022000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object mmlblIte: TfrxMemoView
          Left = 65.031540000000000000
          Top = 2.779530000000022000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object mmlblUnd: TfrxMemoView
          Left = 275.889920000000000000
          Top = 2.779530000000022000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object mmlblCor: TfrxMemoView
          Left = 304.905690000000000000
          Top = 2.779530000000022000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 360.496290000000000000
          Top = 2.779530000000022000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 397.291590000000000000
          Top = 2.779530000000022000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. unit'#225'rio')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 465.323130000000000000
          Top = 2.779530000000022000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. bruto')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 536.134200000000000000
          Top = 2.779530000000022000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '% Desc')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 582.047620000000000000
          Top = 2.779530000000022000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. desc')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 646.299630000000000000
          Top = 2.779530000000022000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. l'#237'quido')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 627.401980000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897637800000000000
          Fill.BackColor = 14342874
        end
        object Memo4: TfrxMemoView
          Width = 109.606370000000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 192.756030000000000000
          Width = 79.370130000000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 279.685220000000000000
          Width = 79.370130000000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 585.827150000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Top = 0.559060000000045000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo7: TfrxMemoView
          Left = 385.512060000000000000
          Top = 0.559060000000045000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Totais :')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 646.299630000000000000
          Top = 0.559064880000050800
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_liquido">,DetailData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 582.047620000000000000
          Width = 60.472480000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_desconto">,DetailData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 464.882190000000000000
          Width = 68.031496060000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_bruto">,DetailData1)]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 151.181200000000000000
        Top = 710.551640000000000000
        Width = 718.110700000000000000
        object Shape5: TfrxShapeView
          Width = 718.110700000000000000
          Height = 90.708720000000000000
        end
        object frxPedpcp_obs: TfrxMemoView
          Left = 76.811070000000000000
          Top = 22.456710000000040000
          Width = 634.961040000000000000
          Height = 30.236220470000000000
          DataField = 'obs'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Font.Height = -13
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
          Top = 113.826839999999900000
          Width = 275.905690000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Memo.UTF8W = (
            '_____________________________________'
            '                        Ass. cliente')
        end
        object Memo27: TfrxMemoView
          Left = 15.118120000000000000
          Top = 22.677180000000020000
          Width = 60.472480000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Do Pedido :')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 76.811070000000000000
          Top = 57.133889999999950000
          Width = 634.961040000000000000
          Height = 30.236220470000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_FD_M_PED."pcp_obs"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Top = 57.354360000000040000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Da Produ'#231#227'o :')
          ParentFont = False
        end
      end
    end
  end
  object FAT_FR_M_PED_SGQ: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'EPSON LX-300+ /II'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42475.445938634300000000
    ReportOptions.LastChange = 42475.445938634300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 324
    Top = 314
    Datasets = <
      item
        DataSet = BUS_FD_C_CLI
        DataSetName = 'BUS_FD_C_CLI'
      end
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
      end
      item
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
      end
      item
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 210.819863845504600000
      PaperHeight = 139.435326614684900000
      PaperSize = 256
      LeftMargin = 2.539998359584393000
      RightMargin = 2.539998359584393000
      TopMargin = 4.497913761764029000
      BottomMargin = 4.497913761764029000
      FontStyle = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Top = 306.000000000000000000
        Width = 777.600000000000000000
        DataSet = FAT_FD_M_PED
        DataSetName = 'FAT_FD_M_PED'
        RowCount = 0
        StartNewPage = True
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 323.000000000000000000
        Width = 777.600000000000000000
        DataSet = FAT_FD_M_PED_ITE
        DataSetName = 'FAT_FD_M_PED_ITE'
        RowCount = 0
        object FAT_FD_M_PED_ITEid_item: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'id_item'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."id_item"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEint_nomeite: TfrxDMPMemoView
          Left = 76.800000000000000000
          Width = 240.000000000000000000
          Height = 17.000000000000000000
          DataField = 'int_nomeite'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_nomeite"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEint_id_und_venda: TfrxDMPMemoView
          Left = 326.400000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          DataField = 'int_id_und_venda'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."int_id_und_venda"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEqtde: TfrxDMPMemoView
          Left = 364.800000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'qtde'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."qtde"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEvlr_unitario: TfrxDMPMemoView
          Left = 432.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_unitario"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEvlr_bruto: TfrxDMPMemoView
          Left = 518.400000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_bruto"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEvlr_desconto: TfrxDMPMemoView
          Left = 604.800000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_desconto"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEvlr_liquido: TfrxDMPMemoView
          Left = 691.200000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_ITE."vlr_liquido"]')
          TruncOutboundText = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 170.000000000000000000
        Top = 119.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo23: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 136.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          TruncOutboundText = False
        end
        object DMPMemo24: TfrxDMPMemoView
          Left = 76.800000000000000000
          Top = 136.000000000000000000
          Width = 240.000000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o dos Produtos')
          TruncOutboundText = False
        end
        object DMPMemo26: TfrxDMPMemoView
          Left = 326.400000000000000000
          Top = 136.000000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'UND')
          TruncOutboundText = False
        end
        object DMPMemo27: TfrxDMPMemoView
          Left = 364.800000000000000000
          Top = 136.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Quant')
          TruncOutboundText = False
        end
        object DMPMemo28: TfrxDMPMemoView
          Left = 432.000000000000000000
          Top = 136.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr.Unit')
          TruncOutboundText = False
        end
        object DMPMemo29: TfrxDMPMemoView
          Left = 518.400000000000000000
          Top = 136.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Bruto')
          TruncOutboundText = False
        end
        object DMPMemo30: TfrxDMPMemoView
          Left = 691.200000000000000000
          Top = 136.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Liquido')
          TruncOutboundText = False
        end
        object DMPMemo31: TfrxDMPMemoView
          Left = 604.800000000000000000
          Top = 136.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          TruncOutboundText = False
        end
        object DMPMemo1: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 758.400000000000000000
          Height = 119.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo4: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente:')
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 34.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o:')
          TruncOutboundText = False
        end
        object DMPMemo14: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 68.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Resp.:')
          TruncOutboundText = False
        end
        object DMPMemo15: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 102.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Cond. Pag.:')
          TruncOutboundText = False
        end
        object DMPMemo16: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 51.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Fone/Fax:')
          TruncOutboundText = False
        end
        object DMPMemo17: TfrxDMPMemoView
          Left = 480.000000000000000000
          Top = 51.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          TruncOutboundText = False
        end
        object DMPMemo18: TfrxDMPMemoView
          Left = 480.000000000000000000
          Top = 34.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade:')
          TruncOutboundText = False
        end
        object DMPMemo22: TfrxDMPMemoView
          Left = 412.800000000000000000
          Top = 68.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Representante:')
          TruncOutboundText = False
        end
        object DMPMemo25: TfrxDMPMemoView
          Left = 412.800000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Prev. Entrega:')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_nomecli: TfrxDMPMemoView
          Left = 124.800000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'int_nomecli'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_nomecli"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_nomecid: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 34.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_nomecid"] - [FAT_FD_M_PED."int_nomeest"]')
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object FAT_FD_M_PEDdta_prev_entrega: TfrxDMPMemoView
          Left = 556.800000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataField = 'dta_prev_entrega'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_prev_entrega"]')
          TruncOutboundText = False
        end
        object DMPMemo19: TfrxDMPMemoView
          Left = 48.000000000000000000
          Top = 17.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'RG/IE:')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_ie_rg_cli: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 17.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_ie_rg_cli"]')
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 508.800000000000000000
          Top = 17.000000000000000000
          Width = 38.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'CPF:')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_cpfcnpj: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 17.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataField = 'int_cpfcnpj'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_cpfcnpj"]')
          TruncOutboundText = False
        end
        object BUS_FD_C_CLIendereco: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 34.000000000000000000
          Width = 345.600000000000000000
          Height = 17.000000000000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Memo.UTF8W = (
            
              '[Trim(<BUS_FD_C_CLI."endereco">)], N'#186'[Trim(<BUS_FD_C_CLI."numero' +
              '">)], [Trim(<BUS_FD_C_CLI."bairro">)]')
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object BUS_FD_C_CLIcep: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 51.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataField = 'cep'
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."cep"]')
          TruncOutboundText = False
        end
        object BUS_FD_C_CLItel_fixo: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 51.000000000000000000
          Width = 316.800000000000000000
          Height = 17.000000000000000000
          DataSet = BUS_FD_C_CLI
          DataSetName = 'BUS_FD_C_CLI'
          Memo.UTF8W = (
            '[BUS_FD_C_CLI."tel_fixo"] / [BUS_FD_C_CLI."fax"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_nomecpg: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 102.000000000000000000
          Width = 220.800000000000000000
          Height = 17.000000000000000000
          DataField = 'int_nomecpg'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_nomecpg"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_nomeres: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'int_nomeres'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_nomeres"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDid_vendedor: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 68.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."id_vendedor"] - [FAT_FD_M_PED."int_nomefun"]')
          TruncOutboundText = False
        end
        object DMPMemo20: TfrxDMPMemoView
          Left = 355.200000000000000000
          Top = 85.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Libera'#231#227'o de Pedido:')
          TruncOutboundText = False
        end
        object DMPMemo13: TfrxDMPMemoView
          Left = 19.200000000000000000
          Top = 85.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o:')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_sitped: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 85.000000000000000000
          Width = 220.800000000000000000
          Height = 17.000000000000000000
          DataField = 'int_sitped'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_sitped"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDint_sitaprov: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 85.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataField = 'int_sitaprov'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."int_sitaprov"]')
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          Left = 364.800000000000000000
          Top = 102.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Total cubagem (M'#179'):')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDcubagem: TfrxDMPMemoView
          Left = 556.800000000000000000
          Top = 102.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataField = 'cubagem'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Memo.UTF8W = (
            '[FAT_FD_M_PED."cubagem"]')
          TruncOutboundText = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 374.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo2: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 499.200000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Totais:')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_ITEvlr_bruto1: TfrxDMPMemoView
          Left = 518.400000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_bruto">,DetailData1)]')
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 604.800000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_desconto">,DetailData1)]')
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 691.200000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FAT_FD_M_PED_ITE."vlr_liquido">,DetailData1)]')
          TruncOutboundText = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 425.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo9: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Forma de Pagamento')
          TruncOutboundText = False
        end
        object DMPMemo32: TfrxDMPMemoView
          Left = 201.600000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          TruncOutboundText = False
        end
        object DMPMemo33: TfrxDMPMemoView
          Left = 316.800000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          TruncOutboundText = False
        end
        object DMPMemo34: TfrxDMPMemoView
          Left = 412.800000000000000000
          Width = 355.200000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          TruncOutboundText = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 476.000000000000000000
        Width = 777.600000000000000000
        DataSet = FAT_FD_M_PED_TIT
        DataSetName = 'FAT_FD_M_PED_TIT'
        RowCount = 0
        object FAT_FD_M_PED_TITint_nomefpg: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          DataField = 'int_nomefpg'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."int_nomefpg"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_TITdta_vencimento: TfrxDMPMemoView
          Left = 201.600000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'dta_vencimento'
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."dta_vencimento"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PED_TITvlr_titulo: TfrxDMPMemoView
          Left = 316.800000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED_TIT
          DataSetName = 'FAT_FD_M_PED_TIT'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED_TIT."vlr_titulo"]')
          TruncOutboundText = False
        end
        object DMPMemo40: TfrxDMPMemoView
          Left = 412.800000000000000000
          Width = 355.200000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          TruncOutboundText = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 102.000000000000000000
        Top = 527.000000000000000000
        Width = 777.600000000000000000
        Stretched = True
        object DMPMemo39: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 85.000000000000000000
          Width = 758.400000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8W = (
            '_____________________________________'
            'Ass. Cliente')
          TruncOutboundText = False
          VAlign = vaBottom
        end
        object FAT_FD_M_PEDobs: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 758.400000000000000000
          Height = 17.000000000000000000
          StretchMode = smActualHeight
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  Observa'#231#227'o do pedido: [FAT_FD_M_PED."obs"]')
          TruncOutboundText = False
        end
        object DMPMemo38: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 34.000000000000000000
          Width = 758.400000000000000000
          Height = 17.000000000000000000
          StretchMode = smActualHeight
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Observa'#231#227'o da produ'#231#227'o: [FAT_FD_M_PED."pcp_obs"]')
          TruncOutboundText = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 68.000000000000000000
        Top = 17.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo3: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 758.400000000000000000
          Height = 51.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object CAD_DB_C_PARemp_fantasia: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 748.800000000000000000
          Height = 17.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_fantasia"]')
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object CAD_DB_C_PARemp_endereco: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 652.800000000000000000
          Height = 17.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Memo.UTF8W = (
            
              '[CAD_DB_C_PAR."emp_endereco"], [CAD_DB_C_PAR."emp_numero"], [CAD' +
              '_DB_C_PAR."emp_bairro"]')
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object CAD_DB_C_PARemp_telefone: TfrxDMPMemoView
          Left = 316.800000000000000000
          Top = 34.000000000000000000
          Width = 345.600000000000000000
          Height = 17.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Memo.UTF8W = (
            
              'Fone/Fax: [CAD_DB_C_PAR."emp_telefone"] / [CAD_DB_C_PAR."emp_fax' +
              '"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDid_pedido: TfrxDMPMemoView
          Left = 662.400000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          HAlign = haRight
          Memo.UTF8W = (
            'No. [FAT_FD_M_PED."id_pedido"]')
          TruncOutboundText = False
        end
        object FAT_FD_M_PEDdta_pedido: TfrxDMPMemoView
          Left = 662.400000000000000000
          Top = 34.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataField = 'dta_pedido'
          DataSet = FAT_FD_M_PED
          DataSetName = 'FAT_FD_M_PED'
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_FD_M_PED."dta_pedido"]')
          TruncOutboundText = False
        end
        object CAD_DB_C_PARid_cidade: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 34.000000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Frame.Style = fsDot
          Memo.UTF8W = (
            
              '[CAD_DB_C_PAR."int_nomecid"] - [CAD_DB_C_PAR."int_uf"] - CEP: [C' +
              'AD_DB_C_PAR."emp_cep"]')
          TruncOutboundText = False
        end
      end
    end
  end
  object FAT_FD_M_PED: TfrxDBDataset
    UserName = 'FAT_FD_M_PED'
    CloseDataSource = False
    DataSet = dmGeral.FAT_CD_M_PED
    BCDToCurrency = False
    Left = 433
    Top = 312
  end
  object FAT_FD_M_PED_ITE: TfrxDBDataset
    UserName = 'FAT_FD_M_PED_ITE'
    CloseDataSource = False
    DataSet = dmGeral.FAT_CD_M_PED_ITE
    BCDToCurrency = False
    Left = 433
    Top = 368
  end
  object CAD_FD_C_PAR: TfrxDBDataset
    UserName = 'CAD_FD_C_PAR'
    CloseDataSource = False
    DataSet = dmGeral.CAD_CD_C_PAR
    BCDToCurrency = False
    Left = 553
    Top = 360
  end
  object FAT_FD_M_PED_TIT: TfrxDBDataset
    UserName = 'FAT_FD_M_PED_TIT'
    CloseDataSource = False
    DataSet = dmGeral.FAT_CD_M_PED_TIT
    BCDToCurrency = False
    Left = 537
    Top = 312
  end
  object BUS_FD_C_CLI: TfrxDBDataset
    UserName = 'BUS_FD_C_CLI'
    CloseDataSource = False
    DataSet = dmGeral.BUS_CD_C_CLI
    BCDToCurrency = False
    Left = 641
    Top = 312
  end
  object rdPedCompleto: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'POINT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0615/01649'
    RegistroUsuario.AutorizacaoKey = '5E33-1QQQ-385V-ASCD-RRJM'
    About = 'RDprint 5.0 - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 328
    Top = 369
  end
  object FAT_FR_M_CXA_DUP: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42088.744515231500000000
    ReportOptions.LastChange = 42088.744515231500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 63
    Top = 320
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = FAT_DP_M_CXA_NFE
        DataSetName = 'FAT_DB_M_CXA_NFE'
      end
      item
        DataSet = FAT_DP_M_CXA_NFE_TIT
        DataSetName = 'FAT_DB_M_CXA_NFE_TIT'
      end
      item
        DataSet = dmGeral.CAD_DB_C_CLI
        DataSetName = 'FAT_DB_M_NFE_CLI_DUP'
      end>
    Variables = <
      item
        Name = ' Externa'
        Value = Null
      end
      item
        Name = 'Extenso'
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
      object DUPLICATA: TfrxMasterData
        FillType = ftBrush
        Height = 521.575140000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = FAT_DP_M_CXA_NFE_TIT
        DataSetName = 'FAT_DB_M_CXA_NFE_TIT'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 245.669450000000000000
          Top = 0.677180000000000000
          Width = 461.102660000000000000
          Height = 109.606370000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              '    NOME/RAZ'#195'O SOCIAL : [CAD_DB_C_PAR."emp_fantasia"] [CAD_DB_C_' +
              'PAR."emp_razao"]'
            '                      ENDERE'#199'O : [CAD_DB_C_PAR."emp_endereco"]'
            '                            BAIRRO : [CAD_DB_C_PAR."emp_bairro"]'
            
              '                        FONE/FAX : [CAD_DB_C_PAR."emp_telefone"]' +
              ' / [CAD_DB_C_PAR."emp_fax"]  '
            '             INSC.ESTADUAL : [CAD_DB_C_PAR."emp_ie"]'
            '                            C.N.P.J. : [CAD_DB_C_PAR."emp_cnpj"]'
            '         DATA DE EMISS'#195'O : [FAT_DB_M_CXA_NFE."dta_emissao"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          Left = 26.456710000000000000
          Top = 114.063080000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 244.740260000000000000
          Top = 114.063080000000000000
          Width = 219.212598430000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 463.952755910000000000
          Top = 114.063080000000000000
          Width = 90.708720000000000000
          Height = 30.236215590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 26.456710000000000000
          Top = 129.181200000000000000
          Width = 109.606299210000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR R$')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 136.063080000000000000
          Top = 129.181200000000000000
          Width = 109.606299210000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NUMERO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 244.740260000000000000
          Top = 129.181200000000000000
          Width = 109.606299210000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR R$')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 354.346630000000000000
          Top = 129.181200000000000000
          Width = 109.606299210000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NUMERO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 26.456710000000000000
          Top = 144.299320000000000000
          Width = 109.606299210000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."vlr_titulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 136.063080000000000000
          Top = 144.299320000000000000
          Width = 109.606299210000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE."numero"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 244.740260000000000000
          Top = 144.299320000000000000
          Width = 109.606299210000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."vlr_titulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 354.346630000000000000
          Top = 144.299320000000000000
          Width = 109.606299210000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."num_parcela"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 463.953000000000000000
          Top = 144.299320000000000000
          Width = 90.708666300000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."dta_vencimento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 563.220780000000000000
          Top = 114.063080000000000000
          Width = 143.622086300000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO BANCO')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 26.456710000000000000
          Top = 0.677179999999999900
          Width = 219.212686300000000000
          Height = 109.606370000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 40.236240000000000000
          Top = 22.354360000000000000
          Width = 188.976500000000000000
          Height = 71.811070000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo16: TfrxMemoView
          Left = 430.110214250000000000
          Top = 176.976500000000000000
          Width = 143.622086300000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'AT'#201' : ____/____/________')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 71.811070000000000000
          Top = 176.976500000000000000
          Width = 355.275766300000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO DE :                         % SOBRE R$ :  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 71.811070000000000000
          Top = 199.653680000000000000
          Width = 355.275766300000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 218.551330000000000000
          Width = 419.527830000000000000
          Height = 113.385900000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            ''
            '    NOME DO SACADO : [FAT_DB_M_NFE_CLI_DUP."nome"]'
            ''
            '                 ENDERE'#199'O : [FAT_DB_M_NFE_CLI_DUP."endereco"]'
            ''
            
              '                   MUNICIPIO : [FAT_DB_M_NFE_CLI_DUP."int_nomeci' +
              'd"]'
            ''
            
              '           C.N.P.J / C.P.F.  : [FAT_DB_M_NFE_CLI_DUP."doc_cnpj_c' +
              'pf"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 71.811070000000000000
          Top = 331.937230000000000000
          Width = 90.708720000000000000
          Height = 45.354335590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'POR'
            'EXTENSO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 162.519790000000000000
          Top = 331.937230000000000000
          Width = 544.252266300000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Extenso]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 3.779530000000000000
          Top = 176.976500000000000000
          Width = 68.031486300000000000
          Height = 298.582870000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '     N'#195'O SENDO PAGA NO VENCIMENTO COBRAR-SE-'#192' JUROS'
            'DE E COMISS'#195'O DE PERMANENCIA'
            ''
            '    ________________________________________________________'
            '                         ASSINATURA DO EMITENTE')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 71.811070000000000000
          Top = 384.850650000000000000
          Width = 634.960986300000000000
          Height = 90.708720000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RECONHECO(EMOS) A EXATID'#195'O DESTA DUPLICATA DE  COM PAGAMENTO '
            'NA IMPORT'#194'NCIA ACIMA QUE PAGAREI(EMOS) '#193'  OU '#193' SUA ORDEM NA'
            'PRA'#199'A E VENCIMENTO INDICADOS.'
            ''
            
              'EM : ____/____/________         ________________________________' +
              '_____________________'
            
              '           DATA DO ACEITE.                                      ' +
              '    ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 578.268090000000000000
          Top = 176.637910000000000000
          Width = 128.503966300000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'NF : [FAT_DB_M_CXA_NFE."numero"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 491.338900000000000000
          Top = 218.456692910000000000
          Width = 215.433210000000000000
          Height = 113.385900000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            ''
            '                   CODIGO : [FAT_DB_M_NFE_CLI_DUP."id_cliente"]'
            ''
            '                          CEP : [FAT_DB_M_NFE_CLI_DUP."cep"]'
            ''
            '                   ESTADO : [FAT_DB_M_NFE_CLI_DUP."int_uf"]'
            ''
            '    INSC. ESTADUAL  :  S/N')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Line1: TfrxLineView
          Top = 501.102350000000000000
          Width = 717.456710000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
      end
    end
  end
  object FAT_DP_M_CXA_NFE: TfrxDBDataset
    UserName = 'FAT_DB_M_CXA_NFE'
    CloseDataSource = False
    DataSet = dmGeral.BUS_CD_M_NFE_CXA
    BCDToCurrency = False
    Left = 63
    Top = 360
  end
  object FAT_DP_M_CXA_NFE_TIT: TfrxDBDataset
    UserName = 'FAT_DB_M_CXA_NFE_TIT'
    CloseDataSource = False
    DataSet = dmGeral.BUS_CD_M_NFE_TIT_CXA
    BCDToCurrency = False
    Left = 759
    Top = 304
  end
  object FAT_FR_M_CXA_RVS: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41822.420257245400000000
    ReportOptions.LastChange = 41835.722833599540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 250
    Top = 104
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = FAT_DP_M_CXA_NFE
        DataSetName = 'FAT_DB_M_CXA_NFE'
      end
      item
        DataSet = FAT_DP_M_CXA_NFE_TIT
        DataSetName = 'FAT_DB_M_CXA_NFE_TIT'
      end>
    Variables = <
      item
        Name = ' Externo'
        Value = Null
      end
      item
        Name = 'ft_vlrExtenso'
        Value = ''
      end
      item
        Name = 'ft_codlme'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = FAT_DP_M_CXA_NFE
        DataSetName = 'FAT_DB_M_CXA_NFE'
        RowCount = 0
        object Memo3: TfrxMemoView
          Top = 44.559060000000000000
          Width = 718.110700000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Referente ao Pagamento do(s) T'#237'tulos Abaixo Relacionados(s):'
            ''
            ''
            '')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo6: TfrxMemoView
          Top = 2.472480000000000000
          Width = 718.110700000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Recebemos do Sr('#170'), [Uppercase(<FAT_DB_M_CXA_NFE."int_nomeemi">)' +
              '], o valor de ([vlr_total_tit]),'
            
              '[ft_vlrExtenso],************************************************' +
              '****************************************************************' +
              '******************************************************'
            '')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 3.338590000000000000
          Top = 17.236240000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 94.488250000000000000
          Top = 1.779530000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'T'#237'tulo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 182.637910000000000000
          Top = 2.118120000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 252.669450000000000000
          Top = 2.118120000000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Dta. Pagamento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 347.228510000000000000
          Top = 2.118120000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. T'#237'tulo')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 421.260050000000000000
          Top = 2.118120000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 496.291590000000000000
          Top = 2.118120000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Juros')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 570.354670000000000000
          Top = 2.118120000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Cr'#233'dito')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 643.386210000000000000
          Top = 2.118120000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Pago')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 6.338590000000000000
          Top = 1.779530000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'N'#186' Nota Fiscal')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        DataSet = FAT_DP_M_CXA_NFE_TIT
        DataSetName = 'FAT_DB_M_CXA_NFE_TIT'
        RowCount = 0
        object FIN_DB_M_RBX_TITid_titulo: TfrxMemoView
          Left = 94.488250000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."id_nfe_tit"]')
          ParentFont = False
        end
        object FIN_DB_M_RBX_TITdta_vencimento: TfrxMemoView
          Left = 181.417440000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."dta_vencimento"]')
          ParentFont = False
        end
        object FIN_DB_M_RBX_TITvlr_titulo: TfrxMemoView
          Left = 346.937230000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."vlr_titulo"]')
          ParentFont = False
        end
        object FIN_DB_M_RBX_TITvlr_desconto: TfrxMemoView
          Left = 421.527830000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object FIN_DB_M_RBX_TITvlr_juros: TfrxMemoView
          Left = 495.338900000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object FIN_DB_M_RBX_TITvlr_cred_utilizado: TfrxMemoView
          Left = 570.709030000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object FIN_DB_M_RBX_TITvlr_pagamento: TfrxMemoView
          Left = 642.520100000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."vlr_titulo"]')
          ParentFont = False
        end
        object FIN_DB_M_RBXdta_baixa: TfrxMemoView
          Left = 252.008040000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[date]')
          ParentFont = False
        end
        object FIN_DB_M_RBX_TITint_numeronf: TfrxMemoView
          Left = 6.338590000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE."numero"]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 120.944960000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo19: TfrxMemoView
          Left = 8.000000000000000000
          Top = 26.779530000000000000
          Width = 710.551640000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pagamento efetuado em [date]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 226.771800000000000000
          Top = 94.370130000000000000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Financeiro')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 0.574830000000000000
          Top = 110.826840000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 259.039580000000000000
          Top = 64.811070000000000000
          Width = 196.535560000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'R E C I B O')
          ParentFont = False
        end
        object imgEmpresa1: TfrxPictureView
          Left = 602.976810000000000000
          Width = 113.385900000000000000
          Height = 52.913420000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CAD_DB_C_PARemp_endereco: TfrxMemoView
          Left = 4.031540000000000000
          Top = 21.275510000000000000
          Width = 536.693260000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[CAD_DB_C_PAR."emp_endereco"], n'#186' [CAD_DB_C_PAR."emp_numero"], [' +
              'CAD_DB_C_PAR."emp_bairro"], [CAD_DB_C_PAR."int_nomecid"] - [CAD_' +
              'DB_C_PAR."int_uf"], [CAD_DB_C_PAR."emp_telefone"]')
          ParentFont = False
        end
        object CAD_DB_C_PARemp_cnpj: TfrxMemoView
          Left = 4.031540000000000000
          Top = 40.173160000000000000
          Width = 385.512060000000000000
          Height = 15.118120000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'CNPJ: [CAD_DB_C_PAR."emp_cnpj"]   Insc. Estadual: [CAD_DB_C_PAR.' +
              '"emp_ie"] ')
          ParentFont = False
        end
        object CAD_DB_C_PARemp_razao: TfrxMemoView
          Left = 4.031540000000000000
          Top = 2.952690000000000000
          Width = 245.669450000000000000
          Height = 15.118110240000000000
          DataField = 'emp_razao'
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_razao"]')
          ParentFont = False
        end
        object FIN_DB_M_RBXdta_baixa1: TfrxMemoView
          Left = 53.031540000000000000
          Top = 56.629870000000000000
          Width = 113.385900000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 3.779530000000000000
          Top = 57.409400000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        FillType = ftBrush
        Height = 120.944960000000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        object Memo20: TfrxMemoView
          Left = 259.039580000000000000
          Top = 75.811070000000000000
          Width = 196.535560000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'R E C I B O')
          ParentFont = False
        end
        object imgEmpresa2: TfrxPictureView
          Left = 602.976810000000000000
          Top = 15.000000000000000000
          Width = 113.385900000000000000
          Height = 52.913420000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo21: TfrxMemoView
          Left = 4.031540000000000000
          Top = 32.275510000000000000
          Width = 536.693260000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[CAD_DB_C_PAR."emp_endereco"], n'#186' [CAD_DB_C_PAR."emp_numero"], [' +
              'CAD_DB_C_PAR."emp_bairro"], [CAD_DB_C_PAR."int_nomecid"] - [CAD_' +
              'DB_C_PAR."int_uf"], [CAD_DB_C_PAR."emp_telefone"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 4.031540000000000000
          Top = 51.173160000000000000
          Width = 385.512060000000000000
          Height = 15.118120000000000000
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'CNPJ: [CAD_DB_C_PAR."emp_cnpj"]   Insc. Estadual: [CAD_DB_C_PAR.' +
              '"emp_ie"] ')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 4.031540000000000000
          Top = 13.952690000000000000
          Width = 245.669450000000000000
          Height = 15.118110240000000000
          DataField = 'emp_razao'
          DataSet = dmGeral.CAD_DB_R_PAR
          DataSetName = 'CAD_DB_C_PAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."emp_razao"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 53.031540000000000000
          Top = 68.629870000000000000
          Width = 113.385900000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 68.409400000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 616.063390000000000000
        Width = 718.110700000000000000
        DataSet = FAT_DP_M_CXA_NFE
        DataSetName = 'FAT_DB_M_CXA_NFE'
        RowCount = 0
        object Memo31: TfrxMemoView
          Top = 41.574830000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Referente ao Pagamento do(s) T'#237'tulos Abaixo Relacionados(s):'
            '')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo32: TfrxMemoView
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Recebemos do Sr('#170'), [Uppercase(<FAT_DB_M_CXA_NFE."int_nomeemi">)' +
              '], o valor de ([FAT_DB_M_CXA_NFE."vlr_liquido" #n%2,2n]),'
            
              '[ft_vlrExtenso],************************************************' +
              '****************************************************************' +
              '******************************************************')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object Header5: TfrxHeader
        FillType = ftBrush
        Height = 23.015770000000000000
        Top = 699.213050000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          Left = 4.000000000000000000
          Top = 19.236240000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo33: TfrxMemoView
          Left = 95.149660000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'T'#237'tulo')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 183.299320000000000000
          Top = 4.118120000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 253.330860000000000000
          Top = 4.118120000000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Dta. Pagamento')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 347.889920000000000000
          Top = 4.118120000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. T'#237'tulo')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 421.921460000000000000
          Top = 4.118120000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 496.953000000000000000
          Top = 4.118120000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Juros')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 571.016080000000000000
          Top = 4.118120000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Cr'#233'dito')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 644.047620000000000000
          Top = 4.118120000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Pago')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 7.000000000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'N'#186' Nota Fiscal')
          ParentFont = False
        end
      end
      object DetailData3: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 744.567410000000000000
        Width = 718.110700000000000000
        DataSet = FAT_DP_M_CXA_NFE_TIT
        DataSetName = 'FAT_DB_M_CXA_NFE_TIT'
        RowCount = 0
        object Memo42: TfrxMemoView
          Left = 95.708720000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."id_nfe_tit"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 182.637910000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."dta_vencimento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 348.157700000000000000
          Top = 1.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."vlr_titulo"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 422.748300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 496.559370000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 571.929500000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 643.740570000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE_TIT."vlr_titulo"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 253.228510000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[date]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FAT_DB_M_CXA_NFE."numero"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 120.944960000000000000
        Top = 782.362710000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 8.000000000000000000
          Top = 26.779530000000000000
          Width = 710.551640000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pagamento efetuado em [Date]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 226.771800000000000000
          Top = 94.370130000000000000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Financeiro')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 0.574830000000000000
          Top = 110.826840000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
      end
    end
  end
  object pmApoioNFSe: TPopupMenu
    Left = 824
    Top = 491
    object FaturarsemRPS1: TMenuItem
      Caption = 'Faturar sem RPS'
      OnClick = FaturarsemRPS1Click
    end
  end
  object pmImpTitCheque: TPopupMenu
    Left = 504
    Top = 435
    object ImprimirTttuloparaCheque1: TMenuItem
      Caption = 'Imprimir T'#237'ttulo para Cheque'
      OnClick = ImprimirTttuloparaCheque1Click
    end
  end
  object BUS_CD_M_PED_PCP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FAT_DP_M_PED'
    RemoteServer = pcConecaoDBFat
    Left = 712
    Top = 491
    object BUS_CD_M_PED_PCPid_pedido: TIntegerField
      FieldName = 'id_pedido'
    end
    object BUS_CD_M_PED_PCPid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object BUS_CD_M_PED_PCPdta_pedido: TDateField
      FieldName = 'dta_pedido'
    end
    object BUS_CD_M_PED_PCPid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
    end
    object BUS_CD_M_PED_PCPid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object BUS_CD_M_PED_PCPvlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPper_desconto: TFloatField
      FieldName = 'per_desconto'
    end
    object BUS_CD_M_PED_PCPvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPid_condicao_pag: TIntegerField
      FieldName = 'id_condicao_pag'
    end
    object BUS_CD_M_PED_PCPpcp_id_opr: TIntegerField
      FieldName = 'pcp_id_opr'
    end
    object BUS_CD_M_PED_PCPsituacao: TIntegerField
      FieldName = 'situacao'
    end
    object BUS_CD_M_PED_PCPsituacao_aprovacao: TIntegerField
      FieldName = 'situacao_aprovacao'
    end
    object BUS_CD_M_PED_PCPid_atendente: TIntegerField
      FieldName = 'id_atendente'
    end
    object BUS_CD_M_PED_PCPid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object BUS_CD_M_PED_PCPid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object BUS_CD_M_PED_PCPtipo_restricao: TWideStringField
      FieldName = 'tipo_restricao'
      Size = 100
    end
    object BUS_CD_M_PED_PCPid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
    end
    object BUS_CD_M_PED_PCPint_nomecli: TWideStringField
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PCPint_nometme: TWideStringField
      FieldName = 'int_nometme'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_PED_PCPint_nomefun: TWideStringField
      FieldName = 'int_nomefun'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PCPint_nomecpg: TWideStringField
      FieldName = 'int_nomecpg'
      ProviderFlags = []
      Size = 30
    end
    object BUS_CD_M_PED_PCPint_nomeate: TWideStringField
      FieldName = 'int_nomeate'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PCPint_nomeres: TWideStringField
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PCPFAT_SQ_M_PED_TIT: TDataSetField
      FieldName = 'FAT_SQ_M_PED_TIT'
    end
    object BUS_CD_M_PED_PCPFAT_SQ_M_PED_ITE: TDataSetField
      FieldName = 'FAT_SQ_M_PED_ITE'
    end
    object BUS_CD_M_PED_PCPint_nomeest: TWideStringField
      FieldName = 'int_nomeest'
      ProviderFlags = []
      Size = 2
    end
    object BUS_CD_M_PED_PCPint_cpfcnpj: TWideStringField
      FieldName = 'int_cpfcnpj'
      ProviderFlags = []
      Size = 14
    end
    object BUS_CD_M_PED_PCPint_id_perfil: TIntegerField
      FieldName = 'int_id_perfil'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PCPjustificativa: TWideStringField
      FieldName = 'justificativa'
      Size = 100
    end
    object BUS_CD_M_PED_PCPid_usuario_lib: TIntegerField
      FieldName = 'id_usuario_lib'
    end
    object BUS_CD_M_PED_PCPhor_pedido: TSQLTimeStampField
      FieldName = 'hor_pedido'
    end
    object BUS_CD_M_PED_PCPcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_M_PED_PCPrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_M_PED_PCPorigem: TIntegerField
      FieldName = 'origem'
    end
    object BUS_CD_M_PED_PCPdispositivo: TWideStringField
      FieldName = 'dispositivo'
      Size = 50
    end
    object BUS_CD_M_PED_PCPgps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object BUS_CD_M_PED_PCPgps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
    object BUS_CD_M_PED_PCPcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object BUS_CD_M_PED_PCPint_pessoacli: TIntegerField
      FieldName = 'int_pessoacli'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PCPid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
    end
    object BUS_CD_M_PED_PCPint_sitaprov: TWideStringField
      FieldName = 'int_sitaprov'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PCPint_sitped: TWideStringField
      FieldName = 'int_sitped'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PCPenvia_carga: TBooleanField
      FieldName = 'envia_carga'
    end
    object BUS_CD_M_PED_PCPdta_prev_entrega: TDateField
      FieldName = 'dta_prev_entrega'
    end
    object BUS_CD_M_PED_PCPid_ors: TIntegerField
      FieldName = 'id_ors'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PCPint_nomecid: TWideStringField
      FieldName = 'int_nomecid'
      ProviderFlags = []
      Size = 60
    end
    object BUS_CD_M_PED_PCPid_abertura: TIntegerField
      FieldName = 'id_abertura'
    end
    object BUS_CD_M_PED_PCPint_ie_rg_cli: TWideStringField
      FieldName = 'int_ie_rg_cli'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PCPint_selecao: TBooleanField
      FieldName = 'int_selecao'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PCPdias_cpg_prazo: TIntegerField
      FieldName = 'dias_cpg_prazo'
    end
    object BUS_CD_M_PED_PCPint_nomereg: TWideStringField
      FieldName = 'int_nomereg'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PCPoffline: TBooleanField
      FieldName = 'offline'
    end
    object BUS_CD_M_PED_PCPconferido: TBooleanField
      FieldName = 'conferido'
    end
    object BUS_CD_M_PED_PCPid_conf: TIntegerField
      FieldName = 'id_conf'
    end
    object BUS_CD_M_PED_PCPdta_conf: TDateField
      FieldName = 'dta_conf'
    end
    object BUS_CD_M_PED_PCPhor_conf: TTimeField
      FieldName = 'hor_conf'
    end
    object BUS_CD_M_PED_PCPresultado_conf: TIntegerField
      FieldName = 'resultado_conf'
    end
    object BUS_CD_M_PED_PCPid_resp_conf: TIntegerField
      FieldName = 'id_resp_conf'
    end
    object BUS_CD_M_PED_PCPint_nome_rcn: TWideStringField
      FieldName = 'int_nome_rcn'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PCPid_propriedade: TIntegerField
      FieldName = 'id_propriedade'
    end
    object BUS_CD_M_PED_PCPmod_frete: TIntegerField
      FieldName = 'mod_frete'
    end
    object BUS_CD_M_PED_PCPvlr_frete: TFMTBCDField
      FieldName = 'vlr_frete'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPid_mkt: TIntegerField
      FieldName = 'id_mkt'
    end
    object BUS_CD_M_PED_PCPint_numloteopr: TWideStringField
      FieldName = 'int_numloteopr'
      ProviderFlags = []
      Size = 15
    end
    object BUS_CD_M_PED_PCPid_motorista: TIntegerField
      FieldName = 'id_motorista'
    end
    object BUS_CD_M_PED_PCPid_placa: TWideStringField
      FieldName = 'id_placa'
      EditMask = 'AAA-9999;0;_'
      Size = 8
    end
    object BUS_CD_M_PED_PCPint_nomemta: TWideStringField
      FieldName = 'int_nomemta'
      ProviderFlags = []
      Size = 80
    end
    object BUS_CD_M_PED_PCPvlr_credito: TFMTBCDField
      FieldName = 'vlr_credito'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPvlr_desc_especial: TFMTBCDField
      FieldName = 'vlr_desc_especial'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPvlr_desc_basico: TFMTBCDField
      FieldName = 'vlr_desc_basico'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPsgq_per_comissao: TFloatField
      FieldName = 'sgq_per_comissao'
    end
    object BUS_CD_M_PED_PCPint_sitped2: TWideStringField
      Alignment = taCenter
      FieldName = 'int_sitped2'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PCPqtde_volume: TFloatField
      FieldName = 'qtde_volume'
    end
    object BUS_CD_M_PED_PCPvlr_icm_desn: TFMTBCDField
      FieldName = 'vlr_icm_desn'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPint_sitord: TIntegerField
      FieldName = 'int_sitord'
      ProviderFlags = []
    end
    object BUS_CD_M_PED_PCPvlr_desc_produtos: TFMTBCDField
      FieldName = 'vlr_desc_produtos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPper_desc_produtos: TFloatField
      FieldName = 'per_desc_produtos'
    end
    object BUS_CD_M_PED_PCPvlr_produtos: TFMTBCDField
      FieldName = 'vlr_produtos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPvlr_serv_bruto: TFMTBCDField
      FieldName = 'vlr_serv_bruto'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPvlr_desc_servicos: TFMTBCDField
      FieldName = 'vlr_desc_servicos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPper_desc_servicos: TFloatField
      FieldName = 'per_desc_servicos'
    end
    object BUS_CD_M_PED_PCPvlr_ser_liquido: TFMTBCDField
      FieldName = 'vlr_ser_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPvlr_terceiro: TFMTBCDField
      FieldName = 'vlr_terceiro'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPvlr_desc_terceiro: TFMTBCDField
      FieldName = 'vlr_desc_terceiro'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPper_desc_terceiro: TFloatField
      FieldName = 'per_desc_terceiro'
    end
    object BUS_CD_M_PED_PCPvlr_terc_liquido: TFMTBCDField
      FieldName = 'vlr_terc_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPped_gera_fin_separado: TBooleanField
      FieldName = 'ped_gera_fin_separado'
    end
    object BUS_CD_M_PED_PCPFAT_SQ_M_PED_TIT_SER: TDataSetField
      FieldName = 'FAT_SQ_M_PED_TIT_SER'
    end
    object BUS_CD_M_PED_PCPvlr_prod_liquido: TFMTBCDField
      FieldName = 'vlr_prod_liquido'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPsepara_prod_serv: TBooleanField
      FieldName = 'separa_prod_serv'
    end
    object BUS_CD_M_PED_PCPvlr_cred_produtos: TFMTBCDField
      FieldName = 'vlr_cred_produtos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPvlr_cred_servicos: TFMTBCDField
      FieldName = 'vlr_cred_servicos'
      Precision = 18
      Size = 4
    end
    object BUS_CD_M_PED_PCPobs: TWideStringField
      FieldName = 'obs'
      Size = 255
    end
    object BUS_CD_M_PED_PCPid_mecanico: TIntegerField
      FieldName = 'id_mecanico'
    end
    object BUS_CD_M_PED_PCPsgq_texto_cond_pgto: TWideStringField
      FieldName = 'sgq_texto_cond_pgto'
      Size = 80
    end
    object BUS_CD_M_PED_PCPper_desc_basico: TFloatField
      FieldName = 'per_desc_basico'
    end
    object BUS_CD_M_PED_PCPper_desc_especial: TFloatField
      FieldName = 'per_desc_especial'
    end
    object BUS_CD_M_PED_PCPdta_liberacao: TDateField
      FieldName = 'dta_liberacao'
    end
    object BUS_CD_M_PED_PCPint_nomelib: TWideStringField
      FieldName = 'int_nomelib'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_M_PED_PCPpcp_obs: TWideStringField
      FieldName = 'pcp_obs'
      Size = 200
    end
    object BUS_CD_M_PED_PCPpedido_origem_aut: TIntegerField
      FieldName = 'pedido_origem_aut'
    end
    object BUS_CD_M_PED_PCPpedido_automatico: TBooleanField
      FieldName = 'pedido_automatico'
    end
  end
  object ConexaoBDFat: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=18.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}'
      'DSAuthenticationUser=admin'
      'HostName=localhost')
    Left = 825
    Top = 440
    UniqueId = '{9DB98CFE-7809-45C4-AD3A-DA87030605AD}'
  end
  object pcConecaoDBFat: TDSProviderConnection
    ServerClassName = 'TSM'
    SQLConnection = ConexaoBDFat
    Left = 711
    Top = 440
  end
  object FIN_CD_M_REC_PCP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FIN_DP_M_REC'
    RemoteServer = pcConecaoDBFat
    Left = 710
    Top = 539
    object FIN_CD_M_REC_PCPid_empresa: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_empresa'
    end
    object FIN_CD_M_REC_PCPhistorico: TWideStringField
      DisplayWidth = 100
      FieldName = 'historico'
      Size = 100
    end
    object FIN_CD_M_REC_PCPid_titulo: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_titulo'
      Visible = False
    end
    object FIN_CD_M_REC_PCPid_cliente: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_cliente'
      Visible = False
    end
    object FIN_CD_M_REC_PCPnum_parcela: TWideStringField
      DisplayWidth = 20
      FieldName = 'num_parcela'
      Visible = False
    end
    object FIN_CD_M_REC_PCPdta_emissao: TDateField
      DisplayWidth = 10
      FieldName = 'dta_emissao'
      Visible = False
    end
    object FIN_CD_M_REC_PCPvlr_parcela: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_parcela'
      Visible = False
      Precision = 18
      Size = 4
    end
    object FIN_CD_M_REC_PCPvlr_original: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_original'
      Visible = False
      Precision = 18
      Size = 4
    end
    object FIN_CD_M_REC_PCPdta_vencimento: TDateField
      DisplayWidth = 10
      FieldName = 'dta_vencimento'
      Visible = False
    end
    object FIN_CD_M_REC_PCPdta_original: TDateField
      DisplayWidth = 10
      FieldName = 'dta_original'
      Visible = False
    end
    object FIN_CD_M_REC_PCPvlr_saldo: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_saldo'
      Visible = False
      Precision = 18
      Size = 4
    end
    object FIN_CD_M_REC_PCPid_fiscal: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_fiscal'
      Visible = False
    end
    object FIN_CD_M_REC_PCPorigem: TIntegerField
      DisplayWidth = 10
      FieldName = 'origem'
      Visible = False
    end
    object FIN_CD_M_REC_PCPid_forma_pag: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_forma_pag'
      Visible = False
    end
    object FIN_CD_M_REC_PCPche_conta: TIntegerField
      DisplayWidth = 10
      FieldName = 'che_conta'
      Visible = False
    end
    object FIN_CD_M_REC_PCPche_cheque: TIntegerField
      DisplayWidth = 10
      FieldName = 'che_cheque'
      Visible = False
    end
    object FIN_CD_M_REC_PCPche_banco: TWideStringField
      DisplayWidth = 10
      FieldName = 'che_banco'
      Visible = False
      Size = 10
    end
    object FIN_CD_M_REC_PCPche_emitente: TWideStringField
      DisplayWidth = 50
      FieldName = 'che_emitente'
      Visible = False
      Size = 50
    end
    object FIN_CD_M_REC_PCPche_agencia: TWideStringField
      DisplayWidth = 10
      FieldName = 'che_agencia'
      Visible = False
      Size = 10
    end
    object FIN_CD_M_REC_PCPtipo_lancamento: TIntegerField
      DisplayWidth = 10
      FieldName = 'tipo_lancamento'
      Visible = False
    end
    object FIN_CD_M_REC_PCPid_local_titulo: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_local_titulo'
      Visible = False
    end
    object FIN_CD_M_REC_PCPid_plano: TWideStringField
      DisplayWidth = 11
      FieldName = 'id_plano'
      Visible = False
      Size = 11
    end
    object FIN_CD_M_REC_PCPint_nomecli: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object FIN_CD_M_REC_PCPint_nomefpg: TWideStringField
      DisplayWidth = 30
      FieldName = 'int_nomefpg'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object FIN_CD_M_REC_PCPint_nomelto: TWideStringField
      DisplayWidth = 30
      FieldName = 'int_nomelto'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object FIN_CD_M_REC_PCPint_nomepct: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomepct'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object FIN_CD_M_REC_PCPcod_lme: TWideStringField
      DisplayWidth = 20
      FieldName = 'cod_lme'
      Visible = False
    end
    object FIN_CD_M_REC_PCPrev_lme: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 5
      FieldName = 'rev_lme'
      Visible = False
      Size = 5
    end
    object FIN_CD_M_REC_PCPcar_taxa: TFloatField
      DisplayWidth = 10
      FieldName = 'car_taxa'
      Visible = False
    end
    object FIN_CD_M_REC_PCPcar_motivo_can: TWideStringField
      DisplayWidth = 100
      FieldName = 'car_motivo_can'
      Visible = False
      Size = 100
    end
    object FIN_CD_M_REC_PCPcar_dta_can: TDateField
      DisplayWidth = 10
      FieldName = 'car_dta_can'
      Visible = False
    end
    object FIN_CD_M_REC_PCPbol_nosso_numero: TWideStringField
      DisplayWidth = 30
      FieldName = 'bol_nosso_numero'
      Visible = False
      Size = 30
    end
    object FIN_CD_M_REC_PCPint_cnpjcpf: TWideStringField
      DisplayWidth = 14
      FieldName = 'int_cnpjcpf'
      ProviderFlags = []
      Visible = False
      Size = 14
    end
    object FIN_CD_M_REC_PCPint_bairrocob: TWideStringField
      DisplayWidth = 40
      FieldName = 'int_bairrocob'
      ProviderFlags = []
      Visible = False
      Size = 40
    end
    object FIN_CD_M_REC_PCPint_endcob: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_endcob'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object FIN_CD_M_REC_PCPint_estadocob: TWideStringField
      DisplayWidth = 2
      FieldName = 'int_estadocob'
      ProviderFlags = []
      Visible = False
      Size = 2
    end
    object FIN_CD_M_REC_PCPint_cepcob: TWideStringField
      DisplayWidth = 9
      FieldName = 'int_cepcob'
      ProviderFlags = []
      Visible = False
      Size = 9
    end
    object FIN_CD_M_REC_PCPint_cidcob: TWideStringField
      DisplayWidth = 40
      FieldName = 'int_cidcob'
      ProviderFlags = []
      Visible = False
      Size = 40
    end
    object FIN_CD_M_REC_PCPint_emailcli: TWideStringField
      DisplayWidth = 60
      FieldName = 'int_emailcli'
      ProviderFlags = []
      Visible = False
      Size = 60
    end
    object FIN_CD_M_REC_PCPseq_nosso_numero: TIntegerField
      DisplayWidth = 10
      FieldName = 'seq_nosso_numero'
      Visible = False
    end
    object FIN_CD_M_REC_PCPbol_chave: TIntegerField
      DisplayWidth = 10
      FieldName = 'bol_chave'
      Visible = False
    end
    object FIN_CD_M_REC_PCPint_numeronf: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_numeronf'
      ProviderFlags = []
      Visible = False
    end
    object FIN_CD_M_REC_PCPbol_id_conta: TIntegerField
      DisplayWidth = 10
      FieldName = 'bol_id_conta'
      Visible = False
    end
    object FIN_CD_M_REC_PCPcar_taxa_ope: TFloatField
      DisplayWidth = 10
      FieldName = 'car_taxa_ope'
      Visible = False
    end
    object FIN_CD_M_REC_PCPcar_n_lote_id_resp: TIntegerField
      DisplayWidth = 10
      FieldName = 'car_n_lote_id_resp'
      Visible = False
    end
    object FIN_CD_M_REC_PCPcar_n_lote_id_conta: TIntegerField
      DisplayWidth = 10
      FieldName = 'car_n_lote_id_conta'
      Visible = False
    end
    object FIN_CD_M_REC_PCPid_baixa: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_baixa'
      Visible = False
    end
    object FIN_CD_M_REC_PCPcar_n_lote: TWideStringField
      DisplayWidth = 30
      FieldName = 'car_n_lote'
      Visible = False
      Size = 30
    end
    object FIN_CD_M_REC_PCPsituacao_chq: TIntegerField
      DisplayWidth = 10
      FieldName = 'situacao_chq'
      Visible = False
    end
    object FIN_CD_M_REC_PCPid_mch: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_mch'
      Visible = False
    end
    object FIN_CD_M_REC_PCPid_vendedor: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_vendedor'
      Visible = False
    end
    object FIN_CD_M_REC_PCPcar_id_maquineta: TIntegerField
      DisplayWidth = 10
      FieldName = 'car_id_maquineta'
      Visible = False
    end
    object FIN_CD_M_REC_PCPid_credito: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_credito'
      Visible = False
    end
    object FIN_CD_M_REC_PCPint_docimpresso: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_docimpresso'
      ProviderFlags = []
      Visible = False
    end
    object FIN_CD_M_REC_PCPbol_banco: TIntegerField
      DisplayWidth = 10
      FieldName = 'bol_banco'
      Visible = False
    end
    object FIN_CD_M_REC_PCPid_obra: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_obra'
      Visible = False
    end
    object FIN_CD_M_REC_PCPdta_venc_original: TDateField
      DisplayWidth = 10
      FieldName = 'dta_venc_original'
      Visible = False
    end
    object FIN_CD_M_REC_PCPint_descobra: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_descobra'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
  end
  object PCP_CD_M_ORS_PCP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PCP_DP_M_ORS'
    RemoteServer = pcConecaoDBFat
    Left = 830
    Top = 539
    object PCP_CD_M_ORS_PCPid_ors: TIntegerField
      DisplayLabel = 'Controle'
      DisplayWidth = 10
      FieldName = 'id_ors'
    end
    object PCP_CD_M_ORS_PCPdta_emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'dta_emissao'
    end
    object PCP_CD_M_ORS_PCPint_nomeres: TWideStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 24
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Size = 50
    end
    object PCP_CD_M_ORS_PCPid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPobservacao: TWideStringField
      FieldName = 'observacao'
      Visible = False
      Size = 200
    end
    object PCP_CD_M_ORS_PCPid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPPCP_SQ_M_ORS_TIT: TDataSetField
      FieldName = 'PCP_SQ_M_ORS_TIT'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPPCP_SQ_M_ORS_ITE: TDataSetField
      FieldName = 'PCP_SQ_M_ORS_ITE'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPcod_lme: TWideStringField
      FieldName = 'cod_lme'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      Visible = False
      Size = 5
    end
    object PCP_CD_M_ORS_PCPid_motorista: TIntegerField
      FieldName = 'id_motorista'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPint_nomemta: TWideStringField
      FieldName = 'int_nomemta'
      ProviderFlags = []
      Visible = False
      Size = 80
    end
    object PCP_CD_M_ORS_PCPint_nomecli: TWideStringField
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object PCP_CD_M_ORS_PCPint_telfixo: TWideStringField
      FieldName = 'int_telfixo'
      ProviderFlags = []
      Visible = False
      Size = 14
    end
    object PCP_CD_M_ORS_PCPid_rom: TIntegerField
      FieldName = 'id_rom'
      ProviderFlags = []
      Visible = False
    end
    object PCP_CD_M_ORS_PCPint_nomeresp_rom: TWideStringField
      FieldName = 'int_nomeresp_rom'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object PCP_CD_M_ORS_PCPint_dta_rom: TDateField
      FieldName = 'int_dta_rom'
      ProviderFlags = []
      Visible = False
    end
    object PCP_CD_M_ORS_PCPint_id_opr: TIntegerField
      FieldName = 'int_id_opr'
      ProviderFlags = []
      Visible = False
    end
    object PCP_CD_M_ORS_PCPint_nomeven: TWideStringField
      FieldName = 'int_nomeven'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object PCP_CD_M_ORS_PCPid_tipo_mov_estoque: TIntegerField
      FieldName = 'id_tipo_mov_estoque'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPid_almoxarifado: TIntegerField
      FieldName = 'id_almoxarifado'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPvlr_bruto: TFMTBCDField
      FieldName = 'vlr_bruto'
      Visible = False
      Precision = 18
      Size = 2
    end
    object PCP_CD_M_ORS_PCPvlr_desconto: TFMTBCDField
      FieldName = 'vlr_desconto'
      Visible = False
      Precision = 18
      Size = 2
    end
    object PCP_CD_M_ORS_PCPper_desconto: TFloatField
      FieldName = 'per_desconto'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPvlr_liquido: TFMTBCDField
      FieldName = 'vlr_liquido'
      Visible = False
      Precision = 18
      Size = 2
    end
    object PCP_CD_M_ORS_PCPhor_emissao: TTimeField
      FieldName = 'hor_emissao'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPid_abertura: TIntegerField
      FieldName = 'id_abertura'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPfin_gerado: TBooleanField
      FieldName = 'fin_gerado'
      Visible = False
    end
    object PCP_CD_M_ORS_PCPint_id_condicao_pag: TIntegerField
      FieldName = 'int_id_condicao_pag'
      ProviderFlags = []
      Visible = False
    end
    object PCP_CD_M_ORS_PCPint_desc_cpg: TWideStringField
      FieldName = 'int_desc_cpg'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object PCP_CD_M_ORS_PCPPCP_SQ_M_ORS_ICO: TDataSetField
      FieldName = 'PCP_SQ_M_ORS_ICO'
    end
    object PCP_CD_M_ORS_PCPint_numloteopr: TWideStringField
      FieldName = 'int_numloteopr'
      ProviderFlags = []
      Size = 15
    end
    object PCP_CD_M_ORS_PCPint_id_cliente: TIntegerField
      FieldName = 'int_id_cliente'
      ProviderFlags = []
    end
    object PCP_CD_M_ORS_PCPid_fiscal: TIntegerField
      FieldName = 'id_fiscal'
    end
  end
end
