object CSU_FM_C_CLI: TCSU_FM_C_CLI
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 570
  ClientWidth = 935
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 43
    Width = 935
    Height = 527
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlCentral: TPanel
      Left = 74
      Top = 6
      Width = 743
      Height = 498
      BevelOuter = bvNone
      TabOrder = 0
      object btnSair: TSpeedButton
        Left = 544
        Top = 465
        Width = 190
        Height = 25
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          9E020000424D9E0200000000000036000000280000000E0000000E0000000100
          18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD2D2D2808080D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF1809FFFFFFFFFFFFFFFFFFFFFFFF8B8B8B9D9D9D3232323535357070
          70C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFF60DFFFFFFFFFFFFFFFFFFFFFFFF3333
          338282823232323232323232323B3B3BFFFFFFFFFFFFFFFFFFFFFFFF1C0EFFFF
          FFFFFFFFFFFFFFFFFFFF3F3F3F8686863232323232323232323F3F3FFFFFFFFF
          FFFFFFFFFFFFFFFFF60DFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F86868632323232
          3232323232404040FFFFFFFFFFFFFFFFFFFFFFFF1C0EFFFFFFFFFFFFFFFFFFFF
          FFFF3F3F3F868686323232323232323232404040FFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFF3E3E3E8787878686863C3C3C323232404040
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3E3E3E878787
          8686863C3C3C323232404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFF3F3F3F868686323232323232323232404040FFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3F3F3F8686863232323232323232
          32404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF3F3F
          3F868686323232323232323232404040FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFF333333828282323232323232323232353535FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF8B8B8B9E9E9E32323232
          3232404040808080FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD1D1D1797979B7B7B7EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000}
        ParentFont = False
        OnClick = btnSairClick
      end
      object Label4: TLabel
        Left = 23
        Top = 136
        Width = 68
        Height = 13
        Caption = 'Cliente inativo'
      end
      object btnLocalizacao: TSpeedButton
        Left = 388
        Top = 465
        Width = 150
        Height = 25
        Caption = 'Localiza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFF4EBE7DACAC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE0EFEAB9F1F983E9F1CC8B69E28B629D5E3D815742C6
          CDD2DACCC5FFFFFFFFFFFFF3EDE9E6C9B9DAA083D16735DEB8A57BCCB61AB398
          7FF5FF6EF5FFD1AA8FA96645B2AAA8C0CAD3844A2B8C5A3FD7906AD18055DA79
          4BCE855C72D2CEACF5FDFFFFFF95D4C154C2AB7EF1FA84FAFFDBCCCAC8CBD1B6
          A7A1955F439B674CE99D7ADE916C94C8BF59F9FF55F3FAB7ECEE94D5C46DC7AF
          A0D9C9D9EDE4FFFFFFE8E1E3BBB0ACA26244A6684CAD694BBCCFC275F9FF6FF7
          FE75EBF398CAEAD9D7EAA6DCCE3AB29225AB87F3FAF8FFFFFFA1D2D54CB8C296
          8A7A799F9A59C2CB91FFFF8FF2F7B1DDF0BFC2E6B2C0E6D5DCEAA1DACA67C3AB
          8DD2C0FFFFFFFFFFFF0D907071C4CF65C5CE62C4CA6EC3C9C1E5F3D1D4E9858C
          BBC6D7EEB7C8E7D7DEEAF5FAF9FFFFFFEAF6F38AD1BEC5EBE0D3DBD725967E7E
          CFD97DBCC5A5A1B6D6DFEEDEEBEE00017DA3AEB0C4D6EFDAE0EBFFFFFFEFF8F5
          5ABFA36AC5AC5AC1A4D4DFDCC1CEC747AEA082D6DC9BBBC5E3E9EEADB9DE0000
          AF5F6250A2AFBED8DFE6FFFFFFA6DBCC78CAB27ECCB675CBB2AFD3C9FFF0F82F
          987579CAC894E0E2F6FFF32B36CB0615CC252C73808884D6DBE1FFFFFF95D5C2
          87D0BA89D1BB7DCEB6DEE7E4FFF3F94CA98C309D79AAEEE88EAFF40D17D71D2C
          E40917D57C858BDBE1E3FFFFFFACDECF8ED3BE8ED3BE95D7C3FFF9FDECEAEA30
          A17E41A78567C799545DF31C25B416130B1322EC8491E0ECF2EDE2F3EDFCFDFD
          B7E2D4B3E1D2FFFFFFFFFDFFAAD2C65FB69A4AAE8D63C3966C86DE262AEA222B
          D10511DCB8C3E2E7ECEAD0EDE39CD8C4C8E9DED8EFE7D7F0E8B4DCCFB0D7CAB6
          DACE53B39463BC9DBEF4D06683D94B59E79EBCF4E6FBF0E3E5E7D4EEE5A6DCC9
          A7DDCAA6DCCAACDFCE6EC2A64BB18F4AB08E58B69789CDB5C2EBDAB6EECCADEE
          C5D7FFF5D4FFFFDFECEDFFFFFFF9FDFBF3FAF8EDF8F4E9F6F2CFEBE1E1F2ECFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFBFAFFFFF8FCFC}
        ParentFont = False
        OnClick = btnLocalizacaoClick
      end
      object dgItens: TwwDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 1
        Width = 729
        Height = 129
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabStop = False
        ControlType.Strings = (
          'ativo;CheckBox;True;False')
        Selected.Strings = (
          'id_cliente'#9'13'#9'C'#243'digo'#9'F'
          'nome'#9'38'#9'Nome'#9'F'
          'apelido'#9'30'#9'Fantasia'#9'F'
          'int_nomepec'#9'17'#9'Perfil'#9'F'
          'int_pessoa'#9'17'#9'Pessoa'#9'F'
          'doc_cnpj_cpf'#9'18'#9'CPF / CNPJ'#9'F')
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
        ParentFont = False
        ReadOnly = True
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
        OnCalcCellColors = dgItensCalcCellColors
      end
      object pcDados: TPageControl
        Left = 5
        Top = 154
        Width = 730
        Height = 255
        ActivePage = tabDados
        TabOrder = 1
        object tabDados: TTabSheet
          Caption = 'Dados'
          Enabled = False
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblEndereco: TLabel
            Left = 8
            Top = 8
            Width = 52
            Height = 13
            Caption = 'Endere'#231'o :'
          end
          object lblComplemento: TLabel
            Left = 350
            Top = 8
            Width = 72
            Height = 13
            Caption = 'Complemento :'
          end
          object lblNumero: TLabel
            Left = 595
            Top = 8
            Width = 44
            Height = 13
            Caption = 'N'#250'mero :'
          end
          object lblCEP: TLabel
            Left = 34
            Top = 31
            Width = 26
            Height = 13
            Caption = 'CEP :'
          end
          object lblCaixaPostal: TLabel
            Left = 172
            Top = 31
            Width = 66
            Height = 13
            Caption = 'Caixa Postal :'
          end
          object lblEmail: TLabel
            Left = 387
            Top = 31
            Width = 35
            Height = 13
            Caption = 'E-mail :'
          end
          object lblCidade: TLabel
            Left = 20
            Top = 54
            Width = 40
            Height = 13
            Caption = 'Cidade :'
          end
          object txtCidadeDescricao: TDBText
            Left = 159
            Top = 51
            Width = 142
            Height = 21
            Color = 14342874
            DataField = 'int_nomecid'
            DataSource = dso
            ParentColor = False
            Transparent = False
          end
          object txtEstadoDescricao: TDBText
            Left = 304
            Top = 51
            Width = 40
            Height = 21
            Color = 14342874
            DataField = 'INT_UF'
            DataSource = dso
            ParentColor = False
            Transparent = False
          end
          object lblBairro: TLabel
            Left = 387
            Top = 54
            Width = 35
            Height = 13
            Caption = 'Bairro :'
          end
          object lblSexo: TLabel
            Left = 558
            Top = 54
            Width = 31
            Height = 13
            Caption = 'Sexo :'
          end
          object lblTelFixo: TLabel
            Left = 12
            Top = 77
            Width = 48
            Height = 13
            Caption = 'Tel. Fixo :'
          end
          object lblTelMovel: TLabel
            Left = 182
            Top = 77
            Width = 56
            Height = 13
            Caption = 'Tel. M'#243'vel :'
          end
          object lblFax: TLabel
            Left = 397
            Top = 77
            Width = 25
            Height = 13
            Caption = 'Fax :'
          end
          object lblSituacao: TLabel
            Left = 12
            Top = 100
            Width = 48
            Height = 13
            Caption = 'Situa'#231#227'o :'
          end
          object lblRota: TLabel
            Left = 392
            Top = 100
            Width = 30
            Height = 13
            Caption = 'Rota :'
          end
          object lblLimite: TLabel
            Left = 26
            Top = 123
            Width = 34
            Height = 13
            Caption = 'Limite :'
          end
          object lblValidade: TLabel
            Left = 191
            Top = 123
            Width = 47
            Height = 13
            Caption = 'Validade :'
          end
          object lblSaldo: TLabel
            Left = 389
            Top = 123
            Width = 33
            Height = 13
            Caption = 'Saldo :'
          end
          object lblEnderecoCobranca: TLabel
            Left = 3
            Top = 155
            Width = 716
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Endere'#231'o de Cobran'#231'a'
            Color = 14342874
            ParentColor = False
            Transparent = False
          end
          object lblEnderecoCob: TLabel
            Left = 8
            Top = 180
            Width = 52
            Height = 13
            Caption = 'Endere'#231'o :'
          end
          object lblCepCob: TLabel
            Left = 396
            Top = 180
            Width = 26
            Height = 13
            Caption = 'CEP :'
          end
          object lblCidadeCob: TLabel
            Left = 20
            Top = 203
            Width = 40
            Height = 13
            Caption = 'Cidade :'
          end
          object lblUfCob: TLabel
            Left = 402
            Top = 203
            Width = 20
            Height = 13
            Caption = 'UF :'
          end
          object lblBairroCob: TLabel
            Left = 554
            Top = 203
            Width = 35
            Height = 13
            Caption = 'Bairro :'
          end
          object txtEndereco: TDBEdit
            Left = 66
            Top = 5
            Width = 278
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'endereco'
            DataSource = dso
            TabOrder = 0
          end
          object txtComplemento: TDBEdit
            Left = 428
            Top = 5
            Width = 120
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'end_complemento'
            DataSource = dso
            TabOrder = 1
          end
          object txtNumero: TDBEdit
            Left = 645
            Top = 5
            Width = 70
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'numero'
            DataSource = dso
            TabOrder = 2
          end
          object txtCEP: TDBEdit
            Left = 66
            Top = 28
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'cep'
            DataSource = dso
            TabOrder = 3
          end
          object txtCaixaPostal: TDBEdit
            Left = 244
            Top = 28
            Width = 100
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataSource = dso
            TabOrder = 4
          end
          object txtEmail: TDBEdit
            Left = 428
            Top = 28
            Width = 287
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'email'
            DataSource = dso
            TabOrder = 5
          end
          object txtCidade: TJvDBComboEdit
            Left = 66
            Top = 51
            Width = 90
            Height = 21
            ClickKey = 114
            DataField = 'id_cidade'
            DataSource = dso
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
            TabOrder = 6
          end
          object txtBairro: TDBEdit
            Left = 428
            Top = 51
            Width = 120
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'bairro'
            DataSource = dso
            TabOrder = 7
          end
          object txttxtSexo: TDBEdit
            Left = 595
            Top = 51
            Width = 120
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'int_sexo'
            DataSource = dso
            TabOrder = 8
          end
          object txtTelFixo: TDBEdit
            Left = 66
            Top = 74
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'tel_fixo'
            DataSource = dso
            TabOrder = 9
          end
          object txtTelMovel: TDBEdit
            Left = 244
            Top = 74
            Width = 100
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'tel_movel'
            DataSource = dso
            TabOrder = 10
          end
          object txtFax: TDBEdit
            Left = 428
            Top = 74
            Width = 120
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'fax'
            DataSource = dso
            TabOrder = 11
          end
          object txtSituacao: TDBEdit
            Left = 66
            Top = 97
            Width = 278
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'int_situacao'
            DataSource = dso
            TabOrder = 12
          end
          object txtRota: TDBEdit
            Left = 428
            Top = 97
            Width = 287
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'id_rota'
            DataSource = dso
            TabOrder = 13
          end
          object txtLimite: TDBEdit
            Left = 66
            Top = 120
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'lim_valor'
            DataSource = dso
            TabOrder = 14
          end
          object dpkValidade: TJvDBDateEdit
            Left = 244
            Top = 120
            Width = 98
            Height = 21
            DataField = 'lim_validade'
            DataSource = dso
            ShowNullDate = False
            TabOrder = 15
          end
          object txtSaldo: TDBEdit
            Left = 428
            Top = 120
            Width = 120
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'lim_saldo'
            DataSource = dso
            TabOrder = 16
          end
          object txtEnderecoCob: TDBEdit
            Left = 66
            Top = 177
            Width = 278
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'cob_endereco'
            DataSource = dso
            TabOrder = 17
          end
          object txtCepCob: TDBEdit
            Left = 428
            Top = 177
            Width = 120
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'cob_cep'
            DataSource = dso
            TabOrder = 18
          end
          object txtCidadeCob: TDBEdit
            Left = 66
            Top = 200
            Width = 278
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'cob_cidade'
            DataSource = dso
            TabOrder = 19
          end
          object txtUfCob: TDBEdit
            Left = 428
            Top = 200
            Width = 45
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'cob_estado'
            DataSource = dso
            TabOrder = 20
          end
          object txtBairroCob: TDBEdit
            Left = 595
            Top = 200
            Width = 120
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'cob_bairro'
            DataSource = dso
            TabOrder = 21
          end
        end
        object tabContatos: TTabSheet
          Caption = 'Contatos'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object wwDBGrid1: TwwDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 710
            Height = 215
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            TabStop = False
            Selected.Strings = (
              'nome'#9'61'#9'Nome'#9'F'
              'telefone'#9'15'#9'Telefone'#9'F'
              'dta_nascimento'#9'15'#9'Anivers'#225'rio'#9'F'
              'email'#9'40'#9'E-mail'#9'F')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsoContatos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
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
          end
        end
        object tabReclamacoes: TTabSheet
          Caption = 'Reclama'#231#245'es'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object wwDBGrid2: TwwDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 710
            Height = 215
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            TabStop = False
            Selected.Strings = (
              'dta_registro'#9'15'#9'Data'#9'F'
              'obs'#9'118'#9'Observa'#231#245'es'#9'F')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsoReclamacoes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
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
          end
        end
        object tabInformacoes: TTabSheet
          Caption = 'Informa'#231#245'es'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object wwDBGrid3: TwwDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 710
            Height = 215
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            TabStop = False
            Selected.Strings = (
              'atrasa'#9'10'#9'Atrasa'#9'F'
              'dta_informacao'#9'15'#9'Data Ficha'#9'F'
              'informante'#9'35'#9'Respons'#225'vel'#9'F'
              'vlr_maior_compra'#9'15'#9'Maior Compra'#9'F'
              'vlr_lim_liberado'#9'15'#9'Limite'#9'F'
              'obs'#9'39'#9'Observa'#231#245'es'#9'F')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsoInformacoes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
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
          end
        end
        object tabBancoInformacoes: TTabSheet
          Caption = 'Banco de Informa'#231#245'es'
          ImageIndex = 5
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object wwDBGrid4: TwwDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 710
            Height = 215
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            TabStop = False
            Selected.Strings = (
              'id_cliente'#9'10'#9'Cliente'#9'F'
              'id_banco_info'#9'10'#9'Banco de Dados'#9'F'
              'obs'#9'81'#9'Observa'#231#227'o'#9'F'
              'dta_informacao'#9'15'#9'Data das Informa'#231#245'es'#9'F')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsoBancoInformacoes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
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
          end
        end
      end
      object gbxFiltro: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 418
        Width = 348
        Height = 61
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Filtro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object lblCampoBusca: TLabel
          Left = 6
          Top = 15
          Width = 85
          Height = 13
          Caption = 'Campo da busca'
        end
        object lblTextoBuscado: TLabel
          Left = 110
          Top = 15
          Width = 101
          Height = 13
          Caption = 'Texto a ser buscado'
        end
        object cbbPesquisa: TComboBox
          Left = 6
          Top = 30
          Width = 100
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 0
          Text = 'Nome'
          OnChange = cbbPesquisaChange
          Items.Strings = (
            'C'#243'digo'
            'Nome'
            'CNPJ/CPF'
            'IE'
            'Cidade'
            'Apelido')
        end
        object txtPesquisa: TEdit
          Left = 110
          Top = 30
          Width = 170
          Height = 21
          TabOrder = 1
          OnKeyDown = txtPesquisaKeyDown
        end
        object btnFiltra: TButton
          Left = 283
          Top = 30
          Width = 60
          Height = 21
          Caption = 'Filtrar'
          TabOrder = 2
          OnClick = btnFiltraClick
        end
      end
      object btnNotasFiscais: TButton
        Left = 388
        Top = 413
        Width = 150
        Height = 25
        Caption = 'Notas Fiscais'
        TabOrder = 3
        OnClick = btnNotasFiscaisClick
      end
      object btnFinanceiro: TButton
        Left = 544
        Top = 413
        Width = 190
        Height = 25
        Caption = 'Financeiro'
        TabOrder = 4
        OnClick = btnFinanceiroClick
      end
      object btnEstatistica: TButton
        Left = 388
        Top = 439
        Width = 150
        Height = 25
        Caption = 'Estat'#237'stica'
        TabOrder = 5
        OnClick = btnEstatisticaClick
      end
      object Panel4: TPanel
        Left = 5
        Top = 135
        Width = 13
        Height = 13
        BevelOuter = bvNone
        Color = clMaroon
        ParentBackground = False
        TabOrder = 7
      end
      object btnExtrato: TButton
        Left = 544
        Top = 439
        Width = 190
        Height = 25
        Caption = 'Informa'#231#245'es de Vendas e Financeiro'
        TabOrder = 6
        OnClick = btnExtratoClick
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 935
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object pnlCima: TPanel
      Left = 0
      Top = 0
      Width = 935
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 935
        Height = 25
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Consulta Cliente'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitLeft = 2
        ExplicitTop = -13
        ExplicitWidth = 1150
        ExplicitHeight = 30
      end
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 30
      Width = 935
      Height = 13
      Align = alClient
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
    end
  end
  object dso: TwwDataSource
    DataSet = CAD_CD_C_CLI
    Left = 879
    Top = 67
  end
  object dsoContatos: TwwDataSource
    DataSet = CAD_CD_C_CLI_CTO
    Left = 879
    Top = 115
  end
  object dsoReclamacoes: TwwDataSource
    DataSet = CAD_CD_C_CLI_REC
    Left = 879
    Top = 163
  end
  object dsoInformacoes: TwwDataSource
    DataSet = CAD_CD_C_CLI_INF
    Left = 879
    Top = 211
  end
  object dsoBancoInformacoes: TwwDataSource
    DataSet = CAD_CD_C_CLI_BCO
    Left = 880
    Top = 259
  end
  object CAD_CD_C_CLI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CLI'
    RemoteServer = dmGeral.pcConecao
    Left = 42
    Top = 51
    object CAD_CD_C_CLICAD_SQ_C_CLI_REC: TDataSetField
      FieldName = 'CAD_SQ_C_CLI_REC'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLICAD_SQ_C_CLI_INF: TDataSetField
      FieldName = 'CAD_SQ_C_CLI_INF'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLICAD_SQ_C_CLI_CTO: TDataSetField
      FieldName = 'CAD_SQ_C_CLI_CTO'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAD_CD_C_CLIpessoa: TIntegerField
      FieldName = 'pessoa'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLInome: TWideStringField
      FieldName = 'nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CAD_CD_C_CLIendereco: TWideStringField
      FieldName = 'endereco'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CAD_CD_C_CLIend_complemento: TWideStringField
      FieldName = 'end_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CAD_CD_C_CLIcep: TWideStringField
      FieldName = 'cep'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object CAD_CD_C_CLInumero: TWideStringField
      FieldName = 'numero'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CAD_CD_C_CLItel_fixo: TWideStringField
      FieldName = 'tel_fixo'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CAD_CD_C_CLItel_movel: TWideStringField
      FieldName = 'tel_movel'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CAD_CD_C_CLIfax: TWideStringField
      FieldName = 'fax'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CAD_CD_C_CLIdoc_cnpj_cpf: TWideStringField
      FieldName = 'doc_cnpj_cpf'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CAD_CD_C_CLIdoc_ie_identidade: TWideStringField
      FieldName = 'doc_ie_identidade'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIdoc_ip: TWideStringField
      FieldName = 'doc_ip'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIdoc_im: TWideStringField
      FieldName = 'doc_im'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIbairro: TWideStringField
      FieldName = 'bairro'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CAD_CD_C_CLIid_cidade: TWideStringField
      FieldName = 'id_cidade'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CAD_CD_C_CLIativo: TBooleanField
      FieldName = 'ativo'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIemail: TWideStringField
      FieldName = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CAD_CD_C_CLIlim_valor: TFMTBCDField
      FieldName = 'lim_valor'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 4
    end
    object CAD_CD_C_CLIlim_saldo: TFMTBCDField
      FieldName = 'lim_saldo'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 4
    end
    object CAD_CD_C_CLIlim_validade: TDateField
      FieldName = 'lim_validade'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIsexo: TIntegerField
      FieldName = 'sexo'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIsituacao: TIntegerField
      FieldName = 'situacao'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIdta_nascimento: TDateField
      FieldName = 'dta_nascimento'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLItipo_cliente: TIntegerField
      FieldName = 'tipo_cliente'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIcob_endereco: TWideStringField
      FieldName = 'cob_endereco'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CAD_CD_C_CLIcob_bairro: TWideStringField
      FieldName = 'cob_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CAD_CD_C_CLIcob_cidade: TWideStringField
      FieldName = 'cob_cidade'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CAD_CD_C_CLIcob_estado: TWideStringField
      FieldName = 'cob_estado'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CAD_CD_C_CLIdta_ult_compra: TDateField
      FieldName = 'dta_ult_compra'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIdta_pri_compra: TDateField
      FieldName = 'dta_pri_compra'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIcod_sufrana: TWideStringField
      FieldName = 'cod_sufrana'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIcod_pais: TWideStringField
      FieldName = 'cod_pais'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CAD_CD_C_CLIid_perfil_cli: TIntegerField
      FieldName = 'id_perfil_cli'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIid_rota: TIntegerField
      FieldName = 'id_rota'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIdoc_rg_orgao: TWideStringField
      FieldName = 'doc_rg_orgao'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CAD_CD_C_CLIapelido: TWideStringField
      FieldName = 'apelido'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CAD_CD_C_CLIcod_lme: TWideStringField
      FieldName = 'cod_lme'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIrev_lme: TWideStringField
      Alignment = taRightJustify
      FieldName = 'rev_lme'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CAD_CD_C_CLIfiliacao: TWideStringField
      FieldName = 'filiacao'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CAD_CD_C_CLIcob_cep: TWideStringField
      FieldName = 'cob_cep'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object CAD_CD_C_CLIid_regiao: TIntegerField
      FieldName = 'id_regiao'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLICAD_SQ_C_CLI_BCO: TDataSetField
      FieldName = 'CAD_SQ_C_CLI_BCO'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLIint_uf: TWideStringField
      FieldName = 'int_uf'
      ProviderFlags = []
      Size = 2
    end
    object CAD_CD_C_CLIint_situacao: TWideStringField
      FieldName = 'int_situacao'
      ProviderFlags = []
      Size = 30
    end
    object CAD_CD_C_CLIint_sexo: TWideStringField
      FieldName = 'int_sexo'
      ProviderFlags = []
      Size = 10
    end
    object CAD_CD_C_CLIint_nomecid: TWideStringField
      FieldName = 'int_nomecid'
      ProviderFlags = []
      Size = 60
    end
    object CAD_CD_C_CLIint_nomereg: TWideStringField
      FieldName = 'int_nomereg'
      ProviderFlags = []
      Size = 50
    end
    object CAD_CD_C_CLIcontribuinte: TIntegerField
      FieldName = 'contribuinte'
    end
    object CAD_CD_C_CLIid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object CAD_CD_C_CLIint_reg_desc_perc: TFloatField
      FieldName = 'int_reg_desc_perc'
      ProviderFlags = []
    end
    object CAD_CD_C_CLIdias_prazo_financeiro: TIntegerField
      FieldName = 'dias_prazo_financeiro'
    end
    object CAD_CD_C_CLIprofissao: TWideStringField
      FieldName = 'profissao'
      Size = 50
    end
    object CAD_CD_C_CLIrenda: TFMTBCDField
      FieldName = 'renda'
      Precision = 18
      Size = 4
    end
    object CAD_CD_C_CLIint_nomepai: TWideStringField
      FieldName = 'int_nomepai'
      ProviderFlags = []
      Size = 100
    end
    object CAD_CD_C_CLIid_responsavel: TIntegerField
      FieldName = 'id_responsavel'
    end
    object CAD_CD_C_CLIint_nomeresp: TWideStringField
      FieldName = 'int_nomeresp'
      ProviderFlags = []
      Size = 50
    end
    object CAD_CD_C_CLIint_pessoa: TWideStringField
      FieldName = 'int_pessoa'
      ProviderFlags = []
      Size = 10
    end
    object CAD_CD_C_CLIint_nomepec: TWideStringField
      FieldName = 'int_nomepec'
      ProviderFlags = []
      Size = 50
    end
    object CAD_CD_C_CLIgps_latitude: TFloatField
      FieldName = 'gps_latitude'
    end
    object CAD_CD_C_CLIgps_longitude: TFloatField
      FieldName = 'gps_longitude'
    end
    object CAD_CD_C_CLIint_nomevnd: TWideStringField
      FieldName = 'int_nomevnd'
      ProviderFlags = []
      Size = 50
    end
  end
  object CAD_CD_C_CLI_INF: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_CLICAD_SQ_C_CLI_INF
    Params = <>
    Left = 42
    Top = 99
    object CAD_CD_C_CLI_INFid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAD_CD_C_CLI_INFid_cli_informa: TIntegerField
      FieldName = 'id_cli_informa'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLI_INFdta_informacao: TDateField
      FieldName = 'dta_informacao'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLI_INFdta_maior_compra: TDateField
      FieldName = 'dta_maior_compra'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLI_INFvlr_maior_compra: TFMTBCDField
      FieldName = 'vlr_maior_compra'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 4
    end
    object CAD_CD_C_CLI_INFvlr_lim_liberado: TFMTBCDField
      FieldName = 'vlr_lim_liberado'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 4
    end
    object CAD_CD_C_CLI_INFatrasa: TBooleanField
      FieldName = 'atrasa'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLI_INFinformante: TWideStringField
      FieldName = 'informante'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLI_INFobs: TWideStringField
      FieldName = 'obs'
      ProviderFlags = [pfInUpdate]
      Size = 800
    end
    object CAD_CD_C_CLI_INFid_sequencia: TIntegerField
      FieldName = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object CAD_CD_C_CLI_BCO: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_CLICAD_SQ_C_CLI_BCO
    Params = <>
    Left = 42
    Top = 147
    object CAD_CD_C_CLI_BCOdta_informacao: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 12
      FieldName = 'dta_informacao'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLI_BCOnome_arquivo: TWideStringField
      DisplayLabel = 'Arquivo'
      DisplayWidth = 30
      FieldName = 'nome_arquivo'
      Size = 255
    end
    object CAD_CD_C_CLI_BCOobs: TWideStringField
      DisplayLabel = 'Observa'#231#227'o'
      DisplayWidth = 45
      FieldName = 'obs'
      ProviderFlags = [pfInUpdate]
      Size = 800
    end
    object CAD_CD_C_CLI_BCOarquivo: TBlobField
      DisplayWidth = 10
      FieldName = 'arquivo'
      Visible = False
    end
    object CAD_CD_C_CLI_BCOid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CAD_CD_C_CLI_BCOid_banco_info: TIntegerField
      FieldName = 'id_banco_info'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
  end
  object CAD_CD_C_CLI_REC: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_CLICAD_SQ_C_CLI_REC
    Params = <>
    Left = 42
    Top = 195
    object CAD_CD_C_CLI_RECdta_registro: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 15
      FieldName = 'dta_registro'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLI_RECobs: TWideStringField
      DisplayLabel = 'Observa'#231#227'o'
      DisplayWidth = 82
      FieldName = 'obs'
      ProviderFlags = [pfInUpdate]
      Size = 800
    end
    object CAD_CD_C_CLI_RECid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CAD_CD_C_CLI_RECid_reclamacao: TIntegerField
      FieldName = 'id_reclamacao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
  end
  object CAD_CD_C_CLI_CTO: TClientDataSet
    Aggregates = <>
    DataSetField = CAD_CD_C_CLICAD_SQ_C_CLI_CTO
    Params = <>
    Left = 42
    Top = 243
    object CAD_CD_C_CLI_CTOid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAD_CD_C_CLI_CTOid_contato: TIntegerField
      FieldName = 'id_contato'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CAD_CD_C_CLI_CTOnome: TWideStringField
      FieldName = 'nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CAD_CD_C_CLI_CTOtelefone: TWideStringField
      FieldName = 'telefone'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CAD_CD_C_CLI_CTOemail: TWideStringField
      FieldName = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CAD_CD_C_CLI_CTOdta_nascimento: TDateField
      FieldName = 'dta_nascimento'
      ProviderFlags = [pfInUpdate]
    end
    object CAD_CD_C_CLI_CTOtipo_contato: TIntegerField
      FieldName = 'tipo_contato'
      ProviderFlags = [pfInUpdate]
    end
  end
end
