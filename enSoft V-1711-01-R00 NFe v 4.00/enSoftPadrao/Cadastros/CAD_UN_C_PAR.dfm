inherited CAD_FM_C_PAR: TCAD_FM_C_PAR
  ClientHeight = 515
  ClientWidth = 1202
  ExplicitWidth = 1208
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  object Label42: TLabel [0]
    Left = 15
    Top = 56
    Width = 106
    Height = 13
    Caption = 'Forma de Pagamento:'
  end
  object Label43: TLabel [1]
    Left = 65
    Top = 29
    Width = 59
    Height = 13
    Caption = 'Fornecedor:'
  end
  inherited pnlEsquerda: TPanel
    Height = 485
    ExplicitHeight = 485
    inherited pnlFiltro: TPanel
      Top = 435
      ExplicitTop = 435
      inherited gbxFiltro: TGroupBox
        inherited cbbPesquisa: TComboBox
          ItemIndex = 1
          Text = 'Fantasia'
          OnChange = cbbPesquisaChange
          Items.Strings = (
            'C'#243'digo'
            'Fantasia')
        end
        inherited txtPesquisa: TEdit
          OnKeyDown = txtPesquisaKeyDown
        end
        inherited btnFiltro: TcxButton
          OnClick = btnFiltroClick
        end
      end
    end
    inherited pnlDatagrid: TPanel
      Height = 381
      ExplicitHeight = 381
      inherited dbGrid: TwwDBGrid
        Height = 381
        Selected.Strings = (
          'id_empresa'#9'10'#9'C'#243'digo'#9'F'
          'emp_fantasia'#9'43'#9'Fantasia'#9'F')
        ExplicitHeight = 381
      end
    end
    inherited pnlBotoes: TPanel
      inherited btnAtualiza: TcxButton
        Left = 202
        Top = 57
        ExplicitLeft = 202
        ExplicitTop = 57
      end
    end
  end
  inherited pnlDireita: TPanel
    Width = 892
    Height = 485
    ExplicitWidth = 892
    ExplicitHeight = 485
    inherited pnlDados: TPanel
      Left = 24
      Top = 4
      Width = 708
      Height = 472
      ExplicitLeft = 24
      ExplicitTop = 4
      ExplicitWidth = 708
      ExplicitHeight = 472
      object lblRazaoSocial: TLabel
        Left = 7
        Top = 30
        Width = 70
        Height = 13
        Caption = 'Raz'#227'o Social :'
      end
      object Label1: TLabel
        Left = 33
        Top = 7
        Width = 44
        Height = 13
        Caption = 'C'#243'digo :'
      end
      object lblFantasia: TLabel
        Left = 376
        Top = 30
        Width = 49
        Height = 13
        Caption = 'Fantasia :'
      end
      object lblEndereco: TLabel
        Left = 23
        Top = 53
        Width = 54
        Height = 13
        Caption = 'Endere'#231'o :'
      end
      object lblNumero: TLabel
        Left = 253
        Top = 77
        Width = 19
        Height = 13
        Caption = 'N'#186' :'
      end
      object lblComplemento: TLabel
        Left = -1
        Top = 99
        Width = 78
        Height = 13
        Caption = 'Complemento :'
      end
      object lblBairro: TLabel
        Left = 40
        Top = 76
        Width = 36
        Height = 13
        Caption = 'Bairro :'
      end
      object lblCEP: TLabel
        Left = 246
        Top = 53
        Width = 25
        Height = 13
        Caption = 'CEP :'
      end
      object lblCidade: TLabel
        Left = 383
        Top = 55
        Width = 42
        Height = 13
        Caption = 'Cidade :'
      end
      object txtCidadeDescricao: TDBText
        Left = 507
        Top = 50
        Width = 149
        Height = 21
        Color = 14342874
        DataField = 'int_nomecid'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object lblTelefone: TLabel
        Left = 239
        Top = 121
        Width = 32
        Height = 13
        Caption = 'Fone :'
      end
      object lblFax: TLabel
        Left = 248
        Top = 99
        Width = 23
        Height = 13
        Caption = 'Fax :'
      end
      object lblEmail: TLabel
        Left = 388
        Top = 77
        Width = 37
        Height = 13
        Caption = 'E-mail :'
      end
      object lblSite: TLabel
        Left = 52
        Top = 125
        Width = 25
        Height = 13
        Caption = 'Site :'
      end
      object lblAtividade: TLabel
        Left = 371
        Top = 100
        Width = 54
        Height = 13
        Caption = 'Atividade :'
      end
      object Label3: TLabel
        Left = 46
        Top = 145
        Width = 30
        Height = 13
        Caption = 'CNPJ :'
      end
      object lblInscEstadual: TLabel
        Left = 221
        Top = 145
        Width = 50
        Height = 13
        Caption = 'Insc. Est. :'
      end
      object lblJunta: TLabel
        Left = 597
        Top = 121
        Width = 34
        Height = 13
        Caption = 'Junta :'
      end
      object lblInscMunicipal: TLabel
        Left = 366
        Top = 123
        Width = 59
        Height = 13
        Caption = 'Insc. Mun. :'
      end
      object lblSuframa: TLabel
        Left = 592
        Top = 99
        Width = 48
        Height = 13
        Caption = 'Suframa :'
      end
      object txtUF: TDBText
        Left = 656
        Top = 51
        Width = 45
        Height = 21
        Color = 14342874
        DataField = 'int_uf'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object Label53: TLabel
        Left = 260
        Top = 8
        Width = 32
        Height = 13
        Caption = 'Rev.:'
        Color = 15921906
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblBanco: TLabel
        Left = 39
        Top = 168
        Width = 37
        Height = 13
        Caption = 'Banco :'
      end
      object lblAgencia: TLabel
        Left = 224
        Top = 168
        Width = 47
        Height = 13
        Caption = 'Ag'#234'ncia :'
      end
      object lblConta: TLabel
        Left = 388
        Top = 145
        Width = 37
        Height = 13
        Caption = 'Conta :'
      end
      object Label152: TLabel
        Left = 377
        Top = 168
        Width = 48
        Height = 13
        Caption = 'Latitude :'
      end
      object Label153: TLabel
        Left = 519
        Top = 168
        Width = 59
        Height = 13
        Caption = 'Longitude :'
      end
      object btnLocalizacao: TSpeedButton
        Left = 667
        Top = 165
        Width = 27
        Height = 25
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
      object txtCodigo: TDBEdit
        Left = 83
        Top = 4
        Width = 90
        Height = 21
        Color = 14342874
        DataField = 'id_empresa'
        DataSource = dso
        Enabled = False
        TabOrder = 0
      end
      object txtRazaoSocial: TDBEdit
        Left = 83
        Top = 27
        Width = 275
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_razao'
        DataSource = dso
        TabOrder = 2
      end
      object txtFantasia: TDBEdit
        Left = 431
        Top = 27
        Width = 270
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_fantasia'
        DataSource = dso
        TabOrder = 3
      end
      object txtEndereco: TDBEdit
        Left = 83
        Top = 50
        Width = 157
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_endereco'
        DataSource = dso
        TabOrder = 4
      end
      object txtNumero: TDBEdit
        Left = 277
        Top = 73
        Width = 81
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_numero'
        DataSource = dso
        TabOrder = 8
      end
      object txtComplemento: TDBEdit
        Left = 83
        Top = 96
        Width = 132
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_complemento'
        DataSource = dso
        TabOrder = 10
      end
      object txtBairro: TDBEdit
        Left = 83
        Top = 73
        Width = 157
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_bairro'
        DataSource = dso
        TabOrder = 7
      end
      object txtCEP: TDBEdit
        Left = 277
        Top = 50
        Width = 81
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_cep'
        DataSource = dso
        TabOrder = 5
      end
      object txtCidade: TJvDBComboEdit
        Left = 431
        Top = 50
        Width = 70
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
        OnButtonClick = txtCidadeButtonClick
        OnExit = txtCidadeExit
      end
      object txtTelefone: TDBEdit
        Left = 277
        Top = 118
        Width = 81
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_telefone'
        DataSource = dso
        TabOrder = 15
      end
      object txtFax: TDBEdit
        Left = 277
        Top = 96
        Width = 81
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_fax'
        DataSource = dso
        TabOrder = 11
      end
      object txtEmail: TDBEdit
        Left = 431
        Top = 74
        Width = 270
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_email'
        DataSource = dso
        TabOrder = 9
      end
      object txtSite: TDBEdit
        Left = 83
        Top = 118
        Width = 132
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_site'
        DataSource = dso
        TabOrder = 14
      end
      object txtCNPJ: TDBEdit
        Left = 83
        Top = 142
        Width = 132
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_cnpj'
        DataSource = dso
        TabOrder = 18
      end
      object txtInscEstadual: TDBEdit
        Left = 277
        Top = 142
        Width = 81
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_ie'
        DataSource = dso
        TabOrder = 19
      end
      object txtJunta: TDBEdit
        Left = 637
        Top = 118
        Width = 64
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_numero_junta'
        DataSource = dso
        TabOrder = 17
      end
      object txtInscMunicipal: TDBEdit
        Left = 431
        Top = 120
        Width = 90
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_im'
        DataSource = dso
        TabOrder = 16
      end
      object txtSuframa: TDBEdit
        Left = 643
        Top = 96
        Width = 58
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Color = clWhite
        DataField = 'emp_suframa'
        DataSource = dso
        TabOrder = 13
      end
      object tabFilhos: TPageControl
        Left = 0
        Top = 211
        Width = 686
        Height = 269
        ActivePage = tbiResponsaveis
        DockSite = True
        TabOrder = 27
        object tbiResponsaveis: TTabSheet
          Caption = 'Respons'#225'veis'
          object lblResponsavel: TLabel
            Left = 7
            Top = 6
            Width = 70
            Height = 13
            Caption = 'Respons'#225'vel :'
          end
          object lblQualificacao: TLabel
            Left = 344
            Top = 6
            Width = 69
            Height = 13
            Caption = 'Qualifica'#231#227'o :'
          end
          object lblCPFResponsavel: TLabel
            Left = 568
            Top = 6
            Width = 25
            Height = 13
            Caption = 'CPF :'
          end
          object lblEnderecoResponsavel: TLabel
            Left = 23
            Top = 29
            Width = 54
            Height = 13
            Caption = 'Endere'#231'o :'
          end
          object lblNumeroResponsavel: TLabel
            Left = 394
            Top = 29
            Width = 19
            Height = 13
            Caption = 'N'#186' :'
          end
          object lblComplementoResponsavel: TLabel
            Left = 515
            Top = 29
            Width = 78
            Height = 13
            Caption = 'Complemento :'
          end
          object lblCidadeResponsavel: TLabel
            Left = 35
            Top = 52
            Width = 42
            Height = 13
            Caption = 'Cidade :'
          end
          object txtCidadeResponsavelDescricao: TDBText
            Left = 173
            Top = 49
            Width = 157
            Height = 21
            Color = 14342874
            DataField = 'res_cidade'
            DataSource = dso
            ParentColor = False
            Transparent = False
          end
          object lblBairroResponsavel: TLabel
            Left = 376
            Top = 52
            Width = 36
            Height = 13
            Caption = 'Bairro :'
          end
          object lblCEPResponsavel: TLabel
            Left = 568
            Top = 52
            Width = 25
            Height = 13
            Caption = 'CEP :'
          end
          object lblTelefoneResponsavel: TLabel
            Left = 27
            Top = 75
            Width = 50
            Height = 13
            Caption = 'Telefone :'
          end
          object lblFaxResponsavel: TLabel
            Left = 211
            Top = 75
            Width = 23
            Height = 13
            Caption = 'Fax :'
          end
          object lblEmailResponsavel: TLabel
            Left = 376
            Top = 75
            Width = 37
            Height = 13
            Caption = 'E-mail :'
          end
          object lblContador: TLabel
            Left = 22
            Top = 120
            Width = 55
            Height = 13
            Caption = 'Contador :'
          end
          object lblCidadeContador: TLabel
            Left = 371
            Top = 169
            Width = 42
            Height = 13
            Caption = 'Cidade :'
          end
          object txtCidadeContadorDescricao: TDBText
            Left = 510
            Top = 165
            Width = 174
            Height = 21
            Color = 14342874
            DataSource = dso
            ParentColor = False
            Transparent = False
          end
          object lblTelefoneContador: TLabel
            Left = 363
            Top = 192
            Width = 50
            Height = 13
            Caption = 'Telefone :'
          end
          object lblFaxContador: TLabel
            Left = 570
            Top = 192
            Width = 23
            Height = 13
            Caption = 'Fax :'
          end
          object lblQualificacaoContador: TLabel
            Left = 195
            Top = 120
            Width = 69
            Height = 13
            Caption = 'Qualifica'#231#227'o :'
          end
          object lblCPFContador: TLabel
            Left = 563
            Top = 120
            Width = 25
            Height = 13
            Caption = 'CPF :'
          end
          object lblCRC: TLabel
            Left = 388
            Top = 120
            Width = 27
            Height = 13
            Caption = 'CRC :'
          end
          object lblNumeroContador: TLabel
            Left = 55
            Top = 167
            Width = 19
            Height = 13
            Caption = 'N'#186' :'
          end
          object lblComplementoContador: TLabel
            Left = 140
            Top = 169
            Width = 78
            Height = 13
            Caption = 'Complemento :'
          end
          object lblCEPContador: TLabel
            Left = 52
            Top = 191
            Width = 25
            Height = 13
            Caption = 'CEP :'
          end
          object lblBairroContador: TLabel
            Left = 176
            Top = 192
            Width = 36
            Height = 13
            Caption = 'Bairro :'
          end
          object lblEnderecoContador: TLabel
            Left = 362
            Top = 144
            Width = 54
            Height = 13
            Caption = 'Endere'#231'o :'
          end
          object lblEmailContador: TLabel
            Left = 40
            Top = 215
            Width = 37
            Height = 13
            Caption = 'E-mail :'
          end
          object Label67: TLabel
            Left = 46
            Top = 143
            Width = 30
            Height = 13
            Caption = 'CNPJ :'
          end
          object txtResponsavel: TDBEdit
            Left = 80
            Top = 3
            Width = 250
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'res_nome'
            DataSource = dso
            TabOrder = 0
          end
          object txtQualificacao: TDBEdit
            Left = 419
            Top = 3
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'res_qualificacao'
            DataSource = dso
            TabOrder = 1
          end
          object txtCPFResponsavel: TDBEdit
            Left = 599
            Top = 3
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'res_cpf'
            DataSource = dso
            TabOrder = 2
          end
          object txtEnderecoResponsavel: TDBEdit
            Left = 80
            Top = 26
            Width = 250
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'res_endereco'
            DataSource = dso
            TabOrder = 3
          end
          object txtNumeroResponsavel: TDBEdit
            Left = 419
            Top = 26
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'res_numero'
            DataSource = dso
            TabOrder = 4
          end
          object txtComplementoResponsavel: TDBEdit
            Left = 599
            Top = 26
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'res_complemento'
            DataSource = dso
            TabOrder = 5
          end
          object txtBairroResponsavel: TDBEdit
            Left = 419
            Top = 49
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'res_bairro'
            DataSource = dso
            TabOrder = 6
          end
          object txtCEPResponsavel: TDBEdit
            Left = 599
            Top = 49
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'res_cep'
            DataSource = dso
            TabOrder = 7
          end
          object txtTelefoneResponsavel: TDBEdit
            Left = 80
            Top = 72
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'res_telefone'
            DataSource = dso
            TabOrder = 9
          end
          object txtFaxResponsavel: TDBEdit
            Left = 240
            Top = 72
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'res_fax'
            DataSource = dso
            TabOrder = 10
          end
          object txtEmailResponsavel: TDBEdit
            Left = 419
            Top = 72
            Width = 270
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'res_email'
            DataSource = dso
            TabOrder = 11
          end
          object txtContador: TDBEdit
            Left = 80
            Top = 117
            Width = 109
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_nome'
            DataSource = dso
            TabOrder = 12
          end
          object txtCidadeContador: TJvDBComboEdit
            Left = 419
            Top = 165
            Width = 90
            Height = 21
            ClickKey = 114
            DataField = 'cnt_id_cidade'
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
            TabOrder = 20
            OnButtonClick = txtCidadeContadorButtonClick
            OnExit = txtCidadeContadorExit
          end
          object txtTelefoneContador: TDBEdit
            Left = 419
            Top = 189
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_telefone'
            DataSource = dso
            TabOrder = 23
          end
          object txtFaxContador: TDBEdit
            Left = 594
            Top = 189
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_fax'
            DataSource = dso
            TabOrder = 24
          end
          object txtQualificacaoContador: TDBEdit
            Left = 270
            Top = 117
            Width = 60
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_qualificacao'
            DataSource = dso
            TabOrder = 13
          end
          object txtCPFContador: TDBEdit
            Left = 594
            Top = 117
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_cpf'
            DataSource = dso
            TabOrder = 15
          end
          object txtCRC: TDBEdit
            Left = 419
            Top = 117
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_crc'
            DataSource = dso
            TabOrder = 14
          end
          object txtNumeroContador: TDBEdit
            Left = 80
            Top = 164
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_numero'
            DataSource = dso
            TabOrder = 18
          end
          object txtComplementoContador: TDBEdit
            Left = 221
            Top = 166
            Width = 109
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_complemento'
            DataSource = dso
            TabOrder = 19
          end
          object txtCEPContador: TDBEdit
            Left = 80
            Top = 188
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_cep'
            DataSource = dso
            TabOrder = 21
          end
          object txtBairroContador: TDBEdit
            Left = 219
            Top = 189
            Width = 111
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_bairro'
            DataSource = dso
            TabOrder = 22
          end
          object txtEnderecoContador: TDBEdit
            Left = 419
            Top = 141
            Width = 265
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_endereco'
            DataSource = dso
            TabOrder = 17
          end
          object txtEmailContador: TDBEdit
            Left = 80
            Top = 212
            Width = 250
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_email'
            DataSource = dso
            TabOrder = 25
          end
          object txtCidadeResponsavel: TJvDBComboEdit
            Left = 80
            Top = 45
            Width = 90
            Height = 21
            ClickKey = 114
            DataField = 'res_id_cidade'
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
            TabOrder = 8
            OnButtonClick = txtCidadeResponsavelButtonClick
            OnExit = txtCidadeResponsavelExit
          end
          object txtCNPJContabilidade: TDBEdit
            Left = 80
            Top = 140
            Width = 109
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'cnt_cnpj'
            DataSource = dso
            TabOrder = 16
          end
        end
        object tbiControle: TTabSheet
          Caption = 'Controle'
          ImageIndex = 1
          OnShow = tbiControleShow
          object ScrollBox4: TScrollBox
            Left = 0
            Top = 0
            Width = 678
            Height = 241
            HorzScrollBar.Position = 6
            VertScrollBar.Position = 455
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = ScrollBox4Enter
            OnExit = ScrollBox4Exit
            object lblMargemLucro: TLabel
              Left = 53
              Top = -202
              Width = 95
              Height = 13
              Caption = 'Margem de Lucro :'
            end
            object lblPerDespAdm: TLabel
              Left = 78
              Top = -224
              Width = 70
              Height = 13
              Caption = '% Desp. Fixa :'
            end
            object lblPerIcmsInterno: TLabel
              Left = 63
              Top = -247
              Width = 85
              Height = 13
              Caption = '% ICMS Interno :'
            end
            object lclPerIss: TLabel
              Left = 115
              Top = -270
              Width = 33
              Height = 13
              Caption = '% ISS :'
            end
            object lblPerCssl: TLabel
              Left = 106
              Top = -293
              Width = 41
              Height = 13
              Caption = '% CSLL :'
            end
            object lblPerIR: TLabel
              Left = 120
              Top = -316
              Width = 28
              Height = 13
              Caption = '% IR :'
            end
            object lblPerCofins: TLabel
              Left = 35
              Top = -360
              Width = 113
              Height = 13
              Caption = '% COFINS Lucro Real :'
            end
            object lblPerPis: TLabel
              Left = 59
              Top = -404
              Width = 89
              Height = 13
              Caption = '% PIS Lucro Real :'
            end
            object lblPerJurosMensal: TLabel
              Left = 63
              Top = -427
              Width = 85
              Height = 13
              Caption = '% Juros Mensal :'
            end
            object lblAliquotasTaxas: TLabel
              Left = -1
              Top = -452
              Width = 212
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Al'#237'quotas e Taxas'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblPedidoVenda: TLabel
              Left = 259
              Top = -452
              Width = 175
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pedido de Venda'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblPerDescontoPermitido: TLabel
              Left = 257
              Top = -19
              Width = 119
              Height = 13
              Caption = '% Desconto Permitido :'
            end
            object Label26: TLabel
              Left = 286
              Top = 5
              Width = 89
              Height = 13
              Caption = '% Desp. Vari'#225'vel :'
            end
            object lblControle: TLabel
              Left = 478
              Top = -452
              Width = 186
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Controle'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblDataSaldoEstoque: TLabel
              Left = 494
              Top = -427
              Width = 107
              Height = 13
              Caption = 'Data Saldo Estoque :'
            end
            object lblMesAno: TLabel
              Left = 543
              Top = -404
              Width = 58
              Height = 13
              Caption = 'M'#234's / Ano :'
            end
            object lblDiasProtesto: TLabel
              Left = 527
              Top = -381
              Width = 74
              Height = 13
              Caption = 'Dias Protesto :'
            end
            object Label49: TLabel
              Left = 27
              Top = -382
              Width = 121
              Height = 13
              Caption = '% PIS Lucro Presumido :'
            end
            object Label50: TLabel
              Left = 3
              Top = -338
              Width = 145
              Height = 13
              Caption = '% COFINS Lucro Presumido :'
            end
            object Label64: TLabel
              Left = 73
              Top = -139
              Width = 75
              Height = 13
              Caption = '% ICMS Sa'#237'da :'
            end
            object Label65: TLabel
              Left = 48
              Top = -181
              Width = 100
              Height = 13
              Caption = '% Partilha Destino :'
            end
            object Label66: TLabel
              Left = 50
              Top = -160
              Width = 98
              Height = 13
              Caption = '% Partilha Origem :'
            end
            object Label97: TLabel
              Left = 248
              Top = 191
              Width = 175
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pedido de Venda (Cupom)'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label98: TLabel
              Left = 248
              Top = 213
              Width = 100
              Height = 13
              Caption = 'Tipo de impress'#227'o :'
            end
            object lblControleTipoImp: TLabel
              Left = 248
              Top = 168
              Width = 58
              Height = 13
              Caption = 'Impress'#227'o :'
            end
            object txtMargemLucro: TDBEdit
              Left = 151
              Top = -205
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'per_margem_lucro'
              DataSource = dsoCTR
              TabOrder = 10
            end
            object txtPerDespFixa: TDBEdit
              Left = 151
              Top = -227
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'per_desp_fixa'
              DataSource = dsoCTR
              TabOrder = 9
            end
            object txtPerIcmsInterno: TDBEdit
              Left = 151
              Top = -250
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'aliq_interna_icms'
              DataSource = dsoCTR
              TabOrder = 8
            end
            object txtPerIss: TDBEdit
              Left = 151
              Top = -273
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'per_iss'
              DataSource = dsoCTR
              TabOrder = 7
            end
            object txtPerCssl: TDBEdit
              Left = 151
              Top = -296
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'per_cssl'
              DataSource = dsoCTR
              TabOrder = 6
            end
            object txtPerIR: TDBEdit
              Left = 151
              Top = -319
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'per_ir'
              DataSource = dsoCTR
              TabOrder = 5
            end
            object txtPerCofinsReal: TDBEdit
              Left = 151
              Top = -363
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'per_cofins_l_real'
              DataSource = dsoCTR
              TabOrder = 3
            end
            object txtPerPisReal: TDBEdit
              Left = 151
              Top = -407
              Width = 59
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'per_pis_l_real'
              DataSource = dsoCTR
              TabOrder = 1
            end
            object txtPerJurosMensal: TDBEdit
              Left = 151
              Top = -430
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'tax_juros_mensal'
              DataSource = dsoCTR
              TabOrder = 0
            end
            object chbAceitaEstoqueNegativo: TDBCheckBox
              Left = 259
              Top = -430
              Width = 175
              Height = 17
              Caption = 'Aceita Estoque Negativo?'
              DataField = 'ped_aceita_est_negativo'
              DataSource = dsoCTR
              TabOrder = 14
            end
            object chbAlertaPrecoVenda: TDBCheckBox
              Left = 259
              Top = -412
              Width = 175
              Height = 17
              Caption = 'Alterar Pre'#231'o de Venda?'
              DataField = 'ped_altera_preco'
              DataSource = dsoCTR
              TabOrder = 15
            end
            object chbAtivaTitulos: TDBCheckBox
              Left = 259
              Top = -395
              Width = 192
              Height = 17
              Caption = 'Ativa T'#237'tulos no pedido de vendas?'
              DataField = 'ped_ativa_titulos'
              DataSource = dsoCTR
              TabOrder = 16
            end
            object chbVerificaLimiteCredito: TDBCheckBox
              Left = 259
              Top = -377
              Width = 175
              Height = 17
              Caption = 'Verifica Limite de Cr'#233'dito?'
              DataField = 'ped_ver_limite'
              DataSource = dsoCTR
              TabOrder = 17
            end
            object chbSeparaProdutoServicos: TDBCheckBox
              Left = 259
              Top = -359
              Width = 175
              Height = 17
              Caption = 'Separa Produto de Servi'#231'os?'
              DataField = 'nfe_separa_prod_serv'
              DataSource = dsoCTR
              TabOrder = 18
            end
            object txtPerDescontoPermitido: TDBEdit
              Left = 382
              Top = -21
              Width = 50
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'per_desconto'
              DataSource = dsoCTR
              TabOrder = 19
            end
            object txtPerDespVarialvel: TDBEdit
              Left = 382
              Top = 2
              Width = 50
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'per_desp_var'
              DataSource = dsoCTR
              TabOrder = 20
            end
            object txtDataSaldoEstoque: TDBEdit
              Left = 603
              Top = -430
              Width = 58
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'dta_saldo_inicial'
              DataSource = dsoCTR
              TabOrder = 21
            end
            object txtMes: TDBEdit
              Left = 603
              Top = -407
              Width = 24
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'mes_corrente'
              DataSource = dsoCTR
              TabOrder = 22
            end
            object txtAno: TDBEdit
              Left = 629
              Top = -407
              Width = 32
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'ano_corrente'
              DataSource = dsoCTR
              TabOrder = 23
            end
            object txtDiasProtesto: TDBEdit
              Left = 603
              Top = -384
              Width = 58
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'dia_protesto'
              DataSource = dsoCTR
              TabOrder = 24
            end
            object gbAlmoxarifado: TGroupBox
              Left = 477
              Top = -357
              Width = 186
              Height = 55
              TabOrder = 25
              object lblAlmoxarifadoPadrao: TLabel
                Left = 6
                Top = 29
                Width = 113
                Height = 13
                Caption = 'Almoxarifado Padr'#227'o :'
              end
              object chbUtilizaAlmoxarifado: TDBCheckBox
                Left = 3
                Top = 3
                Width = 134
                Height = 17
                Caption = 'Utiliza Almoxarifado?'
                DataField = 'utiliza_almoxarifado'
                DataSource = dsoCTR
                TabOrder = 0
              end
              object txtAlmoxarifadoPadrao: TDBEdit
                Left = 125
                Top = 26
                Width = 50
                Height = 19
                BevelInner = bvSpace
                BevelOuter = bvNone
                Color = clWhite
                DataField = 'id_alm_padrao'
                DataSource = dsoCTR
                TabOrder = 1
              end
            end
            object gbPerfil: TGroupBox
              Left = 477
              Top = -296
              Width = 186
              Height = 83
              TabOrder = 26
              object lblPerCorrecaoPAPrazo: TLabel
                Left = 5
                Top = 29
                Width = 114
                Height = 13
                Caption = '% Corre'#231#227'o P.A Prazo :'
              end
              object chbFazCorrecaoPrecoPerfil: TDBCheckBox
                Left = 3
                Top = 3
                Width = 179
                Height = 17
                Caption = 'Faz Corre'#231#227'o Pre'#231'o por Perfil?'
                DataField = 'faz_corr_preco_perfil'
                DataSource = dsoCTR
                TabOrder = 0
              end
              object txtPerCorrecaoPAPrazo: TDBEdit
                Left = 125
                Top = 26
                Width = 50
                Height = 19
                BevelInner = bvSpace
                BevelOuter = bvNone
                Color = clWhite
                DataField = 'per_corr_preco_prazo'
                DataSource = dsoCTR
                TabOrder = 1
              end
              object chbCorrPrecoPrazo: TDBCheckBox
                Left = 3
                Top = 47
                Width = 177
                Height = 21
                Caption = 'Corrigir prazo por financeiro?'
                DataField = 'ped_corr_preco_prazo'
                DataSource = dsoCTR
                TabOrder = 2
              end
              object DBCheckBox13: TDBCheckBox
                Left = 3
                Top = 64
                Width = 180
                Height = 17
                Caption = 'Faz Corre'#231#227'o Pre'#231'o por Grupo?'
                DataField = 'correcao_prc_por_grupo'
                DataSource = dsoCTR
                TabOrder = 3
              end
            end
            object chbAtivaUtilizacaoCor: TDBCheckBox
              Left = 480
              Top = -211
              Width = 186
              Height = 17
              Caption = 'Ativa Utiliza'#231#227'o de Cor?'
              DataField = 'ativa_cor'
              DataSource = dsoCTR
              TabOrder = 27
            end
            object chbAtivaUtilizacaoTam: TDBCheckBox
              Left = 480
              Top = -191
              Width = 177
              Height = 17
              Caption = 'Ativa Utiliza'#231#227'o de Tamanho?'
              DataField = 'ativa_tamanho'
              DataSource = dsoCTR
              TabOrder = 28
            end
            object txtPerPisPresumido: TDBEdit
              Left = 151
              Top = -385
              Width = 59
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'per_pis_l_presumido'
              DataSource = dsoCTR
              TabOrder = 2
            end
            object txtPerCofinsPresumido: TDBEdit
              Left = 151
              Top = -341
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'per_cofins_l_presumido'
              DataSource = dsoCTR
              TabOrder = 4
            end
            object chbEnviaPedCarga: TDBCheckBox
              Left = 259
              Top = -325
              Width = 192
              Height = 17
              Caption = 'Envia Pedido para Carga?'
              DataField = 'ped_envia_carga'
              DataSource = dsoCTR
              TabOrder = 29
            end
            object txtPerImcsSaida: TDBEdit
              Left = 151
              Top = -142
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'nfe_per_icms_saida'
              DataSource = dsoCTR
              TabOrder = 13
            end
            object txtPartilhaDest: TDBEdit
              Left = 151
              Top = -184
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'nfe_per_partilha_dest'
              DataSource = dsoCTR
              TabOrder = 11
            end
            object txtPartilhaOrig: TDBEdit
              Left = 151
              Top = -163
              Width = 60
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'nfe_per_partilha_orig'
              DataSource = dsoCTR
              TabOrder = 12
            end
            object GroupBox5: TGroupBox
              Left = 248
              Top = 76
              Width = 211
              Height = 81
              Caption = 'Cupom Fiscal'
              TabOrder = 30
              object Label93: TLabel
                Left = 22
                Top = 51
                Width = 59
                Height = 13
                Caption = 'Cond. Pag.:'
              end
              object Label94: TLabel
                Left = 7
                Top = 26
                Width = 73
                Height = 13
                Caption = 'Mov. Estoque:'
              end
              object cbbCFCondPag: TwwDBLookupCombo
                Left = 86
                Top = 49
                Width = 121
                Height = 19
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_condicao_pag'#9'10'#9'id_condicao_pag'#9'F')
                DataField = 'ecf_id_condicao_pag'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_CPG
                LookupField = 'id_condicao_pag'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbCFCondPagEnter
              end
              object cbbCFTipoMovEst: TwwDBLookupCombo
                Left = 86
                Top = 22
                Width = 120
                Height = 19
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_mov_estoque'#9'10'#9'id_tipo_mov_estoque'#9'F')
                DataField = 'ecf_id_tipo_mov_estoque'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TME
                LookupField = 'id_tipo_mov_estoque'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbCFTipoMovEstEnter
              end
            end
            object cbbPedCupomImp: TwwDBComboBox
              Left = 248
              Top = 229
              Width = 152
              Height = 19
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              DataField = 'ped_cupom_imp'
              DataSource = dsoCTR
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'Impress'#227'o A4'#9'1'
                'Impress'#227'o 40 Colunas'#9'2')
              Sorted = False
              TabOrder = 31
              UnboundDataType = wwDefault
            end
            object chbAssoAcavasf: TDBCheckBox
              Left = 480
              Top = -173
              Width = 145
              Height = 17
              Caption = 'Associado Acavasf?'
              DataField = 'associado_acavasf'
              DataSource = dsoCTR
              TabOrder = 32
            end
            object cbbControleTipoImp: TwwDBComboBox
              Left = 312
              Top = 166
              Width = 146
              Height = 19
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              DataField = 'tipo_impressao'
              DataSource = dsoCTR
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'Impress'#227'o a Laser'#9'0'
                'Impress'#227'o Matricial 1'#9'1')
              Sorted = False
              TabOrder = 33
              UnboundDataType = wwDefault
            end
            object GroupBox7: TGroupBox
              Left = 246
              Top = -83
              Width = 211
              Height = 59
              TabOrder = 34
              object lblClienteConsumidor: TLabel
                Left = 7
                Top = 9
                Width = 108
                Height = 13
                Caption = 'Cliente Consumidor :'
              end
              object Label105: TLabel
                Left = 49
                Top = 35
                Width = 65
                Height = 13
                Caption = 'Venda M'#225'x. :'
              end
              object txtClienteConsumidor: TDBEdit
                Left = 118
                Top = 8
                Width = 50
                Height = 19
                BevelInner = bvSpace
                BevelOuter = bvNone
                Color = clWhite
                DataField = 'ped_cliente'
                DataSource = dsoCTR
                TabOrder = 0
              end
              object txtPedVendaMax: TwwDBEdit
                Left = 118
                Top = 33
                Width = 86
                Height = 19
                DataField = 'ped_cli_cns_vnd_max'
                DataSource = dsoCTR
                TabOrder = 1
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
            end
            object chbHierarquiaFpg: TDBCheckBox
              Left = 480
              Top = -154
              Width = 183
              Height = 17
              Caption = 'Ativa Hierarquia Forma de Pag.'
              DataField = 'ativa_forma_fpg_hrq'
              DataSource = dsoCTR
              TabOrder = 35
            end
            object chbAtivaIteConj: TDBCheckBox
              Left = 480
              Top = -136
              Width = 174
              Height = 17
              Caption = 'Ativa Item Conjugado?'
              DataField = 'ativa_ite_conj'
              DataSource = dsoCTR
              TabOrder = 36
            end
            object chbPedFrete: TDBCheckBox
              Left = 259
              Top = -308
              Width = 171
              Height = 17
              Caption = 'Utilizar Frete no Ped. Venda?'
              DataField = 'ped_utiliza_frete'
              DataSource = dsoCTR
              TabOrder = 37
            end
            object chbUtilizaMecanico: TDBCheckBox
              Left = 480
              Top = -116
              Width = 147
              Height = 17
              Caption = 'Utiliza Mec'#226'nico?'
              DataField = 'utiliza_mecanico'
              DataSource = dsoCTR
              TabOrder = 38
            end
            object chbPrcFilial: TDBCheckBox
              Left = 480
              Top = -95
              Width = 110
              Height = 17
              Caption = 'Pre'#231'o por Filial ?'
              DataField = 'preco_por_filial'
              DataSource = dsoCTR
              TabOrder = 39
              OnExit = chbPrcFilialExit
            end
            object dbchCalcIcmDispensado: TDBCheckBox
              Left = 480
              Top = -55
              Width = 147
              Height = 17
              Caption = 'Calcula ICMS dispensado'
              DataField = 'calc_icm_dispensado'
              DataSource = dsoCTR
              TabOrder = 40
            end
            object GroupBox19: TGroupBox
              Left = 246
              Top = 22
              Width = 211
              Height = 48
              Caption = 'Nota de Cr'#233'dito'
              TabOrder = 41
              object Label146: TLabel
                Left = 13
                Top = 20
                Width = 66
                Height = 13
                Caption = 'Forma Pag. : '
              end
              object cbbFpgRcrPed: TwwDBLookupCombo
                Left = 85
                Top = 18
                Width = 121
                Height = 19
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_forma_pag'#9'10'#9'id_forma_pag'#9'F')
                DataField = 'ped_id_forma_pag_rcr'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_FPG
                LookupField = 'id_forma_pag'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbFpgRcrPedEnter
              end
            end
            object chbInformarCaixaNfe: TDBCheckBox
              Left = 480
              Top = -33
              Width = 144
              Height = 17
              Caption = 'Informar Caixa no NFE'
              DataField = 'informar_caixa_nfe'
              DataSource = dsoCTR
              TabOrder = 42
            end
            object DBCheckBox6: TDBCheckBox
              Left = 480
              Top = -13
              Width = 167
              Height = 17
              Caption = 'Hab. Vlr. Custo na Contagem'
              DataField = 'hab_vlr_custo_cte'
              DataSource = dsoCTR
              TabOrder = 43
            end
            object DBCheckBox11: TDBCheckBox
              Left = 259
              Top = -292
              Width = 188
              Height = 17
              Caption = 'Frete FOB somar com pedido'
              DataField = 'frete_fob_total_ped'
              DataSource = dsoCTR
              TabOrder = 44
            end
            object chbPrcPerfil: TDBCheckBox
              Left = 480
              Top = -74
              Width = 112
              Height = 17
              Caption = 'Pre'#231'o por Perfil ?'
              DataField = 'preco_por_perfil'
              DataSource = dsoCTR
              TabOrder = 45
            end
            object chbIcmsDesn: TDBCheckBox
              Left = 480
              Top = 7
              Width = 154
              Height = 24
              Caption = 'Hab. Icms desonerado na sa'#237'da da mercadoria ?'
              DataField = 'hab_icms_desn_saida'
              DataSource = dsoCTR
              TabOrder = 46
              WordWrap = True
            end
            object DBCheckBox14: TDBCheckBox
              Left = 480
              Top = 34
              Width = 183
              Height = 20
              Caption = 'Limite de cr'#233'dito por forma pag.'
              DataField = 'limite_cred_fpg'
              DataSource = dsoCTR
              TabOrder = 47
            end
            object DBCheckBox15: TDBCheckBox
              Left = 480
              Top = 56
              Width = 182
              Height = 26
              Caption = 'Permitir Sa'#237'da Merc. Emp. Logada'
              DataField = 'permitir_saida_est_emp'
              DataSource = dsoCTR
              TabOrder = 48
              WordWrap = True
            end
            object DBCheckBox16: TDBCheckBox
              Left = 480
              Top = 88
              Width = 169
              Height = 17
              Caption = 'Cadastro Cliente Simplificado'
              DataField = 'cad_cli_simplificado'
              DataSource = dsoCTR
              TabOrder = 49
            end
            object DBCheckBox17: TDBCheckBox
              Left = 480
              Top = 107
              Width = 177
              Height = 17
              Caption = 'Cadastro Ve'#237'culo Simplificado'
              DataField = 'cad_vei_simplificado'
              DataSource = dsoCTR
              TabOrder = 50
            end
            object gbRelEmail: TGroupBox
              Left = 459
              Top = 232
              Width = 204
              Height = 120
              TabOrder = 51
              object dgRelEmail: TwwDBGrid
                Left = 6
                Top = 50
                Width = 191
                Height = 61
                Selected.Strings = (
                  'email'#9'25'#9'Email'#9'T')
                IniAttributes.Delimiter = ';;'
                IniAttributes.UnicodeIniFile = False
                TitleColor = clBtnFace
                FixedCols = 0
                ShowHorzScrollBar = True
                DataSource = dsoEml
                TabOrder = 1
                TitleAlignment = taLeftJustify
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -11
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                TitleLines = 1
                TitleButtons = False
                UseTFields = False
                OnMouseUp = dgRelEmailMouseUp
                object btnDelIButton: TwwIButton
                  Left = 0
                  Top = 0
                  Width = 20
                  Height = 20
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
                  OnClick = btnDelIButtonClick
                end
              end
              object pnlRelEmail: TPanel
                Left = 32
                Top = 6
                Width = 164
                Height = 40
                TabOrder = 2
                OnExit = pnlRelEmailExit
                object Label166: TLabel
                  Left = 5
                  Top = 2
                  Width = 27
                  Height = 13
                  Caption = 'Email'
                end
                object txtRelEmail: TwwDBEdit
                  Left = 5
                  Top = 18
                  Width = 140
                  Height = 19
                  DataField = 'email'
                  DataSource = dsoEml
                  TabOrder = 0
                  UnboundDataType = wwDefault
                  WantReturns = False
                  WordWrap = False
                  OnExit = txtRelEmailExit
                end
              end
              object btnAddEmail: TBitBtn
                Left = 6
                Top = 24
                Width = 20
                Height = 20
                Glyph.Data = {
                  9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                  18000000000068020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333333333333333333
                  33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF333333333333333333333333FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333
                  3333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF33333333333333
                  3333333333333333333333333333333333333333333333333333333333FFFFFF
                  0000FFFFFF333333333333333333333333333333333333333333333333333333
                  333333333333333333FFFFFF0000FFFFFF333333333333333333333333333333
                  333333333333333333333333333333333333333333FFFFFF0000FFFFFF333333
                  3333333333333333333333333333333333333333333333333333333333333333
                  33FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333333333333333333
                  33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF333333333333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF333333333333333333333333FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333
                  3333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  0000}
                TabOrder = 0
                OnClick = btnAddEmailClick
              end
            end
            object chbEnviarRel: TDBCheckBox
              Left = 480
              Top = 154
              Width = 177
              Height = 25
              Caption = 'Enviar Relat'#243'rio Gerencial de Vendas'
              DataField = 'enviar_rel_grv'
              DataSource = dsoCTR
              TabOrder = 52
              WordWrap = True
              OnClick = chbEnviarRelClick
            end
            object DBCheckBox18: TDBCheckBox
              Left = 480
              Top = 124
              Width = 182
              Height = 28
              Caption = 'Exibir op'#231#227'o sem Cond. Pag. na nota fiscal de entrada '
              DataField = 'exibir_cond_sem_pag'
              DataSource = dsoCTR
              TabOrder = 53
              WordWrap = True
            end
            object DBCheckBox19: TDBCheckBox
              Left = 259
              Top = -277
              Width = 182
              Height = 17
              Caption = 'Utiliza Mec'#226'nico no Ped. Venda'
              DataField = 'ped_utiliza_mecanico'
              DataSource = dsoCTR
              TabOrder = 54
            end
            object DBCheckBox20: TDBCheckBox
              Left = 259
              Top = -260
              Width = 198
              Height = 17
              Caption = 'Exibir Obs. do Ped. Venda no Fisco'
              DataField = 'exibir_obs_ped_nfe_fisco'
              DataSource = dsoCTR
              TabOrder = 55
            end
            object DBCheckBox22: TDBCheckBox
              Left = 259
              Top = -343
              Width = 181
              Height = 17
              Caption = 'Obrigat'#243'rio dados do cheque?'
              DataField = 'obrig_dados_cheque_ped_vnd'
              DataSource = dsoCTR
              TabOrder = 56
            end
            object GroupBox21: TGroupBox
              Left = 246
              Top = -149
              Width = 210
              Height = 62
              TabOrder = 57
              object Label168: TLabel
                Left = 12
                Top = 28
                Width = 74
                Height = 13
                Caption = 'Tipo Estoque :'
              end
              object DBCheckBox23: TDBCheckBox
                Left = 12
                Top = 4
                Width = 165
                Height = 17
                Caption = 'Ativar Tipo Estoque Padr'#227'o'
                DataField = 'ativo_ped_vnd_tme_padrao'
                DataSource = dsoCTR
                TabOrder = 0
              end
              object wwDBLookupCombo1: TwwDBLookupCombo
                Left = 89
                Top = 26
                Width = 114
                Height = 19
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'T'
                  'id_tipo_mov_estoque'#9'10'#9'id_tipo_mov_estoque'#9'T')
                DataField = 'ped_vnd_tme_padrao'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TM2
                LookupField = 'id_tipo_mov_estoque'
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = wwDBLookupCombo1Enter
              end
            end
            object DBCheckBox28: TDBCheckBox
              Left = 259
              Top = -242
              Width = 189
              Height = 28
              Caption = 'Utilizar determinada forma pag. no pedido?'
              DataField = 'ativar_util_fpg_ped_vnd'
              DataSource = dsoCTR
              TabOrder = 58
              WordWrap = True
            end
            object DBCheckBox29: TDBCheckBox
              Left = 259
              Top = -212
              Width = 206
              Height = 17
              Caption = 'Letras Maiusculas em Obs. do Pedido'
              DataField = 'letras_maius_obs_ped'
              DataSource = dsoCTR
              TabOrder = 59
            end
            object DBCheckBox30: TDBCheckBox
              Left = 259
              Top = -189
              Width = 182
              Height = 17
              Caption = 'Informar mec'#226'nico por item?'
              DataField = 'informar_mec_por_item_ped'
              DataSource = dsoCTR
              TabOrder = 60
            end
            object DBCheckBox32: TDBCheckBox
              Left = 480
              Top = 185
              Width = 169
              Height = 25
              Caption = 'Exibir formas pag. separados no financeiro do cliente?'
              DataField = 'csu_cli_fin_separar_fpg'
              DataSource = dsoCTR
              TabOrder = 61
              WordWrap = True
            end
          end
        end
        object tbiNFe: TTabSheet
          Caption = 'NF-e'
          ImageIndex = 2
          OnEnter = tbiNFeEnter
          OnShow = tbiNFeShow
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 678
            Height = 241
            HorzScrollBar.Position = 11
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 0
            object lblTipoImpressao: TLabel
              Left = 11
              Top = 141
              Width = 100
              Height = 13
              Caption = 'Tipo de Impress'#227'o :'
            end
            object lblTipoEmissao: TLabel
              Left = 22
              Top = 165
              Width = 89
              Height = 13
              Caption = 'Tipo de Emiss'#227'o :'
            end
            object lblSituacaoEmissao: TLabel
              Left = 1
              Top = 186
              Width = 109
              Height = 13
              Caption = 'Situa'#231#227'o do Emissor :'
            end
            object lblPathXML: TLabel
              Left = 36
              Top = 209
              Width = 74
              Height = 13
              Caption = 'Path XML Nfe :'
            end
            object lblPathLogotipo: TLabel
              Left = 31
              Top = 271
              Width = 79
              Height = 13
              Caption = 'Path Logotipo :'
            end
            object lblJustificativaContig: TLabel
              Left = 4
              Top = 294
              Width = 106
              Height = 13
              Caption = 'Justificativa Contig. :'
            end
            object lblDataContingencia: TLabel
              Left = 8
              Top = 317
              Width = 102
              Height = 13
              Caption = 'Data Conting'#234'ncia :'
            end
            object Label29: TLabel
              Left = 350
              Top = 52
              Width = 87
              Height = 13
              Caption = 'S'#233'rie nota fiscal :'
            end
            object Label30: TLabel
              Left = -8
              Top = 2
              Width = 668
              Height = 23
              Alignment = taCenter
              AutoSize = False
              Caption = 'Role a p'#225'gina para visualizar todos os dados desta aba'
              Color = 14342874
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
            end
            object lblNfeOriginadaCupomFiscal: TLabel
              Left = 350
              Top = 211
              Width = 310
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'NF-e Originada de um Cupom Fiscal'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label47: TLabel
              Left = 357
              Top = 240
              Width = 99
              Height = 13
              Caption = 'Condi'#231#227'o de pgto :'
            end
            object Label48: TLabel
              Left = 356
              Top = 266
              Width = 101
              Height = 13
              Caption = 'Tipo mov. Estoque :'
            end
            object Label60: TLabel
              Left = 349
              Top = 289
              Width = 310
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'NFC-e'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label61: TLabel
              Left = 372
              Top = 313
              Width = 50
              Height = 13
              Caption = 'Id Token :'
            end
            object Label62: TLabel
              Left = 349
              Top = 338
              Width = 73
              Height = 13
              Caption = 'CSC (C'#243'digo) :'
            end
            object Label63: TLabel
              Left = -5
              Top = 553
              Width = 347
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'NFS-e'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblNumLotRPS: TLabel
              Left = 23
              Top = 577
              Width = 89
              Height = 13
              Caption = 'N'#186' Seq. Lote/RPS:'
            end
            object lblRet: TLabel
              Left = 5
              Top = 604
              Width = 107
              Height = 13
              Caption = 'Reg. Esp. Tributa'#231#227'o:'
            end
            object lblCodItemSer: TLabel
              Left = -5
              Top = 682
              Width = 117
              Height = 13
              Caption = 'Cod. Item Lista Servi'#231'o:'
            end
            object lblCodTriMcp: TLabel
              Left = 5
              Top = 657
              Width = 107
              Height = 13
              Caption = 'Cod. Trib. Municipio:'
            end
            object Label122: TLabel
              Left = 57
              Top = 248
              Width = 53
              Height = 13
              Caption = 'Path XML :'
            end
            object Label147: TLabel
              Left = 9
              Top = 632
              Width = 102
              Height = 13
              Caption = 'Natureza Opera'#231#227'o:'
            end
            object Label148: TLabel
              Left = 58
              Top = 733
              Width = 53
              Height = 13
              Caption = 'Prefeitura:'
            end
            object Label149: TLabel
              Left = 55
              Top = 705
              Width = 56
              Height = 13
              Caption = 'Cod. Cnae:'
            end
            object Label159: TLabel
              Left = 349
              Top = 423
              Width = 310
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Nota Fiscal Complementar'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label160: TLabel
              Left = 350
              Top = 470
              Width = 119
              Height = 13
              Caption = 'Natureza da opera'#231#227'o :'
            end
            object Label161: TLabel
              Left = 1
              Top = 755
              Width = 110
              Height = 13
              Caption = 'Path logo prefeitura :'
            end
            object Label167: TLabel
              Left = 20
              Top = 339
              Width = 89
              Height = 13
              Caption = 'Cod. Item Danfe :'
            end
            object Label171: TLabel
              Left = 351
              Top = 505
              Width = 308
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Protocolo de comunica'#231#227'o'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object SSLLib: TLabel
              Left = 387
              Top = 529
              Width = 38
              Height = 13
              Caption = 'SSLLib :'
            end
            object Label172: TLabel
              Left = 379
              Top = 556
              Width = 46
              Height = 13
              Caption = 'CriptLib :'
            end
            object Label173: TLabel
              Left = 381
              Top = 584
              Width = 44
              Height = 13
              Caption = 'HttpLib :'
            end
            object Label174: TLabel
              Left = 360
              Top = 609
              Width = 65
              Height = 13
              Caption = 'XMLSignLib :'
            end
            object Label175: TLabel
              Left = 369
              Top = 31
              Width = 67
              Height = 13
              Caption = 'Vers'#227'o NF-e :'
            end
            object Label184: TLabel
              Left = 337
              Top = 364
              Width = 83
              Height = 13
              Caption = 'Relat'#243'rio NFCe :'
            end
            object Label185: TLabel
              Left = 567
              Top = 364
              Width = 73
              Height = 13
              Caption = 'Ex.: relatorio.fr3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object txtPathXML: TDBEdit
              Left = 112
              Top = 206
              Width = 233
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'path_xml'
              DataSource = dsoNFE
              TabOrder = 5
            end
            object txtPathLogotipo: TDBEdit
              Left = 112
              Top = 269
              Width = 233
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'path_logo'
              DataSource = dsoNFE
              TabOrder = 6
            end
            object txtJustificativaContig: TDBEdit
              Left = 112
              Top = 291
              Width = 233
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'contigencia_just'
              DataSource = dsoNFE
              TabOrder = 7
            end
            object dpkDataContingencia: TJvDBDateEdit
              Left = 112
              Top = 314
              Width = 89
              Height = 19
              DataField = 'contigencia_data'
              DataSource = dsoNFE
              ShowNullDate = False
              TabOrder = 8
            end
            object gbServidor: TGroupBox
              Left = 349
              Top = 98
              Width = 313
              Height = 107
              TabOrder = 12
              object lblServidorSMTP: TLabel
                Left = 8
                Top = 5
                Width = 73
                Height = 13
                Caption = 'Servidor SMTP'
              end
              object lblPorta: TLabel
                Left = 191
                Top = 5
                Width = 27
                Height = 13
                Caption = 'Porta'
              end
              object lblUsuario: TLabel
                Left = 8
                Top = 45
                Width = 40
                Height = 13
                Caption = 'Usu'#225'rio'
              end
              object lblSenha: TLabel
                Left = 191
                Top = 45
                Width = 32
                Height = 13
                Caption = 'Senha'
              end
              object txtServidorSMTP: TDBEdit
                Left = 8
                Top = 19
                Width = 180
                Height = 19
                BevelInner = bvSpace
                BevelOuter = bvNone
                Color = clWhite
                DataField = 'email_smtp'
                DataSource = dsoNFE
                TabOrder = 0
              end
              object txtPorta: TDBEdit
                Left = 191
                Top = 19
                Width = 60
                Height = 19
                BevelInner = bvSpace
                BevelOuter = bvNone
                Color = clWhite
                DataField = 'email_smtp_porta'
                DataSource = dsoNFE
                TabOrder = 1
              end
              object chbSeguro: TDBCheckBox
                Left = 257
                Top = 20
                Width = 53
                Height = 17
                Caption = 'Seguro'
                DataField = 'email_smtp_seguro'
                DataSource = dsoNFE
                TabOrder = 2
              end
              object txtUsuario: TDBEdit
                Left = 8
                Top = 59
                Width = 180
                Height = 19
                BevelInner = bvSpace
                BevelOuter = bvNone
                Color = clWhite
                DataField = 'email_usuario'
                DataSource = dsoNFE
                TabOrder = 3
              end
              object txtSenha: TDBEdit
                Left = 191
                Top = 59
                Width = 119
                Height = 19
                BevelInner = bvSpace
                BevelOuter = bvNone
                Color = clWhite
                DataField = 'email_senha'
                DataSource = dsoNFE
                PasswordChar = '*'
                TabOrder = 4
              end
              object ckbTSL: TDBCheckBox
                Left = 16
                Top = 84
                Width = 49
                Height = 17
                Caption = 'TSL'
                DataField = 'email_smtp_tls'
                DataSource = dsoNFE
                TabOrder = 5
              end
              object chbSSL: TDBCheckBox
                Left = 71
                Top = 84
                Width = 42
                Height = 17
                Caption = 'SSL'
                DataField = 'email_smtp_ssl'
                DataSource = dsoNFE
                TabOrder = 6
              end
            end
            object gbItens: TGroupBox
              Left = -8
              Top = 394
              Width = 351
              Height = 150
              Caption = ' N'#186' de Sequ'#234'ncia de Nota fiscal '
              TabOrder = 10
              object pnParSer: TPanel
                Left = 30
                Top = 24
                Width = 611
                Height = 37
                BevelOuter = bvNone
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 0
                OnExit = pnParSerExit
                object Label31: TLabel
                  Left = 4
                  Top = -1
                  Width = 50
                  Height = 13
                  Caption = 'Tipo s'#233'rie'
                end
                object Label32: TLabel
                  Left = 63
                  Top = -1
                  Width = 53
                  Height = 13
                  Caption = 'Sequ'#234'ncia'
                end
                object txtTipoSerieNfe: TwwDBEdit
                  Left = 4
                  Top = 14
                  Width = 56
                  Height = 21
                  DataField = 'nfe_serie'
                  DataSource = dsoSer
                  TabOrder = 0
                  UnboundDataType = wwDefault
                  WantReturns = False
                  WordWrap = False
                  OnExit = txtTipoSerieNfeExit
                end
                object txtSequencia: TwwDBEdit
                  Left = 63
                  Top = 14
                  Width = 66
                  Height = 21
                  DataField = 'nfe_numero'
                  DataSource = dsoSer
                  TabOrder = 1
                  UnboundDataType = wwDefault
                  WantReturns = False
                  WordWrap = False
                  OnExit = txtSequenciaExit
                end
              end
              object grdParSer: TwwDBGrid
                Left = 7
                Top = 62
                Width = 336
                Height = 83
                Selected.Strings = (
                  'nfe_serie'#9'25'#9'Tipo s'#233'rie'#9'F'
                  'nfe_numero'#9'22'#9'Sequ'#234'ncia'#9'F')
                IniAttributes.Delimiter = ';;'
                IniAttributes.UnicodeIniFile = False
                TitleColor = 13750737
                FixedCols = 0
                ShowHorzScrollBar = True
                DataSource = dsoSer
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
                TabOrder = 2
                TitleAlignment = taLeftJustify
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -11
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                TitleLines = 1
                TitleButtons = False
                UseTFields = False
                OnMouseUp = grdParSerMouseUp
                object grdParSerIButton: TwwIButton
                  Left = -1
                  Top = -1
                  Width = 23
                  Height = 22
                  AllowAllUp = True
                  Glyph.Data = {
                    9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                    18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF7008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC108FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFC23FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFF32323232323232
                    3232323232323232323232323232323232323232323232323232323232FFFFFF
                    B102FFFFFF323232323232323232323232323232323232323232323232323232
                    323232323232323232FFFFFF0080FFFFFF323232323232323232323232323232
                    323232323232323232323232323232323232323232FFFFFFD83FFFFFFF323232
                    3232323232323232323232323232323232323232323232323232323232323232
                    32FFFFFF0080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFEE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    B102}
                  OnClick = grdParSerIButtonClick
                end
              end
              object btn_Add_Ser: TBitBtn
                Left = 7
                Top = 37
                Width = 23
                Height = 23
                Glyph.Data = {
                  9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                  18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF6A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232323232323232
                  32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232323232FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32323232323232
                  3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF32323232323232
                  3232323232323232323232323232323232323232323232323232323232FFFFFF
                  0000FFFFFF323232323232323232323232323232323232323232323232323232
                  323232323232323232FFFFFF0000FFFFFF323232323232323232323232323232
                  323232323232323232323232323232323232323232FFFFFF0000FFFFFF323232
                  3232323232323232323232323232323232323232323232323232323232323232
                  32FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232323232323232
                  32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232323232FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32323232323232
                  3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  0000}
                Layout = blGlyphTop
                TabOrder = 1
                WordWrap = True
                OnClick = btn_Add_SerClick
              end
            end
            object cbbTipoEmissao: TwwDBComboBox
              Left = 112
              Top = 161
              Width = 134
              Height = 19
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              DataField = 'danf_tipo_emissao'
              DataSource = dsoNFE
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'Normal'#9'0'
                'Contigencia'#9'1'
                'SCAN'#9'2'
                'DPEC'#9'3'
                'FSDA'#9'4'
                'SVCAN'#9'5'
                'SVCRS'#9'6'
                'VCSP'#9'7'
                'OffLine'#9'8')
              Sorted = False
              TabOrder = 3
              UnboundDataType = wwDefault
            end
            object cbbTipoImpressao: TwwDBComboBox
              Left = 112
              Top = 138
              Width = 134
              Height = 19
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              DataField = 'danf_tipo_impressao'
              DataSource = dsoNFE
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'Sem gera'#231#227'o'#9'0'
                'Retrato'#9'1'
                'Paisagem'#9'2'
                'Simplificado'#9'3'
                'NFCe5'#9'4'
                'Msg Eletr'#244'nica'#9'5')
              Sorted = False
              TabOrder = 2
              UnboundDataType = wwDefault
            end
            object cbbSituacaoEmissao: TwwDBComboBox
              Left = 112
              Top = 183
              Width = 134
              Height = 19
              ShowButton = True
              Style = csDropDown
              MapList = True
              AllowClearKey = False
              DataField = 'situacao_emissor'
              DataSource = dsoNFE
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'Produ'#231#227'o'#9'1'
                'Homologa'#231#227'o'#9'2')
              Sorted = False
              TabOrder = 4
              UnboundDataType = wwDefault
            end
            object txtSerie: TDBEdit
              Left = 443
              Top = 49
              Width = 94
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'serie_nf'
              DataSource = dsoCTR
              TabOrder = 11
            end
            object chbUsaNroDifNfeDev: TDBCheckBox
              Left = 100
              Top = 361
              Width = 233
              Height = 29
              Caption = 'Usa outra sequ'#234'ncia de numera'#231#227'o para notas de devolu'#231#245'es'
              DataField = 'nfe_seq_devolucao'
              DataSource = dsoNFE
              TabOrder = 9
              WordWrap = True
            end
            object cbbNfeCupomFiscalCondPag: TwwDBLookupCombo
              Left = 464
              Top = 238
              Width = 196
              Height = 19
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'descricao'#9'F'
                'id_condicao_pag'#9'10'#9'id_condicao_pag'#9'F')
              DataField = 'nfe_ecf_id_condicao_pag'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_CPG
              LookupField = 'id_condicao_pag'
              Style = csDropDownList
              ButtonStyle = cbsCustom
              TabOrder = 13
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbNfeCupomFiscalCondPagEnter
            end
            object cbbNfeCupomFiscalTipoMovEstoque: TwwDBLookupCombo
              Left = 464
              Top = 264
              Width = 196
              Height = 19
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'descricao'#9'F'
                'id_tipo_mov_estoque'#9'10'#9'id_tipo_mov_estoque'#9'F')
              DataField = 'nfe_ecf_tipo_estoque'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_TME
              LookupField = 'id_tipo_mov_estoque'
              Style = csDropDownList
              ButtonStyle = cbsCustom
              TabOrder = 14
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbNfeCupomFiscalTipoMovEstoqueEnter
            end
            object txtIdToken: TwwDBEdit
              Left = 430
              Top = 311
              Width = 66
              Height = 19
              DataField = 'nfc_id_token'
              DataSource = dsoNFE
              TabOrder = 15
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object txtCSC: TwwDBEdit
              Left = 430
              Top = 336
              Width = 227
              Height = 19
              DataField = 'nfc_csc'
              DataSource = dsoNFE
              TabOrder = 16
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object txtLotRPS: TwwDBEdit
              Left = 118
              Top = 575
              Width = 223
              Height = 19
              DataField = 'cod_lot_rps'
              DataSource = dsoNFE
              TabOrder = 18
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object cbbRet: TwwDBComboBox
              Left = 118
              Top = 603
              Width = 223
              Height = 19
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              DataField = 'reg_esp_tri'
              DataSource = dsoNFE
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'Microempresa municipal'#9'1'
                'Estimativa'#9'2'
                'Sociedade de profissionais'#9'3'
                'Cooperativa'#9'4'
                'Microempres'#225'rio Individual'#9'5'
                'Microempres'#225'rio e Empresa de Pequeno Porte'#9'6'
                'Nenhum'#9'0'
                'Lucro Real'#9'7'
                'Lucro Presumido'#9'8'
                'Simples Nacional'#9'9')
              Sorted = False
              TabOrder = 19
              UnboundDataType = wwDefault
            end
            object txtCodItemListaSer: TwwDBEdit
              Left = 118
              Top = 678
              Width = 223
              Height = 19
              DataField = 'cod_ite_ser'
              DataSource = dsoNFE
              TabOrder = 20
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object txtCodTriMcp: TwwDBEdit
              Left = 118
              Top = 655
              Width = 223
              Height = 19
              DataField = 'cod_tri_mcp'
              DataSource = dsoNFE
              TabOrder = 21
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object txtPathXmlOutros: TDBEdit
              Left = 111
              Top = 246
              Width = 234
              Height = 19
              BevelInner = bvSpace
              BevelOuter = bvNone
              Color = clWhite
              DataField = 'path_xml_outros'
              DataSource = dsoNFE
              TabOrder = 22
            end
            object txtPrefeitura: TwwDBEdit
              Left = 118
              Top = 728
              Width = 223
              Height = 19
              DataField = 'rps_prefeitura'
              DataSource = dsoNFE
              TabOrder = 23
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object cbbNatOpr: TwwDBComboBox
              Left = 118
              Top = 628
              Width = 223
              Height = 19
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              DataField = 'rps_nat_opr'
              DataSource = dsoNFE
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                '1'#9'1'
                '2'#9'2'
                '3'#9'3'
                '4'#9'4'
                '5'#9'5'
                '6'#9'6'
                '7'#9'7'
                '9'#9'9'
                '11'#9'11'
                '12'#9'12'
                '14'#9'14'
                '50'#9'50'
                '51'#9'51'
                '52'#9'52'
                '53'#9'53'
                '54'#9'54'
                '55'#9'55'
                '56'#9'56'
                '57'#9'57'
                '58'#9'58'
                '59'#9'59'
                '60'#9'60'
                '61'#9'61'
                '62'#9'62'
                '63'#9'63'
                '64'#9'64'
                '65'#9'65'
                '66'#9'66'
                '67'#9'67'
                '68'#9'68'
                '69'#9'69'
                '70'#9'70'
                '71'#9'71'
                '72'#9'72'
                '78'#9'78'
                '79'#9'79'
                '101'#9'101'
                '111'#9'111'
                '121'#9'121'
                '201'#9'201'
                '301'#9'301'
                '501'#9'501'
                '511'#9'511'
                '541'#9'541'
                '551'#9'551'
                '601'#9'601'
                '701'#9'701')
              Sorted = False
              TabOrder = 24
              UnboundDataType = wwDefault
            end
            object txtCodCnae: TwwDBEdit
              Left = 118
              Top = 703
              Width = 223
              Height = 19
              DataField = 'rps_cod_cnae'
              DataSource = dsoNFE
              TabOrder = 25
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object chkPermSalvXMLNfe: TDBCheckBox
              Left = 350
              Top = 74
              Width = 284
              Height = 17
              Caption = 'Salvar o xml da NF-e no banco de dados'
              DataField = 'nfe_permite_salv_xml'
              DataSource = dsoNFE
              TabOrder = 26
            end
            object chbPermitirChqNfce: TDBCheckBox
              Left = 361
              Top = 400
              Width = 281
              Height = 17
              Caption = 'Permitir gerar NFC-e com forma pag. tipo cheque'
              DataField = 'nfce_permite_cheque'
              DataSource = dsoCTR
              TabOrder = 27
            end
            object DBCheckBox10: TDBCheckBox
              Left = 112
              Top = 227
              Width = 160
              Height = 17
              Caption = 'Separar XML por m'#234's'
              DataField = 'nfe_separar_xml_mes'
              DataSource = dsoNFE
              TabOrder = 28
            end
            object chbNatOpeComp: TDBCheckBox
              Left = 361
              Top = 445
              Width = 233
              Height = 17
              Caption = 'Informar natureza da opera'#231#227'o no DANFe'
              DataField = 'ativar_nat_ope_nfe_comp'
              DataSource = dsoNFE
              TabOrder = 29
              OnClick = chbNatOpeCompClick
            end
            object txtNatOprNotaComp: TwwDBEdit
              Left = 473
              Top = 468
              Width = 186
              Height = 19
              Color = 14342874
              DataField = 'inf_nat_ope_nfe_comp'
              DataSource = dsoNFE
              TabOrder = 30
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit2: TwwDBEdit
              Left = 117
              Top = 752
              Width = 224
              Height = 19
              DataField = 'path_logo_prefeitura'
              DataSource = dsoNFE
              TabOrder = 31
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object cbbDanfeCodItem: TwwDBComboBox
              Left = 111
              Top = 337
              Width = 153
              Height = 19
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              DataField = 'danfe_cod_item'
              DataSource = dsoNFE
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'C'#243'd. Item'#9'0'
                'C'#243'd. F'#225'brica'#9'1')
              Sorted = False
              TabOrder = 32
              UnboundDataType = wwDefault
            end
            object cbbSSLLib: TwwDBComboBox
              Left = 431
              Top = 526
              Width = 228
              Height = 19
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              DataField = 'prot_com_ssllib'
              DataSource = dsoNFE
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'libNone'#9'0'
                'libOpenSSL'#9'1'
                'libCapicom'#9'2'
                'libCapicomDelphiSoap'#9'3'
                'libWinCrypt'#9'4'
                'libCustom'#9'5')
              Sorted = False
              TabOrder = 33
              UnboundDataType = wwDefault
            end
            object cbbCriptLib: TwwDBComboBox
              Left = 431
              Top = 553
              Width = 228
              Height = 19
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              DataField = 'prot_com_criptlib'
              DataSource = dsoNFE
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'cryNone'#9'0'
                'cryOpenSSL'#9'1'
                'cryCapicom'#9'2'
                'cryWinCrypt'#9'3')
              Sorted = False
              TabOrder = 34
              UnboundDataType = wwDefault
            end
            object cbbHttpLib: TwwDBComboBox
              Left = 431
              Top = 581
              Width = 228
              Height = 19
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              DataField = 'prot_com_httplib'
              DataSource = dsoNFE
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'httpNone'#9'0'
                'httpWinNet'#9'1'
                'httpWinHttp'#9'2'
                'httpOpenSSL'#9'3'
                'httpIndy'#9'4')
              Sorted = False
              TabOrder = 35
              UnboundDataType = wwDefault
            end
            object cbbXMLSignLib: TwwDBComboBox
              Left = 431
              Top = 606
              Width = 228
              Height = 19
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              DataField = 'prot_com_xmlsignlib'
              DataSource = dsoNFE
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'xsNone'#9'0'
                'xsXmlSec'#9'1'
                'xsMsXml'#9'2'
                'xsMsXmlCapicom'#9'3'
                'xsLibXml2'#9'4')
              Sorted = False
              TabOrder = 36
              UnboundDataType = wwDefault
            end
            object cbbVersaoNFe: TwwDBComboBox
              Left = 443
              Top = 27
              Width = 94
              Height = 19
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              DataField = 'nfe_versao'
              DataSource = dsoNFE
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                've200'#9'0'
                've300'#9'1'
                've310'#9'2'
                've400'#9'3')
              Sorted = False
              TabOrder = 37
              UnboundDataType = wwDefault
            end
            object gbComCapicom: TGroupBox
              Left = 5
              Top = 94
              Width = 331
              Height = 42
              Caption = ' Comunica'#231#227'o por CAPICOM '
              TabOrder = 1
              object lblSerieCertificado: TLabel
                Left = 11
                Top = 18
                Width = 90
                Height = 13
                Caption = 'S'#233'rie Certificado :'
              end
              object sbtnGetCert: TSpeedButton
                Left = 305
                Top = 13
                Width = 23
                Height = 23
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnGetCertClick
              end
              object txtSerieCertificado: TDBEdit
                Left = 107
                Top = 16
                Width = 198
                Height = 19
                BevelInner = bvSpace
                BevelOuter = bvNone
                Color = clWhite
                DataField = 'cert_serie'
                DataSource = dsoNFE
                TabOrder = 0
              end
            end
            object gbComOpenSSL: TGroupBox
              Left = 3
              Top = 25
              Width = 327
              Height = 63
              Caption = ' Comunica'#231#227'o por OpenSSL'
              TabOrder = 0
              object Label176: TLabel
                Left = 41
                Top = 40
                Width = 38
                Height = 13
                Caption = 'Senha :'
              end
              object Label177: TLabel
                Left = 29
                Top = 19
                Width = 50
                Height = 13
                Caption = 'Path PFX :'
              end
              object btnPathPFX: TSpeedButton
                Left = 302
                Top = 13
                Width = 23
                Height = 23
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = btnPathPFXClick
              end
              object txtSenhaPFX: TDBEdit
                Left = 85
                Top = 38
                Width = 217
                Height = 19
                BevelInner = bvSpace
                BevelOuter = bvNone
                Color = clWhite
                DataField = 'cert_senha_pfx'
                DataSource = dsoNFE
                TabOrder = 1
              end
              object txtPathPFX: TDBEdit
                Left = 85
                Top = 15
                Width = 217
                Height = 19
                BevelInner = bvSpace
                BevelOuter = bvNone
                Color = clWhite
                DataField = 'cert_caminho_pfx'
                DataSource = dsoNFE
                TabOrder = 0
              end
            end
            object wwDBEdit4: TwwDBEdit
              Left = 431
              Top = 361
              Width = 130
              Height = 19
              DataField = 'nfc_nome_arq_rel'
              DataSource = dsoNFE
              TabOrder = 17
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
        object tbiMDF: TTabSheet
          Caption = 'MDF-e'
          ImageIndex = 11
          object Label58: TLabel
            Left = 24
            Top = 17
            Width = 73
            Height = 13
            Caption = 'Tipo Emiss'#227'o :'
          end
          object Label59: TLabel
            Left = 20
            Top = 41
            Width = 77
            Height = 13
            Caption = 'Tipo Emitente :'
          end
          object cbbTipoEmiMfd: TwwDBComboBox
            Left = 102
            Top = 14
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'mdfe_tipo_emissao'
            DataSource = dsoNFE
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Normal'#9'0'
              'Contig'#234'ncia'#9'1')
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
            OnEnter = cbbTipoEmiMfdEnter
          end
          object cbbTipoEmitente: TwwDBComboBox
            Left = 102
            Top = 38
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'mdfe_tipo_emitente'
            DataSource = dsoNFE
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Prestador de servi'#231'o de transporte'#9'0'
              'Transportador de Carga Pr'#243'pria'#9'1')
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
            OnEnter = cbbTipoEmitenteEnter
          end
        end
        object tbiProducao: TTabSheet
          Caption = 'Produ'#231#227'o'
          ImageIndex = 3
          OnShow = tbiProducaoShow
          object ScrollBox2: TScrollBox
            Left = 0
            Top = 0
            Width = 678
            Height = 241
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            ParentColor = False
            TabOrder = 0
            object Label24: TLabel
              Left = 355
              Top = 42
              Width = 131
              Height = 13
              Caption = 'Lista mestre  da empresa :'
            end
            object Label25: TLabel
              Left = 345
              Top = 93
              Width = 112
              Height = 13
              Caption = 'Colch'#227'o sob-medida :'
            end
            object DBText1: TDBText
              Left = 539
              Top = 89
              Width = 128
              Height = 21
              Color = 14342874
              DataField = 'int_nomeitesobmed'
              DataSource = dsoCTR
              ParentColor = False
              Transparent = False
            end
            object Label68: TLabel
              Left = 5
              Top = 205
              Width = 331
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pedido de Venda'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label69: TLabel
              Left = 5
              Top = 16
              Width = 330
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Geral'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label70: TLabel
              Left = 340
              Top = 16
              Width = 330
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Lista Mestre'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label71: TLabel
              Left = 340
              Top = 65
              Width = 119
              Height = 13
              Alignment = taCenter
              Caption = 'Impress'#227'o de Etiquetas'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label72: TLabel
              Left = 9
              Top = 157
              Width = 106
              Height = 13
              Alignment = taCenter
              Caption = 'Controle de Estoque'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label117: TLabel
              Left = 339
              Top = 126
              Width = 328
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Entrada de Produto Acabado'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label155: TLabel
              Left = 135
              Top = 64
              Width = 147
              Height = 13
              Caption = 'Limite de desconto especial :'
            end
            object Label156: TLabel
              Left = 327
              Top = 65
              Width = 9
              Height = 13
              Caption = '%'
            end
            object Label178: TLabel
              Left = 347
              Top = 206
              Width = 114
              Height = 26
              Caption = 'Almoxarifado padr'#227'o Entrada da Produ'#231#227'o :'
              WordWrap = True
            end
            object Label180: TLabel
              Left = 339
              Top = 252
              Width = 328
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Contagem - Entrada de Produto Acabado'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label181: TLabel
              Left = 15
              Top = 41
              Width = 144
              Height = 13
              Caption = 'Ano corrente Rel. de Carga :'
            end
            object Label183: TLabel
              Left = 339
              Top = 348
              Width = 327
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Gera'#231#227'o da Ordem de Produ'#231#227'o de Bloco de Espumas'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label186: TLabel
              Left = 339
              Top = 416
              Width = 327
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Etiqueta para maquetes'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label187: TLabel
              Left = 346
              Top = 442
              Width = 129
              Height = 13
              Caption = 'Nome da etiqueta (*.fr3) :'
            end
            object Label188: TLabel
              Left = 340
              Top = 480
              Width = 327
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Faturamento - Or'#231'amento'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label189: TLabel
              Left = 9
              Top = 678
              Width = 112
              Height = 13
              Caption = 'Cond. de pagamento:'
            end
            object Label190: TLabel
              Left = 9
              Top = 647
              Width = 327
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Condi'#231#227'o de pagamento padr'#227'o para Representante Externo'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label191: TLabel
              Left = 345
              Top = 511
              Width = 112
              Height = 13
              Caption = 'Cond. de pagamento:'
            end
            object Label194: TLabel
              Left = 28
              Top = 737
              Width = 93
              Height = 13
              Caption = 'Tipo de estoque : '
            end
            object Label193: TLabel
              Left = 9
              Top = 712
              Width = 327
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Tipo de movimento padr'#227'o para Representante Externo'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label195: TLabel
              Left = 9
              Top = 592
              Width = 167
              Height = 39
              Caption = 
                'Qtde de dias para cancelar automaticamente os pedidos em situa'#231#227 +
                'o DIGITADO:'
              WordWrap = True
            end
            object gbParamPreco: TGroupBox
              Left = 5
              Top = 223
              Width = 331
              Height = 173
              Caption = 'Parametriza'#231#227'o de pre'#231'os'
              TabOrder = 3
              object pnlParametrizacao: TPanel
                Left = 31
                Top = 17
                Width = 306
                Height = 41
                BevelOuter = bvNone
                Enabled = False
                TabOrder = 0
                OnExit = pnlParametrizacaoExit
                object Label27: TLabel
                  Left = 3
                  Top = 3
                  Width = 127
                  Height = 13
                  Caption = 'Condi'#231#227'o de pagamento'
                end
                object Label28: TLabel
                  Left = 196
                  Top = 3
                  Width = 59
                  Height = 13
                  Caption = 'Reajuste(%)'
                end
                object txtAjuPer: TwwDBEdit
                  Left = 196
                  Top = 18
                  Width = 99
                  Height = 21
                  DataField = 'per_reajuste'
                  DataSource = dsoCPG
                  TabOrder = 1
                  UnboundDataType = wwDefault
                  WantReturns = False
                  WordWrap = False
                  OnExit = txtAjuPerExit
                end
                object cbbCondicaoCpgPrc: TwwDBLookupCombo
                  Left = 3
                  Top = 18
                  Width = 190
                  Height = 21
                  DropDownAlignment = taLeftJustify
                  Selected.Strings = (
                    'descricao'#9'20'#9'descricao'#9'F')
                  DataField = 'id_condicao_pag'
                  DataSource = dsoCPG
                  LookupTable = dmGeral.BUS_CD_C_CPG
                  LookupField = 'id_condicao_pag'
                  Options = [loColLines, loRowLines]
                  TabOrder = 0
                  AutoDropDown = False
                  ShowButton = True
                  UseTFields = False
                  PreciseEditRegion = False
                  AllowClearKey = False
                  OnEnter = cbbCondicaoCpgPrcEnter
                  OnExit = cbbCondicaoCpgPrcExit
                end
              end
              object btn_Add_Prc: TBitBtn
                Left = 8
                Top = 34
                Width = 23
                Height = 23
                Glyph.Data = {
                  9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                  18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF6A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232323232323232
                  32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232323232FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32323232323232
                  3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF32323232323232
                  3232323232323232323232323232323232323232323232323232323232FFFFFF
                  0000FFFFFF323232323232323232323232323232323232323232323232323232
                  323232323232323232FFFFFF0000FFFFFF323232323232323232323232323232
                  323232323232323232323232323232323232323232FFFFFF0000FFFFFF323232
                  3232323232323232323232323232323232323232323232323232323232323232
                  32FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323232323232323232
                  32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF323232323232323232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF323232323232323232323232FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32323232323232
                  3232323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  0000}
                Layout = blGlyphTop
                TabOrder = 2
                WordWrap = True
                OnClick = btn_Add_PrcClick
              end
              object grdParamPreco: TwwDBGrid
                Left = 5
                Top = 60
                Width = 320
                Height = 108
                TabStop = False
                Selected.Strings = (
                  'int_nomecpg'#9'25'#9'Condi'#231#227'o de Pagamento'#9'F'
                  'per_reajuste'#9'10'#9'Reajuste(%)'#9'F'
                  'sequencia'#9'8'#9'Ordem'#9'F')
                IniAttributes.Delimiter = ';;'
                IniAttributes.UnicodeIniFile = False
                TitleColor = 13750737
                FixedCols = 0
                ShowHorzScrollBar = True
                DataSource = dsoCPG
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
                TabOrder = 1
                TitleAlignment = taLeftJustify
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -11
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                TitleLines = 1
                TitleButtons = False
                UseTFields = False
                OnMouseUp = grdParamPrecoMouseUp
                object grdCodIButton: TwwIButton
                  Left = -2
                  Top = 0
                  Width = 23
                  Height = 22
                  AllowAllUp = True
                  Glyph.Data = {
                    9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                    18000000000068020000120B0000120B00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF7008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC108FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFC23FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFF32323232323232
                    3232323232323232323232323232323232323232323232323232323232FFFFFF
                    B102FFFFFF323232323232323232323232323232323232323232323232323232
                    323232323232323232FFFFFF0080FFFFFF323232323232323232323232323232
                    323232323232323232323232323232323232323232FFFFFFD83FFFFFFF323232
                    3232323232323232323232323232323232323232323232323232323232323232
                    32FFFFFF0080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFEE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    B102}
                  OnClick = grdCodIButtonClick
                end
              end
            end
            object chkUtilizaNumLote: TDBCheckBox
              Left = 15
              Top = 176
              Width = 98
              Height = 17
              Caption = 'Utiliza lote?'
              DataField = 'utiliza_lote_na_entrada'
              DataSource = dsoCTR
              TabOrder = 4
            end
            object chkAtivaProducao: TDBCheckBox
              Left = 15
              Top = 64
              Width = 102
              Height = 17
              Caption = 'Ativa Produ'#231#227'o?'
              DataField = 'ativa_producao'
              DataSource = dsoCTR
              TabOrder = 1
            end
            object cbbCodLme: TwwDBLookupCombo
              Left = 489
              Top = 38
              Width = 89
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'id_lme'#9'10'#9'C'#243'digo'#9'F')
              DataField = 'id_lme'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_LME
              LookupField = 'id_lme'
              TabOrder = 6
              AutoDropDown = False
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object txtEtqtec: TJvDBComboEdit
              Left = 460
              Top = 89
              Width = 77
              Height = 21
              ClickKey = 114
              DataField = 'pcp_id_item_sob_medida'
              DataSource = dsoCTR
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
              TabOrder = 7
              OnButtonClick = txtEtqtecButtonClick
              OnExit = txtEtqtecExit
            end
            object GroupBox2: TGroupBox
              Left = 9
              Top = 399
              Width = 324
              Height = 89
              Caption = 'Previs'#227'o de Entrega'
              TabOrder = 8
              object Label73: TLabel
                Left = 8
                Top = 24
                Width = 94
                Height = 13
                Caption = 'Dentro da Cidade:'
              end
              object Label74: TLabel
                Left = 19
                Top = 54
                Width = 81
                Height = 13
                Caption = 'Fora da Cidade:'
              end
              object txtDiasPrevUfDentro: TwwDBEdit
                Left = 108
                Top = 21
                Width = 61
                Height = 21
                DataField = 'sgq_dias_prev_cid_dentro'
                DataSource = dsoCTR
                TabOrder = 0
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object txtPrevDiasUfFora: TwwDBEdit
                Left = 108
                Top = 51
                Width = 61
                Height = 21
                DataField = 'sgq_dias_prev_cid_fora'
                DataSource = dsoCTR
                TabOrder = 1
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
            end
            object gbTmeEntIteOp: TGroupBox
              Left = 340
              Top = 145
              Width = 327
              Height = 52
              Caption = ' '
              TabOrder = 9
              object Label119: TLabel
                Left = 7
                Top = 21
                Width = 102
                Height = 13
                Caption = 'Tipo Mov. Estoque :'
              end
              object cbbTipoMovEstEntOP: TwwDBLookupCombo
                Left = 130
                Top = 17
                Width = 187
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_mov_estoque'#9'10'#9'id_tipo_mov_estoque'#9'F')
                DataField = 'pcp_epp_id_tipo_mov_estoque'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TME
                LookupField = 'id_tipo_mov_estoque'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbTipoMovEstEntOPEnter
              end
            end
            object txtPercLimDescEspec: TwwDBEdit
              Left = 284
              Top = 61
              Width = 40
              Height = 21
              DataField = 'per_desc_especial'
              DataSource = dsoCTR
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object gbComissaoRep: TGroupBox
              Left = 9
              Top = 492
              Width = 331
              Height = 87
              Caption = 'Comiss'#227'o do Representante'
              TabOrder = 10
              object lblComissaoMax: TLabel
                Left = 12
                Top = 50
                Width = 94
                Height = 13
                Caption = 'Comiss'#227'o M'#225'x. % :'
              end
              object lblTipoComissao: TLabel
                Left = 10
                Top = 25
                Width = 97
                Height = 13
                Caption = 'Tipo de Comiss'#227'o :'
              end
              object txtComissaoMax: TwwDBEdit
                Left = 112
                Top = 47
                Width = 145
                Height = 21
                DataField = 'sgq_per_comissao_max'
                DataSource = dsoCTR
                TabOrder = 0
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object cbbTipoComissao: TwwDBComboBox
                Left = 112
                Top = 22
                Width = 145
                Height = 21
                ShowButton = True
                Style = csDropDownList
                MapList = True
                AllowClearKey = False
                DataField = 'sgq_tipo_comissao'
                DataSource = dsoCTR
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  'Nenhum'#9'0'
                  'Por Pedido de Venda'#9'1')
                Sorted = False
                TabOrder = 1
                UnboundDataType = wwDefault
              end
            end
            object DBCheckBox12: TDBCheckBox
              Left = 15
              Top = 87
              Width = 321
              Height = 17
              Caption = 'Ordem de produ'#231#227'o calcula saldo a produzir dos produtos'
              DataField = 'sgq_calc_sld_produzir_opr'
              DataSource = dsoCTR
              TabOrder = 5
            end
            object DBCheckBox33: TDBCheckBox
              Left = 15
              Top = 110
              Width = 321
              Height = 17
              Caption = 'Gerar ordem de faturamento somente de pedido com O.P'
              DataField = 'sgq_verif_op_ped'
              DataSource = dsoCTR
              TabOrder = 12
            end
            object cbbAlmPadEntEpp: TwwDBLookupCombo
              Left = 470
              Top = 211
              Width = 187
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'descricao'#9'F'
                'id_tipo_mov_estoque'#9'10'#9'id_tipo_mov_estoque'#9'F')
              DataField = 'sgq_id_almoxarifado_pad_epp'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_ALM
              LookupField = 'id_almoxarifado'
              Style = csDropDownList
              TabOrder = 13
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbAlmPadEntEppEnter
            end
            object GroupBox23: TGroupBox
              Left = 336
              Top = 266
              Width = 327
              Height = 52
              Caption = ' '
              TabOrder = 14
              object Label179: TLabel
                Left = 20
                Top = 21
                Width = 102
                Height = 13
                Caption = 'Tipo Mov. Estoque :'
              end
              object cbbCpaTipoMovEstEnt: TwwDBLookupCombo
                Left = 130
                Top = 17
                Width = 186
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_mov_estoque'#9'10'#9'id_tipo_mov_estoque'#9'F')
                DataField = 'pcp_cpa_id_tipo_mov_estoque'
                DataSource = dsoCTR
                LookupTable = BUS_CD_C_TME_EXP4
                LookupField = 'id_tipo_mov_estoque'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbCpaTipoMovEstEntEnter
              end
            end
            object wwDBEdit3: TwwDBEdit
              Left = 164
              Top = 38
              Width = 52
              Height = 21
              DataField = 'pcp_rom_ano_corrente'
              DataSource = dsoCTR
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object DBCheckBox35: TDBCheckBox
              Left = 15
              Top = 134
              Width = 321
              Height = 17
              Caption = 'Atualiza a data do pedido ao gerar as parcelas '
              DataField = 'pcp_atualiza_dta_pedido'
              DataSource = dsoCTR
              TabOrder = 15
            end
            object GroupBox24: TGroupBox
              Left = 339
              Top = 362
              Width = 327
              Height = 52
              Caption = ' '
              TabOrder = 16
              object Label182: TLabel
                Left = 20
                Top = 21
                Width = 102
                Height = 13
                Caption = 'Tipo Mov. Estoque :'
              end
              object cbbOpbTipoMovEstSai: TwwDBLookupCombo
                Left = 130
                Top = 17
                Width = 185
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_mov_estoque'#9'10'#9'id_tipo_mov_estoque'#9'F')
                DataField = 'pcp_opb_id_tipo_mov_estoque'
                DataSource = dsoCTR
                LookupTable = BUS_CD_C_TME_EXP5
                LookupField = 'id_tipo_mov_estoque'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbOpbTipoMovEstSaiEnter
              end
            end
            object wwDBEdit5: TwwDBEdit
              Left = 481
              Top = 438
              Width = 185
              Height = 21
              DataField = 'sgq_nome_etq_maquete'
              DataSource = dsoCTR
              TabOrder = 17
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBLookupCombo2: TwwDBLookupCombo
              Left = 463
              Top = 507
              Width = 190
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'20'#9'descricao'#9'F')
              DataField = 'sgq_fat_orc_id_condicao_pag'
              DataSource = dsoCTR
              LookupTable = BUS_CD_C_CPG_REP
              LookupField = 'id_condicao_pag'
              Options = [loColLines, loRowLines]
              Style = csDropDownList
              TabOrder = 18
              AutoDropDown = False
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object wwDBLookupCombo3: TwwDBLookupCombo
              Left = 127
              Top = 674
              Width = 203
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'20'#9'descricao'#9'F')
              DataField = 'sgq_fat_ped_id_condicao_pag'
              DataSource = dsoCTR
              LookupTable = BUS_CD_C_CPG_REP
              LookupField = 'id_condicao_pag'
              Options = [loColLines, loRowLines]
              Style = csDropDownList
              TabOrder = 19
              AutoDropDown = False
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object cbbPedTipoMovEstRep: TwwDBLookupCombo
              Left = 127
              Top = 734
              Width = 203
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'descricao'#9'F'
                'id_tipo_mov_estoque'#9'10'#9'id_tipo_mov_estoque'#9'F')
              DataField = 'fat_id_tipo_mov_estoque_rep'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_TME
              LookupField = 'id_tipo_mov_estoque'
              Style = csDropDownList
              TabOrder = 20
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbPedTipoMovEstRepEnter
            end
            object wwDBEdit7: TwwDBEdit
              Left = 182
              Top = 610
              Width = 72
              Height = 21
              DataField = 'fat_qtde_dias_canc_ped_autom'
              DataSource = dsoCTR
              TabOrder = 11
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
        object tbiSEF: TTabSheet
          Caption = 'SEF'
          ImageIndex = 4
          OnShow = tbiSEFShow
          object lblFinalidadeSef: TLabel
            Left = 85
            Top = 29
            Width = 60
            Height = 13
            Caption = 'Finalidade :'
          end
          object lblConteudoArquivoSef: TLabel
            Left = 44
            Top = 52
            Width = 101
            Height = 13
            Caption = 'Conte'#250'do Arquivo :'
          end
          object lblEntradaDadosSef: TLabel
            Left = 47
            Top = 75
            Width = 98
            Height = 13
            Caption = 'Entrada de Dados :'
          end
          object lblExijeImpDocumentosSef: TLabel
            Left = 23
            Top = 167
            Width = 122
            Height = 13
            Caption = 'Exije Imp. Documentos :'
          end
          object lblExijeEscrituracaoICMSSef: TLabel
            Left = 6
            Top = 144
            Width = 139
            Height = 13
            Caption = 'Exije Escritura'#231#227'o de ICMS :'
          end
          object lblExijeEscrituracaoISSSef: TLabel
            Left = 17
            Top = 121
            Width = 128
            Height = 13
            Caption = 'Exije Escritura'#231#227'o de ISS :'
          end
          object lblDocumentoContidoSef: TLabel
            Left = 34
            Top = 98
            Width = 111
            Height = 13
            Caption = 'Documento Contido :'
          end
          object lblExijeLivroCombustivelSef: TLabel
            Left = 23
            Top = 213
            Width = 122
            Height = 13
            Caption = 'Exije Livro Combust'#237'vel :'
          end
          object lblExijeUtilDocumentosSef: TLabel
            Left = 24
            Top = 190
            Width = 121
            Height = 13
            Caption = 'Exije Util. Documentos :'
          end
          object lblExijeRegDocumentosSef: TLabel
            Left = 401
            Top = 6
            Width = 95
            Height = 13
            Caption = 'Exije Reg. Ve'#237'culo :'
          end
          object lblExijeRegInventarioSef: TLabel
            Left = 387
            Top = 29
            Width = 110
            Height = 13
            Caption = 'Exije Reg. Invent'#225'rio :'
          end
          object lblApresentaEscContabilSef: TLabel
            Left = 370
            Top = 52
            Width = 127
            Height = 13
            Caption = 'Apresenta Esc. Cont'#225'bil :'
          end
          object lblOperacaoSujeitaISSSef: TLabel
            Left = 369
            Top = 75
            Width = 128
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao ISS :'
          end
          object lblOperacaoSujeitaAntecipacaoSef: TLabel
            Left = 337
            Top = 167
            Width = 160
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita Antecipa'#231#227'o :'
          end
          object lblOperacaoSujeitaSTSef: TLabel
            Left = 373
            Top = 144
            Width = 125
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao ST :'
          end
          object lblOperacaoSujeitaICMSSef: TLabel
            Left = 358
            Top = 121
            Width = 139
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao ICMS :'
          end
          object lblRetencaoISSSubsSef: TLabel
            Left = 361
            Top = 98
            Width = 136
            Height = 13
            Caption = 'Reten'#231#227'o do ISS na Subs. :'
          end
          object lblApresentaAvulsaRISef: TLabel
            Left = 390
            Top = 213
            Width = 107
            Height = 13
            Caption = 'Apresenta Avulsa RI :'
          end
          object lblOperacaoSujeitaIPISef: TLabel
            Left = 372
            Top = 190
            Width = 125
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao IPI :'
          end
          object cbbSef_Cod_Fin: TwwDBLookupCombo
            Left = 151
            Top = 22
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Desc_cod_fin'#9'18'#9'Desc_cod_fin'#9'F'
              'Cod_fin'#9'3'#9'Cod_fin'#9'F')
            DataField = 'sef_cod_fin'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_FIN
            LookupField = 'Cod_fin'
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_Cod_FinEnter
          end
          object cbbSef_Cod_Ctd: TwwDBLookupCombo
            Left = 151
            Top = 49
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_cod_ctd'#9'40'#9'desc_cod_ctd'#9'F'
              'cod_ctd'#9'3'#9'cod_ctd'#9'F')
            DataField = 'sef_cod_ctd'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_CTD
            LookupField = 'cod_Ctd'
            TabOrder = 1
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_Cod_CtdEnter
          end
          object cbbSef_ind_ed: TwwDBLookupCombo
            Left = 151
            Top = 72
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_ind_ed'#9'32'#9'desc_ind_ed'#9'F'
              'ind_ed'#9'3'#9'ind_ed'#9'F')
            DataField = 'sef_ind_ed'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_ED
            LookupField = 'ind_ed'
            TabOrder = 2
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_ind_edEnter
          end
          object cbbSef_ind_arq: TwwDBLookupCombo
            Left = 151
            Top = 95
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_ind_arq'#9'40'#9'desc_ind_arq'#9'F'
              'ind_arq'#9'3'#9'ind_arq'#9'F')
            DataField = 'sef_ind_arq'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_ARQ
            LookupField = 'ind_arq'
            TabOrder = 3
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_ind_arqEnter
          end
          object cbbSef_Prf_Iss: TwwDBLookupCombo
            Left = 151
            Top = 118
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_prf_iss'#9'37'#9'desc_prf_iss'#9'F'
              'prf_iss'#9'3'#9'prf_iss'#9'F')
            DataField = 'sef_prf_iss'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_PRF_ISS
            LookupField = 'prf_iss'
            TabOrder = 4
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_Prf_IssEnter
          end
          object cbbSef_prf_icms: TwwDBLookupCombo
            Left = 151
            Top = 141
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_prf_icms'#9'47'#9'desc_prf_icms'#9'F'
              'prf_icms'#9'3'#9'prf_icms'#9'F')
            DataField = 'sef_prf_icms'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_PRF_ICMS
            LookupField = 'prf_icms'
            TabOrder = 5
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_prf_icmsEnter
          end
          object cbbSef_prf_ridf: TwwDBLookupCombo
            Left = 151
            Top = 164
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_prf_ridf'#9'18'#9'desc_prf_ridf'#9'F'
              'prf_ridf'#9'3'#9'prf_ridf'#9'F')
            DataField = 'sef_prf_ridf'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_PRF_RIDF
            LookupField = 'prf_ridf'
            TabOrder = 6
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_prf_ridfEnter
          end
          object cbbSef_prf_rv: TwwDBLookupCombo
            Left = 503
            Top = 3
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_prf_rv'#9'18'#9'desc_prf_rv'#9'F'
              'prf_rv'#9'3'#9'prf_rv'#9'F')
            DataField = 'sef_prf_rv'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_PRF_RV
            LookupField = 'prf_rv'
            TabOrder = 9
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_prf_rvEnter
          end
          object cbbSef_prf_ri: TwwDBLookupCombo
            Left = 503
            Top = 26
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_prf_ri'#9'18'#9'desc_prf_ri'#9'F'
              'prf_ri'#9'3'#9'prf_ri'#9'F')
            DataField = 'sef_prf_ri'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_PRF_RI
            LookupField = 'prf_ri'
            TabOrder = 10
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_prf_riEnter
          end
          object cbbSef_ind_ec: TwwDBLookupCombo
            Left = 503
            Top = 49
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_ind_ec'#9'35'#9'desc_ind_ec'#9'F'
              'ind_ec'#9'3'#9'ind_ec'#9'F')
            DataField = 'sef_ind_ec'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_EC
            LookupField = 'ind_ec'
            TabOrder = 11
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_ind_ecEnter
          end
          object cbbSef_ind_iss: TwwDBLookupCombo
            Left = 503
            Top = 72
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_ind_iss'#9'18'#9'desc_ind_iss'#9'F'
              'ind_iss'#9'3'#9'ind_iss'#9'F')
            DataField = 'sef_ind_iss'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_ISS
            LookupField = 'ind_iss'
            TabOrder = 12
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_ind_issEnter
          end
          object cbbSef_ind_rt: TwwDBLookupCombo
            Left = 503
            Top = 95
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_ind_rt'#9'18'#9'desc_ind_rt'#9'F'
              'ind_rt'#9'3'#9'ind_rt'#9'F')
            DataField = 'sef_ind_rt'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_RT
            LookupField = 'ind_rt'
            TabOrder = 13
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_ind_rtEnter
          end
          object cbbSef_ind_icms: TwwDBLookupCombo
            Left = 503
            Top = 118
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_ind_icms'#9'18'#9'desc_ind_icms'#9'F'
              'ind_icms'#9'3'#9'ind_icms'#9'F')
            DataField = 'sef_ind_icms'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_ICMS
            LookupField = 'ind_icms'
            TabOrder = 14
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_ind_icmsEnter
          end
          object cbbSef_ind_st: TwwDBLookupCombo
            Left = 503
            Top = 140
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_ind_st'#9'18'#9'desc_ind_st'#9'F'
              'ind_st'#9'3'#9'ind_st'#9'F')
            DataField = 'sef_ind_st'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_ST
            LookupField = 'ind_st'
            TabOrder = 15
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_ind_stEnter
          end
          object cbbSef_ind_at: TwwDBLookupCombo
            Left = 503
            Top = 164
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_ind_at'#9'18'#9'desc_ind_at'#9'F'
              'ind_at'#9'3'#9'ind_at'#9'F')
            DataField = 'sef_ind_at'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_AT
            LookupField = 'ind_at'
            TabOrder = 16
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_ind_atEnter
          end
          object cbbSef_prf_lmc: TwwDBLookupCombo
            Left = 151
            Top = 210
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_prf_lmc'#9'18'#9'desc_prf_lmc'#9'F'
              'prf_lmc'#9'3'#9'prf_lmc'#9'F')
            DataField = 'sef_prf_lmc'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_PRF_LMC
            LookupField = 'prf_lmc'
            TabOrder = 8
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_prf_lmcEnter
          end
          object cbbSef_prf_rudf: TwwDBLookupCombo
            Left = 151
            Top = 187
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_prf_rudf'#9'18'#9'desc_prf_rudf'#9'F'
              'prf_rudf'#9'3'#9'prf_rudf'#9'F')
            DataField = 'sef_prf_rudf'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_PRF_RUDF
            LookupField = 'prf_rudf'
            TabOrder = 7
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_prf_rudfEnter
          end
          object cbbSef_ind_ri: TwwDBLookupCombo
            Left = 503
            Top = 210
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_ind_ri'#9'18'#9'desc_ind_ri'#9'F'
              'ind_ri'#9'3'#9'ind_ri'#9'F')
            DataField = 'sef_ind_ri'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_RI
            LookupField = 'ind_ri'
            TabOrder = 18
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_ind_riEnter
          end
          object cbbSef_ind_ipi: TwwDBLookupCombo
            Left = 503
            Top = 187
            Width = 170
            Height = 21
            AutoSize = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'desc_ind_ipi'#9'18'#9'desc_ind_ipi'#9'F'
              'ind_ipi'#9'3'#9'ind_ipi'#9'F')
            DataField = 'sef_ind_ipi'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_X_SEF_IPI
            LookupField = 'ind_ipi'
            TabOrder = 17
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbSef_ind_ipiEnter
          end
        end
        object tbiEDoc: TTabSheet
          Caption = 'E-Doc'
          ImageIndex = 5
          object Label4: TLabel
            Left = 105
            Top = 6
            Width = 40
            Height = 13
            Caption = 'Layout :'
          end
          object Label5: TLabel
            Left = 85
            Top = 29
            Width = 60
            Height = 13
            Caption = 'Finalidade :'
          end
          object Label6: TLabel
            Left = 44
            Top = 52
            Width = 101
            Height = 13
            Caption = 'Conte'#250'do Arquivo :'
          end
          object Label7: TLabel
            Left = 47
            Top = 75
            Width = 98
            Height = 13
            Caption = 'Entrada de Dados :'
          end
          object Label8: TLabel
            Left = 3
            Top = 167
            Width = 142
            Height = 13
            Caption = 'Exije Impress. Documentos :'
          end
          object Label9: TLabel
            Left = 6
            Top = 144
            Width = 139
            Height = 13
            Caption = 'Exije Escritura'#231#227'o de ICMS :'
          end
          object Label10: TLabel
            Left = 17
            Top = 121
            Width = 128
            Height = 13
            Caption = 'Exije Escritura'#231#227'o de ISS :'
          end
          object Label11: TLabel
            Left = 34
            Top = 98
            Width = 111
            Height = 13
            Caption = 'Documento Contido :'
          end
          object Label12: TLabel
            Left = 23
            Top = 213
            Width = 122
            Height = 13
            Caption = 'Exije Livro Combust'#237'vel :'
          end
          object Label13: TLabel
            Left = 24
            Top = 190
            Width = 121
            Height = 13
            Caption = 'Exije Util. Documentos :'
          end
          object Label14: TLabel
            Left = 401
            Top = 6
            Width = 95
            Height = 13
            Caption = 'Exije Reg. Veiculo :'
          end
          object Label15: TLabel
            Left = 387
            Top = 29
            Width = 110
            Height = 13
            Caption = 'Exije Reg. Invent'#225'rio :'
          end
          object Label16: TLabel
            Left = 370
            Top = 52
            Width = 127
            Height = 13
            Caption = 'Apresenta Esc. Cont'#225'bil :'
          end
          object Label17: TLabel
            Left = 369
            Top = 75
            Width = 128
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao ISS :'
          end
          object Label18: TLabel
            Left = 337
            Top = 167
            Width = 160
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita Antecipa'#231#227'o :'
          end
          object Label19: TLabel
            Left = 373
            Top = 144
            Width = 125
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao ST :'
          end
          object Label20: TLabel
            Left = 358
            Top = 121
            Width = 139
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao ICMS :'
          end
          object Label21: TLabel
            Left = 361
            Top = 98
            Width = 136
            Height = 13
            Caption = 'Reten'#231#227'o do ISS na Subs. :'
          end
          object Label22: TLabel
            Left = 390
            Top = 213
            Width = 107
            Height = 13
            Caption = 'Apresenta Avulsa RI :'
          end
          object Label23: TLabel
            Left = 372
            Top = 190
            Width = 125
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao IPI :'
          end
          object txtLayoutDoc: TDBEdit
            Left = 151
            Top = 3
            Width = 170
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'doc_layout'
            DataSource = dsoCTR
            TabOrder = 0
          end
          object cbbFinalidadeDoc: TwwDBComboBox
            Left = 151
            Top = 26
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_cod_fin'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Arquivo original'#9'0'
              'Arquivo Substituido'#9'1')
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
            OnEnter = cbbFinalidadeDocEnter
          end
          object cbbConteudoDoc: TwwDBComboBox
            Left = 151
            Top = 49
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_cod_ctd'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Extrato de documentos Ficais'#9'91')
            Sorted = False
            TabOrder = 2
            UnboundDataType = wwDefault
            OnEnter = cbbConteudoDocEnter
          end
          object cbbEntradaDoc: TwwDBComboBox
            Left = 151
            Top = 72
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_ind_ed'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Digita'#231#227'o de Dados'#9'0'
              'Importa'#231#227'o de arquivo-texto'#9'1'
              'Adi'#231#227'o de documento/arquivo-texto'#9'2'
              'Exporta'#231#227'o de arquivo-texto'#9'3')
            Sorted = False
            TabOrder = 3
            UnboundDataType = wwDefault
            OnEnter = cbbEntradaDocEnter
          end
          object cbbIssDoc: TwwDBComboBox
            Left = 151
            Top = 118
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_prf_iss'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim, modo simples de escritura'#231#227'o'#9'0'
              'Sim, no modo integral de escritura'#231#227'o'#9'2'
              'N'#227'o obrigado a escriturar'#9'9')
            Sorted = False
            TabOrder = 5
            UnboundDataType = wwDefault
            OnEnter = cbbIssDocEnter
          end
          object cbbDocumetoDoc: TwwDBComboBox
            Left = 151
            Top = 95
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_ind_arq'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Extratos de Documentos'#9'9')
            Sorted = False
            TabOrder = 4
            UnboundDataType = wwDefault
            OnEnter = cbbDocumetoDocEnter
          end
          object cbbImpressDoc: TwwDBComboBox
            Left = 151
            Top = 164
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_prf_ridf'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 7
            UnboundDataType = wwDefault
            OnEnter = cbbImpressDocEnter
          end
          object cbbIcmsDoc: TwwDBComboBox
            Left = 151
            Top = 141
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_prf_icms'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim, modo simples de escritura'#231#227'o'#9'0'
              'Sim, modo intermediario de escritura'#231#227'o'#9'1'
              'N'#227'o obrigado a escriturar'#9'9'
              'Sim, modo integral'#9'2')
            Sorted = False
            TabOrder = 6
            UnboundDataType = wwDefault
            OnEnter = cbbIcmsDocEnter
          end
          object cbblivroDoc: TwwDBComboBox
            Left = 151
            Top = 209
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_prf_lmc'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 9
            UnboundDataType = wwDefault
            OnEnter = cbblivroDocEnter
          end
          object cbbUtilDoc: TwwDBComboBox
            Left = 151
            Top = 187
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_prf_rudf'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 8
            UnboundDataType = wwDefault
            OnEnter = cbbUtilDocEnter
          end
          object cbbiventarioDoc: TwwDBComboBox
            Left = 503
            Top = 26
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_prf_ri'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 11
            UnboundDataType = wwDefault
            OnEnter = cbbiventarioDocEnter
          end
          object cbbVeiculoDoc: TwwDBComboBox
            Left = 503
            Top = 3
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_prf_rv'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 10
            UnboundDataType = wwDefault
            OnEnter = cbbVeiculoDocEnter
          end
          object cbbSujIssDoc: TwwDBComboBox
            Left = 503
            Top = 72
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_ind_iss'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 13
            UnboundDataType = wwDefault
            OnEnter = cbbSujIssDocEnter
          end
          object cbbApresentacaoDoc: TwwDBComboBox
            Left = 503
            Top = 49
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_ind_ec'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Completa registrada em arquivo digital'#9'0'
              'Completa registrada em papel ...'#9'1'
              'Simplificada em arquivo digital'#9'2'
              'Simplifacada em papel ...'#9'3'
              'Livro Caixa em arquivo digital'#9'4'
              'Livro caixa em papel ...'#9'5'
              'N'#227'o obrigado a escritura'#9'9')
            Sorted = False
            TabOrder = 12
            UnboundDataType = wwDefault
            OnEnter = cbbApresentacaoDocEnter
          end
          object cbbsujicmsDoc: TwwDBComboBox
            Left = 503
            Top = 118
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_ind_icms'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 15
            UnboundDataType = wwDefault
            OnEnter = cbbsujicmsDocEnter
          end
          object cbbretIssDoc: TwwDBComboBox
            Left = 503
            Top = 95
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_ind_rt'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 14
            UnboundDataType = wwDefault
            OnEnter = cbbretIssDocEnter
          end
          object cbbOperAntDoc: TwwDBComboBox
            Left = 503
            Top = 164
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_ind_at'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 17
            UnboundDataType = wwDefault
            OnEnter = cbbOperAntDocEnter
          end
          object cbbOperStDoc: TwwDBComboBox
            Left = 503
            Top = 140
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_ind_st'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 16
            UnboundDataType = wwDefault
            OnEnter = cbbOperStDocEnter
          end
          object cbbApreRiDoc: TwwDBComboBox
            Left = 503
            Top = 210
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_ind_ri'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 19
            UnboundDataType = wwDefault
            OnEnter = cbbApreRiDocEnter
          end
          object cbbOperIpiDoc: TwwDBComboBox
            Left = 503
            Top = 187
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'doc_ind_ipi'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sim'#9'0'
              'N'#227'o'#9'1')
            Sorted = False
            TabOrder = 18
            UnboundDataType = wwDefault
            OnEnter = cbbOperIpiDocEnter
          end
        end
        object tbiSPEDFiscal: TTabSheet
          Caption = 'SPED Fiscal'
          ImageIndex = 6
          object lblLayoutSPEDFiscal: TLabel
            Left = 86
            Top = 6
            Width = 40
            Height = 13
            Caption = 'Layout :'
          end
          object lblFinalidade: TLabel
            Left = 66
            Top = 29
            Width = 60
            Height = 13
            Caption = 'Finalidade :'
          end
          object lblPerfil: TLabel
            Left = 94
            Top = 52
            Width = 32
            Height = 13
            Caption = 'Perfil :'
          end
          object lblAtividadeSPEDFiscal: TLabel
            Left = 72
            Top = 75
            Width = 54
            Height = 13
            Caption = 'Atividade :'
          end
          object Label55: TLabel
            Left = 12
            Top = 97
            Width = 114
            Height = 13
            Caption = 'Motivo do Invent'#225'rio :'
          end
          object cbbMotivoInventario: TwwDBComboBox
            Left = 132
            Top = 94
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'eff_motivo_inv'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'No final no per'#237'odo'#9'01'
              'Na mudan'#231'a de tributa'#231#227'o (icms)'#9'02'
              'Na baixa fiscal, paraliza'#231#227'o e outros'#9'03'
              'Na altera'#231#227'o de pagamento'#9'04'
              'Por determina'#231#227'o dos fiscos'#9'05')
            Sorted = False
            TabOrder = 4
            UnboundDataType = wwDefault
            OnEnter = cbbMotivoInventarioEnter
          end
          object cbbFinalidade: TwwDBComboBox
            Left = 132
            Top = 26
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'eff_finalidade'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Remessa do arquivo original'#9'0'
              'Remessa do arquivo substituto'#9'1')
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
            OnEnter = cbbFinalidadeEnter
          end
          object cbbPerfil: TwwDBComboBox
            Left = 132
            Top = 49
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'eff_perfil'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Perfil A'#9'0'
              'Perfil B'#9'1'
              'Perfil C'#9'2')
            Sorted = False
            TabOrder = 2
            UnboundDataType = wwDefault
            OnEnter = cbbPerfilEnter
          end
          object cbbatividade: TwwDBComboBox
            Left = 132
            Top = 72
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'eff_atividade'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Industrial ou equiparado a industrial'#9'0'
              'Outros'#9'1')
            Sorted = False
            TabOrder = 3
            UnboundDataType = wwDefault
            OnEnter = cbbatividadeEnter
          end
          object txtLayoutSPEDFiscal: TwwDBEdit
            Left = 132
            Top = 3
            Width = 170
            Height = 21
            DataField = 'eff_layout'
            DataSource = dsoCTR
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            NumbersOnly = True
          end
        end
        object tbiSPEDContribuicoes: TTabSheet
          Caption = 'SPED Contribui'#231#245'es'
          ImageIndex = 7
          object Label2: TLabel
            Left = 97
            Top = 6
            Width = 40
            Height = 13
            Caption = 'Layout :'
          end
          object lblEscrituracao: TLabel
            Left = 69
            Top = 29
            Width = 68
            Height = 13
            Caption = 'Escritura'#231#227'o :'
          end
          object lblSituacaoEspecial: TLabel
            Left = 43
            Top = 52
            Width = 94
            Height = 13
            Caption = 'Situa'#231#227'o Especial :'
          end
          object lblNaturezaPJuridica: TLabel
            Left = 31
            Top = 75
            Width = 106
            Height = 13
            Caption = 'Natureza P. Juridica :'
          end
          object lblCriterioEscrituracao: TLabel
            Left = 12
            Top = 167
            Width = 125
            Height = 13
            Caption = 'Crit'#233'rio de Escritura'#231#227'o :'
          end
          object lblTipoContribuicao: TLabel
            Left = 23
            Top = 144
            Width = 115
            Height = 13
            Caption = 'Tipo de Contribui'#231#227'o :'
          end
          object lblMetodoApropriacao: TLabel
            Left = 8
            Top = 121
            Width = 129
            Height = 13
            Caption = 'M'#233'todo de Apropria'#231#227'o :'
          end
          object lblAtividadePreponderante: TLabel
            Left = 3
            Top = 98
            Width = 134
            Height = 13
            Caption = 'Atividade Preponderante :'
          end
          object Label54: TLabel
            Left = 27
            Top = 191
            Width = 110
            Height = 13
            Caption = 'Incid'#234'ncia Tribut'#225'ria :'
          end
          object txtLayout: TDBEdit
            Left = 143
            Top = 3
            Width = 170
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            Color = clWhite
            DataField = 'efc_layout'
            DataSource = dsoCTR
            TabOrder = 0
          end
          object cbbIncidenciaTributaria: TwwDBComboBox
            Left = 143
            Top = 188
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'efc_cod_inc_trib'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'N'#227'o-Cumulativo'#9'1'
              'Cumulativo'#9'2'
              'Ambos'#9'3')
            Sorted = False
            TabOrder = 8
            UnboundDataType = wwDefault
            OnEnter = cbbIncidenciaTributariaEnter
          end
          object cbbescrituracao: TwwDBComboBox
            Left = 143
            Top = 26
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'efc_tipo_escrituracao'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Original'#9'0'
              'Reficadora'#9'1')
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
            OnEnter = cbbescrituracaoEnter
          end
          object cbbSituacaoEspecial: TwwDBComboBox
            Left = 143
            Top = 45
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'efc_situa_especial'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Abertura'#9'0'
              'Cis'#227'o'#9'1'
              'Fus'#227'o'#9'2'
              'Incorpora'#231#227'o'#9'3'
              'Encerramento'#9'4')
            Sorted = False
            TabOrder = 2
            UnboundDataType = wwDefault
            OnEnter = cbbSituacaoEspecialEnter
          end
          object cbbAtividadePrepo: TwwDBComboBox
            Left = 143
            Top = 95
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'efc_ind_ativ'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Industrial ou equiparado a industrial'#9'0'
              'Prestador de servi'#231'o'#9'1'
              'Atividade de comercio'#9'2'
              'Atividade financeira'#9'3'
              'Atividade imobiliaria'#9'4'
              'Outros'#9'9')
            Sorted = False
            TabOrder = 4
            UnboundDataType = wwDefault
            OnEnter = cbbAtividadePrepoEnter
          end
          object cbbNaturezaJuridica: TwwDBComboBox
            Left = 143
            Top = 72
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'efc_ind_nat_pj'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Sociedade empresaria em geral'#9'00'
              'Sociedade cooperativa'#9'01'
              'Entidade sujeita ao Pis/Pasep'#9'02')
            Sorted = False
            TabOrder = 3
            UnboundDataType = wwDefault
            OnEnter = cbbNaturezaJuridicaEnter
          end
          object cbbTipoAtrib: TwwDBComboBox
            Left = 143
            Top = 141
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'efc_cod_tipo_cont'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Aliquota b'#225'sica'#9'1'
              'Aliquota especifica'#9'2')
            Sorted = False
            TabOrder = 6
            UnboundDataType = wwDefault
            OnEnter = cbbTipoAtribEnter
          end
          object cbbMetodoApro: TwwDBComboBox
            Left = 143
            Top = 114
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'efc_ind_apro_cred'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Direta'#9'1'
              'Rateio Proporcional'#9'2')
            Sorted = False
            TabOrder = 5
            UnboundDataType = wwDefault
            OnEnter = cbbMetodoAproEnter
          end
          object cbbCriterioEsc: TwwDBComboBox
            Left = 143
            Top = 164
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'efc_ind_reg_cum'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Consolidado'#9'1'
              'Individualizado'#9'2')
            Sorted = False
            TabOrder = 7
            UnboundDataType = wwDefault
            OnEnter = cbbCriterioEscEnter
          end
        end
        object tbiDestda: TTabSheet
          Caption = 'DeSTDA'
          ImageIndex = 11
          object Label75: TLabel
            Left = 93
            Top = 37
            Width = 60
            Height = 13
            Caption = 'Finalidade :'
          end
          object Label76: TLabel
            Left = 52
            Top = 60
            Width = 101
            Height = 13
            Caption = 'Conte'#250'do Arquivo :'
          end
          object Label77: TLabel
            Left = 55
            Top = 83
            Width = 98
            Height = 13
            Caption = 'Entrada de Dados :'
          end
          object Label78: TLabel
            Left = 31
            Top = 175
            Width = 122
            Height = 13
            Caption = 'Exije Imp. Documentos :'
          end
          object Label79: TLabel
            Left = 14
            Top = 152
            Width = 139
            Height = 13
            Caption = 'Exije Escritura'#231#227'o de ICMS :'
          end
          object Label80: TLabel
            Left = 25
            Top = 129
            Width = 128
            Height = 13
            Caption = 'Exije Escritura'#231#227'o de ISS :'
          end
          object Label81: TLabel
            Left = 42
            Top = 106
            Width = 111
            Height = 13
            Caption = 'Documento Contido :'
          end
          object Label82: TLabel
            Left = 31
            Top = 221
            Width = 122
            Height = 13
            Caption = 'Exije Livro Combust'#237'vel :'
          end
          object Label83: TLabel
            Left = 32
            Top = 198
            Width = 121
            Height = 13
            Caption = 'Exije Util. Documentos :'
          end
          object Label84: TLabel
            Left = 395
            Top = 37
            Width = 110
            Height = 13
            Caption = 'Exije Reg. Invent'#225'rio :'
          end
          object Label85: TLabel
            Left = 378
            Top = 60
            Width = 127
            Height = 13
            Caption = 'Apresenta Esc. Cont'#225'bil :'
          end
          object Label86: TLabel
            Left = 377
            Top = 83
            Width = 128
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao ISS :'
          end
          object Label87: TLabel
            Left = 345
            Top = 175
            Width = 160
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita Antecipa'#231#227'o :'
          end
          object Label88: TLabel
            Left = 381
            Top = 152
            Width = 125
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao ST :'
          end
          object Label89: TLabel
            Left = 366
            Top = 129
            Width = 139
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao ICMS :'
          end
          object Label90: TLabel
            Left = 369
            Top = 106
            Width = 136
            Height = 13
            Caption = 'Reten'#231#227'o do ISS na Subs. :'
          end
          object Label91: TLabel
            Left = 398
            Top = 221
            Width = 107
            Height = 13
            Caption = 'Apresenta Avulsa RI :'
          end
          object Label92: TLabel
            Left = 380
            Top = 198
            Width = 125
            Height = 13
            Caption = 'Opera'#231#227'o Sujeita ao IPI :'
          end
          object JvDBComboBox1: TJvDBComboBox
            Left = 159
            Top = 33
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_cod_fin'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Documento original emitido em arquivo'
              'Transcri'#231#227'o de documentos de emiss'#227'o pr'#243'pria'
              'Transcri'#231#227'o de documentos emitidos por terceiros'
              'Transcri'#231#227'o de documentos capturados por digitaliza'#231#227'o'
              'Transcri'#231#227'o de documentos emitidos em equipamento especializado'
              'Livros de resultados e obriga'#231#245'es'
              'Livros e mapas de controle'
              'Guias de informa'#231#245'es econ'#244'mico-fiscais'
              'Livros da contabilidade'
              'Extratos de documentos')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox2: TJvDBComboBox
            Left = 159
            Top = 57
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_cod_ctd'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Lan'#231'amentos de opera'#231#245'es e resultados fiscais')
            TabOrder = 1
            Values.Strings = (
              '20')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox3: TJvDBComboBox
            Left = 159
            Top = 80
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_ind_ed'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Digita'#231#227'o de dados'
              'Importa'#231#227'o de arquivo-texto'
              'Adi'#231#227'o de documentos/arquivo-texto'
              'Exporta'#231#227'o de arquivo-texto')
            TabOrder = 2
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox4: TJvDBComboBox
            Left = 159
            Top = 103
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_ind_arq'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Livros de resultados e obriga'#231#245'es')
            TabOrder = 3
            Values.Strings = (
              '5')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox5: TJvDBComboBox
            Left = 159
            Top = 126
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_prf_iss'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim, no modo simplificado de escritura'#231#227'o do imposto'
              
                'Sim, no modo integral de escritura'#231#227'o do regime normal de apura'#231 +
                #227'o do imposto'
              'N'#227'o obrigado a escriturar')
            TabOrder = 4
            Values.Strings = (
              '0'
              '2'
              '9')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox6: TJvDBComboBox
            Left = 159
            Top = 149
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_prf_icms'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim, no modo simplificado de escritura'#231#227'o do imposto'
              
                'Sim, no modo intermedi'#225'rio de escritura'#231#227'o do regime normal de a' +
                'pura'#231#227'o do imposto'
              
                'Sim, no modo integral de escritura'#231#227'o do regime normal de apura'#231 +
                #227'o do imposto'
              'N'#227'o obrigado a escriturar')
            TabOrder = 5
            Values.Strings = (
              '0'
              '1'
              '2'
              '9')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox7: TJvDBComboBox
            Left = 159
            Top = 172
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_prf_ridf'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 6
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox8: TJvDBComboBox
            Left = 159
            Top = 218
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_prf_lmc'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 7
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox9: TJvDBComboBox
            Left = 159
            Top = 195
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_prf_rudf'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 8
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox10: TJvDBComboBox
            Left = 511
            Top = 34
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_prf_ri'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 9
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox11: TJvDBComboBox
            Left = 511
            Top = 57
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_ind_ec'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Completa registrada em arquivo digital'
              
                'Completa registrada em papel, microfilme, fichas avulsas, ou fic' +
                'has/folhas cont'#237'nuas'
              'Simplificada registrada em arquivo digital'
              
                'Simplificada registrada papel, microfilme, fichas avulsas, ou fi' +
                'chas/folhas cont'#237'nuas'
              'Livro Caixa registrado em arquivo digital'
              
                'Livro Caixa registrado papel, microfilme, fichas avulsas, ou fic' +
                'has/folhas cont'#237'nuas'
              'N'#227'o obrigado a escriturar')
            TabOrder = 10
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '9')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox12: TJvDBComboBox
            Left = 511
            Top = 80
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_ind_iss'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 11
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox13: TJvDBComboBox
            Left = 511
            Top = 103
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_ind_rt'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 12
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox14: TJvDBComboBox
            Left = 511
            Top = 126
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_ind_icms'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 13
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox15: TJvDBComboBox
            Left = 511
            Top = 149
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_ind_st'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 14
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox16: TJvDBComboBox
            Left = 511
            Top = 172
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_ind_at'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 15
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox17: TJvDBComboBox
            Left = 511
            Top = 195
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_ind_ipi'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 16
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox18: TJvDBComboBox
            Left = 511
            Top = 218
            Width = 170
            Height = 21
            Style = csOwnerDrawVariable
            DataField = 'doc_ind_ri'
            DataSource = dsoCTR
            EnableValues = False
            ItemHeight = 15
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 17
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
        end
        object tbiFinanceiro: TTabSheet
          Caption = 'Financeiro'
          ImageIndex = 8
          OnShow = tbiFinanceiroShow
          object ScrollBox3: TScrollBox
            Left = 0
            Top = 0
            Width = 678
            Height = 241
            HorzScrollBar.Position = 1
            VertScrollBar.Position = 10
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            ParentColor = False
            TabOrder = 0
            object lblControleCaixa: TLabel
              Left = 4
              Top = 380
              Width = 347
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Controle de Caixa'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblNotaFiscalDevVendas: TLabel
              Left = 359
              Top = -4
              Width = 300
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Nota Fiscal de Devolu'#231#227'o de Vendas'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblDevForCondPag: TLabel
              Left = 367
              Top = 121
              Width = 96
              Height = 13
              Caption = 'Condi'#231#227'o de pgto:'
            end
            object lblNotaFiscalDevFor: TLabel
              Left = 359
              Top = 96
              Width = 300
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Nota Fiscal de Devolu'#231#227'o de Fornecedor'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblTipoFinanceiroFormaPagCredito: TLabel
              Left = 359
              Top = 156
              Width = 305
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Nota de Cr'#233'dito'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label51: TLabel
              Left = 3
              Top = 96
              Width = 347
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Concilia'#231#227'o banc'#225'ria'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label52: TLabel
              Left = 357
              Top = 346
              Width = 310
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Movimenta'#231#227'o de Cheques'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblMovCheFormaPag: TLabel
              Left = 364
              Top = 578
              Width = 112
              Height = 13
              Caption = 'Forma de Pagamento:'
            end
            object Label56: TLabel
              Left = 6
              Top = -4
              Width = 347
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Geral'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label57: TLabel
              Left = 21
              Top = 46
              Width = 102
              Height = 13
              Caption = 'Maquineta padr'#227'o :'
            end
            object lblBaixaCartaoCredito: TLabel
              Left = 6
              Top = 912
              Width = 345
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Baixa de Cart'#227'o de Cr'#233'dito'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblBaixaAutBol: TLabel
              Left = 357
              Top = 610
              Width = 310
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Baixa Autom'#225'tica de Boleto (Recebimento)'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblBxaAutBolTipoFinanceiro: TLabel
              Left = 386
              Top = 663
              Width = 86
              Height = 13
              Caption = 'Tipo Financeiro :'
            end
            object lblBxaAutBolPlano: TLabel
              Left = 382
              Top = 636
              Width = 90
              Height = 13
              Caption = 'Plano de Contas :'
            end
            object lblBxaAutBolCentroCusto: TLabel
              Left = 382
              Top = 691
              Width = 90
              Height = 13
              Caption = 'Centro de Custo :'
            end
            object lblBxaAutBolFormaPag: TLabel
              Left = 374
              Top = 718
              Width = 99
              Height = 13
              Caption = 'Forma Pagamento :'
            end
            object Label95: TLabel
              Left = 355
              Top = 753
              Width = 310
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Movimento Banc'#225'rio'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label96: TLabel
              Left = 360
              Top = 781
              Width = 65
              Height = 13
              Caption = 'Fornecedor :'
            end
            object Label99: TLabel
              Left = 355
              Top = 815
              Width = 310
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Lan'#231'amento de Nota de Cr'#233'dito'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label102: TLabel
              Left = 6
              Top = 1160
              Width = 347
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Contas a Pagar'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label120: TLabel
              Left = 355
              Top = 947
              Width = 312
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Remessa Banc'#225'ria'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label127: TLabel
              Left = 6
              Top = 1358
              Width = 347
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Contas a Receber'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label132: TLabel
              Left = 354
              Top = 1027
              Width = 309
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Desconto de T'#237'tulos'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label150: TLabel
              Left = 359
              Top = 1335
              Width = 305
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Nota Fiscal de Entrada'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label151: TLabel
              Left = 401
              Top = 1360
              Width = 86
              Height = 13
              Caption = 'Tipo Financeiro :'
            end
            object Label157: TLabel
              Left = 358
              Top = 1393
              Width = 305
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Retorno do Banco'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label158: TLabel
              Left = 372
              Top = 1418
              Width = 115
              Height = 13
              Caption = 'Tipo de data p/ baixa :'
            end
            object gbCxaSuprimento: TGroupBox
              Left = 6
              Top = 484
              Width = 345
              Height = 75
              Caption = ' Suprimentos  '
              TabOrder = 2
              object lblPlanoContas: TLabel
                Left = 32
                Top = 21
                Width = 87
                Height = 13
                Caption = 'Plano de Contas:'
              end
              object lblTipoFinanceiro: TLabel
                Left = 37
                Top = 48
                Width = 83
                Height = 13
                Caption = 'Tipo Financeiro:'
              end
              object cbbPlanoContasSup: TwwDBLookupCombo
                Left = 125
                Top = 18
                Width = 204
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'F'
                  'id_plano'#9'11'#9'C'#243'digo'#9'F')
                DataField = 'cxa_id_plano_suprim'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbPlanoContasSupEnter
              end
              object cbbTipoFinanceiroSup: TwwDBLookupCombo
                Left = 125
                Top = 45
                Width = 204
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_tipo_financeiro'#9'10'#9'C'#243'digo'#9'F')
                DataField = 'cxa_id_tif_suprim'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP2
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbTipoFinanceiroSupEnter
              end
            end
            object gbCxaSangria: TGroupBox
              Left = 6
              Top = 560
              Width = 345
              Height = 171
              Caption = ' Sangria '
              TabOrder = 3
              object Label37: TLabel
                Left = 32
                Top = 44
                Width = 87
                Height = 13
                Caption = 'Plano de Contas:'
              end
              object Label38: TLabel
                Left = 37
                Top = 70
                Width = 83
                Height = 13
                Caption = 'Tipo Financeiro:'
              end
              object Label35: TLabel
                Left = 32
                Top = 121
                Width = 87
                Height = 13
                Caption = 'Plano de Contas:'
              end
              object Label36: TLabel
                Left = 37
                Top = 147
                Width = 83
                Height = 13
                Caption = 'Tipo Financeiro:'
              end
              object Label39: TLabel
                Left = 32
                Top = 21
                Width = 297
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Conta origem (Debitando)'
                Color = 14342874
                ParentColor = False
                Transparent = False
              end
              object Label40: TLabel
                Left = 32
                Top = 98
                Width = 297
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Conta Destino (Creditando)'
                Color = 14342874
                ParentColor = False
                Transparent = False
              end
              object cbbPlanoContasSang: TwwDBLookupCombo
                Left = 125
                Top = 41
                Width = 204
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'F'
                  'id_plano'#9'11'#9'C'#243'digo'#9'F')
                DataField = 'cxa_id_plano_sangria'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP2
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbPlanoContasSangEnter
              end
              object cbbTipoFinanceiroSang: TwwDBLookupCombo
                Left = 125
                Top = 68
                Width = 204
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_tipo_financeiro'#9'10'#9'C'#243'digo'#9'F')
                DataField = 'cxa_id_tif_sangria'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP3
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbTipoFinanceiroSangEnter
              end
              object cbbPlanoContasSangCred: TwwDBLookupCombo
                Left = 125
                Top = 118
                Width = 204
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'F'
                  'id_plano'#9'11'#9'C'#243'digo'#9'F')
                DataField = 'cxa_exp_id_plano_sangria'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP3
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbPlanoContasSangCredEnter
              end
              object cbbTipoFinanceiroSangCred: TwwDBLookupCombo
                Left = 125
                Top = 145
                Width = 204
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_tipo_financeiro'#9'10'#9'C'#243'digo'#9'F')
                DataField = 'cxa_exp_id_tif_sangria'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP7
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 3
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbTipoFinanceiroSangCredEnter
              end
            end
            object gbGerNotaCre: TGroupBox
              Left = 359
              Top = 12
              Width = 300
              Height = 75
              Caption = 'Gera'#231#227'o Nota de Cr'#233'dito'
              TabOrder = 4
              object lblCondPag: TLabel
                Left = 8
                Top = 21
                Width = 96
                Height = 13
                Caption = 'Condi'#231#227'o de pgto:'
              end
              object lblFormaPag: TLabel
                Left = 25
                Top = 48
                Width = 79
                Height = 13
                Caption = 'Forma de pgto:'
              end
              object cbbFinanCondPag: TwwDBLookupCombo
                Left = 109
                Top = 16
                Width = 179
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_condicao_pag'#9'10'#9'id_condicao_pag'#9'F')
                DataField = 'rcr_id_condicao_pag'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_CPG
                LookupField = 'id_condicao_pag'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbFinanCondPagEnter
              end
              object cbbFinanFormaPag: TwwDBLookupCombo
                Left = 109
                Top = 43
                Width = 179
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_forma_pag'#9'10'#9'id_forma_pag'#9'F')
                DataField = 'rcr_id_forma_pag'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_FPG
                LookupField = 'id_forma_pag'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbFinanFormaPagEnter
              end
            end
            object gbPeqDespesas: TGroupBox
              Left = 6
              Top = 737
              Width = 345
              Height = 169
              Caption = 'Pequenas Despesas'
              TabOrder = 5
              object lblfornecedor: TLabel
                Left = 57
                Top = 21
                Width = 62
                Height = 13
                Caption = 'Fornecedor:'
              end
              object Label41: TLabel
                Left = 7
                Top = 48
                Width = 112
                Height = 13
                Caption = 'Forma de Pagamento:'
              end
              object Label44: TLabel
                Left = 41
                Top = 102
                Width = 79
                Height = 13
                Caption = 'Local do T'#237'tulo:'
              end
              object Label45: TLabel
                Left = 86
                Top = 75
                Width = 33
                Height = 13
                Caption = 'Custo:'
              end
              object Label46: TLabel
                Left = 37
                Top = 129
                Width = 83
                Height = 13
                Caption = 'Tipo Financeiro:'
              end
              object txtDescFornecedor: TDBText
                Left = 208
                Top = 18
                Width = 123
                Height = 21
                Color = 14342874
                DataField = 'int_pdefornecedor'
                DataSource = dsoCTR
                ParentColor = False
                Transparent = False
              end
              object txtFornecedor: TJvDBComboEdit
                Left = 127
                Top = 18
                Width = 78
                Height = 21
                ClickKey = 114
                DataField = 'pde_id_fornecedor'
                DataSource = dsoCTR
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
                OnButtonClick = txtFornecedorButtonClick
                OnExit = txtFornecedorExit
              end
              object cbbFormPag: TwwDBLookupCombo
                Left = 127
                Top = 45
                Width = 204
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_tipo_financeiro'#9'10'#9'C'#243'digo'#9'F')
                DataField = 'pde_id_forma_pag'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_FPG2
                LookupField = 'id_forma_pag'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbFormPagEnter
              end
              object cbbCusto: TwwDBLookupCombo
                Left = 127
                Top = 72
                Width = 204
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_ccusto'#9'10'#9'C'#9'F')
                DataField = 'pde_id_ccusto'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_CCU
                LookupField = 'id_ccusto'
                Style = csDropDownList
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbCustoEnter
              end
              object cbbTipoFin: TwwDBLookupCombo
                Left = 125
                Top = 126
                Width = 204
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_tipo_financeiro'#9'10'#9'C'#243'digo'#9'F')
                DataField = 'pde_id_tipo_financeiro'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP8
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 4
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbTipoFinEnter
              end
              object cbbLocalTit: TwwDBLookupCombo
                Left = 127
                Top = 99
                Width = 204
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_local_titulo'#9'10'#9'id_local_titulo'#9'F')
                DataField = 'pde_id_local_titulo'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_LTO
                LookupField = 'id_local_titulo'
                Style = csDropDownList
                TabOrder = 3
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbLocalTitEnter
              end
            end
            object chbInfValDadosCheque: TDBCheckBox
              Left = 19
              Top = 399
              Width = 206
              Height = 17
              Caption = 'Informar e validar dados do cheque?'
              DataField = 'cxa_critica_chq'
              DataSource = dsoCTR
              TabOrder = 6
            end
            object cbbDevForCondPag: TwwDBLookupCombo
              Left = 468
              Top = 118
              Width = 179
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'descricao'#9'F'
                'id_condicao_pag'#9'10'#9'id_condicao_pag'#9'F')
              DataField = 'dev_for_id_condicao_pag'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_CPG_EXP
              LookupField = 'id_condicao_pag'
              Style = csDropDownList
              TabOrder = 7
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbDevForCondPagEnter
            end
            object DBCheckBox1: TDBCheckBox
              Left = 19
              Top = 417
              Width = 206
              Height = 17
              Caption = 'Imprime Etiqueta'
              DataField = 'cxa_imprime_etq'
              DataSource = dsoCTR
              TabOrder = 8
            end
            object GroupBox3: TGroupBox
              Left = 359
              Top = 178
              Width = 308
              Height = 89
              Caption = 'Tipo fin. p/ forma de pagamento do tipo de CR'#201'DITO'
              TabOrder = 9
              object Label33: TLabel
                Left = 30
                Top = 23
                Width = 41
                Height = 13
                Caption = 'Cr'#233'dito:'
              end
              object Label34: TLabel
                Left = 33
                Top = 50
                Width = 38
                Height = 13
                Caption = 'D'#233'bito:'
              end
              object cbbTipoCredito: TwwDBLookupCombo
                Left = 77
                Top = 20
                Width = 195
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_tipo_financeiro'#9'10'#9'C'#243'digo'#9'F')
                DataField = 'rcr_id_tif_cre'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF
                LookupField = 'id_tipo_financeiro'
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbTipoCreditoEnter
              end
              object cbbTipoDebito: TwwDBLookupCombo
                Left = 77
                Top = 47
                Width = 195
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_financeiro'#9'10'#9'id_tipo_financeiro'#9'F')
                DataField = 'rcr_id_tif_deb'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP
                LookupField = 'id_tipo_financeiro'
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbTipoDebitoEnter
              end
            end
            object GroupBox4: TGroupBox
              Left = 359
              Top = 273
              Width = 308
              Height = 65
              Caption = 'Plano de Contas (Sem Fluxo) para Vendas com Cr'#233'dito'
              TabOrder = 10
              object cbbPlanoContasSemFluxo: TwwDBLookupCombo
                Left = 9
                Top = 33
                Width = 277
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'40'#9'Descri'#231#227'o'#9'F'
                  'id_plano'#9'11'#9'C'#243'digo'#9'F')
                DataField = 'rcr_id_plano_sef'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP
                LookupField = 'id_plano'
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbPlanoContasSemFluxoEnter
              end
            end
            object dbchInfNroLoteCar: TDBCheckBox
              Left = 19
              Top = 435
              Width = 316
              Height = 17
              Caption = 'Informa nro de lote do cart'#227'o no fechamento de caixa?'
              DataField = 'cxa_inf_lote_car_fech'
              DataSource = dsoCTR
              TabOrder = 11
            end
            object DBCheckBox3: TDBCheckBox
              Left = 16
              Top = 117
              Width = 234
              Height = 17
              Caption = 'Altera taxa fixa do cart'#227'o na concilia'#231#227'o?'
              DataField = 'conc_alt_txa_fixa_car'
              DataSource = dsoCTR
              TabOrder = 12
            end
            object gbMovCheTipoFinan: TGroupBox
              Left = 359
              Top = 362
              Width = 308
              Height = 93
              Caption = 'Tipo Financeiro'
              TabOrder = 13
              object lblMovCheTipoFinanDep: TLabel
                Left = 64
                Top = 19
                Width = 53
                Height = 13
                Caption = 'Depositar:'
              end
              object lblMovCheTipoFinanDev: TLabel
                Left = 60
                Top = 44
                Width = 57
                Height = 13
                Caption = 'Devolu'#231#227'o:'
              end
              object lblMovCheTipoFinanPPR: TLabel
                Left = 11
                Top = 69
                Width = 106
                Height = 13
                Caption = 'Pagamento/Resgate:'
              end
              object cbbMovCheTipoFinanDep: TwwDBLookupCombo
                Left = 126
                Top = 16
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_tipo_financeiro'#9'10'#9'C'#243'digo'#9'F')
                DataField = 'mch_id_tif_dep'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP4
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbMovCheTipoFinanDepEnter
              end
              object cbbMovCheTipoFinanDev: TwwDBLookupCombo
                Left = 126
                Top = 41
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_tipo_financeiro'#9'10'#9'C'#243'digo'#9'F')
                DataField = 'mch_id_tif_dev'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP5
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbMovCheTipoFinanDevEnter
              end
              object cbbMovCheTipoFinanPPR: TwwDBLookupCombo
                Left = 126
                Top = 66
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_tipo_financeiro'#9'10'#9'C'#243'digo'#9'F')
                DataField = 'mch_id_tif_ppr'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP6
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbMovCheTipoFinanPPREnter
              end
            end
            object gbMovChePlano: TGroupBox
              Left = 359
              Top = 458
              Width = 308
              Height = 108
              Caption = 'Plano de Contas'
              TabOrder = 14
              object lblMovChePlanoDep: TLabel
                Left = 65
                Top = 19
                Width = 53
                Height = 13
                Caption = 'Depositar:'
              end
              object lblMovChePlanoDev: TLabel
                Left = 61
                Top = 46
                Width = 57
                Height = 13
                Caption = 'Devolu'#231#227'o:'
              end
              object lblMovChePlanoPagRec: TLabel
                Left = 12
                Top = 71
                Width = 106
                Height = 13
                Caption = 'Pagamento/Resgate:'
              end
              object cbbMovChePlanoDep: TwwDBLookupCombo
                Left = 126
                Top = 16
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                  'id_plano'#9'11'#9'C'#243'digo'#9'T')
                DataField = 'mch_id_plano_dep'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP4
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbMovChePlanoDepEnter
              end
              object cbbMovChePlanoDev: TwwDBLookupCombo
                Left = 126
                Top = 43
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'F'
                  'id_plano'#9'11'#9'C'#243'digo'#9'T')
                DataField = 'mch_id_plano_dev'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP5
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbMovChePlanoDevEnter
              end
              object cbbMovChePlanoPPR: TwwDBLookupCombo
                Left = 126
                Top = 68
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                  'id_plano'#9'11'#9'C'#243'digo'#9'T')
                DataField = 'mch_id_plano_ppr'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP6
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbMovChePlanoPPREnter
              end
            end
            object cbbMovCheFormaPag: TwwDBLookupCombo
              Left = 485
              Top = 575
              Width = 167
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'descricao'#9'F'
                'id_forma_pag'#9'10'#9'id_forma_pag'#9'F')
              DataField = 'mch_id_forma_pag'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_FPG_EXP
              LookupField = 'id_forma_pag'
              Style = csDropDownList
              TabOrder = 15
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbMovCheFormaPagEnter
            end
            object DBCheckBox2: TDBCheckBox
              Left = 21
              Top = 18
              Width = 284
              Height = 17
              Caption = 'Permitir N maquinetas de cart'#227'o de cr'#233'dito'
              DataField = 'fin_perm_n_maquinetas'
              DataSource = dsoCTR
              TabOrder = 0
            end
            object cbbMaquinetaPadrao: TwwDBLookupCombo
              Left = 129
              Top = 41
              Width = 203
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'descricao'#9'F'
                'id_condicao_pag'#9'10'#9'id_condicao_pag'#9'F')
              DataField = 'fin_id_maquineta_pad'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_MCT
              LookupField = 'id_maquineta'
              Style = csDropDownList
              TabOrder = 1
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbMaquinetaPadraoEnter
            end
            object gbPlanoContas: TGroupBox
              Left = 6
              Top = 933
              Width = 345
              Height = 110
              Caption = 'Plano de Contas'
              TabOrder = 16
              object lblBcrPlano: TLabel
                Left = 39
                Top = 24
                Width = 90
                Height = 13
                Caption = 'Plano de Contas :'
              end
              object lblPlanoDescOper: TLabel
                Left = 21
                Top = 51
                Width = 108
                Height = 13
                Caption = 'Desc. taxa opera'#231#227'o :'
              end
              object lblBcrPlanoDescAntec: TLabel
                Left = 7
                Top = 80
                Width = 122
                Height = 13
                Caption = 'Desc. taxa antecipa'#231#227'o :'
              end
              object cbbBcrPlano: TwwDBLookupCombo
                Left = 135
                Top = 21
                Width = 201
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                  'id_plano'#9'11'#9'C'#243'digo'#9'T')
                DataField = 'cbx_id_plano'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP7
                LookupField = 'id_plano'
                Style = csDropDownList
                ParentFont = False
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbBcrPlanoEnter
              end
              object cbbBcrPlanoDesc: TwwDBLookupCombo
                Left = 135
                Top = 48
                Width = 201
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                  'id_plano'#9'11'#9'C'#243'digo'#9'T')
                DataField = 'cbx_id_plano_desc_ope'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP8
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbBcrPlanoDescEnter
              end
              object cbbBcrPlanoDescAnt: TwwDBLookupCombo
                Left = 136
                Top = 75
                Width = 200
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                  'id_plano'#9'11'#9'C'#243'digo'#9'T')
                DataField = 'cbx_id_plano_desc_antec'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP9
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbBcrPlanoDescAntEnter
              end
            end
            object gbTipoFinanceiro: TGroupBox
              Left = 6
              Top = 1049
              Width = 345
              Height = 105
              Caption = 'Tipo Financeiro'
              TabOrder = 17
              object lblBcrTipoFinanceiro: TLabel
                Left = 44
                Top = 24
                Width = 86
                Height = 13
                Caption = 'Tipo Financeiro :'
              end
              object lblTipoFinanDesc: TLabel
                Left = 30
                Top = 52
                Width = 99
                Height = 13
                Caption = 'Taxas de descontos'
              end
              object cbbBcrTipoFinanceiro: TwwDBLookupCombo
                Left = 136
                Top = 21
                Width = 200
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                  'id_tipo_financeiro'#9'11'#9'C'#243'digo'#9'T')
                DataField = 'cbx_id_tipo_financeiro'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP9
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbBcrTipoFinanceiroEnter
              end
              object cbbBcrTipoFinanDesc: TwwDBLookupCombo
                Left = 136
                Top = 48
                Width = 200
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                  'id_tipo_financeiro'#9'11'#9'C'#243'digo'#9'T')
                DataField = 'cbx_id_tipo_financeiro_desc'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP10
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbBcrTipoFinanDescEnter
              end
            end
            object cbbBxaAutBolTipoFinan: TwwDBLookupCombo
              Left = 477
              Top = 660
              Width = 181
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                'id_tipo_financeiro'#9'11'#9'C'#243'digo'#9'T')
              DataField = 'rbx_ret_id_tipo_financeiro'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_TIF_EXP11
              LookupField = 'id_tipo_financeiro'
              Style = csDropDownList
              TabOrder = 18
              AutoDropDown = False
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbBxaAutBolTipoFinanEnter
            end
            object cbbBxaAutBolPlanoContas: TwwDBLookupCombo
              Left = 477
              Top = 633
              Width = 182
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                'id_plano'#9'11'#9'C'#243'digo'#9'T')
              DataField = 'rbx_ret_id_plano'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_PCT_EXP10
              LookupField = 'id_plano'
              Style = csDropDownList
              TabOrder = 19
              AutoDropDown = False
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbBxaAutBolPlanoContasEnter
            end
            object cbbBxaAutBolCentroCusto: TwwDBLookupCombo
              Left = 477
              Top = 688
              Width = 182
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                'id_ccusto'#9'11'#9'C'#243'digo'#9'T')
              DataField = 'rbx_ret_id_ccu'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_CCU_EXP2
              LookupField = 'id_ccusto'
              Style = csDropDownList
              TabOrder = 20
              AutoDropDown = False
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbBxaAutBolCentroCustoEnter
            end
            object cbbBxaAutBolFormaPag: TwwDBLookupCombo
              Left = 477
              Top = 715
              Width = 182
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                'id_forma_pag'#9'11'#9'C'#243'digo'#9'T')
              DataField = 'rbx_ret_id_forma_pag'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_FPG_EXP2
              LookupField = 'id_forma_pag'
              Style = csDropDownList
              TabOrder = 21
              AutoDropDown = False
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbBxaAutBolFormaPagEnter
            end
            object txtFornecedorMovBan: TJvDBComboEdit
              Left = 431
              Top = 778
              Width = 78
              Height = 21
              ClickKey = 114
              DataField = 'mvb_id_fornecedor'
              DataSource = dsoCTR
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
              TabOrder = 22
              OnButtonClick = txtFornecedorMovBanButtonClick
              OnExit = txtFornecedorMovBanExit
            end
            object txtDescForMovBan: TEdit
              Left = 512
              Top = 778
              Width = 147
              Height = 21
              Color = 14342874
              ReadOnly = True
              TabOrder = 23
            end
            object GroupBox6: TGroupBox
              Left = 355
              Top = 839
              Width = 310
              Height = 77
              TabOrder = 24
              object Label100: TLabel
                Left = 32
                Top = 39
                Width = 86
                Height = 13
                Caption = 'Tipo Financeiro :'
              end
              object Label101: TLabel
                Left = 26
                Top = 10
                Width = 90
                Height = 13
                Caption = 'Plano de Contas :'
              end
              object cbbRCRTipoFinanceiro: TwwDBLookupCombo
                Left = 122
                Top = 36
                Width = 182
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_financeiro'#9'10'#9'id_tipo_financeiro'#9'F')
                DataField = 'rcr_id_tipo_financeiro'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP12
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbRCRTipoFinanceiroEnter
              end
              object cbbRCRPlanoContas: TwwDBLookupCombo
                Left = 122
                Top = 6
                Width = 182
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                  'id_plano'#9'11'#9'C'#243'digo'#9'T')
                DataField = 'rcr_id_plano'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP12
                LookupField = 'id_plano'
                Style = csDropDownList
                ParentFont = False
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbRCRPlanoContasEnter
              end
            end
            object gbBxaNEmpresa: TGroupBox
              Left = 6
              Top = 1248
              Width = 346
              Height = 102
              Caption = ' Selecione as empresas que deseja baixar os t'#237'tulos (PAG) '
              TabOrder = 25
              object grdBxaNEmp: TwwDBGrid
                Left = 3
                Top = 22
                Width = 326
                Height = 77
                ControlType.Strings = (
                  'permite_baixar;CheckBox;True;False')
                Selected.Strings = (
                  'id_empresa_bxp'#9'4'#9'C'#243'd.'#9'F'
                  'int_fantasia'#9'37'#9'Empresa'#9'F'
                  'permite_baixar'#9'3'#9'   '#9'F')
                IniAttributes.Delimiter = ';;'
                IniAttributes.UnicodeIniFile = False
                TitleColor = 13750737
                FixedCols = 2
                ShowHorzScrollBar = True
                DataSource = dsoBxp
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
                OnDblClick = grdBxaNEmpDblClick
              end
            end
            object chkBxaNEmpresa: TDBCheckBox
              Left = 6
              Top = 1224
              Width = 342
              Height = 17
              Caption = 'Baixa t'#237'tulos do contas a pagar de outras empresas.'
              DataField = 'perm_bxa_pag_n_emp'
              DataSource = dsoCTR
              TabOrder = 26
              OnClick = chkBxaNEmpresaClick
            end
            object chkRcrCriFomaPag: TDBCheckBox
              Left = 381
              Top = 922
              Width = 257
              Height = 17
              Caption = 'Criticar os dados de forma de pagamento?'
              DataField = 'rcr_cri_forma_pag'
              DataSource = dsoCTR
              TabOrder = 27
            end
            object chbImprimeDupAceite: TDBCheckBox
              Left = 19
              Top = 453
              Width = 206
              Height = 17
              Caption = 'Imprimir Duplicata de Aceite?'
              DataField = 'emite_duplicata_aceite'
              DataSource = dsoCTR
              TabOrder = 28
            end
            object GroupBox11: TGroupBox
              Left = 354
              Top = 969
              Width = 311
              Height = 52
              TabOrder = 29
              object Label118: TLabel
                Left = 11
                Top = 15
                Width = 95
                Height = 13
                Caption = 'Local da Remessa :'
              end
              object txtLocalRemessa: TDBEdit
                Left = 112
                Top = 12
                Width = 192
                Height = 21
                BevelInner = bvSpace
                BevelOuter = bvNone
                Color = clWhite
                DataField = 'path_remessa'
                DataSource = dsoCTR
                TabOrder = 0
              end
            end
            object gbBxaRecNEmpresa: TGroupBox
              Left = 6
              Top = 1490
              Width = 346
              Height = 102
              Caption = ' Selecione as empresas que deseja baixar os t'#237'tulos (REC) '
              TabOrder = 30
              object grdBxaRecNEmp: TwwDBGrid
                Left = 3
                Top = 22
                Width = 326
                Height = 77
                ControlType.Strings = (
                  'permite_baixar;CheckBox;True;False')
                Selected.Strings = (
                  'id_empresa_bxr'#9'4'#9'C'#243'd.'#9'F'
                  'int_fantasia'#9'37'#9'Empresa'#9'F'
                  'permite_baixar'#9'3'#9'   '#9'F')
                IniAttributes.Delimiter = ';;'
                IniAttributes.UnicodeIniFile = False
                TitleColor = 13750737
                FixedCols = 2
                ShowHorzScrollBar = True
                DataSource = dsoBxr
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
                OnDblClick = grdBxaRecNEmpDblClick
              end
            end
            object chkBxaRecNEmpresa: TDBCheckBox
              Left = 6
              Top = 1443
              Width = 342
              Height = 17
              Caption = 'Baixa t'#237'tulos do contas a receber de outras empresas.'
              DataField = 'perm_bxa_rec_n_emp'
              DataSource = dsoCTR
              TabOrder = 31
              OnClick = chkBxaRecNEmpresaClick
            end
            object GroupBox16: TGroupBox
              Left = 3
              Top = 251
              Width = 350
              Height = 125
              Caption = 'Contas a Pagar'
              TabOrder = 32
              object Label130: TLabel
                Left = 37
                Top = 19
                Width = 63
                Height = 13
                Caption = 'Forma Pag. :'
              end
              object Label133: TLabel
                Left = 16
                Top = 46
                Width = 86
                Height = 13
                Caption = 'Tipo Financeiro :'
              end
              object Label134: TLabel
                Left = 36
                Top = 99
                Width = 65
                Height = 13
                Caption = 'Local T'#237'tulo :'
              end
              object Label135: TLabel
                Left = 12
                Top = 72
                Width = 90
                Height = 13
                Caption = 'Centro de Custo :'
              end
              object cbbFinanConFormaPagPag: TwwDBLookupCombo
                Left = 108
                Top = 16
                Width = 182
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_forma_pag'#9'10'#9'id_forma_pag'#9'F')
                DataField = 'con_id_forma_pag_pag'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_FPG_EXP4
                LookupField = 'id_forma_pag'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbFinanConFormaPagPagEnter
              end
              object cbbFinanConTipoFinPag: TwwDBLookupCombo
                Left = 108
                Top = 43
                Width = 181
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_financeiro'#9'10'#9'id_tipo_financeiro'#9'F')
                DataField = 'con_id_tipo_financeiro_pag'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP14
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbFinanConTipoFinPagEnter
              end
              object cbbFinanConLocalTitPag: TwwDBLookupCombo
                Left = 108
                Top = 96
                Width = 182
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_local_titulo'#9'10'#9'id_local_titulo'#9'F')
                DataField = 'con_id_local_titulo_pag'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_LTO_EXP3
                LookupField = 'id_local_titulo'
                Style = csDropDownList
                TabOrder = 3
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbFinanConLocalTitPagEnter
              end
              object cbbFinanConCustoPag: TwwDBLookupCombo
                Left = 108
                Top = 69
                Width = 182
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_ccusto'#9'10'#9'id_ccusto'#9'F')
                DataField = 'con_id_ccusto_pag'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_CCU_EXP3
                LookupField = 'id_ccusto'
                Style = csDropDownList
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbFinanConCustoPagEnter
              end
            end
            object GroupBox15: TGroupBox
              Left = 3
              Top = 141
              Width = 350
              Height = 104
              Caption = 'Contas a Receber'
              TabOrder = 33
              object Label128: TLabel
                Left = 36
                Top = 19
                Width = 63
                Height = 13
                Caption = 'Forma Pag. :'
              end
              object Label129: TLabel
                Left = 14
                Top = 43
                Width = 86
                Height = 13
                Caption = 'Tipo Financeiro :'
              end
              object Label131: TLabel
                Left = 35
                Top = 73
                Width = 65
                Height = 13
                Caption = 'Local T'#237'tulo :'
              end
              object cbbFinanConFormaPag: TwwDBLookupCombo
                Left = 107
                Top = 16
                Width = 182
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_forma_pag'#9'10'#9'id_forma_pag'#9'F')
                DataField = 'con_id_forma_pag_rec'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_FPG_EXP3
                LookupField = 'id_forma_pag'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbFinanConFormaPagEnter
              end
              object cbbFinanConTipoFin: TwwDBLookupCombo
                Left = 107
                Top = 43
                Width = 182
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_financeiro'#9'10'#9'id_tipo_financeiro'#9'F')
                DataField = 'con_id_tipo_financeiro_rec'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP13
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbFinanConTipoFinEnter
              end
              object cbbFinanConLocalTit: TwwDBLookupCombo
                Left = 107
                Top = 70
                Width = 182
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_local_titulo'#9'10'#9'id_local_titulo'#9'F')
                DataField = 'con_id_local_titulo_rec'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_LTO_EXP2
                LookupField = 'id_local_titulo'
                Style = csDropDownList
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbFinanConLocalTitEnter
              end
            end
            object GroupBox14: TGroupBox
              Left = 359
              Top = 1049
              Width = 304
              Height = 134
              Caption = 'Desconto T'#237'tulos'
              TabOrder = 34
              object Label140: TLabel
                Left = 38
                Top = 24
                Width = 90
                Height = 13
                Caption = 'Plano de Contas :'
              end
              object lblPlanoTaxaDesc: TLabel
                Left = 38
                Top = 74
                Width = 90
                Height = 13
                Caption = 'Plano Taxa Desc. :'
              end
              object Label141: TLabel
                Left = 42
                Top = 48
                Width = 86
                Height = 13
                Caption = 'Tipo Financeiro :'
              end
              object Label142: TLabel
                Left = 10
                Top = 101
                Width = 119
                Height = 13
                Caption = 'Tipo Finan. Taxa Desc. :'
              end
              object cbbDesTitPlano: TwwDBLookupCombo
                Left = 134
                Top = 21
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'50'#9'descricao'#9'F'
                  'id_plano'#9'11'#9'id_plano'#9'F')
                DataField = 'dct_id_plano_cred'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP13
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbDesTitPlanoEnter
              end
              object cbbDescTitPlanoTaxaDesc: TwwDBLookupCombo
                Left = 134
                Top = 71
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'50'#9'descricao'#9'F'
                  'id_plano'#9'11'#9'id_plano'#9'F')
                DataField = 'dct_id_plano_desc_taxa'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP14
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbDescTitPlanoTaxaDescEnter
              end
              object cbbDescTitTif: TwwDBLookupCombo
                Left = 134
                Top = 46
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_financeiro'#9'10'#9'id_tipo_financeiro'#9'F')
                DataField = 'dct_id_tipo_financeiro_cred'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP15
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbDescTitTifEnter
              end
              object cbbDescTitTifTaxaDesc: TwwDBLookupCombo
                Left = 134
                Top = 98
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_financeiro'#9'10'#9'id_tipo_financeiro'#9'F')
                DataField = 'dct_id_tipo_financeiro_desc_taxa'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP16
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 3
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbDescTitTifTaxaDescEnter
              end
            end
            object GroupBox17: TGroupBox
              Left = 359
              Top = 1189
              Width = 304
              Height = 48
              Caption = 'Baixa de T'#237'tulos'
              TabOrder = 35
              object Label143: TLabel
                Left = 48
                Top = 19
                Width = 79
                Height = 13
                Caption = 'Forma de Pag. :'
              end
              object cbbDescTitFpgBxa: TwwDBLookupCombo
                Left = 134
                Top = 16
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_forma_pag'#9'10'#9'id_forma_pag'#9'F')
                DataField = 'dct_id_forma_pag'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_FPG_EXP5
                LookupField = 'id_forma_pag'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbDescTitFpgBxaEnter
              end
            end
            object GroupBox18: TGroupBox
              Left = 359
              Top = 1243
              Width = 304
              Height = 87
              Caption = 'Cancelamento de desconto de t'#237'tulos'
              TabOrder = 36
              object Label144: TLabel
                Left = 38
                Top = 27
                Width = 90
                Height = 13
                Caption = 'Plano de Contas :'
              end
              object Label145: TLabel
                Left = 42
                Top = 54
                Width = 86
                Height = 13
                Caption = 'Tipo Financeiro :'
              end
              object cbbDescTitPlanoCanc: TwwDBLookupCombo
                Left = 134
                Top = 24
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'50'#9'descricao'#9'F'
                  'id_plano'#9'11'#9'id_plano'#9'F')
                DataField = 'dct_id_plano_canc'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP15
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbDescTitPlanoCancEnter
              end
              object cbbDescTitTifCanc: TwwDBLookupCombo
                Left = 134
                Top = 51
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_financeiro'#9'10'#9'id_tipo_financeiro'#9'F')
                DataField = 'dct_id_tipo_financeiro_canc'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP17
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 1
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbDescTitTifCancEnter
              end
            end
            object chkBaixaRecNTitulos: TDBCheckBox
              Left = 6
              Top = 1394
              Width = 273
              Height = 17
              Caption = 'Permitir selecionar mais de um t'#237'tulo para baixar?'
              DataField = 'perm_bxa_rec_n_tit'
              DataSource = dsoCTR
              TabOrder = 37
            end
            object cbbNfeTipoFinanceiro: TwwDBLookupCombo
              Left = 493
              Top = 1357
              Width = 167
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'descricao'#9'F'
                'id_tipo_financeiro'#9'10'#9'id_tipo_financeiro'#9'F')
              DataField = 'nfe_id_tipo_financeiro'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_TIF_EXP18
              LookupField = 'id_tipo_financeiro'
              Style = csDropDownList
              TabOrder = 38
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbNfeTipoFinanceiroEnter
            end
            object DBCheckBox7: TDBCheckBox
              Left = 6
              Top = 1204
              Width = 282
              Height = 17
              Caption = 'Permitir selecionar mais de um t'#237'tulo para baixar?'
              DataField = 'perm_bxa_pag_n_tit'
              DataSource = dsoCTR
              TabOrder = 39
            end
            object DBCheckBox8: TDBCheckBox
              Left = 6
              Top = 1376
              Width = 259
              Height = 17
              Caption = 'Informar hist'#243'rico dos t'#237'tulos na baixa'
              DataField = 'rbx_gravar_obs_tit'
              DataSource = dsoCTR
              TabOrder = 40
            end
            object DBCheckBox9: TDBCheckBox
              Left = 6
              Top = 1182
              Width = 331
              Height = 17
              Caption = 'Informar hist'#243'rico dos t'#237'tulos na baixa'
              DataField = 'pbx_gravar_obs_tit'
              DataSource = dsoCTR
              TabOrder = 41
            end
            object cbbTipoData: TwwDBComboBox
              Left = 493
              Top = 1415
              Width = 167
              Height = 21
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              DataField = 'dta_pag_ret_banco'
              DataSource = dsoCTR
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'Data de Ocorr'#234'ncia'#9'0'
                'Data de Cr'#233'dito'#9'1')
              Sorted = False
              TabOrder = 42
              UnboundDataType = wwDefault
            end
            object DBCheckBox25: TDBCheckBox
              Left = 6
              Top = 1426
              Width = 279
              Height = 17
              Caption = 'Permitir Alterar Vlr. Duplicata da Nota Faturada?'
              DataField = 'alterar_vlr_dup_nota_fat'
              DataSource = dsoCTR
              TabOrder = 43
            end
            object DBCheckBox27: TDBCheckBox
              Left = 6
              Top = 1409
              Width = 179
              Height = 17
              Caption = 'Permitir alterar data da baixa?'
              DataField = 'permitir_alterar_dta_baixa_rbx'
              DataSource = dsoCTR
              TabOrder = 44
            end
            object DBCheckBox34: TDBCheckBox
              Left = 6
              Top = 1461
              Width = 342
              Height = 25
              Caption = 
                'Permite preencher o campo "valor pago" ao selecionar t'#237'tulos na ' +
                'baixa'
              DataField = 'sgq_preenc_vlr_pago_bx_tit'
              DataSource = dsoCTR
              TabOrder = 45
              WordWrap = True
              OnClick = chkBxaRecNEmpresaClick
            end
          end
        end
        object tbiEstoque: TTabSheet
          Caption = 'Estoque'
          ImageIndex = 9
          OnShow = tbiEstoqueShow
          object lblContagemEstoque: TLabel
            Left = 3
            Top = 80
            Width = 292
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Contagem de Estoque'
            Color = 14342874
            ParentColor = False
            Transparent = False
          end
          object lblTipoEstoqueEntrada: TLabel
            Left = 3
            Top = 93
            Width = 117
            Height = 13
            Caption = 'Tipo Estoque Entrada :'
          end
          object lblTipoEstoqueSaida: TLabel
            Left = 15
            Top = 116
            Width = 105
            Height = 13
            Caption = 'Tipo Estoque Sa'#237'da :'
          end
          object Label115: TLabel
            Left = 3
            Top = 159
            Width = 292
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Movimenta'#231#227'o do Almoxarifado '
            Color = 14342874
            ParentColor = False
            Transparent = False
          end
          object Label163: TLabel
            Left = 3
            Top = 2
            Width = 292
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Geral'
            Color = 14342874
            ParentColor = False
            Transparent = False
          end
          object Label165: TLabel
            Left = 8
            Top = 48
            Width = 160
            Height = 13
            Caption = 'Filtro padr'#227'o pesquisa de item:'
          end
          object Label164: TLabel
            Left = 10
            Top = 25
            Width = 158
            Height = 13
            Caption = 'Filtro padr'#227'o consulta de item:'
          end
          object cbbTipoEstoqueEntrada: TwwDBLookupCombo
            Left = 125
            Top = 102
            Width = 170
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'descricao'#9'30'#9'descricao'#9'F')
            DataField = 'cte_tipo_estoque_ent'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_C_TME
            LookupField = 'id_tipo_mov_estoque'
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbTipoEstoqueEntradaEnter
          end
          object cbbTipoEstoqueSaida: TwwDBLookupCombo
            Left = 125
            Top = 125
            Width = 170
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
            DataField = 'cte_tipo_estoque_sai'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_C_TM2
            LookupField = 'id_tipo_mov_estoque'
            TabOrder = 1
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbTipoEstoqueSaidaEnter
          end
          object GroupBox10: TGroupBox
            Left = 0
            Top = 181
            Width = 292
            Height = 60
            Caption = 'Transfer'#234'ncia'
            TabOrder = 2
            object Label116: TLabel
              Left = 3
              Top = 29
              Width = 117
              Height = 13
              Caption = 'Tipo Estoque Entrada :'
            end
            object cbbMovAlmTransEnt: TwwDBLookupCombo
              Left = 125
              Top = 26
              Width = 164
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'descricao'#9'F')
              DataField = 'mal_tipo_estoque_ent'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_TME_EXP3
              LookupField = 'id_tipo_mov_estoque'
              TabOrder = 0
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbMovAlmTransEntEnter
            end
          end
          object wwDBComboBox1: TwwDBComboBox
            Left = 174
            Top = 21
            Width = 120
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'filtro_pad_csu_ite'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'C'#243'digo'#9'0'
              'Descri'#231#227'o'#9'1'
              'Cod.Barra'#9'2'
              'Cod.Fabrica'#9'3'
              'Loca-Rua'#9'4'
              'Aplica'#231#227'o'#9'5'
              'Nome do Fornecedor'#9'6'
              'Cod.Grupo'#9'7'
              'Descri'#231#227'o do Grupo'#9'8'
              'Refer'#234'ncia'#9'9'
              'NCM'#9'10')
            Sorted = False
            TabOrder = 3
            UnboundDataType = wwDefault
          end
          object wwDBComboBox2: TwwDBComboBox
            Left = 174
            Top = 44
            Width = 120
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'filtro_pad_psq_ite'
            DataSource = dsoCTR
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'C'#243'digo'#9'0'
              'Descri'#231#227'o do item'#9'1'
              'Cod.Barra'#9'2'
              'Cod.Fabrica'#9'3'
              'Loca-Rua'#9'4'
              'Aplica'#231#227'o'#9'5'
              'Nome do Fornecedor'#9'6'
              'Cod.Grupo'#9'7'
              'Descri'#231#227'o do Grupo'#9'8'
              'Refer'#234'ncia'#9'9'
              'NCM'#9'10')
            Sorted = False
            TabOrder = 4
            UnboundDataType = wwDefault
          end
        end
        object tbiOficina: TTabSheet
          Caption = 'Oficina'
          ImageIndex = 10
          OnShow = tbiOficinaShow
          object lblOrvFormaPagNotaCre: TLabel
            Left = 18
            Top = 241
            Width = 79
            Height = 13
            Caption = 'Forma de Pag. :'
          end
          object ScrollBox6: TScrollBox
            Left = 0
            Top = 0
            Width = 678
            Height = 241
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            ParentColor = False
            TabOrder = 0
            object Label124: TLabel
              Left = 363
              Top = 8
              Width = 272
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Nota de Garantia'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblTipoEstoque: TLabel
              Left = 35
              Top = 33
              Width = 90
              Height = 13
              Caption = 'Tipo de Estoque :'
            end
            object lblAberOrdemServico: TLabel
              Left = 17
              Top = 8
              Width = 307
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Ordem de Servi'#231'o'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object lblOrvNotaCre: TLabel
              Left = 17
              Top = 378
              Width = 309
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Nota de Cr'#233'dito'
              Color = 14342874
              ParentColor = False
              Transparent = False
            end
            object Label169: TLabel
              Left = 22
              Top = 404
              Width = 63
              Height = 13
              Caption = 'Forma Pag. :'
            end
            object GroupBox13: TGroupBox
              Left = 363
              Top = 85
              Width = 272
              Height = 49
              Caption = 'Devolu'#231#227'o do Cliente'
              TabOrder = 0
              object Label126: TLabel
                Left = 13
                Top = 22
                Width = 102
                Height = 13
                Caption = 'Tipo Mov. Estoque :'
              end
              object cbbDevCliTme: TwwDBLookupCombo
                Left = 120
                Top = 19
                Width = 137
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_mov_estoque'#9'10'#9'id_tipo_mov_estoque'#9'F')
                DataField = 'orv_id_tme_dev_cli_gar'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TME_EXP3
                LookupField = 'id_tipo_mov_estoque'
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbDevCliTmeEnter
              end
            end
            object GroupBox12: TGroupBox
              Left = 363
              Top = 30
              Width = 272
              Height = 52
              Caption = 'Devolu'#231#227'o do Fornecedor'
              TabOrder = 1
              object Label125: TLabel
                Left = 13
                Top = 23
                Width = 102
                Height = 13
                Caption = 'Tipo Mov. Estoque :'
              end
              object cbbDevForTme: TwwDBLookupCombo
                Left = 120
                Top = 20
                Width = 137
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'id_tipo_mov_estoque'#9'10'#9'id_tipo_mov_estoque'#9'F')
                DataField = 'orv_id_tme_dev_gar'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TM2
                LookupField = 'id_tipo_mov_estoque'
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbDevForTmeEnter
              end
            end
            object cbbTipoEstoqueOrdemServico: TwwDBLookupCombo
              Left = 127
              Top = 30
              Width = 199
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'descricao'#9'F'
                'id_tipo_mov_estoque'#9'10'#9'id_tipo_mov_estoque'#9'F')
              DataField = 'orv_id_tipo_mov_estoque'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_TME
              LookupField = 'id_tipo_mov_estoque'
              TabOrder = 2
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbTipoEstoqueOrdemServicoEnter
            end
            object GroupBox1: TGroupBox
              Left = 16
              Top = 114
              Width = 310
              Height = 199
              TabOrder = 3
              object Label154: TLabel
                Left = 6
                Top = 151
                Width = 301
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Para quando separa nota fiscal de pe'#231'a e servi'#231'o'
                Color = 14342874
                ParentColor = False
                Transparent = False
              end
              object chbOSImpOrc: TDBCheckBox
                Left = 6
                Top = 5
                Width = 130
                Height = 17
                Caption = 'Importar or'#231'amento?'
                DataField = 'orv_critica_ocv_aber'
                DataSource = dsoCTR
                TabOrder = 0
              end
              object chbOSInclusaoIte: TDBCheckBox
                Left = 6
                Top = 47
                Width = 117
                Height = 17
                Caption = 'Inclus'#227'o de itens?'
                DataField = 'orv_critica_ite_aber'
                DataSource = dsoCTR
                TabOrder = 2
              end
              object DBCheckBox5: TDBCheckBox
                Left = 6
                Top = 67
                Width = 182
                Height = 17
                Caption = 'Pre'#231'o de servi'#231'o por categoria?'
                DataField = 'ativa_preco_cat_ser'
                DataSource = dsoCTR
                TabOrder = 3
              end
              object chbImpOS: TDBCheckBox
                Left = 6
                Top = 26
                Width = 97
                Height = 17
                Caption = 'Importar OS ?'
                DataField = 'substituir_os'
                DataSource = dsoCTR
                TabOrder = 1
              end
              object DBCheckBox4: TDBCheckBox
                Left = 6
                Top = 169
                Width = 304
                Height = 17
                Caption = 'Separa o financeiro de pe'#231'a e servi'#231'o'
                DataField = 'orv_gera_fin_separado'
                DataSource = dsoCTR
                TabOrder = 4
              end
              object DBCheckBox21: TDBCheckBox
                Left = 6
                Top = 87
                Width = 291
                Height = 17
                Caption = 'Permitir lan'#231'ar nova OS para mesmo cliente e placa?'
                DataField = 'permitir_nova_os_cli_placa'
                DataSource = dsoCTR
                TabOrder = 5
              end
              object DBCheckBox24: TDBCheckBox
                Left = 6
                Top = 108
                Width = 203
                Height = 17
                Caption = 'Gerar Nota Fiscal no Fechamento'
                DataField = 'gerar_nota_fechamento_os'
                DataSource = dsoCTR
                TabOrder = 6
              end
              object DBCheckBox31: TDBCheckBox
                Left = 6
                Top = 128
                Width = 195
                Height = 17
                Caption = 'Informar mec'#226'nico por item?'
                DataField = 'informar_mec_por_item_os'
                DataSource = dsoCTR
                TabOrder = 7
              end
            end
            object cbbOrvFormaPagNotaCre: TwwDBLookupCombo
              Left = 100
              Top = 400
              Width = 226
              Height = 21
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'descricao'#9'30'#9'descricao'#9'F'
                'id_forma_pag'#9'10'#9'id_forma_pag'#9'F')
              DataField = 'orv_id_forma_pag_rcr'
              DataSource = dsoCTR
              LookupTable = dmGeral.BUS_CD_C_FPG
              LookupField = 'id_forma_pag'
              TabOrder = 4
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = cbbOrvFormaPagNotaCreEnter
            end
            object GroupBox20: TGroupBox
              Left = 17
              Top = 316
              Width = 310
              Height = 56
              Caption = 'Mobile'
              TabOrder = 5
              object Label162: TLabel
                Left = 12
                Top = 24
                Width = 83
                Height = 13
                Caption = 'Tipo de Ordem :'
              end
              object cbbTipoOrdem: TwwDBLookupCombo
                Left = 100
                Top = 21
                Width = 189
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'descricao'#9'F'
                  'tipo'#9'10'#9'tipo'#9'F')
                DataField = 'mob_tipo_ordem'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIO
                LookupField = 'tipo'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbTipoOrdemEnter
              end
            end
            object GroupBox22: TGroupBox
              Left = 17
              Top = 52
              Width = 310
              Height = 61
              TabOrder = 6
              object Label170: TLabel
                Left = 16
                Top = 28
                Width = 150
                Height = 13
                Caption = 'Tipo de Pre'#231'o a ser buscado :'
              end
              object DBCheckBox26: TDBCheckBox
                Left = 16
                Top = 5
                Width = 233
                Height = 17
                Caption = 'N'#227'o Utilizar Cond. Pag. na Abertura OS?'
                DataField = 'n_utilizar_cond_pag_os'
                DataSource = dsoCTR
                TabOrder = 0
              end
              object wwDBComboBox3: TwwDBComboBox
                Left = 171
                Top = 25
                Width = 121
                Height = 21
                ShowButton = True
                Style = csDropDownList
                MapList = True
                AllowClearKey = False
                DataField = 'tipo_preco_sem_cond_pag_os'
                DataSource = dsoCTR
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  'A Vista'#9'0'
                  'A Prazo'#9'1')
                Sorted = False
                TabOrder = 1
                UnboundDataType = wwDefault
              end
            end
          end
        end
        object tbiFaturamento: TTabSheet
          Caption = 'Faturamento'
          ImageIndex = 13
          OnShow = tbiFaturamentoShow
          object ScrollBox5: TScrollBox
            Left = 0
            Top = 0
            Width = 678
            Height = 241
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            ParentColor = False
            TabOrder = 0
            object Label103: TLabel
              Left = 3
              Top = 3
              Width = 344
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Par'#226'metros para formar o pre'#231'o do item selcionado'
              Color = 14342874
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label106: TLabel
              Left = 7
              Top = 36
              Width = 202
              Height = 13
              Caption = '% do Custo fixo sobre vendas mensais :'
            end
            object Label107: TLabel
              Left = 94
              Top = 61
              Width = 115
              Height = 13
              Caption = '% ICMS sobre vendas :'
            end
            object Label108: TLabel
              Left = 152
              Top = 87
              Width = 57
              Height = 13
              Caption = '% Simples :'
            end
            object Label109: TLabel
              Left = 137
              Top = 112
              Width = 72
              Height = 13
              Alignment = taRightJustify
              Caption = '% Comiss'#245'es :'
            end
            object Label110: TLabel
              Left = 89
              Top = 138
              Width = 120
              Height = 13
              Alignment = taRightJustify
              Caption = '% Fretes sobre vendas :'
            end
            object Label111: TLabel
              Left = 47
              Top = 164
              Width = 162
              Height = 13
              Caption = 'Custo financeiro sobre vendas :'
            end
            object Label104: TLabel
              Left = 103
              Top = 190
              Width = 106
              Height = 13
              Alignment = taRightJustify
              Caption = '% Para pre'#231'o a Prazo'
            end
            object Label112: TLabel
              Left = 360
              Top = 3
              Width = 320
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Par'#226'metros para cancelamento de NFe dia anterior'
              Color = 14342874
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label192: TLabel
              Left = 360
              Top = 148
              Width = 167
              Height = 13
              Caption = 'Validade para Or'#231'amento (Dias) :'
            end
            object txtPerCusFixSobVenMen: TwwDBEdit
              Left = 221
              Top = 32
              Width = 73
              Height = 21
              DataField = 'fp_per_cust_ven_mens'
              DataSource = dsoCTR
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object txtPerIcmsSobVen: TwwDBEdit
              Left = 221
              Top = 57
              Width = 73
              Height = 21
              DataField = 'fp_per_icms_ven'
              DataSource = dsoCTR
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object txtPerSimples: TwwDBEdit
              Left = 221
              Top = 83
              Width = 73
              Height = 21
              DataField = 'fp_per_simples'
              DataSource = dsoCTR
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object txtPerComiss: TwwDBEdit
              Left = 221
              Top = 108
              Width = 73
              Height = 21
              DataField = 'fp_per_comissao'
              DataSource = dsoCTR
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object txtPerFretSobVen: TwwDBEdit
              Left = 221
              Top = 134
              Width = 73
              Height = 21
              DataField = 'fp_per_frete_ven'
              DataSource = dsoCTR
              TabOrder = 4
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object txtPerCusFinSobVen: TwwDBEdit
              Left = 221
              Top = 160
              Width = 73
              Height = 21
              DataField = 'fp_per_cust_fin_ven'
              DataSource = dsoCTR
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit1: TwwDBEdit
              Left = 221
              Top = 186
              Width = 73
              Height = 21
              DataField = 'fp_per_prc_prz_ven_prat'
              DataSource = dsoCTR
              TabOrder = 6
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object GroupBox8: TGroupBox
              Left = 360
              Top = 26
              Width = 319
              Height = 47
              Caption = ' Tipo financeiro '
              TabOrder = 7
              object Label113: TLabel
                Left = 26
                Top = 22
                Width = 44
                Height = 13
                Caption = ' D'#233'bito :'
              end
              object cbbTifDebCancNfeAnt: TwwDBLookupCombo
                Left = 76
                Top = 18
                Width = 164
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'30'#9'Descri'#231#227'o'#9'F'
                  'id_tipo_financeiro'#9'10'#9'C'#243'digo'#9'F')
                DataField = 'cxa_id_tipo_fin_canc_ant'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_TIF_EXP6
                LookupField = 'id_tipo_financeiro'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbTifDebCancNfeAntEnter
              end
            end
            object GroupBox9: TGroupBox
              Left = 360
              Top = 79
              Width = 319
              Height = 47
              Caption = ' Plano de Contas '
              TabOrder = 8
              object Label114: TLabel
                Left = 18
                Top = 23
                Width = 52
                Height = 13
                Caption = ' Despesa :'
              end
              object cbbPctDespCancNfeAnt: TwwDBLookupCombo
                Left = 78
                Top = 19
                Width = 167
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'descricao'#9'35'#9'Descri'#231#227'o'#9'T'
                  'id_plano'#9'11'#9'C'#243'digo'#9'T')
                DataField = 'cxa_id_plano_canc_ant'
                DataSource = dsoCTR
                LookupTable = dmGeral.BUS_CD_C_PCT_EXP6
                LookupField = 'id_plano'
                Style = csDropDownList
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnEnter = cbbPctDespCancNfeAntEnter
              end
            end
            object wwDBEdit6: TwwDBEdit
              Left = 533
              Top = 144
              Width = 73
              Height = 21
              DataField = 'fat_validade_orc'
              DataSource = dsoCTR
              TabOrder = 9
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Avalia'#231#227'o de Fornecedor'
          ImageIndex = 14
          object lblCumprimentoPrazo: TLabel
            Left = 229
            Top = 43
            Width = 183
            Height = 13
            Caption = 'Cumprimento do Prazo de entrega :'
          end
          object lblConformidadePreco: TLabel
            Left = 283
            Top = 66
            Width = 129
            Height = 13
            Caption = 'Conformidade no pre'#231'o :'
          end
          object lblConformidadeQuantidade: TLabel
            Left = 252
            Top = 89
            Width = 160
            Height = 13
            Caption = 'Conformidade na Quantidade :'
          end
          object lblPreenchimentoNotaFiscal: TLabel
            Left = 257
            Top = 135
            Width = 155
            Height = 13
            Caption = 'Preenchimento da nota fiscal :'
          end
          object lblMaterialConforme: TLabel
            Left = 220
            Top = 112
            Width = 192
            Height = 13
            Caption = 'Material Conforme as especifica'#231#245'es :'
          end
          object lblProdutosForaPrazo: TLabel
            Left = 218
            Top = 158
            Width = 194
            Height = 13
            Caption = 'Produto(s) fora do prazo de validade :'
          end
          object lblintegridadeEmbalagens: TLabel
            Left = 260
            Top = 181
            Width = 152
            Height = 13
            Caption = 'Integridade das embalagens :'
          end
          object Label121: TLabel
            Left = 427
            Top = 20
            Width = 25
            Height = 13
            Caption = 'Peso'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object txtcriterio_01: TDBEdit
            Left = 418
            Top = 39
            Width = 42
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'avf_peso_01'
            DataSource = dsoCTR
            TabOrder = 0
          end
          object txtcriterio_02: TDBEdit
            Left = 418
            Top = 63
            Width = 42
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'avf_peso_02'
            DataSource = dsoCTR
            TabOrder = 1
          end
          object tctcriterio_03: TDBEdit
            Left = 418
            Top = 86
            Width = 42
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'avf_peso_03'
            DataSource = dsoCTR
            TabOrder = 2
          end
          object txtcriterio_04: TDBEdit
            Left = 418
            Top = 109
            Width = 42
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'avf_peso_04'
            DataSource = dsoCTR
            TabOrder = 3
          end
          object txtcriterio_05: TDBEdit
            Left = 418
            Top = 132
            Width = 42
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'avf_peso_05'
            DataSource = dsoCTR
            TabOrder = 4
          end
          object txtcriterio_06: TDBEdit
            Left = 418
            Top = 155
            Width = 42
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'avf_peso_06'
            DataSource = dsoCTR
            TabOrder = 5
          end
          object txtcriterio_07: TDBEdit
            Left = 418
            Top = 177
            Width = 42
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvNone
            DataField = 'avf_peso_07'
            DataSource = dsoCTR
            TabOrder = 6
          end
        end
        object tsRestrPed: TTabSheet
          Caption = 'Regras de Valida'#231#245'es de Pedido de Venda'
          ImageIndex = 15
          OnShow = tsRestrPedShow
          object Label123: TLabel
            Left = 67
            Top = 19
            Width = 558
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'Informe qual a'#231#227'o a tomar para cada regra'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object grdRst: TwwDBGrid
            Left = 67
            Top = 43
            Width = 557
            Height = 195
            ControlType.Strings = (
              'tipo_restricao;CustomEdit;cbbTipoRst;T')
            Selected.Strings = (
              'descricao'#9'44'#9'Valida'#231#227'o'#9'F'
              'tipo_restricao'#9'42'#9'A'#231#227'o'#9'F')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = 13750737
            FixedCols = 1
            ShowHorzScrollBar = True
            DataSource = dsoRstPed
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
            OnMouseUp = grdRstMouseUp
          end
          object cbbTipoRst: TwwDBComboBox
            Left = 361
            Top = 91
            Width = 240
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            ButtonStyle = cbsCustom
            DataField = 'tipo_restricao'
            DataSource = dsoRstPed
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Nenhuma'#9'0'
              'Bloqueia'#9'1'
              'Enviar para Libera'#231#227'o de Pedido'#9'2')
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
            OnEnter = cbbTipoRstEnter
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Aplica'#231#227'o Mobile'
          ImageIndex = 16
          OnShow = TabSheet2Show
          object Label136: TLabel
            Left = 11
            Top = 11
            Width = 292
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Pedido de Venda'
            Color = 14342874
            ParentColor = False
            Transparent = False
          end
          object Label137: TLabel
            Left = 11
            Top = 36
            Width = 125
            Height = 13
            Caption = 'Tipo Estoque de Venda :'
          end
          object Label138: TLabel
            Left = 12
            Top = 83
            Width = 292
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Dados para Hist'#243'rico de Vendas dos Clientes'
            Color = 14342874
            ParentColor = False
            Transparent = False
          end
          object Label139: TLabel
            Left = 12
            Top = 108
            Width = 216
            Height = 13
            Caption = 'Quantidade de '#218'ltimos Meses de Vendas :'
          end
          object cbbTipoMovEstVenda: TwwDBLookupCombo
            Left = 139
            Top = 33
            Width = 164
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'descricao'#9'30'#9'descricao'#9'F')
            DataField = 'mob_id_tipo_mov_estoque'
            DataSource = dsoCTR
            LookupTable = dmGeral.BUS_CD_C_TME
            LookupField = 'id_tipo_mov_estoque'
            Style = csDropDownList
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbTipoMovEstVendaEnter
          end
          object txtQtdeUltMesesVend: TwwDBEdit
            Left = 232
            Top = 104
            Width = 72
            Height = 21
            DataField = 'mob_periodo_ult_vend'
            DataSource = dsoCTR
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
      end
      object cbbRamo: TwwDBLookupCombo
        Left = 431
        Top = 96
        Width = 154
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
        DataField = 'id_ramo'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_RAM
        LookupField = 'id_ramo'
        TabOrder = 12
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbRamoEnter
      end
      object txtCodRev: TDBEdit
        Left = 298
        Top = 4
        Width = 60
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'rev_lme'
        DataSource = dso
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object txtBanco: TDBEdit
        Left = 83
        Top = 165
        Width = 90
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'banco'
        DataSource = dso
        TabOrder = 22
      end
      object txtAgencia: TDBEdit
        Left = 277
        Top = 165
        Width = 57
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'agencia'
        DataSource = dso
        TabOrder = 23
      end
      object txtAgeDig: TDBEdit
        Left = 337
        Top = 165
        Width = 21
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'agencia_dig'
        DataSource = dso
        TabOrder = 24
      end
      object txtConta: TwwDBEdit
        Left = 431
        Top = 142
        Width = 234
        Height = 21
        DataField = 'conta_corrente'
        DataSource = dso
        TabOrder = 20
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        NumbersOnly = True
      end
      object txtContaDig: TwwDBEdit
        Left = 667
        Top = 143
        Width = 27
        Height = 21
        DataField = 'conta_corrente_dig'
        DataSource = dso
        TabOrder = 21
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        NumbersOnly = True
      end
      object txtLatitude: TDBEdit
        Left = 431
        Top = 165
        Width = 81
        Height = 21
        DataField = 'gps_latitude'
        DataSource = dso
        TabOrder = 25
      end
      object txtLongitude: TDBEdit
        Left = 584
        Top = 165
        Width = 81
        Height = 21
        DataField = 'gps_longitude'
        DataSource = dso
        TabOrder = 26
      end
    end
  end
  inherited pnlTop: TJvPanel
    Width = 1202
    ExplicitWidth = 1202
    inherited pnlCima: TJvPanel
      Width = 1202
      ExplicitWidth = 1202
      inherited lblCodificacaoLMestre: TLabel
        Width = 1197
        ExplicitWidth = 1015
      end
      inherited lblTitulo: TLabel
        Width = 1202
        Caption = 'Par'#226'metros'
        ExplicitLeft = 2
        ExplicitTop = 1
        ExplicitWidth = 1152
      end
      inherited pnlBaixo: TPanel
        Width = 1202
        ExplicitWidth = 1202
      end
    end
  end
  inherited acBotoes: TActionList
    Left = 1131
  end
  inherited dso: TwwDataSource
    DataSet = dmGeral.CAD_CD_C_PAR
    Left = 1056
    Top = 443
  end
  object dsoCTR: TwwDataSource [7]
    DataSet = dmGeral.CAD_CD_C_PAR_CTR
    OnStateChange = dsoStateChange
    Left = 1056
    Top = 347
  end
  object dsoNFE: TwwDataSource [8]
    DataSet = dmGeral.CAD_CD_C_PAR_NFE
    OnStateChange = dsoStateChange
    Left = 1056
    Top = 395
  end
  inherited imgBotoesAtivo: TImageList
    Left = 1043
    Bitmap = {
      494C01010800A8008C0518001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000000000000000000000000000000000000000000020202390000
      000E000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000012111111962B2B2BEC2020
      20CD1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B
      1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B1BBC1B1B
      1BBC1F1F1FC72F2F2FF6191919B6020202340000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000272727E31919
      19B3080808670000001700000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101092323232FE272727E10000
      0024000000130000001300000013000000130000001300000013000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      00130000001E222222D0323232FE191919B60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000000323232FF3232
      32FF323232FF2C2C2CEE0E0E0E890000000E0000000000000000000000000000
      0000000000000000000000000000000000002E2E2EF4323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF303030F80000000000000000000000000000
      0000000000000000000B1313139E323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF1C1C1CBF000000120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000010000
      0001000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF303030F7151515A501010128000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000000000000000
      0000000000000C0C0C7F323232FF191919B4161616A9161616A9161616A91616
      16A9161616A9161616A9161616A9161616A9191919B22B2B2BEB1C1C1CBF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000080303034310101092222222D3292929E82D2D
      2DF02A2A2AEA222222D311111198030303460000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000000000000000
      000000000000161616A9323232FF0000000B0000000000000000000000000000
      00000000000000000000000000000000000000000009191919B2323232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000191212129B292929E5323232FD323232FF323232FF3232
      32FF323232FF323232FF323232FF2B2B2BED0404044E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000000000000000
      000000000000161616A9323232FF00000000161616A9323232FF323232FF3232
      32FF323232FF1C1C1CC0000000160000000000000000161616A9323232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001D1C1C1CBF323232FF323232FF323232FF323232FE2E2E2EF52929
      29E62E2E2EF3323232FE323232FF1F1F1FC80000000700000012000000180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000000000040303
      0340050505561E1E1EC6323232FF000000000A0A0A70161616A9161616A91616
      16A9161616A90C0C0C800000000F0000000000000000161616A9323232FF0505
      0556030303480000000600000000000000000000000000000000000000000000
      00011212129A323232FE323232FF2E2E2EF3161616AA0404044D000000170000
      000A0000001404040448111111950000001E000000020E0E0E872C2C2CEF0E0E
      0E89010101320000000300000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000050505582A2A
      2AE9323232FF323232FF323232FF000000000A0A0A71161616AA161616AA1616
      16AA161616AA161616AA161616AA161616AA0000001D161616A9323232FF3232
      32FF2D2D2DF10D0D0D8500000000000000000000000000000000000000000303
      03492E2E2EF3323232FF323232FF0B0B0B780000001200000000000000000000
      000000000000000000000000000700000000000000131A1A1AB8323232FF3131
      31FB242424D81010109002020234000000030000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF00000000161616A8323232FE323232FE3232
      32FE323232FE323232FE323232FE323232FE0101012B161616A9323232FF3232
      32FF323232FF323232FF00000000000000000000000000000000000000062525
      25DC323232FF323232FF1010108F000000000000000000000000000000000000
      00000000000000000000000000000000000001010131252525DB323232FF3232
      32FF323232FF323232FF2E2E2EF4101010940000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF1F1F1FCB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000171717AF323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000161616A9323232FF3232
      32FF323232FF323232FF000000000000000000000000000000000202023D3232
      32FE323232FF272727E20000000C000000000000000000000000000000000000
      000000000000000000000000000000000000060606562E2E2EF5323232FF3232
      32FF323232FF2E2E2EF31C1C1CBE0A0A0A750000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF202020CC0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000181818B0323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF161616AA161616AA161616AA161616AA1616
      16AA161616AA161616AA161616AA161616AA161616AA272727E2323232FF3232
      32FF323232FF323232FF000000000000000000000000000000000A0A0A713232
      32FF323232FF151515A400000000000000000000000000000000000000000000
      0000000000000000000000000000000000001010108E323232FF323232FF3232
      32FF323232FF1C1C1CBD00000019000000020000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001171717AF0000
      000F323232FE323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF2F2F2FF60101
      0133000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000222D2D2DF1323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FE3232
      32FF323232FF323232FF000000000000000000000000000000000E0E0E863232
      32FF323232FF0D0D0D8000000000000000050000000600000000000000000000
      0000000000000000000000000000000000001E1E1EC6303030F71B1B1BBB3131
      31FC323232FF232323D600000003000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF000000011F1F1FCA0707
      0760323232FE323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF161616AA0101012B1616
      16AA323232FF323232FF000000000000000000000000000000000D0D0D833232
      32FF323232FF141414A00A0A0A761A1A1AB70303034600000000000000000000
      0000000000000000000000000000000000020808086901010132000000233131
      31FC323232FF272727E200000008000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF0000000000000000161616A93232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF161616AA0101012B1616
      16AA323232FF323232FF00000000000000000000000000000000080808683232
      32FF323232FF2E2E2EF5323232FE252525DB0101013100000000000000000000
      00000000000000000000000000000000000000000000000000000202023D3232
      32FE323232FF232323D500000003000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF323232FD202020CC171717AF171717AF171717AF171717AF171717AF1717
      17AF171717AF171717AF171717AF171717AF171717AF1C1C1CBD323232FF3232
      32FF323232FF323232FF323232FF323232FF00000000000000000C0C0C7F3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF1C1C1CBE0000000000000000000000010202023B1A1A1AB63232
      32FF323232FF323232FF323232FF1C1C1CC00000001600000000000000000000
      0000000000000000000000000000000000000000000000000000101010913232
      32FF323232FF151515A400000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1D1D1DC20000001800000000000000000000000000000000000000000000
      00000000000000000011050505510707076003030345000000050D0D0D803232
      32FF323232FF323232FF323232FF323232FF0000000000000000000000070C0C
      0C7E161616A9272727E2323232FF161616A9161616A9161616A9161616A91616
      16A9161616A9161616A9161616A9161616A9161616A9272727E2323232FF1616
      16A90F0F0F8D0000000B00000000000000000B0B0B782B2B2BEE323232FF3232
      32FF323232FF323232FF323232FF0F0F0F8D0000000300000000000000000000
      00000000000000000000000000000000000000000000010101262D2D2DF23232
      32FF303030FA0303034200000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1A1A1AB80000000D00000000000000000000000000000000000000000000
      0000000000000101012D242424D7323232FF1A1A1AB80000000D070707603232
      32FF323232FF323232FF323232FF323232FF0000000000000000000000000000
      000000000000161616A9323232FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000161616A9323232FF0000
      00000000000000000000000000000000000000000019050505561B1B1BBB3232
      32FF323232FF323232FF323232FF050505530000000000000000000000000000
      00000000000000000000000000000000000000000016151515A4323232FF3232
      32FF1D1D1DC10000000600000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1A1A1AB80000000D00000000000000000000000000000000000000000000
      0000000000000101012D242424D7323232FF1A1A1AB80000000D070707603232
      32FF323232FF323232FF323232FF323232FF0000000000000000000000000000
      000000000000161616A9323232FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000161616A9323232FF0000
      0000000000000000000000000000000000000000000000000000000000000202
      023C212121CF323232FF303030FA00000017000000000101012F000000090000
      0000000000000000000000000000000000121A1A1AB8323232FF323232FF2D2D
      2DF00404044D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1A1A1AB80000000D00000000000000000000000000000000000000000000
      0000000000000101012D242424D7323232FF1A1A1AB80000000D070707603232
      32FF323232FF323232FF323232FF2D2D2DF10000000000000000000000000000
      000000000000161616A9323232FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000161616A9323232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000110909096B0E0E0E88000000020202023D2E2E2EF5202020CD0E0E
      0E89080808670A0A0A71141414A02A2A2AEA323232FF323232FF313131FB1010
      10910000000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FF323232FF00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1A1A1AB80000000D00000000000000000000000000000000000000000000
      0000000000000101012D242424D7323232FF1A1A1AB80000000D070707603232
      32FF323232FF323232FF323232FE151515A60000000000000000000000000000
      000000000000161616A9323232FF000000150000000000000000000000000000
      000000000000000000000000000000000000000000121B1B1BBB323232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000060000001C1A1A1AB7323232FF323232FF3232
      32FF313131FB323232FD323232FF323232FF323232FF2C2C2CEC0A0A0A720000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232FE323232FE00000001323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FE05050556000000000000
      000000000000000000000000000000000000323232FF323232FF323232FF3232
      32FF1A1A1AB80000000D00000000000000000000000000000000000000000000
      0000000000000101012D242424D7323232FF1A1A1AB80000000D070707603232
      32FF323232FF323232FF212121D0010101260000000000000000000000000000
      0000000000000808086A323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF1313139E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000E0B0B0B7A2E2E2EF5323232FF3232
      32FF323232FF323232FF323232FF323232FE1E1E1EC602020238000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000323232FF3232
      32FF303030F9242424D8191919B50C0C0C7E0202023B00000008000000000000
      000000000000000000000000000000000000272727E3323232FF323232FF3232
      32FF1A1A1AB90000000E00000000000000000000000000000000000000000000
      00000000000001010126191919B5242424D71212129B0000000B070707643232
      32FF323232FF242424D90303033F000000000000000000000000000000000000
      0000000000000000000708080869161616A9161616A9161616A9161616A91616
      16A9161616A9161616A9161616A9161616A9161616A90C0C0C7F0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001A0606065D0E0E
      0E881212129C111111940B0B0B7A030303450000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000222222D41010
      1090050505510101012E0000000E000000000000000000000000000000000000
      00000000000000000000000000000000000007070763313131FD323232FF3232
      32FF242424D80404044A01010125010101250101012501010125010101250101
      0125010101250101012D0404044C050505530303034601010131191919B43232
      32FE1C1C1CBF0101012F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007070763272727E33232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF313131FB1414
      14A10000001C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000030000001E0202
      023B030303430303034303030343030303430303034303030343030303430303
      03430202023E00000002000000000000001B0909096D161616A8222222D11818
      18B10B0B0B7B0101012A000000010000000000000000000000030000001E0202
      023B0303034303030343030303430303034303030343030303430101012F0101
      0133020202380000001700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020238161616AB303030FA323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF313131FC1C1C1CC10606
      065B0000000800000000000000000000000000000000000000030000001E0202
      023B030303430303034303030343030303430303034303030343030303430303
      03430202023E00000002000000000000001B0909096D161616A8222222D11818
      18B10B0B0B7B0101012A0000000100000000000000000606065C1D1D1DC42929
      29E52B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B
      2BED0F0F0F8C000000020202023B1E1E1EC5303030FA323232FF323232FF3232
      32FF323232FE222222D40606065800000001000000000606065C1D1D1DC42929
      29E52B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED111111971313
      139E272727E21D1D1DC011111193050505520000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818B0313131FC1C1C1CC0151515A5151515A5151515A5151515A51515
      15A5151515A5151515A5151515A5151515A5151515A5191919B7313131FB2424
      24D80101012E000000000000000000000000000000000606065C1D1D1DC42929
      29E52B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B2BED2B2B
      2BED0F0F0F8C000000020202023B1E1E1EC5303030FA323232FF323232FF3232
      32FF323232FE222222D4060606580000000101010127303030F9323232FF2525
      25DB171717AF171717AF171717AF171717AF171717AF171717AF171717AF1515
      15A600000006000000151C1C1CBE323232FF323232FF262626DE171717AF2222
      22D2323232FF323232FF222222D40101012A01010127303030F9323232FF2525
      25DB171717AF171717AF171717AF171717AF171717AF171717AF0909096F0909
      096F242424D7000000220C0C0C7C323232FE0E0E0E8700000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A313131FC191919B500000001000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001010108E3232
      32FE0606065B00000000000000000000000001010127303030F9323232FF2525
      25DB171717AF171717AF171717AF171717AF171717AF171717AF171717AF1515
      15A600000006000000151C1C1CBE323232FF1010109211111194323232FF2525
      25DD0808086C202020CE222222D40101012A1A1A1ABA303030F80A0A0A710000
      0001000000000000000000000000000000000000000000000000000000000000
      00000000000005050556303030F7323232FF323232FF11111195000000000909
      096F323232FF323232FF323232FE0B0B0B7B1A1A1ABA303030F80A0A0A710000
      0001000000000000000000000000000000000000000000000000000000000101
      012D2E2E2EF50000001503030340323232FE2D2D2DF20C0C0C7C000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0010323232FF11111195000000000101012A070707600000001F000000070303
      0347070707600000000E00000014070707600303034500000005070707603232
      32FF070707600000000000000000000000001A1A1ABA303030F80A0A0A710000
      0001000000000000000000000000000000000000000000000000000000000000
      00000000000005050556303030F7323232FF010101270000000F0E0E0E850404
      044D000000070909096A323232FE0B0B0B7B2E2E2EF4252525DA010101300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0E0E85323232FF2F2F2FF60909096F03030341000000000101
      01300909096F222222D2323232FF181818B02E2E2EF4252525DA010101300000
      0000000000000000000000000000000000000000000000000000000000000000
      0004232323D6181818B31E1E1EC6323232FF323232FF2E2E2EF30F0F0F8D0000
      0007000000000000000000000000000000000000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF070707600000000000000000000000002E2E2EF4252525DA010101300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0E0E85323232FF323232FF151515A50000001D000000050000
      00050404044F252525DD323232FF181818B0323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000151515A6323232FF2D2D2DF00000000000000000000000000000
      000000000000171717AF323232FF222222D1323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030347313131FB323232FF323232FF323232FF323232FF323232FF1010
      108F000000060000000000000000000000000000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000151515A6323232FF323232FF262626DE02020236000000000000
      00050E0E0E86323232FF323232FF222222D1323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C7C323232FF303030F91111119505050557000000000303
      034111111195262626DE323232FF161616A8323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000070707612A2A2AE8323232FF323232FF323232FF323232FF2E2E
      2EF40D0D0D820000000700000000000000000000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C7C323232FF323232FF0404044E00000009010101330000
      001C0000000F11111193323232FF161616A8323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404044B2D2D2DF0323232FF323232FF11111195000000000909
      096F323232FF323232FF303030FA0909096C323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000080707075F303030FA323232FF323232FF323232FF3232
      32FF292929E80000002000000005000000000000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404044B2D2D2DF0323232FF0404044A0404044D252525DC1515
      15A30101012810101090303030FA0909096C323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A161616AB323232FF323232FF303030F92D2D2DF02F2F
      2FF6323232FF323232FF1E1E1EC50000001B323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030347303030FA323232FF323232FF2F2F
      2FF607070765111111960F0F0F8C000000030000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A161616AB323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF1E1E1EC50000001B323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000024161616AA2D2D2DF0323232FF323232FF3232
      32FF2F2F2FF71C1C1CBE0202023C00000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606065D292929E62F2F2FF60D0D
      0D8610101094222222D108080868030303410000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000024161616AA2D2D2DF0323232FF323232FF3232
      32FF2F2F2FF71C1C1CBE0202023C00000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0404044B0C0C0C7D151515A60E0E
      0E8505050556000000150000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000080606065A070707641111
      1194191919B505050553212121CF1D1D1DC10000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0404044B0C0C0C7D151515A60E0E
      0E8505050556000000150000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000000101012F2020
      20CA050505522E2E2EF4323232FE0D0D0D830000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D161616AC0404044B000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D161616AC0404044B000000000000
      0021171717AF2F2F2FF611111194000000130000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D161616AC0404044B000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      0005020202340404044D00000012000000000000000000000000000000000000
      0010323232FF11111195000000000909096F323232FF05050551000000131B1B
      1BBC323232FF0101012502020235323232FE1A1A1AB80000000D070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010323232FF11111195000000000404044C171717AF020202370000000D0D0D
      0D81171717AF0000001901010125171717AF0C0C0C7F00000009070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010127323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010127323232FF11111195000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010323232FF1111119500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707603232
      32FF07070760000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010127323232FF11111195000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000020202350E0E
      0E8A10101090101010911212129C1E1E1EC6323232FF0D0D0D84000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000020202350E0E
      0E8A10101090101010911212129C1E1E1EC6323232FF0D0D0D84000000000000
      00000000000000000000000000000000000000000000000000190B0B0B7A1111
      1197323232FF222222D110101090101010901010109012121298151515A41515
      15A8151515A8151515A61212129C1010109010101090101010901A1A1ABA3232
      32FF1A1A1ABA101010900101013300000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000020202350E0E
      0E8A10101090101010911212129C1E1E1EC6323232FF0D0D0D84000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      00000000000000000000000000000000000000000000000000001313139F3232
      32FF323232FF323232FF323232FF323232FF2C2C2CEE03030344000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      00000000000000000000000000000000000000000000000000001313139F3232
      32FF323232FF323232FF323232FF323232FF2C2C2CEE03030344000000000000
      000000000000000000000000000000000000000000000101012D242424D73232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF0606065B00000000323232FF222222D2010101280000
      00000000000000000000000000000000000000000000000000001313139F3232
      32FF323232FF323232FF323232FF323232FF2C2C2CEE03030344000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF323232FF323232FD0F0F0F8B0000000D000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF323232FF323232FD0F0F0F8B0000000D000000000000
      00000000000000000000000000000000000000000000000000130B0B0B783232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF121212990101012600000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF323232FF323232FD0F0F0F8B0000000D000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF313131FE0F0F0F8D0000001000000000000000000000
      000000000000000000000000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF313131FE0F0F0F8D0000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000192A2A
      2AE9323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF2D2D2DF1010101270000000000000000323232FF222222D2010101280000
      0000000000000000000000000000000000000000000000000000151515A53232
      32FF323232FF323232FF313131FE0F0F0F8D0000001000000000000000000000
      0000000000000000000000000000000000002A2A2AEA272727E1020202380000
      0000000000000000000000000000000000000000000000000000161616A93232
      32FF323232FF323232FE0F0F0F8D000000000000000000000000000000000000
      0000000000000000000000000000000000002A2A2AEA272727E1020202380000
      0000000000000000000000000000000000000000000000000000161616A93232
      32FF323232FF323232FE0F0F0F8D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00020000001000000010000000100D0D0D81323232FF0B0B0B77000000100000
      0010000000100000001005050554323232FE1C1C1CC100000021000000100000
      0010000000070000000000000000000000002A2A2AEA272727E1020202380000
      0000000000000000000000000000000000000000000000000000161616A93232
      32FF323232FF323232FE0F0F0F8D000000000000000000000000000000000000
      00000000000000000000000000000000000011111193323232FE121212990202
      023801010128010101280101012801010128010101280101012E222222D23232
      32FF323232FD1111119600000014000000000000000000000000000000000000
      00000000000000000000000000000000000011111193323232FE121212990202
      023801010128010101280101012801010128010101280101012E222222D23232
      32FF323232FD1111119600000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303472C2C2CEE252525DC030303430101
      012C0101012B02020239171717AD323232FF0F0F0F8A00000002000000000000
      00000000000000000000000000000000000011111193323232FE121212990202
      023801010128010101280101012801010128010101280101012E222222D23232
      32FF323232FD1111119600000014000000000000000000000000000000000000
      000000000000000000000000000000000000000000181F1F1FCA323232FE2727
      27E1222222D2222222D2222222D2222222D2222222D2242424D7323232FF3030
      30FA0D0D0D810000001200000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000181F1F1FCA323232FE2727
      27E1222222D2222222D2222222D2222222D2222222D2242424D7323232FF3030
      30FA0D0D0D810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000171C1C1CBD323232FF2B2B2BEB2323
      23D6232323D5272727E2313131FC303030F90101012F00000000000000000000
      000000000000000000000000000000000000000000181F1F1FCA323232FE2727
      27E1222222D2222222D2222222D2222222D2222222D2242424D7323232FF3030
      30FA0D0D0D810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000018111111932A2A
      2AEA323232FF323232FF323232FF323232FF323232FF323232FF232323D40404
      044B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000018111111932A2A
      2AEA323232FF323232FF323232FF323232FF323232FF323232FF232323D40404
      044B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D0A0A0A75292929E83232
      32FF323232FF2E2E2EF411111198000000130000000000000000000000000000
      0000000000000000000000000000000000000000000000000018111111932A2A
      2AEA323232FF323232FF323232FF323232FF323232FF323232FF232323D40404
      044B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
  end
  inherited imgBotoesInativo: TImageList
    Height = 22
    Width = 22
    Left = 1040
    Bitmap = {
      494C0101060058009C0516001600FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000580000002C0000000100200000000000803C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000080808401E1E1E7B3B3B3BAA4E4E4EC44E4E
      4EC43B3B3BAA1E1E1E7B08080840000000000000000000000000000000000000
      00000000000000000000000000143C3C3CAC767676F1494949BD454545B84747
      47BB474747BB474747BB474747BB474747BB474747BB474747BB474747BB4747
      47BB474747BB474747BB474747BB454545B8494949BD767676F13C3C3CAC0000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D534F4F4FC5858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF4F4F4FC50D0D0D5300000000000000000000
      00000000000000000000434343B6858585FF434343B70000000A000000040000
      0007000000070000000700000007000000070000000700000007000000070000
      0007000000070000000700000007000000040000000A434343B7858585FF4343
      43B6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00062D2D2D96858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF2D2D2D96000000060000
      000000000000000000007B7B7BF6858585FF2222228200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022222282858585FF7B7B
      7BF6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000064B4B
      4BC0858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF4B4B4BC00000
      000600000000000000007B7B7BF5858585FF2727278B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278B858585FF7B7B
      7BF5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E2E2E978585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF2E2E
      2E970000000000000000777777F2858585FF2727278C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278C858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B4C858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF0B0B0B4C00000000777777F2858585FF2727278C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278C858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003565656CE858585FF8585
      85FF858585FF858585FF4C4C4CC20303032C23232385858585FF858585FF8585
      85FF858585FF232323850303032C4C4C4CC2858585FF858585FF858585FF8585
      85FF565656CE00000003777777F2858585FF2727278C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278C858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000006060639858585FF858585FF8585
      85FF858585FF858585FF0101011E000000000000000025252589858585FF8585
      85FF2525258900000000000000000101011E858585FF858585FF858585FF8585
      85FF858585FF06060639777777F2858585FF2727278C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278C858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002020207F858585FF858585FF8585
      85FF858585FF858585FF252525880000000000000000000000002E2E2E982E2E
      2E9800000000000000000000000025252588858585FF858585FF858585FF8585
      85FF858585FF2020207F777777F2858585FF2727278C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002727278C858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3B3BAA858585FF858585FF8585
      85FF858585FF858585FF858585FF2727278C0000000000000000000000000000
      000000000000000000002727278C858585FF858585FF858585FF858585FF8585
      85FF858585FF3B3B3BAA777777F2858585FF2222228200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022222282858585FF7777
      77F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E4E4EC4858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF2D2D2D9600000000000000000000
      0000000000002D2D2D96858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF4E4E4EC4767676F1858585FF474747BB0000000F0000000F0000
      000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
      000F0000000F0000000F0000000F0000000F0000000F474747BB858585FF7676
      76F1000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E4E4EC4858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF2D2D2D9600000000000000000000
      0000000000002D2D2D96858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF4E4E4EC4757575F0858585FF858585FF757575F0757575F07777
      77F2777777F2777777F2777777F2777777F2777777F2777777F2777777F27777
      77F2777777F2777777F2767676F1757575F0757575F0858585FF858585FF7575
      75F0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3B3BAA858585FF858585FF8585
      85FF858585FF858585FF858585FF2727278C0000000000000000000000000000
      000000000000000000002727278C858585FF858585FF858585FF858585FF8585
      85FF858585FF3B3B3BAA757575F0858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF7575
      75F0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002020207F858585FF858585FF8585
      85FF858585FF858585FF252525880000000000000000000000002E2E2E982E2E
      2E9800000000000000000000000025252588858585FF858585FF858585FF8585
      85FF858585FF2020207F757575F0858585FF858585FF858585FF575757D02727
      278B2727278B2727278C2727278C2727278C2727278C2727278C212121811818
      186E1818186D222222824E4E4EC4858585FF858585FF858585FF858585FF7575
      75F0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000006060639858585FF858585FF8585
      85FF858585FF858585FF0101011E000000000000000025252589858585FF8585
      85FF2525258900000000000000000101011E858585FF858585FF858585FF8585
      85FF858585FF06060639757575F0858585FF858585FF858585FF0707073D0000
      00000000000000000000000000000000000000000000000000000101011E2222
      2283232323840000000600000013797979F4858585FF858585FF858585FF7575
      75F0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003565656CE858585FF8585
      85FF858585FF858585FF4C4C4CC20303032C23232385858585FF858585FF8585
      85FF858585FF232323850303032C4C4C4CC2858585FF858585FF858585FF8585
      85FF565656CE00000003757575F0858585FF858585FF858585FF0707073C0000
      0000000000000000000000000000000000000000000000000000141414648585
      85FF858585FF060606390000000A6F6F6FE9858585FF858585FF858585FF7676
      76F1000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B4C858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF0B0B0B4C00000000757575F0858585FF858585FF858585FF080808400000
      00000000000000000000000000000000000000000000000000000F0F0F588585
      85FF858585FF0505053200000011717171EC858585FF858585FF858585FF7D7D
      7DF7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E2E2E978585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF2E2E
      2E970000000000000000757575F0858585FF858585FF858585FF080808400000
      00000000000000000000000000000000000000000000000000000F0F0F588585
      85FF858585FF0505053200000011717171EC858585FF858585FF858585FF5F5F
      5FD9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000064B4B
      4BC0858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF4B4B4BC00000
      00060000000000000000787878F3858585FF858585FF858585FF0808083F0000
      00000000000000000000000000000000000000000000000000001010105B8585
      85FF858585FF0505053400000010717171EC858585FF858585FF858585FF0C0C
      0C4D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00062D2D2D96858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF2D2D2D96000000060000
      00000000000000000000797979F4858585FF858585FF858585FF050505330000
      00000000000000000000000000000000000000000000000000000D0D0D528585
      85FF858585FF0303032C00000003707070EB858585FF858585FF1717176B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D534F4F4FC5858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF4F4F4FC50D0D0D5300000000000000000000
      00000000000000000000424242B4858585FF858585FF858585FF1717176C0000
      0002000000070000000700000007000000070000000700000007020202251313
      1362141414640000000B0A0A0A48858585FF858585FF15151568000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000080808401E1E1E7B3B3B3BAA4E4E4EC44E4E
      4EC43B3B3BAA1E1E1E7B08080840000000000000000000000000000000000000
      00000000000000000000000000143C3C3CAC757575F0757575F0686868E34343
      43B6464646BA474747BB474747BB474747BB474747BB474747BB414141B33737
      37A4363636A33F3F3FB0656565DF5A5A5AD20D0D0D5200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000150606
      0638060606390606063806060638060606380606063806060638080808420505
      053200000000000000000404042D232323844C4C4CC2474747BB1F1F1F7D0101
      011C000000000000000000000000020202202020207F454545B8494949BD4646
      46BA464646BA464646BA4F4F4FC6141414631B1B1B753F3F3FB1151515660202
      0226000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000151515676F6F6FE9858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF6F6F6FE91515156700000000000000000000000000000000000000000000
      0000000000150606063806060639060606380606063806060638060606380606
      0638080808420505053200000000000000000404042E252525894C4C4CC14545
      45B9212121810101011E0000000000000000000000002020207F797979F48585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF1C1C
      1C76000000001212125F7D7D7DF7858585FF858585FF858585FF858585FF6C6C
      6CE70C0C0C4D00000000000000002020207F797979F4858585FF858585FF8585
      85FF858585FF858585FF838383FF2828288B3232329D7F7F7FF93F3F3FB12525
      2588020202200000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C4E858585FF767676F13F3F3FB13D3D
      3DAE404040B2414141B33F3F3FB13F3F3FB1414141B3404040B23D3D3DAE3F3F
      3FB1767676F1858585FF0C0C0C4E000000000000000000000000000000002020
      207F797979F4858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF1C1C1C760000000012121260858585FF858585FF858585FF8585
      85FF858585FF787878F30C0C0C4E0000000016161669858585FF737373EE3232
      329D2A2A2A902C2C2C942C2C2C942C2C2C942C2C2C942F2F2F99232323850000
      000205050533858585FF858585FF7F7F7FF92C2C2C94363636A3858585FF8585
      85FF737373EE0101011F16161669858585FF737373EE3232329D2A2A2A902C2C
      2C942C2C2C942C2C2C943232329F090909422020207E424242B7080808404D4D
      4DC36D6D6DE80505053200000000000000000000000000000000000000000000
      0000000000000000000000000000363636A3858585FF08080841000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008080841858585FF363636A3000000000000000000000000161616698585
      85FF737373EE3232329D2A2A2A902C2C2C942C2C2C942C2C2C942C2C2C942F2F
      2F99232323850000000205050533858585FF525252C90F0F0F56646464DE8585
      85FF1111115E3D3D3DAE7D7D7DF7020202216A6A6AE5787878F3000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      00003D3D3DAE858585FF858585FF767676F10000000002020221858585FF8585
      85FF858585FF222222826A6A6AE5787878F30000001600000000000000000000
      0000000000000000000000000000000000000A0A0A49434343B9000000001A1A
      1A73858585FF707070EB06060637000000000000000000000000000000000000
      00000000000000000000000000003C3C3CAC858585FF00000013000000143737
      37A50707073D000000002121218021212180000000000707073D373737A50000
      001400000013858585FF3C3C3CAC0000000000000000000000006A6A6AE57878
      78F3000000160000000000000000000000000000000000000000000000000000
      000000000000000000003D3D3DAE858585FF2828288D000000000303032A0A0A
      0A46000000001010105A858585FF24242487858585FF434343B6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A5E5E5ED7858585FF232323840101011F000000040000000A030303283535
      35A2858585FF474747BC858585FF434343B60000000000000000000000000000
      00000000000000000000000000000000000000000004505050C76A6A6AE47474
      74EF858585FF858585FF747474F0060606390000000000000000000000000000
      00000000000000000000000000003B3B3BAB858585FF00000011050505358585
      85FF1B1B1B7400000000696969E4696969E4000000001B1B1B74858585FF0505
      053500000011858585FF3B3B3BAB000000000000000000000000858585FF4343
      43B6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A5D5D5DD6858585FF858585FF1E1E1E7A000000000000
      00000B0B0B4A858585FF858585FF464646BA858585FF3E3E3EAF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B636363DD858585FF1A1A1A730000000300000001000000030000000B2D2D
      2D95858585FF4D4D4DC3858585FF3E3E3EAF0000000000000000000000000000
      0000000000000000000000000000000000000000000006060638858585FF8585
      85FF858585FF858585FF858585FF707070EB0606063800000000000000000000
      00000000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF3E3E
      3EAF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000B616161DB858585FF707070EB1010105B000000000000
      00000404042D5F5F5FD9858585FF4C4C4CC2858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000434343B6858585FF7B7B7BF6585858D100000000000000136F6F6FE97D7D
      7DF7858585FF2828288D858585FF414141B30000000000000000000000000000
      00000000000000000000000000000000000000000000000000000808083F7575
      75F0858585FF858585FF858585FF858585FF858585FF0303032B000000000000
      00000000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      00000000000000000000434343B6858585FF21212181000000000F0F0F591E1E
      1E7A000000000A0A0A47858585FF2B2B2B91858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B4B858585FF858585FF858585FF1A1A1A7124242487858585FF8585
      85FF7F7F7FF903030329858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      0639737373EF858585FF858585FF858585FF5B5B5BD514141466090909410000
      00000000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B4B858585FF5F5F5FD921212181797979F48585
      85FF2828288D4C4C4CC17F7F7FF90303032B858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F7C858585FF858585FF858585FF858585FF858585FF7F7F
      7FFA1313136200000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060606386F6F6FEA858585FF424242B50D0D0D535F5F5FD82121217F0000
      000F0000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1F1F7C858585FF858585FF858585FF8585
      85FF858585FF858585FF1313136200000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B4A3A3A3AA9616161DA5B5B5BD43B3B3BAA0707
      073B0000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008080840414141B315151568525252C9191919713F3F3FB24E4E
      4EC50000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B4A3A3A3AA95F5F5FD85A5A
      5AD33B3B3BAA0707073B0000000000000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000090000000A000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000454545B8242424872E2E2E97858585FF2C2C
      2C940000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1818186E00000000686868E2686868E2000000001818186E858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000090000
      000A00000000000000000000000000000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B752727278C0000000000000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B1B1B752828288D00000009000000122727278B888888FF383838A70000
      00000000000000000000000000003B3B3BAB858585FF00000011050505328585
      85FF1919196F00000000686868E2686868E2000000001919196F858585FF0505
      053200000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B752727278C000000000000
      000000000000000000000000000000000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000454545B8858585FF0303032B00000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000454545B8858585FF03030328000000000404042E0F0F0F5B000000000000
      00000000000000000000000000003B3B3BAB858585FF00000011050505348585
      85FF1A1A1A7200000000686868E3686868E3000000001A1A1A72858585FF0505
      053400000011858585FF3B3B3BAB000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000454545B8858585FF0303032B0000
      000000000000000000000000000000000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000373737A5858585FF0202022600000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000373737A5858585FF03030327000000000000000000000000000000000000
      00000000000000000000000000003A3A3AA9858585FF01010119000000133030
      309A0707073B000000001D1D1D781D1D1D78000000000707073B3030309A0000
      001301010119858585FF3A3A3AA9000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000373737A5858585FF020202260000
      000000000000000000000000000000000000858585FF414141B3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000494949BE858585FF0303032800000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000494949BE858585FF03030328000000000000000000000000000000000000
      0000000000000000000000000000383838A7858585FF02020222000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020222858585FF383838A7000000000000000000000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000494949BE858585FF030303280000
      000000000000000000000000000000000000858585FF414141B3000000000000
      000000000000000000000000000000000000000000000E0E0E54515151C84C4C
      4CC14A4A4ABF575757D0838383FD6C6C6CE70000000F00000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      00000000000000000000000000000E0E0E54515151C84C4C4CC14A4A4ABF5757
      57D0838383FD6C6C6CE70000000F000000000000000000000000000000000000
      0000000000001717176B4E4E4EC4747474EF858585FF515151C8474747BB4949
      49BE4F4F4FC55B5B5BD45E5E5ED75E5E5ED75B5B5BD44F4F4FC5494949BE4747
      47BB515151C8858585FF747474EF4E4E4EC41717176B00000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000000E0E
      0E54515151C84C4C4CC14A4A4ABF575757D0838383FD6C6C6CE70000000F0000
      000000000000000000000000000000000000858585FF414141B3000000000000
      00000000000000000000000000000000000000000000404040B2858585FF8585
      85FF858585FF858585FF858585FF1D1D1D790000000000000000000000000000
      00000000000000000000858585FF414141B30000000000000000000000000000
      0000000000000000000000000000404040B2858585FF858585FF858585FF8585
      85FF858585FF1D1D1D7900000000000000000000000000000000000000000000
      0000000000002020207F858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF2020207F00000000858585FF4141
      41B3000000000000000000000000000000000000000000000000000000004040
      40B2858585FF858585FF858585FF858585FF858585FF1D1D1D79000000000000
      000000000000000000000000000000000000858585FF3E3E3EAF000000000000
      00000000000000000000000000000000000000000000393939A8858585FF8585
      85FF858585FF858585FF3030309A000000010000000000000000000000000000
      00000000000000000000858585FF3E3E3EAF0000000000000000000000000000
      0000000000000000000000000000393939A8858585FF858585FF858585FF8585
      85FF3030309A0000000100000000000000000000000000000000000000000000
      000000000000000000001D1D1D79858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF1D1D1D790000000000000000858585FF3E3E
      3EAF000000000000000000000000000000000000000000000000000000003939
      39A8858585FF858585FF858585FF858585FF3030309A00000001000000000000
      000000000000000000000000000000000000858585FF474747BB000000000000
      00000000000000000000000000000000000000000000373737A4858585FF8585
      85FF858585FF3B3B3BAA00000000000000000000000000000000000000000000
      00000000000000000000858585FF474747BB0000000000000000000000000000
      0000000000000000000000000000373737A4858585FF858585FF858585FF3B3B
      3BAA000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101011C3131319C3232329E2B2B2B92474747BB8585
      85FF4F4F4FC5242424862B2B2B922B2B2B92242424864F4F4FC5858585FF4747
      47BB2B2B2B923232329E3131319C0101011C0000000000000000858585FF4747
      47BB000000000000000000000000000000000000000000000000000000003737
      37A4858585FF858585FF858585FF3B3B3BAA0000000000000000000000000000
      0000000000000000000000000000000000005F5F5FD9818181FC050505350000
      000000000000000000000000000000000000000000014B4B4BC0858585FF8585
      85FF343434A10000000000000000000000000000000000000000000000000000
      000000000000000000005F5F5FD9818181FC0505053500000000000000000000
      00000000000000000000000000014B4B4BC0858585FF858585FF343434A10000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202248585
      85FF3F3F3FB0000000000000000000000000000000003F3F3FB0858585FF0202
      02240000000000000000000000000000000000000000000000005F5F5FD98181
      81FC050505350000000000000000000000000000000000000000000000014B4B
      4BC0858585FF858585FF343434A1000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F58858585FF858585FF4646
      46BA3E3E3EAF414141B3414141B33D3D3DAE4C4C4CC2858585FF858585FF3333
      33A0000000000000000000000000000000000000000000000000000000000000
      000000000000000000000F0F0F58858585FF858585FF464646BA3E3E3EAF4141
      41B3414141B33D3D3DAE4C4C4CC2858585FF858585FF333333A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003C3C
      3CAD858585FF666666E13E3E3EAF3E3E3EAF666666E1858585FF3C3C3CAD0000
      00000000000000000000000000000000000000000000000000000F0F0F588585
      85FF858585FF464646BA3E3E3EAF414141B3414141B33D3D3DAE4C4C4CC28585
      85FF858585FF333333A000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001111115D575757D08585
      85FF858585FF858585FF858585FF858585FF858585FF646464DE1818186E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001111115D575757D0858585FF858585FF8585
      85FF858585FF858585FF858585FF646464DE1818186E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01193030309A7B7B7BF6858585FF858585FF7B7B7BF63030309A010101190000
      0000000000000000000000000000000000000000000000000000000000001111
      115D575757D0858585FF858585FF858585FF858585FF858585FF858585FF6464
      64DE1818186E0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000580000002C0000000100010000000000100200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000}
  end
  inherited ImgPequena: TImageList
    Left = 1131
    Bitmap = {
      494C010112000001DC050E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000038000000460000000100200000000000403D
      0000000000000000000000000000000000000005003C004803DA0024019A000A
      0054000200250000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FA
      F700438C47008BB88D00DEEBDF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002002B005904F3003402BA0032
      02B7003D03CA001D018A00000008000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000067A26A00A0C5
      A200106D1500006305000D6B120051955400ACCCAE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D003702BF000700470000
      00000024019A006204FF0025019C000000050000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063050064A0
      67002278260000630500006305000063050008680D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000001D018A0025019C0001
      0022002A01A7006204FF006204FF002601A00000000500000000000000000000
      0000000000000000000000000000000000000000000000000000026407006CA5
      6F00217725000063050000630500006305000E6C130000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005003D005904F30062
      04FF006204FF006204FF006204FF006204FF002801A30000000B000000000000
      0000000000000000000000000000000000000000000000000000026407006CA5
      6F00217725000063050000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002001300710060
      04FD006204FF006204FF006204FF006204FF006204FF002901A40000000A0000
      0000000000000000000000000000000000000000000000000000026407006DA6
      700018721D000063050000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000012
      006F006204FF006204FF006204FF006204FF006204FF006204FF002C02AB0000
      00000000000000000000000000000000000000000000000000000264070063A0
      66006BA46E00478E4B0000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000012006E005E04FA006204FF006204FF006204FF006204FF003102B40004
      00360000001900000000000000000000000000000000000000000264070063A0
      66006BA46E00478E4B0000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000011006C005E04F9006204FF006204FF002D02AC000B0056004A
      03DD000A00540000000000000000000000000000000000000000026407006DA6
      700018721D000063050000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000011006C006204FF002D02AD00090051004803DB0019
      0180001B01850011006C00000000000000000000000000000000026407006CA5
      6F00217725000063050000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000060041000D005D004903DC0018007E0016
      0078006204FF003A03C400000000000000000000000000000000026407006CA5
      6F00217725000063050000630500006305000F6C140000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000010006A001C01880018007F0062
      04FF005604EF00070048000000000000000000000000000000000063050064A0
      6700227826000063050000630500006305000465090000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001001F005704F0004F
      04E60009004F000000000000000000000000000000000000000067A26A00A1C5
      A300116D16000063050000630500126E17005396560000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004000200290001
      002300000000000000000000000000000000000000000000000000000000F8FB
      F8003A863E0069A36C00AECDB000E8F1E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089B78B00136F180086B5
      8800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008AB78C0000630500006305000A69
      0F00000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008BB88D000063050000630500006305008AB7
      8C00000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEADE000063050099C19B000000
      0000000000000000000000000000DDEADE00448D480000630500006305003382
      3700CCE0CD00000000000000000000000000EFF5EF008EBA9000468E4A002C7E
      300053965600ABCCAD00DDEADE000E6C130000630500006305008AB78C000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEADE000063050099C19B000000
      0000000000000000000000000000CCE0CD0033823700EEF5EE00000000003382
      3700227826000000000000000000C5DCC6001C7420002A7D2E0086B5880098C0
      9A006DA6700017711C00207724000E6C130018721D008BB88D00000000000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEADE000063050099C19B000000
      00000000000000000000000000000000000000000000000000000000000088B6
      8A000063050000000000E4EEE50015701A006DA67000D2E3D30078AC7B0074AA
      7700CFE2D000E2EDE3003C8840001D752100DDEADE0000000000000000000000
      0000000000000063050000630500006305000063050000630500006305000063
      0500006305000063050000630500006305000063050000000000000000000063
      0500006305000063050000630500006305000063050000630500006305000063
      050000630500006305000063050000000000DDEADE000063050099C19B000000
      0000000000000000000000000000000000000000000000000000DDEADE003382
      370055975800000000006CA56F003C884000D1E3D2001A731E004B914F00A9CA
      AB00E2EDE30000000000E7F0E70016701B00ACCCAE0000000000000000000000
      0000000000000063050000630500006305000063050000630500006305000063
      0500006305000063050000630500006305000063050000000000000000000063
      0500006305000063050000630500006305000063050000630500006305000063
      050000630500006305000063050000000000DDEADE0000630500006305000063
      05000063050066A1690000000000000000000000000099C19B00006305003382
      370000000000000000002B7D2F00AACBAC004C915000619E6400000000000000
      000000000000000000000000000068A36B005295550000000000000000000000
      0000000000000063050000630500006305000063050000630500006305000063
      0500006305000063050000630500006305000063050000000000000000000063
      0500006305000063050000630500006305000063050000630500006305000063
      050000630500006305000063050000000000DDEADE000063050099C19B000000
      0000000000000000000000000000000000000000000000000000DDEADE00116D
      160088B68A00000000000E6C1300C1D9C200488F4C00E2EDE300000000000000
      000000000000000000000000000089B78B002A7D2E0000000000000000000000
      0000000000000063050000630500006305000063050000630500006305000063
      0500006305000063050000630500006305000063050000000000000000000063
      0500006305000063050000630500006305000063050000630500006305000063
      050000630500006305000063050000000000DDEADE000063050099C19B000000
      000000000000000000000000000000000000000000000000000000000000448D
      4800448D48000000000022782600ACCCAE00B2D0B40000000000000000000000
      000000000000000000000000000078AC7B00458D490000000000000000000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEADE000063050099C19B000000
      0000000000000000000000000000EEF5EE0033823700EEF5EE00DDEADE00116D
      160077AC7A000000000054965700509453000000000000000000000000000000
      00000000000000000000FAFCFA00217725008DB98F0000000000000000000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEADE0000630500006305000063
      050000630500006305002278260000000000448D48000063050000630500448D
      4800EEF5EE0000000000CDE0CE0005660A0098C09A0000000000000000000000
      000000000000FDFEFD0066A169001C742000F0F6F00000000000000000000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009BC29D0005660A0051955400AECDB000C3DA
      C4009FC4A1003583390019721E00C7DDC8000000000000000000000000000000
      0000000000000000000000000000000000000000000000630500006305000063
      0500006305000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CADFCB0056985900237827000F6C
      14002C7E30006CA56F00E1EDE200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000704003C603805DA301C039A0E0800540201002500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000008472904BC1B0F0174020100210000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000302002B774507F3452804BA432704B7523004CA2616028A000000080000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E1B0298120A015F734306EF844C07FF764507F23D24
      03AE0D0800530000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000D492B04BF0A05004700000000301C039A844C07FF311C039C0000
      0005000000000000000000000000000000000000000000000000000000000000
      00000000000000000000844C07FF301C039B623906DD844C07FF844C07FF844C
      07FF7C4807F70000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002616028A311C039C02010022382003A7844C07FF844C07FF331E
      03A0000000050000000000000000000000000000000000000000000000000000
      00000000000000000000824B07FD2B190293633A06DE844C07FF844C07FF844C
      07FF754407F10000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000704003D774507F3844C07FF844C07FF844C07FF844C07FF844C
      07FF351F03A30000000B00000000000000000000000000000000000000000000
      00000000000000000000824B07FD2B190293633A06DE844C07FF844C07FF844C
      07FF744307F000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF0000000000000000844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000
      00000000000000000002190F0171824B07FD844C07FF844C07FF844C07FF844C
      07FF844C07FF362003A40000000A000000000000000000000000000000000000
      00000000000000000000824B07FD2B1902926C3F06E7844C07FF844C07FF844C
      07FF744307F000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF0000000000000000844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000
      0000000000000000000000000000180E016F844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF3B2203AB000000000000000000000000000000000000
      00000000000000000000824B07FD311C039C2C1A0294442804B8844C07FF844C
      07FF744307F000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF0000000000000000844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000
      000000000000000000000000000000000000180E016E7E4907FA844C07FF844C
      07FF844C07FF844C07FF412504B4050300360100001900000000000000000000
      00000000000000000000824B07FD311C039C2C1A0294442804B8844C07FF844C
      07FF744307F000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF0000000000000000844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000
      00000000000000000000000000000000000000000000170D016C7E4807F9844C
      07FF844C07FF3B2203AC0F080156623906DD0E08005400000000000000000000
      00000000000000000000824B07FD2B1902926C3F06E7844C07FF844C07FF844C
      07FF744307F00000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000170D016C844C
      07FF3C2303AD0D070051603805DB2113028023140285170D016C000000000000
      00000000000000000000824B07FD2B190293633A06DE844C07FF844C07FF844C
      07FF744307F00000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000805
      0041110A015D613806DC1F12017E1D100178844C07FF4D2D04C4000000000000
      00000000000000000000824B07FD2B190293633A06DE844C07FF844C07FF844C
      07FF744307F00000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000160D016A251502882012017F844C07FF734306EF0A060048000000000000
      00000000000000000000844C07FF301C039B623906DD844C07FF844C07FF844C
      07FF804A07FB0000000000000000000000000000000000000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101001F744307F06A3D06E60C07004F00000000000000000000
      000000000000000000002E1B0298110A015E724206EE844C07FF844C07FF7142
      06ED3B2203AC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000403010029020100230000000000000000000000000000
      0000000000000000000000000000000000074E2D04C52D1A02960D0700510100
      0017000000000000000000000000000000000202023C252525DA1212129A0505
      0554010101250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00081B1B1BBC0A0A0A7400000021000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C100176704106EC1D1101790101012B2D2D2DF31B1B1BBA1A1A
      1AB7202020CA0E0E0E8A00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111111980707
      075F2B2B2BEF313131FF2C2C2CF2171717AE0505055300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B0F0175844C07FF844C07FF794607F50000000D1C1C1CBF030303470000
      00001212129A323232FF1414149C000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313131FF1212
      129B252525DD313131FF313131FF313131FF2E2E2EF700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B0F
      0174844C07FF844C07FF844C07FF1B0F0175000000000F0F0F8A1111119C0000
      0022161616A7323232FF323232FF141414A00000000500000000000000000000
      0000000000000000000000000000000000000000000000000000313131FD1010
      1093262626DE313131FF313131FF313131FF2C2C2CF100000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000201
      0022462804BB844C07FF844C07FF543104CC0502003300000000000000000000
      000000000010190F0171452804B9593405D33B2203AC0E080054020100227544
      07F1844C07FF844C07FF1B0F017500000000000000000202023D2E2E2EF33232
      32FF323232FF323232FF323232FF333333FF141414A30000000B000000000000
      0000000000000000000000000000000000000000000000000000313131FD1010
      1093262626DE313131FF313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000502
      0033543104CC0000001100000000543104CC623906DD00000000000000000604
      003A683D06E35B3505D51D110179150C01672B1902926C3F06E8643A06DF7544
      07F16C3F06E71B0F017400000000000000000000000000000002090909713232
      32FD323232FF323232FF323232FF323232FF323232FF151515A40000000A0000
      0000000000000000000000000000000000000000000000000000313131FD1010
      1092282828E7313131FF313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000000
      00000000000000000000000000001C100177844C07FF000000000100001B6E40
      06EA2B1902920402002D241502872716028B040200300101001D4C2C04C3673C
      06E2020100220000000000000000000000000000000000000000000000000909
      096F323232FF323232FF323232FF323232FF323232FF323232FF171717AB0000
      0000000000000000000000000000000000000000000000000000313131FD1212
      129C10101094191919B8313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000000
      0000000000000000000002010022543104CC3A2103AA000000002B1902934C2C
      04C30402002E6A3D06E5412504B40F0801560101001D00000000010000186E3F
      06E90D0800530000000000000000000000000000000000000000000000000000
      00000909096E303030FA323232FF323232FF323232FF323232FF181818B40202
      0236000000190000000000000000000000000000000000000000313131FD1212
      129C10101094191919B8313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF844C07FF844C07FF844C07FF2F1B0299000000000000
      000000000000150C0166844C07FF543104CC00000000000000005B3505D40E08
      0055412504B3321D039E00000000000000000000000000000000000000002E1B
      02973C2303AD0000000000000000000000000000000000000000000000000000
      0000000000000808086C303030F9323232FF323232FF161616AC050505562525
      25DD060606540000000000000000000000000000000000000000313131FD1010
      1092282828E7313131FF313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000000
      0000000000000000000002010022724206EE1C10017700000000754407F10704
      003E432704B70101001D00000000000000000000000000000000000000001C10
      01765B3505D50000000000000000000000000000000000000000000000000000
      000000000000000000000909096C323232FF161616AD05050551252525DB0C0C
      0C800E0E0E850606066C00000000000000000000000000000000313131FD1010
      1093262626DE313131FF313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000000
      0000000000000000000000000000462804BB462804BB00000000623906DD0D08
      00530C06004D0000000000000000000000000000000000000000000000002415
      0287452804BA0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303410606065D252525DC0C0C0C7E0B0B
      0B78323232FF202020C400000000000000000000000000000000313131FD1010
      1093262626DE313131FF313131FF313131FF2C2C2CF000000000000000000000
      000002010022844C07FF150C0166000000000000000000000000000000000000
      0011543104CC0000001102010022724206EE25150288000000003B2203AB3E24
      03AF00000000000000000000000000000000000000000000000000000005633A
      06DE1A0F01720000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808086A0E0E0E880C0C0C7F3232
      32FF2C2C2CEF0303034800000000000000000000000000000000313131FF1212
      129B252525DD313131FF313131FF313131FF303030FB00000000000000000000
      000002010022844C07FF844C07FF844C07FF844C07FF844C07FF623906DD0000
      0000462804BB844C07FF844C07FF462804BB0000001100000000050200327E49
      07FA150C016700000000000000000000000000000000000000022F1B0299683D
      06E30000000F0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001F2D2D2DF02B2B
      2BE60404044F0000000000000000000000000000000000000000111111980606
      065E2B2B2BEE313131FF313131FF2A2A2AED161616AC00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000140B
      01647E4907FA3D2403AE0D0700510704003C120A0160523004CA6A3D06E60603
      0038000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004010101290000
      0023000000000000000000000000000000000000000000000000000000000000
      00071E1E1EC51010109605050551000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005030035392103A9613806DC744307F0593405D32B1902930101001E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B762B2B2BEC0B0B
      0B79000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0A0A75323232FF323232FF2E2E
      2EF50000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A74323232FF323232FF323232FF0A0A
      0A750000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000022323232FF070707660000
      0000000000000000000000000000000000221B1B1BBB323232FF323232FF2020
      20CC01010133000000000000000000000000000000100A0A0A711A1A1AB92222
      22D3161616AC05050554000000222D2D2DF1323232FF323232FF0A0A0A750000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000022323232FF070707660000
      000000000000000000000000000001010133202020CC00000011000000002020
      20CC252525DD00000000000000000202023A272727E3232323D50B0B0B790808
      086710101092292929E8272727DF2D2D2DF1292929E70A0A0A74000000000000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000022323232FF070707660000
      0000000000000000000000000000000000000000000000000000000000000B0B
      0B77323232FF000000000000001B2A2A2AEA101010920101012D0E0E0E870F0F
      0F8B010101300000001D1D1D1DC3272727E20000002200000000000000000000
      000000000000323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF00000000000000003232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF0000000000000022323232FF070707660000
      0000000000000000000000000000000000000000000000000000000000222020
      20CC161616AA00000000101010931D1D1DC30101012E292929E5191919B40505
      05560000001D00000000000000182A2A2AE90505055300000000000000000000
      000000000000323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF00000000000000003232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF0000000000000022323232FF323232FF3232
      32FF323232FF1212129900000000000000000000000007070766323232FF2020
      20CC0000000000000000222222D405050555191919B31313139E000000000000
      000000000000000000000000000011111197171717AD00000000000000000000
      000000000000323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF00000000000000003232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF0000000000000022323232FF070707660000
      0000000000000000000000000000000000000000000000000000000000222C2C
      2CEE0B0B0B77000000002D2D2DF10202023E1A1A1AB70000001D000000000000
      00000000000000000000000000000B0B0B76232323D500000000000000000000
      000000000000323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF323232FF00000000000000003232
      32FF323232FF323232FF323232FF323232FF323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF0000000000000022323232FF070707660000
      0000000000000000000000000000000000000000000000000000000000001B1B
      1BBB1B1B1BBB00000000252525DD050505530404044D00000000000000000000
      00000000000000000000000000000E0E0E871A1A1ABA00000000000000000000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000022323232FF070707660000
      000000000000000000000000000000000011202020CC00000011000000222C2C
      2CEE0E0E0E8800000000161616AB171717AF0000000000000000000000000000
      0000000000000000000000000005262626DE0A0A0A7200000000000000000000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000022323232FF323232FF3232
      32FF323232FF323232FF252525DD000000001B1B1BBB323232FF323232FF1B1B
      1BBB000000110000000001010132303030FA0808086700000000000000000000
      0000000000000000000212121299272727E30000000F00000000000000000000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000007070764303030FA171717AE050505510202
      023C070707601F1F1FCA292929E6020202380000000000000000000000000000
      00000000000000000000000000000000000000000000323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020235161616A9252525DC2D2D
      2DF0222222D3101010930000001E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000038000000460000000100010000000000300200000000000000000000
      000000000000000000000000FFFFFF000003E1F0000000000003C07000000000
      0003C070000000000003C070000000000003C070000000000003C07000000000
      0003C070000000000003C070000000000003C070000000000003C07000000000
      0003C070000000000003C070000000000003C070000000000003E0F000000000
      FFFFFF8FFFFFFF00FFFFFF0F87FFFF00FFFFFE0F87FFFF001E07001F87FFFF00
      1E26003F87FFFF001FE40078006001001FC4047800600100038C3E7800600100
      1FC43E78006001001FE47E7F87FFFF001E04FC7F87FFFF000104787F87FFFF00
      FFFE00FF87FFFF00FFFF01FFFFFFFF0000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000}
  end
  inherited imgBotoesAtivoAz: TImageList
    Left = 1043
    Bitmap = {
      494C01010800DC00840518001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000000000000000000000000000000000000000000060300390000
      000E000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000122D1A0296704106EC5431
      04CD472904BC472904BC472904BC472904BC472904BC472904BC472904BC4729
      04BC472904BC472904BC472904BC472904BC472904BC472904BC472904BC4729
      04BC502E04C77A4807F6422704B6050300340000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000673D06E34125
      04B3150C01670100001700000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A190292824C07FE653B06E10201
      0024000000130000001300000013000000130000001300000013000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      00130101001E573305D0834C07FE422704B60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000000844C07FF844C
      07FF844C07FF724206EE251502890000000E0000000000000000000000000000
      000000000000000000000000000000000000784607F4844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF7C4807F80000000000000000000000000000
      0000000000000000000B321D039E844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF492B04BF000000120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000010000
      0001000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF7C4707F7372003A503010028000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF0000000000000000000000000000
      0000000000002012017F844C07FF412504B43A2103A93A2103A93A2103A93A21
      03A93A2103A93A2103A93A2103A93A2103A93F2504B26F4106EB492B04BF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000008090500432B190292593405D36C3F06E87543
      06F06E3F06EA593405D32E1B0298090500460000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF0000000000000000000000000000
      0000000000003A2103A9844C07FF0000000B0000000000000000000000000000
      000000000000000000000000000000000000000000093F2503B2844C07FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001000019311C039B693D06E5824C07FD844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF714206ED0C07004E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF0000000000000000000000000000
      0000000000003A2103A9844C07FF000000003A2103A9844C07FF844C07FF844C
      07FF844C07FF4A2B04C00000001600000000000000003A2103A9844C07FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101001D492A04BF844C07FF844C07FF844C07FF834C07FE794607F56B3D
      06E6774607F3834C07FE844C07FF512F04C80000000700000012010000180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF0000000000000000000000040804
      00400E0801564F2E04C6844C07FF00000000190E01703A2103A93A2103A93A21
      03A93A2103A9211302800000000F00000000000000003A2103A9844C07FF0E08
      01560A0600480000000600000000000000000000000000000000000000000000
      0001301C039A824B07FE844C07FF774507F33A2103AA0C06004D010000170000
      000A000000140A0600482C1A02950101001E0000000224150287734306EF2516
      0289050200320000000300000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF00000000000000000F0901586E40
      06E9844C07FF844C07FF844C07FF000000001A0F01713A2103AA3A2103AA3A21
      03AA3A2103AA3A2103AA3A2103AA3A2103AA0101001D3A2103A9844C07FF844C
      07FF754407F12314028500000000000000000000000000000000000000000A06
      0049774507F3844C07FF844C07FF1D1101780000001200000000000000000000
      00000000000000000000000000070000000000000013452804B8844C07FF804A
      07FB5E3605D82918029005030034000000030000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF00000000392103A8824C07FE824C07FE824C
      07FE824C07FE824C07FE824C07FE824C07FE0302002B3A2103A9844C07FF844C
      07FF844C07FF844C07FF00000000000000000000000000000000000000066139
      06DC844C07FF844C07FF2918028F000000000000000000000000000000000000
      00000000000000000000000000000000000004020031603805DB844C07FF844C
      07FF844C07FF844C07FF784607F42B1A02940000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533005CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E2404AF844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A2103A9844C07FF844C
      07FF844C07FF844C07FF000000000000000000000000000000000704003D834C
      07FE844C07FF673C06E20000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000F080056784607F5844C07FF844C
      07FF844C07FF774507F3482A04BE1B0F01750000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF533105CC0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F2504B0844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF3A2103AA3A2103AA3A2103AA3A2103AA3A21
      03AA3A2103AA3A2103AA3A2103AA3A2103AA3A2103AA673C06E2844C07FF844C
      07FF844C07FF844C07FF000000000000000000000000000000001A0F0171844C
      07FF844C07FF362003A400000000000000000000000000000000000000000000
      0000000000000000000000000000000000002917028E844C07FF844C07FF844C
      07FF844C07FF482A04BD01000019000000020000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF000000013E2403AF0000
      000F834C07FE844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF7A4707F60402
      0033000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      000102010022754407F1844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF834C07FE844C
      07FF844C07FF844C07FF0000000000000000000000000000000024150286844C
      07FF844C07FF2113028000000000000000050000000600000000000000000000
      0000000000000000000000000000000000004F2E04C67D4807F7462904BB814A
      07FC844C07FF5C3605D600000003000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001523004CA120A
      0160834C07FE844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF3A2103AA0302002B3A21
      03AA844C07FF844C07FF0000000000000000000000000000000022140283844C
      07FF844C07FF331E03A01C100176432704B70A05004600000000000000000000
      000000000000000000000000000000000002160D01690502003202010023804A
      07FC844C07FF673C06E200000008000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF00000000000000003A2103A9844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF3A2103AA0302002B3A21
      03AA844C07FF844C07FF00000000000000000000000000000000150D0168844C
      07FF844C07FF794607F5824C07FE603805DB0402003100000000000000000000
      00000000000000000000000000000000000000000000000000000704003D834C
      07FE844C07FF5C3605D500000003000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF824B07FD543105CC3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E24
      04AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF482A04BD844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF00000000000000002013017F844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF492B04BE0000000000000000000000010603003B432704B6844C
      07FF844C07FF844C07FF844C07FF4A2B04C00000001600000000000000000000
      00000000000000000000000000000000000000000000000000002B180291844C
      07FF844C07FF362003A400000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF4B2B04C20100001800000000000000000000000000000000000000000000
      000000000000000000110D070051120A0160090500450000000521130280844C
      07FF844C07FF844C07FF844C07FF844C07FF0000000000000000000000072013
      017E3A2103A9673C06E2844C07FF3A2103A93A2103A93A2103A93A2103A93A21
      03A93A2103A93A2103A93A2103A93A2103A93A2103A9673C06E2844C07FF3A21
      03A92817028D0000000B00000000000000001D100178724207EE844C07FF844C
      07FF844C07FF844C07FF844C07FF2817028D0000000300000000000000000000
      0000000000000000000000000000000000000000000002010026764506F2844C
      07FF7F4907FA0805004200000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF442704B80000000D00000000000000000000000000000000000000000000
      0000000000000402002D5D3605D7844C07FF442704B80000000D120A0160844C
      07FF844C07FF844C07FF844C07FF844C07FF0000000000000000000000000000
      0000000000003A2103A9844C07FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A2103A9844C07FF0000
      000000000000000000000000000000000000010000190F080156462804BB844C
      07FF844C07FF844C07FF844C07FF0D0800530000000000000000000000000000
      00000000000000000000000000000000000000000016362003A4844C07FF844C
      07FF4B2B04C10000000600000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF442704B80000000D00000000000000000000000000000000000000000000
      0000000000000402002D5D3605D7844C07FF442704B80000000D120A0160844C
      07FF844C07FF844C07FF844C07FF844C07FF0000000000000000000000000000
      0000000000003A2103A9844C07FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A2103A9844C07FF0000
      0000000000000000000000000000000000000000000000000000000000000704
      003C563205CF844C07FF7E4907FA01000017000000000402002F000000090000
      000000000000000000000000000000000012442804B8844C07FF844C07FF7443
      07F00C06004D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF442704B80000000D00000000000000000000000000000000000000000000
      0000000000000402002D5D3605D7844C07FF442704B80000000D120A0160844C
      07FF844C07FF844C07FF844C07FF754407F10000000000000000000000000000
      0000000000003A2103A9844C07FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A2103A9844C07FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000011160D016B25150288000000020704003D794607F5543105CD2515
      0289150C01671A0F0171331E03A06E4006EA844C07FF844C07FF804A07FB2A18
      02910000000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844C07FF844C07FF00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF442704B80000000D00000000000000000000000000000000000000000000
      0000000000000402002D5D3605D7844C07FF442704B80000000D120A0160844C
      07FF844C07FF844C07FF834C07FE372003A60000000000000000000000000000
      0000000000003A2103A9844C07FF000000150000000000000000000000000000
      00000000000000000000000000000000000000000012462804BB844C07FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000060100001C432704B7844C07FF844C07FF844C
      07FF804A07FB824B07FD844C07FF844C07FF844C07FF704106EC190F01720000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000824C07FE824C07FE00000001844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF834C07FE0E080156000000000000
      000000000000000000000000000000000000844C07FF844C07FF844C07FF844C
      07FF442704B80000000D00000000000000000000000000000000000000000000
      0000000000000402002D5D3605D7844C07FF442704B80000000D120A0160844C
      07FF844C07FF844C07FF563305D0020100260000000000000000000000000000
      000000000000160D016A844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF321D039E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000E1E11017A794607F5844C07FF844C
      07FF844C07FF844C07FF844C07FF834C07FE4F2E04C606030038000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000844C07FF844C
      07FF7E4807F95E3605D8422604B51F12017E0704003B00000008000000000000
      000000000000000000000000000000000000673D06E3844C07FF844C07FF844C
      07FF452704B90000000E00000000000000000000000000000000000000000000
      00000000000002010026422604B55D3605D7301B039B0000000B140B0164844C
      07FF844C07FF5F3705D90804003F000000000000000000000000000000000000
      00000000000000000007160D01693A2103A93A2103A93A2103A93A2103A93A21
      03A93A2103A93A2103A93A2103A93A2103A93A2103A92013017F0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000100001A110A015D2515
      0288311C039C2C1902941E11017A090500450000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B3505D42A18
      02900D0700510402002E0000000E000000000000000000000000000000000000
      000000000000000000000000000000000000130B0163824B07FD844C07FF844C
      07FF5E3605D80A06004A02010025020100250201002502010025020100250201
      0025020100250402002D0B06004C0D0800530905004604020031412604B4834C
      07FE492B04BF0402002F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000130B0163673D06E3844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF804A07FB341E
      03A10100001C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000030101001E0704
      003B090500430905004309050043090500430905004309050043090500430905
      00430704003E00000002000000000100001B170D016D392103A8583305D13E25
      03B11E11017B0301002A000000010000000000000000000000030101001E0704
      003B0905004309050043090500430905004309050043090500430402002F0502
      0033060300380100001700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060300383A2203AB7E4A07FA844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF804A07FC4B2B04C11009
      015B0000000800000000000000000000000000000000000000030101001E0704
      003B090500430905004309050043090500430905004309050043090500430905
      00430704003E00000002000000000100001B170D016D392103A8583305D13E25
      03B11E11017B0301002A000000010000000000000000100A015C4D2D04C4693D
      06E5714106ED714106ED714106ED714106ED714106ED714106ED714106ED7141
      06ED2716028C000000020704003B4E2D04C57E4907FA844C07FF844C07FF844C
      07FF824C07FE5A3505D40F0801580000000100000000100A015C4D2D04C4693D
      06E5714106ED714106ED714106ED714106ED714106ED714106ED2E1A0297321D
      039E673C06E24A2B04C02B1902930D0800520000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E2403B0814A07FC4A2B04C0362003A5362003A5362003A5362003A53620
      03A5362003A5362003A5362003A5362003A5362003A5432704B7804A07FB5E36
      05D80402002E00000000000000000000000000000000100A015C4D2D04C4693D
      06E5714106ED714106ED714106ED714106ED714106ED714106ED714106ED7141
      06ED2716028C000000020704003B4E2D04C57E4907FA844C07FF844C07FF844C
      07FF824C07FE5A3505D40F08015800000001030100277E4807F9844C07FF6138
      05DB3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3720
      03A60000000600000015482B04BE844C07FF844C07FF633A06DE3E2404AF5934
      05D2844C07FF844C07FF5A3505D40301002A030100277E4807F9844C07FF6138
      05DB3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF180E016F180E
      016F5D3605D7020100221F11017C824C07FE2415028700000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A814A07FC412603B500000001000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002917028E824C
      07FE1009015B000000000000000000000000030100277E4807F9844C07FF6138
      05DB3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3E2404AF3720
      03A60000000600000015482B04BE844C07FF2B1902922C1A0294844C07FF6239
      06DD170D016C563104CE5A3505D40301002A452804BA7C4807F81A0F01710000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000F0800567C4707F7844C07FF844C07FF2D1A029500000000190E
      016F844C07FF844C07FF824B07FE1E11017B452804BA7C4807F81A0F01710000
      0001000000000000000000000000000000000000000000000000000000000402
      002D794607F50000001508040040834C07FE764506F21F11017C000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0010844C07FF2D1A0295000000000302002A120A01600101001F000000070A06
      0047120A01600000000E00000014120A01600905004500000005120A0160844C
      07FF120A0160000000000000000000000000452804BA7C4807F81A0F01710000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000F0800567C4707F7844C07FF030100270000000F231402850C06
      004D00000007160D016A824B07FE1E11017B784607F4603805DA040200300000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000023140285844C07FF7A4707F6190E016F08050041000000000402
      0030190E016F593405D2844C07FF3E2404B0784607F4603805DA040200300000
      0000000000000000000000000000000000000000000000000000000000000000
      00045C3605D6402503B34E2E04C6844C07FF844C07FF774507F32817028D0000
      0007000000000000000000000000000000000000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000784607F4603805DA040200300000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000023140285844C07FF844C07FF362003A50101001D000000050000
      00050C07004F623906DD844C07FF3E2404B0844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000372003A6844C07FF744307F00000000000000000000000000000
      0000000000003E2404AF844C07FF583305D1844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A050047804A07FB844C07FF844C07FF844C07FF844C07FF844C07FF2918
      028F000000060000000000000000000000000000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000372003A6844C07FF844C07FF633A06DE05030036000000000000
      000524150286844C07FF844C07FF583305D1844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F12017C844C07FF7E4807F92D1A02950F080157000000000805
      00412D1A0295633A06DE844C07FF392103A8844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000120A01616C3F06E8844C07FF844C07FF844C07FF844C07FF7946
      06F4221302820000000700000000000000000000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F12017C844C07FF844C07FF0C07004E00000009050200330100
      001C0000000F2C190293844C07FF392103A8844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B06004B744306F0844C07FF844C07FF2D1A029500000000190E
      016F844C07FF844C07FF7E4A07FA170D016C844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000008120A015F7E4A07FA844C07FF844C07FF844C07FF844C
      07FF6D4006E80201002000000005000000000000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B06004B744306F0844C07FF0A06004A0C06004D613906DC351F
      03A3030100282A1802907E4A07FA170D016C844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A3A2204AB844C07FF844C07FF7E4807F9744307F07A47
      07F6844C07FF844C07FF4E2D04C50100001B844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0500477E4A07FA844C07FF844C07FF7A47
      07F6140B01652D1A02962716028C000000030000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A3A2204AB844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF4E2D04C50100001B844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020100243A2203AA744307F0844C07FF844C07FF844C
      07FF7C4807F7482B04BE0704003C00000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000110A015D6A3D06E67A4707F62415
      02862C1A0294583305D1150D0168080500410000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020100243A2203AA744307F0844C07FF844C07FF844C
      07FF7C4807F7482B04BE0704003C00000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0B06004B1F12017D372003A62314
      02850F080056000000150000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000081009015A140B01642C1A
      0294422604B50D080053573205CF4B2B04C10000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0B06004B1F12017D372003A62314
      02850F080056000000150000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000000402002F5230
      05CA0D080052794607F4824C07FE221302830000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3B2203AC0B06004B000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3B2203AC0B06004B000000000201
      00213E2404AF7A4707F62B1A0294000000130000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3B2203AC0B06004B000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      0005050300340C07004D00000012000000000000000000000000000000000000
      0010844C07FF2D1A029500000000190E016F844C07FF0C070051000000134729
      04BC844C07FF0201002505030035834C07FE442704B80000000D120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010844C07FF2D1A0295000000000B06004C3E2404AF060300370000000D2113
      02813E2404AF01000019020100253E2404AF2012017F00000009120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003010027844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003010027844C07FF2D1A0295000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010844C07FF2D1A029500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000120A0160844C
      07FF120A0160000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003010027844C07FF2D1A0295000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000050300352616
      028A2A1802902A180291301C039C4E2E04C6844C07FF23140284000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000050300352616
      028A2A1802902A180291301C039C4E2E04C6844C07FF23140284000000000000
      00000000000000000000000000000000000000000000010000191E11017A2E1B
      0297844C07FF583304D12A1802902A1802902A1802902E1B0298362003A43921
      03A8392103A8372003A6311C039C2A1802902A1802902A180290462804BA844C
      07FF452804BA2A1802900502003300000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000050300352616
      028A2A1802902A180291301C039C4E2E04C6844C07FF23140284000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000331D039F844C
      07FF844C07FF844C07FF844C07FF844C07FF724206EE09050044000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000331D039F844C
      07FF844C07FF844C07FF844C07FF844C07FF724206EE09050044000000000000
      000000000000000000000000000000000000000000000402002D5D3605D7844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF1009015B00000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000331D039F844C
      07FF844C07FF844C07FF844C07FF844C07FF724206EE09050044000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF844C07FF824B07FD2616028B0000000D000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF844C07FF824B07FD2616028B0000000D000000000000
      00000000000000000000000000000000000000000000000000131D110178844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF2F1B02990201002600000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF844C07FF824B07FD2616028B0000000D000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF824B07FE2817028D0000001000000000000000000000
      000000000000000000000000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF824B07FE2817028D0000001000000000000000000000
      0000000000000000000000000000000000000000000000000000010000196E40
      06E9844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF754406F1020100270000000000000000844C07FF593305D2030100280000
      0000000000000000000000000000000000000000000000000000362003A5844C
      07FF844C07FF844C07FF824B07FE2817028D0000001000000000000000000000
      0000000000000000000000000000000000006E4006EA663B06E1060300380000
      0000000000000000000000000000000000000000000000000000392103A9844C
      07FF844C07FF824C07FE2817028D000000000000000000000000000000000000
      0000000000000000000000000000000000006E4006EA663B06E1060300380000
      0000000000000000000000000000000000000000000000000000392103A9844C
      07FF844C07FF824C07FE2817028D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000200000010000000100000001021130281844C07FF1C100177000000100000
      001000000010000000100E080054834C07FE4B2B04C102010021000000100000
      0010000000070000000000000000000000006E4006EA663B06E1060300380000
      0000000000000000000000000000000000000000000000000000392103A9844C
      07FF844C07FF824C07FE2817028D000000000000000000000000000000000000
      0000000000000000000000000000000000002B190293824B07FE2F1B02990603
      003803010028030100280301002803010028030100280402002E583305D2844C
      07FF824B07FD2D1A029600000014000000000000000000000000000000000000
      0000000000000000000000000000000000002B190293824B07FE2F1B02990603
      003803010028030100280301002803010028030100280402002E583305D2844C
      07FF824B07FD2D1A029600000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A050047724207EE613806DC090500430302
      002C0302002B060300393C2303AD844C07FF2616028A00000002000000000000
      0000000000000000000000000000000000002B190293824B07FE2F1B02990603
      003803010028030100280301002803010028030100280402002E583305D2844C
      07FF824B07FD2D1A029600000014000000000000000000000000000000000000
      00000000000000000000000000000000000001000018523004CA824C07FE663B
      06E1593305D2593305D2593305D2593305D2593305D25D3605D7844C07FF7E4A
      07FA211302810000001200000000000000000000000000000000000000000000
      00000000000000000000000000000000000001000018523004CA824C07FE663B
      06E1593305D2593305D2593305D2593305D2593305D25D3605D7844C07FF7E4A
      07FA211302810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001000017482A04BD844C07FF6F4106EB5C36
      05D65B3505D5673C06E2804A07FC7E4807F90402002F00000000000000000000
      00000000000000000000000000000000000001000018523004CA824C07FE663B
      06E1593305D2593305D2593305D2593305D2593305D25D3605D7844C07FF7E4A
      07FA211302810000001200000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010000182B1902936E40
      06EA844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF5B3505D40B06
      004B000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010000182B1902936E40
      06EA844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF5B3505D40B06
      004B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D1B0F01756C3F06E8844C
      07FF844C07FF784607F42E1B0298000000130000000000000000000000000000
      00000000000000000000000000000000000000000000010000182B1902936E40
      06EA844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF5B3505D40B06
      004B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
  end
  inherited ImgPequenaAz: TImageList
    Left = 1131
    Bitmap = {
      494C010106000001D4050E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000380000001C00000001002000000000008018
      0000000000000000000000000000000000000704003C603805DA301C039A0E08
      0054020100250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008472904BC1B0F017402010021000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000302002B774507F3452804BA4327
      04B7523004CA2616028A00000008000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E1B0298120A
      015F734306EF844C07FF764507F23D2403AE0D08005300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D492B04BF0A0500470000
      0000301C039A844C07FF311C039C000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000844C07FF301C
      039B623906DD844C07FF844C07FF844C07FF7C4807F700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002616028A311C039C0201
      0022382003A7844C07FF844C07FF331E03A00000000500000000000000000000
      0000000000000000000000000000000000000000000000000000824B07FD2B19
      0293633A06DE844C07FF844C07FF844C07FF754407F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000704003D774507F3844C
      07FF844C07FF844C07FF844C07FF844C07FF351F03A30000000B000000000000
      0000000000000000000000000000000000000000000000000000824B07FD2B19
      0293633A06DE844C07FF844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002190F0171824B
      07FD844C07FF844C07FF844C07FF844C07FF844C07FF362003A40000000A0000
      0000000000000000000000000000000000000000000000000000824B07FD2B19
      02926C3F06E7844C07FF844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000180E
      016F844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF3B2203AB0000
      0000000000000000000000000000000000000000000000000000824B07FD311C
      039C2C1A0294442804B8844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000180E016E7E4907FA844C07FF844C07FF844C07FF844C07FF412504B40503
      0036010000190000000000000000000000000000000000000000824B07FD311C
      039C2C1A0294442804B8844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000170D016C7E4807F9844C07FF844C07FF3B2203AC0F0801566239
      06DD0E0800540000000000000000000000000000000000000000824B07FD2B19
      02926C3F06E7844C07FF844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000170D016C844C07FF3C2303AD0D070051603805DB2113
      028023140285170D016C00000000000000000000000000000000824B07FD2B19
      0293633A06DE844C07FF844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000008050041110A015D613806DC1F12017E1D10
      0178844C07FF4D2D04C400000000000000000000000000000000824B07FD2B19
      0293633A06DE844C07FF844C07FF844C07FF744307F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000160D016A251502882012017F844C
      07FF734306EF0A06004800000000000000000000000000000000844C07FF301C
      039B623906DD844C07FF844C07FF844C07FF804A07FB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101001F744307F06A3D
      06E60C07004F00000000000000000000000000000000000000002E1B0298110A
      015E724206EE844C07FF844C07FF714206ED3B2203AC00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004030100290201
      0023000000000000000000000000000000000000000000000000000000000000
      00074E2D04C52D1A02960D070051010000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C100176704106EC1D11
      0179000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B0F0175844C07FF844C07FF7946
      07F50000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001B0F0174844C07FF844C07FF844C07FF1B0F
      01750000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002010022844C07FF150C01660000
      000000000000000000000000000002010022462804BB844C07FF844C07FF5431
      04CC0502003300000000000000000000000000000010190F0171452804B95934
      05D33B2203AC0E08005402010022754407F1844C07FF844C07FF1B0F01750000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002010022844C07FF150C01660000
      000000000000000000000000000005020033543104CC00000011000000005431
      04CC623906DD00000000000000000604003A683D06E35B3505D51D110179150C
      01672B1902926C3F06E8643A06DF754407F16C3F06E71B0F0174000000000000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002010022844C07FF150C01660000
      0000000000000000000000000000000000000000000000000000000000001C10
      0177844C07FF000000000100001B6E4006EA2B1902920402002D241502872716
      028B040200300101001D4C2C04C3673C06E20201002200000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000000000000000844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF0000000002010022844C07FF150C01660000
      0000000000000000000000000000000000000000000000000000020100225431
      04CC3A2103AA000000002B1902934C2C04C30402002E6A3D06E5412504B40F08
      01560101001D00000000010000186E3F06E90D08005300000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000000000000000844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF0000000002010022844C07FF844C07FF844C
      07FF844C07FF2F1B0299000000000000000000000000150C0166844C07FF5431
      04CC00000000000000005B3505D40E080055412504B3321D039E000000000000
      00000000000000000000000000002E1B02973C2303AD00000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000000000000000844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF0000000002010022844C07FF150C01660000
      0000000000000000000000000000000000000000000000000000020100227242
      06EE1C10017700000000754407F10704003E432704B70101001D000000000000
      00000000000000000000000000001C1001765B3505D500000000000000000000
      000000000000844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF0000000000000000844C
      07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C07FF844C
      07FF844C07FF844C07FF844C07FF0000000002010022844C07FF150C01660000
      0000000000000000000000000000000000000000000000000000000000004628
      04BB462804BB00000000623906DD0D0800530C06004D00000000000000000000
      000000000000000000000000000024150287452804BA00000000000000000000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002010022844C07FF150C01660000
      000000000000000000000000000000000011543104CC00000011020100227242
      06EE25150288000000003B2203AB3E2403AF0000000000000000000000000000
      0000000000000000000000000005633A06DE1A0F017200000000000000000000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002010022844C07FF844C07FF844C
      07FF844C07FF844C07FF623906DD00000000462804BB844C07FF844C07FF4628
      04BB0000001100000000050200327E4907FA150C016700000000000000000000
      000000000000000000022F1B0299683D06E30000000F00000000000000000000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000140B01647E4907FA3D2403AE0D0700510704
      003C120A0160523004CA6A3D06E6060300380000000000000000000000000000
      00000000000000000000000000000000000000000000844C07FF844C07FF844C
      07FF844C07FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005030035392103A9613806DC7443
      07F0593405D32B1902930101001E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000380000001C0000000100010000000000E00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited imgBotoesAtivoVe: TImageList
    Left = 1043
    Bitmap = {
      494C01010800DC00940518001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000000000000000000000000000000000000000000000500390000
      000E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001200220196005304EC0040
      03CD003502BC003502BC003502BC003502BC003502BC003502BC003502BC0035
      02BC003502BC003502BC003502BC003502BC003502BC003502BC003502BC0035
      02BC003C03C7005C04F6003202B6000400340000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004E03E30030
      02B3001000670000001700000000000000000000000000000000000000000000
      00000000000000000000000000000000000000200192006204FE004C03E10001
      0024000000130000001300000013000000130000001300000013000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      00130001001E004103D0006204FE003202B60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000000006204FF0062
      04FF006204FF005604EE001C01890000000E0000000000000000000000000000
      000000000000000000000000000000000000005A04F4006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF005D04F80000000000000000000000000000
      0000000000000000000B0026019E006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF003702BF000000120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000010000
      0001000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF005C04F7002901A500020028000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000000000000000
      0000000000000018007F006204FF003102B4002B01A9002B01A9002B01A9002B
      01A9002B01A9002B01A9002B01A9002B01A9002F02B2005304EB003702BF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000080007004300200192004303D3005103E80057
      04F0005303EA004303D300230198000700460000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000000000000000
      000000000000002B01A9006204FF0000000B0000000000000000000000000000
      00000000000000000000000000000000000000000009002F02B2006204FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000190024019B004F04E5006004FD006204FF006204FF0062
      04FF006204FF006204FF006204FF005504ED0009004E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000000000000000
      000000000000002B01A9006204FF00000000002B01A9006204FF006204FF0062
      04FF006204FF003703C0000000160000000000000000002B01A9006204FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000001001D003702BF006204FF006204FF006204FF006204FE005A04F5004F
      04E6005A04F3006204FE006204FF003C03C80000000700000012000000180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000000000040006
      0040000B0056003B03C6006204FF0000000000130070002B01A9002B01A9002B
      01A9002B01A9001801800000000F0000000000000000002B01A9006204FF000B
      0056000700480000000600000000000000000000000000000000000000000000
      00010024019A006104FE006204FF005904F3002B01AA0009004D000000170000
      000A0000001400080048002101950001001E00000002001B0187005604EF001C
      0189000300320000000300000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000000B00580052
      04E9006204FF006204FF006204FF0000000000130071002B01AA002B01AA002B
      01AA002B01AA002B01AA002B01AA002B01AA0001001D002B01A9006204FF0062
      04FF005704F1001A018500000000000000000000000000000000000000000008
      0049005A04F3006204FF006204FF001600780000001200000000000000000000
      00000000000000000000000000070000000000000013003302B8006204FF005F
      04FB004603D8001F019000040034000000030000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF00000000002B01A8006204FE006204FE0062
      04FE006204FE006204FE006204FE006204FE0002002B002B01A9006204FF0062
      04FF006204FF006204FF00000000000000000000000000000000000000060049
      03DC006204FF006204FF001F018F000000000000000000000000000000000000
      00000000000000000000000000000000000000030031004803DB006204FF0062
      04FF006204FF006204FF005A04F4002001940000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003D03CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002E02AF006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002B01A9006204FF0062
      04FF006204FF006204FF000000000000000000000000000000000005003D0062
      04FE006204FF004D04E20000000C000000000000000000000000000000000000
      000000000000000000000000000000000000000B0056005A04F5006204FF0062
      04FF006204FF005904F3003602BE001501750000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF003E03CC0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002F02B0006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF002B01AA002B01AA002B01AA002B01AA002B
      01AA002B01AA002B01AA002B01AA002B01AA002B01AA004D03E2006204FF0062
      04FF006204FF006204FF00000000000000000000000000000000001301710062
      04FF006204FF002901A400000000000000000000000000000000000000000000
      000000000000000000000000000000000000001E018E006204FF006204FF0062
      04FF006204FF003602BD00000019000000020000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001002E02AF0000
      000F006204FE006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF005C04F60003
      0033000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      000100010022005804F1006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FE0062
      04FF006204FF006204FF00000000000000000000000000000000001B01860062
      04FF006204FF0019018000000000000000050000000600000000000000000000
      000000000000000000000000000000000000003B03C6005C04F7003502BB0060
      04FC006204FF004503D600000003000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001003D03CA000D
      0060006204FE006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF002B01AA0002002B002B
      01AA006204FF006204FF00000000000000000000000000000000001A01830062
      04FF006204FF002601A000140076003202B70007004600000000000000000000
      0000000000000000000000000000000000020010006900030032000100230060
      04FC006204FF004D03E200000008000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF0000000000000000002B01A90062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF002B01AA0002002B002B
      01AA006204FF006204FF00000000000000000000000000000000001000680062
      04FF006204FF005A04F5006104FE004803DB0003003100000000000000000000
      00000000000000000000000000000000000000000000000000000005003D0062
      04FE006204FF004503D500000003000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF006004FD003F03CC002E02AF002E02AF002E02AF002E02AF002E02AF002E
      02AF002E02AF002E02AF002E02AF002E02AF002E02AF003502BD006204FF0062
      04FF006204FF006204FF006204FF006204FF00000000000000000018017F0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF003602BE0000000000000000000000010005003B003202B60062
      04FF006204FF006204FF006204FF003703C00000001600000000000000000000
      0000000000000000000000000000000000000000000000000000002001910062
      04FF006204FF002901A400000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003803C20000001800000000000000000000000000000000000000000000
      00000000000000000011000A0051000D00600007004500000005001901800062
      04FF006204FF006204FF006204FF006204FF0000000000000000000000070018
      017E002B01A9004D03E2006204FF002B01A9002B01A9002B01A9002B01A9002B
      01A9002B01A9002B01A9002B01A9002B01A9002B01A9004D03E2006204FF002B
      01A9001D018D0000000B000000000000000000160078005504EE006204FF0062
      04FF006204FF006204FF006204FF001E018D0000000300000000000000000000
      0000000000000000000000000000000000000000000000020026005804F20062
      04FF005E04FA0006004200000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003302B80000000D00000000000000000000000000000000000000000000
      0000000000000003002D004603D7006204FF003302B80000000D000D00600062
      04FF006204FF006204FF006204FF006204FF0000000000000000000000000000
      000000000000002B01A9006204FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002B01A9006204FF0000
      00000000000000000000000000000000000000000019000B0056003502BB0062
      04FF006204FF006204FF006204FF000A00530000000000000000000000000000
      00000000000000000000000000000000000000000016002901A4006204FF0062
      04FF003803C10000000600000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003302B80000000D00000000000000000000000000000000000000000000
      0000000000000003002D004603D7006204FF003302B80000000D000D00600062
      04FF006204FF006204FF006204FF006204FF0000000000000000000000000000
      000000000000002B01A9006204FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002B01A9006204FF0000
      0000000000000000000000000000000000000000000000000000000000000005
      003C004003CF006204FF005E04FA00000017000000000003002F000000090000
      000000000000000000000000000000000012003302B8006204FF006204FF0057
      04F00009004D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003302B80000000D00000000000000000000000000000000000000000000
      0000000000000003002D004603D7006204FF003302B80000000D000D00600062
      04FF006204FF006204FF006204FF005804F10000000000000000000000000000
      000000000000002B01A9006204FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002B01A9006204FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000110011006B001C0188000000020005003D005B04F5004003CD001C
      01890010006700130071002601A0005303EA006204FF006204FF005F04FB001F
      01910000000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FF006204FF00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003302B80000000D00000000000000000000000000000000000000000000
      0000000000000003002D004603D7006204FF003302B80000000D000D00600062
      04FF006204FF006204FF006204FE002901A60000000000000000000000000000
      000000000000002B01A9006204FF000000150000000000000000000000000000
      00000000000000000000000000000000000000000012003502BB006204FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000060001001C003202B7006204FF006204FF0062
      04FF006004FB006004FD006204FF006204FF006204FF005403EC001300720000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006204FE006204FE00000001006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FE000B0056000000000000
      000000000000000000000000000000000000006204FF006204FF006204FF0062
      04FF003302B80000000D00000000000000000000000000000000000000000000
      0000000000000003002D004603D7006204FF003302B80000000D000D00600062
      04FF006204FF006204FF004103D0000200260000000000000000000000000000
      0000000000000010006A006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF0026019E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000E0016007A005B04F5006204FF0062
      04FF006204FF006204FF006204FF006204FE003B03C600040038000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006204FF0062
      04FF005E04F9004603D8003102B50018017E0005003B00000008000000000000
      000000000000000000000000000000000000004E04E3006204FF006204FF0062
      04FF003402B90000000E00000000000000000000000000000000000000000000
      00000000000000020026003202B5004603D70024019B0000000B000F00640062
      04FF006204FF004703D90006003F000000000000000000000000000000000000
      0000000000000000000700100069002B01A9002B01A9002B01A9002B01A9002B
      01A9002B01A9002B01A9002B01A9002B01A9002B01A90018017F0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001001A000D005D001C
      01880024019C002101940016007A000700450000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004303D4001F
      0190000A00510003002E0000000E000000000000000000000000000000000000
      000000000000000000000000000000000000000F0063006004FD006204FF0062
      04FF004604D80008004A00020025000200250002002500020025000200250002
      0025000200250003002D0008004C000A00530007004600030031003102B40062
      04FE003702BF0003002F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000F0063004E04E30062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF005F04FB0027
      01A10001001C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000030001001E0005
      003B000600430006004300060043000600430006004300060043000600430006
      00430005003E00000002000000000001001B0011006D002A02A8004203D1002F
      02B10017007B0002002A000000010000000000000000000000030001001E0005
      003B0006004300060043000600430006004300060043000600430003002F0003
      0033000400380000001700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000040038002C02AB005E04FA006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006004FC003803C1000C
      005B0000000800000000000000000000000000000000000000030001001E0005
      003B000600430006004300060043000600430006004300060043000600430006
      00430005003E00000002000000000001001B0011006D002A02A8004203D1002F
      02B10017007B0002002A000000010000000000000000000C005C003A03C4004F
      03E5005504ED005504ED005504ED005504ED005504ED005504ED005504ED0055
      04ED001D018C000000020005003B003A03C5005E04FA006204FF006204FF0062
      04FF006204FE004303D4000B00580000000100000000000C005C003A03C4004F
      03E5005504ED005504ED005504ED005504ED005504ED005504ED002201970025
      019E004D03E2003703C000200193000A00520000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000002F02B0006004FC003703C0002901A5002901A5002901A5002901A50029
      01A5002901A5002901A5002901A5002901A5002901A5003202B7006004FB0046
      03D80003002E00000000000000000000000000000000000C005C003A03C4004F
      03E5005504ED005504ED005504ED005504ED005504ED005504ED005504ED0055
      04ED001D018C000000020005003B003A03C5005E04FA006204FF006204FF0062
      04FF006204FE004303D4000B00580000000100020027005E04F9006204FF0048
      03DB002E02AF002E02AF002E02AF002E02AF002E02AF002E02AF002E02AF002A
      01A60000000600000015003602BE006204FF006204FF004A03DE002E02AF0043
      03D2006204FF006204FF004303D40002002A00020027005E04F9006204FF0048
      03DB002E02AF002E02AF002E02AF002E02AF002E02AF002E02AF0012006F0012
      006F004503D7000100220017007C006204FE001B018700000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A006004FC003102B500000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001F018E0061
      04FE000C005B00000000000000000000000000020027005E04F9006204FF0048
      03DB002E02AF002E02AF002E02AF002E02AF002E02AF002E02AF002E02AF002A
      01A60000000600000015003602BE006204FF001F019200210194006204FF004A
      03DD0011006C004003CE004303D40002002A003402BA005D04F8001300710000
      0001000000000000000000000000000000000000000000000000000000000000
      000000000000000B0056005C04F7006204FF006204FF00210195000000000013
      006F006204FF006204FF006104FE0017007B003402BA005D04F8001300710000
      0001000000000000000000000000000000000000000000000000000000000003
      002D005A04F50000001500060040006204FE005804F20017007C000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0010006204FF00210195000000000002002A000D00600001001F000000070007
      0047000D00600000000E00000014000D00600007004500000005000D00600062
      04FF000D0060000000000000000000000000003402BA005D04F8001300710000
      0001000000000000000000000000000000000000000000000000000000000000
      000000000000000B0056005C04F7006204FF000200270000000F001B01850009
      004D000000070010006A006104FE0017007B005A04F4004803DA000300300000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001B0185006204FF005C04F60013006F00060041000000000003
      00300013006F004303D2006204FF002F02B0005A04F4004803DA000300300000
      0000000000000000000000000000000000000000000000000000000000000000
      0004004503D6003002B3003B03C6006204FF006204FF005904F3001E018D0000
      0007000000000000000000000000000000000000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000005A04F4004803DA000300300000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001B0185006204FF006204FF002901A50001001D000000050000
      00050009004F004A03DD006204FF002F02B0006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002901A6006204FF005704F00000000000000000000000000000
      000000000000002E02AF006204FF004203D1006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000070047006004FB006204FF006204FF006204FF006204FF006204FF001F
      018F000000060000000000000000000000000000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002901A6006204FF006204FF004A03DE00040036000000000000
      0005001B0186006204FF006204FF004203D1006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000017017C006204FF005E04F900210195000B0057000000000006
      004100210195004A03DE006204FF002B02A8006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000E0061005104E8006204FF006204FF006204FF006204FF005A
      04F4001901820000000700000000000000000000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000017017C006204FF006204FF0009004E00000009000300330001
      001C0000000F00200193006204FF002B02A8006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000008004B005704F0006204FF006204FF00210195000000000013
      006F006204FF006204FF005E04FA0011006C006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000008000D005F005E04FA006204FF006204FF006204FF0062
      04FF005103E80001002000000005000000000000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000008004B005704F0006204FF0008004A0009004D004903DC0028
      01A300020028001F0190005E04FA0011006C006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A002C02AB006204FF006204FF005E04F9005704F0005C
      04F6006204FF006204FF003A03C50001001B006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000070047005E04FA006204FF006204FF005B
      04F6000F006500210196001D018C000000030000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A002C02AB006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF003A03C50001001B006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010024002B02AA005704F0006204FF006204FF0062
      04FF005C04F7003602BE0005003C00000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000D005D004F04E6005B04F6001B
      018600200194004203D100100068000600410000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010024002B02AA005704F0006204FF006204FF0062
      04FF005C04F7003602BE0005003C00000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0008004B0017007D002901A6001B
      0185000B0056000000150000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000008000C005A000F00640021
      0194003102B5000A0053004003CF003803C10000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0008004B0017007D002901A6001B
      0185000B0056000000150000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000000003002F003E
      03CA000A0052005A04F4006104FE001A01830000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D002C02AC0008004B000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D002C02AC0008004B000000000001
      0021002E02AF005B04F600210194000000130000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D002C02AC0008004B000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      0005000400340009004D00000012000000000000000000000000000000000000
      0010006204FF00210195000000000013006F006204FF00090051000000130035
      02BC006204FF0002002500040035006204FE003302B80000000D000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010006204FF00210195000000000008004C002E02AF000400370000000D0019
      0181002E02AF0000001900020025002E02AF0018007F00000009000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000020027006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000020027006204FF00210195000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010006204FF0021019500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000D00600062
      04FF000D0060000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000020027006204FF00210195000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      000000000000000000000000000000000000000000000000000000040035001C
      018A001F0190001F01910024019C003B03C6006204FF001A0184000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      000000000000000000000000000000000000000000000000000000040035001C
      018A001F0190001F01910024019C003B03C6006204FF001A0184000000000000
      00000000000000000000000000000000000000000000000000190016007A0022
      0197006204FF004203D1001F0190001F0190001F019000230198002901A4002A
      01A8002A01A8002901A60025019C001F0190001F0190001F0190003402BA0062
      04FF003402BA001F01900003003300000000006204FF004303D2000200280000
      000000000000000000000000000000000000000000000000000000040035001C
      018A001F0190001F01910024019C003B03C6006204FF001A0184000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      00000000000000000000000000000000000000000000000000000026019F0062
      04FF006204FF006204FF006204FF006204FF005504EE00070044000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      00000000000000000000000000000000000000000000000000000026019F0062
      04FF006204FF006204FF006204FF006204FF005504EE00070044000000000000
      000000000000000000000000000000000000000000000003002D004603D70062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF000C005B00000000006204FF004303D2000200280000
      00000000000000000000000000000000000000000000000000000026019F0062
      04FF006204FF006204FF006204FF006204FF005504EE00070044000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006204FF006004FD001D018B0000000D000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006204FF006004FD001D018B0000000D000000000000
      0000000000000000000000000000000000000000000000000013001600780062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF002301990002002600000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006204FF006004FD001D018B0000000D000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006104FE001D018D0000001000000000000000000000
      000000000000000000000000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006104FE001D018D0000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000190052
      03E9006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF005803F1000200270000000000000000006204FF004303D2000200280000
      0000000000000000000000000000000000000000000000000000002901A50062
      04FF006204FF006204FF006104FE001D018D0000001000000000000000000000
      000000000000000000000000000000000000005304EA004C03E1000400380000
      0000000000000000000000000000000000000000000000000000002B01A90062
      04FF006204FF006104FE001E018D000000000000000000000000000000000000
      000000000000000000000000000000000000005304EA004C03E1000400380000
      0000000000000000000000000000000000000000000000000000002B01A90062
      04FF006204FF006104FE001E018D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000200000010000000100000001000190181006204FF00150077000000100000
      00100000001000000010000A0054006204FE003803C100010021000000100000
      001000000007000000000000000000000000005304EA004C03E1000400380000
      0000000000000000000000000000000000000000000000000000002B01A90062
      04FF006204FF006104FE001E018D000000000000000000000000000000000000
      00000000000000000000000000000000000000200193006104FE002301990004
      003800020028000200280002002800020028000200280003002E004203D20062
      04FF006004FD0021019600000014000000000000000000000000000000000000
      00000000000000000000000000000000000000200193006104FE002301990004
      003800020028000200280002002800020028000200280003002E004203D20062
      04FF006004FD0021019600000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000070047005604EE004903DC000600430002
      002C0002002B00040039002D02AD006204FF001C018A00000002000000000000
      00000000000000000000000000000000000000200193006104FE002301990004
      003800020028000200280002002800020028000200280003002E004203D20062
      04FF006004FD0021019600000014000000000000000000000000000000000000
      00000000000000000000000000000000000000000018003D03CA006204FE004C
      03E1004303D2004303D2004303D2004303D2004303D2004603D7006204FF005E
      04FA001901810000001200000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000018003D03CA006204FE004C
      03E1004303D2004303D2004303D2004303D2004303D2004603D7006204FF005E
      04FA001901810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000017003502BD006204FF005304EB0045
      03D6004503D5004D03E2006004FC005E04F90003002F00000000000000000000
      00000000000000000000000000000000000000000018003D03CA006204FE004C
      03E1004303D2004303D2004303D2004303D2004303D2004603D7006204FF005E
      04FA001901810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000018002001930053
      04EA006204FF006204FF006204FF006204FF006204FF006204FF004303D40008
      004B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000018002001930053
      04EA006204FF006204FF006204FF006204FF006204FF006204FF004303D40008
      004B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D00140075005103E80062
      04FF006204FF005A04F400230198000000130000000000000000000000000000
      0000000000000000000000000000000000000000000000000018002001930053
      04EA006204FF006204FF006204FF006204FF006204FF006204FF004303D40008
      004B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
  end
  inherited ImgPequenaVe: TImageList
    Left = 1131
    Bitmap = {
      494C010106000001E4050E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000380000001C00000001002000000000008018
      0000000000000000000000000000000000000005003C004803DA0024019A000A
      0054000200250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008003502BC0014007400010021000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002002B005904F3003402BA0032
      02B7003D03CA001D018A00000008000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000230198000D
      005F005604EF006204FF005804F2002E02AE000A005300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D003702BF000700470000
      00000024019A006204FF0025019C000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006204FF0024
      019B004A03DD006204FF006204FF006204FF005C04F700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000001D018A0025019C0001
      0022002A01A7006204FF006204FF002601A00000000500000000000000000000
      0000000000000000000000000000000000000000000000000000006004FD0020
      0193004A03DE006204FF006204FF006204FF005804F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005003D005904F30062
      04FF006204FF006204FF006204FF006204FF002801A30000000B000000000000
      0000000000000000000000000000000000000000000000000000006004FD0020
      0193004A03DE006204FF006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002001300710060
      04FD006204FF006204FF006204FF006204FF006204FF002901A40000000A0000
      0000000000000000000000000000000000000000000000000000006004FD0020
      0192005104E7006204FF006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000012
      006F006204FF006204FF006204FF006204FF006204FF006204FF002C02AB0000
      0000000000000000000000000000000000000000000000000000006004FD0025
      019C00200194003302B8006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000012006E005E04FA006204FF006204FF006204FF006204FF003102B40004
      0036000000190000000000000000000000000000000000000000006004FD0025
      019C00200194003302B8006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000011006C005E04F9006204FF006204FF002D02AC000B0056004A
      03DD000A00540000000000000000000000000000000000000000006004FD0020
      0192005104E7006204FF006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000011006C006204FF002D02AD00090051004803DB0019
      0180001B01850011006C00000000000000000000000000000000006004FD0020
      0193004A03DE006204FF006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000060041000D005D004903DC0018007E0016
      0078006204FF003A03C400000000000000000000000000000000006004FD0020
      0193004A03DE006204FF006204FF006204FF005704F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000010006A001C01880018007F0062
      04FF005604EF0007004800000000000000000000000000000000006204FF0024
      019B004A03DD006204FF006204FF006204FF005F04FB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001001F005704F0004F
      04E60009004F000000000000000000000000000000000000000000230198000D
      005E005504EE006204FF006204FF005504ED002D02AC00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004000200290001
      0023000000000000000000000000000000000000000000000000000000000000
      0007003A03C50021019600090051000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000150076005404EC0016
      0079000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000140075006204FF006204FF005A
      04F50000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000140074006204FF006204FF006204FF0014
      00750000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010022006204FF000F00660000
      000000000000000000000000000000010022003502BB006204FF006204FF003E
      03CC000300330000000000000000000000000000001000130071003402B90043
      03D3002D02AC000A005400010022005804F1006204FF006204FF001400750000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010022006204FF000F00660000
      000000000000000000000000000000030033003E03CC0000001100000000003E
      03CC004A03DD00000000000000000005003A004E03E3004503D5001600790010
      006700200192005104E8004B03DF005804F1005104E700140074000000000000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010022006204FF000F00660000
      0000000000000000000000000000000000000000000000000000000000000015
      0077006204FF000000000001001B005304EA002001920002002D001B0187001D
      018B000300300001001D003903C3004D03E20001002200000000000000000000
      000000000000006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF00000000000000000062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF0000000000010022006204FF000F00660000
      000000000000000000000000000000000000000000000000000000010022003E
      03CC002B01AA0000000000200193003903C30003002E004F03E5003102B4000B
      00560001001D0000000000000018005104E9000A005300000000000000000000
      000000000000006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF00000000000000000062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF0000000000010022006204FF006204FF0062
      04FF006204FF00230199000000000000000000000000000F0066006204FF003E
      03CC0000000000000000004303D4000A0055003002B30025019E000000000000
      000000000000000000000000000000220197002D02AD00000000000000000000
      000000000000006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF00000000000000000062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF0000000000010022006204FF000F00660000
      0000000000000000000000000000000000000000000000000000000100220055
      04EE0015007700000000005804F10005003E003202B70001001D000000000000
      000000000000000000000000000000150076004503D500000000000000000000
      000000000000006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF006204FF006204FF00000000000000000062
      04FF006204FF006204FF006204FF006204FF006204FF006204FF006204FF0062
      04FF006204FF006204FF006204FF0000000000010022006204FF000F00660000
      0000000000000000000000000000000000000000000000000000000000000035
      02BB003502BB00000000004A03DD000A00530009004D00000000000000000000
      0000000000000000000000000000001B0187003402BA00000000000000000000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010022006204FF000F00660000
      000000000000000000000000000000000011003E03CC00000011000100220055
      04EE001C018800000000002C02AB002E02AF0000000000000000000000000000
      0000000000000000000000000005004A03DE0013007200000000000000000000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010022006204FF006204FF0062
      04FF006204FF006204FF004A03DD00000000003502BB006204FF006204FF0035
      02BB000000110000000000030032005E04FA0010006700000000000000000000
      0000000000000000000200230199004E03E30000000F00000000000000000000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000F0064005E04FA002E02AE000900510005
      003C000D0060003D03CA004F04E6000400380000000000000000000000000000
      00000000000000000000000000000000000000000000006204FF006204FF0062
      04FF006204FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000040035002B01A9004903DC0057
      04F0004303D3002001930001001E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000380000001C0000000100010000000000E00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited BUS_CD_C_AUS_PAD: TClientDataSet
    Left = 1020
    Top = 404
  end
  inherited BUS_CD_C_AUS_PRG_PAD: TClientDataSet
    Left = 1056
    Top = 232
  end
  inherited imgBotoesAtivoLa: TImageList
    Bitmap = {
      494C01010800DC00500218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DCC7FFF1F6
      F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF4EEFF6EAAE8FF267EFFFF4B95
      DCFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9F
      EDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9FEDFF5C9F
      EDFF5198E2FF267EFFFF4A94F4FFCFE2E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3587C7FF5398
      87FF98C09AFFE8F1E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C9FEEFF267EFFFF267EFFFFDBEA
      DDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4
      EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4EDFFECF4
      EDFFE1EDE2FF2780FFFF267EFFFF4A94F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF2A80BCFF75AB78FFF1F6F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F8F4FF609E64FF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF4C9497FFEDF5EDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFF
      FFFFFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF147061FF66A4B1FFDBE9F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF89B8BAFF267EFEFF64A4F5FF6FAAFFFF6FAAFFFF6FAAFFFF6FAA
      FFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF65A5F6FF3588F6FF4C9498FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF9F9F9FFC9C9C9FF879BB7FF267EFFFF267EFFFF267E
      FFFF267EFFFF526F9BFF819FCAFFC8C8C8FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFF4F9F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAF6FF66A5F6FF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEBEBEBFF838383FF3F7AD1FF2977E9FF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF3873CAFFC1C1C1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFFFFFFFFF6FAAFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF589DEAFFEAF2EAFFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE8E8E8FF666666FF267EFEFF267EFFFF267EFFFF267EFFFF304E77FF3C5A
      85FF277EFEFF277EFFFF267EFEFF5D5D5EFFF9F9F9FFF0F0F0FFECECECFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFBFDFBFFB7D4
      FFFFB6D4FFFF569CFFFF267EFFFFFFFFFFFFA0C7FFFF6FAAFFFF6FAAFFFF6FAA
      FFFF6FAAFFFF91BEF1FFF1F6F1FFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFFB6D4
      FFFFBCD6D5FFF9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFF838D9BFF2A6ED3FF267EFFFF3181F2FF7488A5FFC1C1C1FFECECECFFF7F7
      F7FFEFEFEFFFC5C5C5FF878787FFE7E7E7FFFDFDFDFF939393FF3B5884FF8FA2
      BFFFD7D7D7FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFA7C9A9FF267E
      FEFF267EFFFF267EFFFF267EFFFFFFFFFFFF9FC6FFFF6EAAFFFF6EAAFFFF6EAA
      FFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFFE2EEE3FF6FAAFFFF267EFFFF267E
      FFFF2C81D6FF79AE7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5
      C5FF3276DBFF267EFFFF267EFFFF9CB0CCFFF0F0F0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFF0F0F0FF658DC6FF267EFFFF2B79
      ECFF4985DAFF8C8C8DFFD6D6D6FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFFFFFFFFFF70AAFFFF2780FFFF2780FFFF2780
      FFFF2780FFFF2780FFFF2780FFFF2780FFFFD4E5D5FF6FAAFFFF267EFFFF267E
      FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFF4E4E
      4FFF267EFFFF267EFFFF8D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8FF4782D7FF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF7A99C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFF267E
      FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFF277E
      FFFF267EFFFF45638FFFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBBFF326DC3FF267EFFFF267E
      FFFF267EFFFF346FC5FF6188C1FFA1A1A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAA
      FFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF3E8DFFFF267EFFFF267E
      FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87AEE6FF267E
      FFFF267EFFFF7796C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A9EBAFF2876E8FF267EFFFF267E
      FFFF267EFFFF346FC6FFEBEBEBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF69A7FAFFF0F6
      F0FF277EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFFCCE1
      CFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
      FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
      FFFFDDEBDFFF277EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF277EFFFF267E
      FFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF95B2DDFFFFFFFFFFFCFCFCFFFAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B79A4FF34517CFF686868FF267E
      FFFF267EFFFF535355FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF529AFCFFACCE
      F5FF277EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF61A1ACFFD5E5D5FF62A1
      ACFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EA5DEFF267E
      FFFF267EFFFF70A2E9FF9CB9E4FF697D9BFFC7C7C7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFABABABFFD6D6D6FFE3E3E3FF296E
      D2FF267EFFFF326DC3FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF6FAAFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF61A1ACFFD4E5D5FF61A1
      ACFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACACFF267E
      FFFF267EFFFF267EFFFF267EFFFF4782D8FFD7D7D7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFF296E
      D2FF267EFFFF545455FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF277EFFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780
      FFFF2780FFFF277EFFFF277EFFFF277EFFFF277EFFFF2780FFFF267EFEFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFF80B183FF267E
      FDFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF408A45FFFFFFFFFFFFFFFFFFFFFFFFFFA7C4EEFF425F8BFF267E
      FEFF267EFFFF267EFFFF267EFFFF5D99EEFFEEEEEEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8AFF267E
      FFFF267EFFFF7B7B7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF569BE8FFE7F1E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE5F0FDFFAECFF6FFACCDF4FFC3DBF3FFFAFCFAFF7EB082FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFF8FAF8FF81B1
      83FF6FAAFFFF3F8DFFFF267EFFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAA
      FFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF3F8DFFFF267EFFFF6FAA
      FFFF7AAFADFFF4F8F4FFFFFFFFFFFFFFFFFF9F9F9FFF3C5984FF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF8D8D8DFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1FF395682FF267E
      FFFF2D71D5FFC9CACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF60A2F2FFF2F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D5FFFF267EFFFF267EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBFFB9C2D0FF6583AEFF267E
      FEFF267EFFFF267EFFFF267EFFFFBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEFF7B7B7BFF267EFEFF267E
      FFFF5F7DA9FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF60A2F2FFF2F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D5FFFF267EFFFF267EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCF
      CFFF55719DFF267EFFFF267EFFFFEDEDEDFFFFFFFFFFD9D9D9FFF7F7F7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FF6785B0FF267EFFFF267EFFFF3671
      C7FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF60A2F2FFF2F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D5FFFF267EFFFF267EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAAFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FF91B8F0FF6AA5FAFFFDFDFDFFCECECEFF36547EFF56739FFF8DAB
      D6FFADADADFFA4ADBBFF7A98C3FF3F5C88FF267EFFFF267EFFFF2D68BEFF8B8B
      8BFFF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF60A2F2FFF2F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D5FFFF267EFFFF267EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFF267EFFFF267EFFFF267EFFFF61A2DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6FAAFFFF267EFFFFEAF2EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF4EEFF5D9FEEFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFAFAFAFFE9E9E9FF668EC7FF267EFFFF267EFFFF267E
      FFFF2D68BFFF2A6FD3FF267EFFFF267EFFFF267EFFFF3B6BB4FFA4A4A4FFEFEF
      EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF2780FFFF2780FFFFFEFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFEFF267EFEFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF60A2F2FFF2F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D5FFFF267EFFFF267EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFF267EFFFF267EFFFF4993DAFFD9E8DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF95BF97FF267EFDFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF609E64FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FF9D9D9DFF3A3A3AFF267EFFFF267E
      FEFF267EFFFF267EFFFF267EFEFF277EFFFF606060FFD2D2D2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF1F78B1FF408DD1FF529685FF81B283FFC4DBC5FFF7FAF7FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF5FA1F1FFF1F6F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC7DEF7FF3688F7FF267EFFFF62A3F4FFF4F8F4FF9BC29DFF267E
      FFFF267EFFFF3F8DD1FFC0D8C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8FAF8FF96BF98FF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAA
      FFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF6FAAFFFF89B8BAFFF4F8F4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAFFB5B5B5FF9292
      92FF6FAAFEFF79A1DAFF9D9D9DFFC8C8C8FFF6F6F6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF378682FF7BB0
      C4FFAECEB0FFD1E2D2FFF1F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94BFDCFF267EFFFF267EFFFF267E
      FFFF388AF9FFADCEDEFFDAE8DAFFDAE8DAFFDAE8DAFFDAE8DAFFDAE8DAFFDAE8
      DAFFDAE8DAFFD2E3D2FFA2C7D2FF92BEDAFFA7CAD8FFCEE1CFFF4B94DCFF267E
      FFFF267EFFFFCFE2D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94BFDCFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF5299
      E4FFE3EEE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFCFFE1EDE1FFC4DB
      C5FFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4
      FFFFC1D9C2FFFDFEFDFFFFFFFFFFE4EEE4FF9BC3E4FF63A2AFFF3A8886FF5A9D
      A6FF90BDD9FFB6D4FFFFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFFE7E7E7FFD0D0
      D0FFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFD9D9D9FFCDE0
      FDFFB6D4FFFFCDE0FDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCBE0E4FF60A0ACFF116E5DFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF4A9296FFADCE
      DEFFF7FAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFCFFE1EDE1FFC4DB
      C5FFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4
      FFFFC1D9C2FFFDFEFDFFFFFFFFFFE4EEE4FF9BC3E4FF63A2AFFF3A8886FF5A9D
      A6FF90BDD9FFD5E5D6FFFEFFFEFFFFFFFFFFFFFFFFFFA8CBD9FF5097E2FF3386
      C6FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF73AA76FFFDFEFDFFC4DBC5FF5399E4FF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFFA7CAA9FFFEFEFEFFFFFFFFFFB0C3E0FF5692E7FF3F7A
      D0FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF78A0D9FF6CA7
      FCFF267EFFFF3C8BFDFF6CA8FDFFBEBEBEFFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF4792F0FF267EFFFF4B9397FF66A4B0FF66A4B0FF66A4B0FF66A4B0FF66A4
      B0FF66A4B0FF66A4B0FF66A4B0FF66A4B0FF66A4B0FF54989FFF267EFEFF408E
      D2FFD1E3D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8CBD9FF5097E2FF3386
      C6FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF73AA76FFFDFEFDFFC4DBC5FF5399E4FF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF4590D6FFA7CAA9FFFEFEFEFFD8E8DAFF267EFFFF267EFFFF277E
      FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF4B92
      95FFF9FCF9FFEAF2EBFF5A9DEBFF267EFFFF267EFFFF267EFFFF2780FFFF267E
      FFFF267EFFFF267EFFFF4590D6FFD5E5D6FFE1E1E1FF267EFFFF267EFFFF4F4F
      50FF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFFA6A6A6FF6FAA
      FFFF267EFFFFE4E4E4FF9C9C9CFF267EFFFF6AA6FCFFFCFCFCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9
      F5FF267EFFFF569AA2FFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70A873FF267E
      FFFFB0D0F8FFFFFFFFFFFFFFFFFFFFFFFFFFD8E8DAFF267EFFFF267EFFFF277E
      FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF2780FFFF4B92
      95FFF9FCF9FFEAF2EBFF5A9DEBFF267EFFFF6CA56FFF559AE5FF267EFEFF3B8B
      CEFF93BD96FF308134FF4590D6FFD5E5D6FF267EFFFF2980EBFF96BFC8FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAFCFF6FF267EFFFF267EFFFF267EFFFF76ADC1FFFFFFFFFF9DC4
      E5FF267EFFFF267EFFFF267EFFFF90BCDAFF5C7AA6FF267EFFFF9AB8E3FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDB
      DBFF277EFFFFEEEEEEFFCCCCCCFF277EFFFF267EFFFF81B3FAFFFBFBFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFFD9E9F2FFACCDF4FFE0EDE1FFF8FBF8FFC1DA
      F1FFACCDF4FFF1F7F1FFEBF3ECFFACCDF4FFC3DBF3FFFAFCFAFF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF469091FF267EFFFF93BEDCFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFADCEC7FF257DCFFF267EFFFFD8E8DAFFF0F6F0FF79AE7CFF9AC3
      FAFFF8FBF8FF95BE97FF267EFFFF90BCDAFF267EFFFF3E8CD0FFCFE1D0FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF87B7CFFF267EFFFF267EFFFF9DC4E5FFC2DADBFFFFFFFFFFD3E4
      EBFF9DC4E5FF277EFFFF267EFFFF5B9DA6FF267EFFFF4186EAFFD1DBE9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCFF2780FFFF609CF1FF5894E9FF267EFFFF267EFFFF267EFFFF69A6FBFFF9F9
      F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF3B8BE4FFCBE0E4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF87B7CFFF267EFFFF267EFFFF69A6CBFFE2EDE2FFFAFCFAFFFAFC
      FAFF98C2F8FF3B8ACEFF267EFFFF3F8EE9FF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF65A2AFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2780FFFF267EFFFF3A8886FF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC6C6C6FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF69A5
      FAFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF65A2AFFF267EFFFF267EFFFF3A8ACCFFC9DECAFFFFFFFFFFFAFC
      FAFF78AD7AFF267EFDFF267EFFFF3A8886FF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF90BCD8FF267EFFFF267EFFFF76ADC1FFACCDC6FFFFFFFFFFC2DA
      DBFF76ADC1FF267EFFFF267EFFFF63A2AEFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAEC1DDFF3887F8FF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF7EB1F8FFF9FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF90BCD8FF267EFFFF267EFFFFB1CFB3FFF6FAF6FFCCE0CDFFE3EE
      E4FFF0F6F1FF6BA56FFF267EFFFF63A2AEFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB2D1F9FF267EFFFF267EFFFF267EFFFF76ADC1FFFFFFFFFF9DC4
      E5FF267EFFFF267EFFFF267EFFFF9AC3E4FF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8FFAFC2DEFF277EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFFE5E6E6FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB8D4D1FF2D82D6FF267EFFFFB5D2B7FFB2D0B3FF3C8BCDFF6AA6
      CCFFD7E7D8FF6EA671FF267EFFFF9AC3E4FF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F9F5FF64A4F5FF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF5399E5FFE4EEE4FF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6FF267EFFFF267EFFFF267EFFFF267E
      FFFFA3C0EBFF878787FF6CA8FDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F9F5FF64A4F5FF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF5399E5FFE4EEE4FF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDBE9DCFF65A4F5FF2C82D6FF267EFFFF267EFFFF267E
      FFFF267EFFFF599DEBFFC3DAC5FFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1C4E0FF3887F9FF267EFFFF85AC
      E4FF8599B6FF4F8ADFFFA9B3C1FFC9D3E1FFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDBE9DCFF65A4F5FF2C82D6FF267EFFFF267EFFFF267E
      FFFF267EFFFF599DEBFFC3DAC5FFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9F5FFB8D4D1FF8FBCD8FF65A2AFFF87B7
      D0FFAFCFF6FFEAF2EBFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFB3C6E2FFA3C0EBFF8699
      B6FF6790C9FFBCBCBCFF4A90F3FF4186EAFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9F5FFB8D4D1FF8FBCD8FF65A2AFFF87B7
      D0FFAFCFF6FFEAF2EBFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9FF518C
      E1FFBEBEBEFF277EFFFF267EFFFF91AFDAFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F7F2FF5F9FABFFB9D5D2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FF708FBAFFC2CCDBFFFFFFFFFFE5E5
      E5FF5F9AEFFF267EFFFF82A9E2FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F7F2FF5F9FABFFB9D5D2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5EFFF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FF267EFFFF83A1CCFFFFFFFFFFFBFB
      FBFFCBDEFBFFB6D3FEFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFF9DC4E5FF267EFFFFAECEB1FFECF4EDFF5C9F
      EDFF267EFFFFDAE8DAFFCADECBFF277EFFFF60A2F2FFF2F7F2FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5EFFF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5EFFF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FF267EFFFF83A1CCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFFB3D0B4FF4F9352FFC8DDC9FFF2F7F3FF7DB0
      80FF4F9352FFE6F0E6FFDAE8DBFF4F9352FF80B183FFF6F9F6FF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5EFFF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8E7D9FF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0FF267EFFFF83A1CCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5
      EFFF267EFFFF76ADC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FC4A1FF267E
      FFFFACCDF4FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8E7D9FF267EFFFF76ADC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCADFCCFF74AD
      D6FF6EAAFFFF6EAAFFFF6EAAFFFF5299E4FF267EFFFF88B8D2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5FF7DA5
      DEFF6EAAFFFF6EAAFFFF6EAAFFFF5894E9FF267EFFFF92AFDAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F0E6FF85B6E6FF67A3
      6AFF267EFFFF418EEAFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAA
      FFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF6EAAFFFF4E96E0FF267E
      FFFF5299FBFF6EAAFFFFCCE0CDFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCADFCCFF74AD
      D6FF6EAAFFFF6EAAFFFF6EAAFFFF5299E4FF267EFFFF88B8D2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BA6B6FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A98C3FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E3D3FF418ED2FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFEFFA4C8A6FFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFB6D4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF61A2F2FFF2F7F2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7694BFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF88AFE7FFF4F4F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF4ECFF87B68AFF267E
      FEFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF65A26AFFD9E8DAFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF82B5E2FFF2F7F2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF7CB1C7FFCFE3FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF4E8ADFFFDFDFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7694BFFF267E
      FFFF267EFFFF267EFFFF267EFFFF89A6D1FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F0E6FF2278
      6CFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF237A9DFFD8E8D9FFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF7CB1C7FFEFF5EFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFEFF3788C9FFC7DDC8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF62A1ACFF267E
      FFFF267EFFFF267EFFFF7CB1C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFEFF427CD3FFD2D2D2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7391BCFF267E
      FFFF267EFFFF267EFFFF89A6D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE
      FDFFEFF5EFFFEFF5EFFFEFF5EFFF8BB9D3FF267EFFFF89B78BFFEFF5EFFFEFF5
      EFFFEFF5EFFFEFF5EFFFABCCADFF267EFFFF579CE9FFDEEBDEFFEFF5EFFFEFF5
      EFFFF8FBF8FFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFB6D4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267E
      FFFF267EFFFF267EFFFF7CB1C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BA56EFF267EFFFF78AFF2FFC7DD
      C9FFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFD1E3D3FF418EBCFF267E
      FFFF267EFFFF78B0DAFFEBF3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8AFF267EFFFF7BADF4FFD2D2
      D3FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDADADAFF267EFFFF267E
      FFFF267EFFFF81A8E1FFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBCD7EDFF2F84F0FF267EFFFFBED8EFFFD3E4
      D4FFD4E5D5FFC7DDE0FF569BFEFF267EFFFF7DB2DEFFFDFEFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF569BE7FF267EFFFF78AFF2FFB6D4
      FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFFB6D4FFFF267EFFFF267E
      FFFF267EFFFF78B0DAFFEBF3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F0E7FF4993C4FF267EFFFF3788
      C9FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF418ED3FF267EFFFF267E
      FFFF89B8D2FFEDF4EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFF5588CEFF267EFFFF427C
      D3FF4E8ADFFF4E8ADFFF4E8ADFFF4E8ADFFF4E8ADFFF4A85DBFF267EFFFF267E
      FFFF92B0DAFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F1E8FF579CE8FF267EFFFF2F84F0FF428F
      D5FF4390D5FF3789E1FF267EFFFF267EFFFFD0E2D1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F0E7FF4993C4FF267EFFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF89B8D2FFEDF4EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F0E7FF569BE7FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF3C8BCFFFB4D1
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFF8A8A8AFF267E
      FEFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF4682D7FFC3C3
      C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F7F2FF8AB78CFF23796DFF267E
      FFFF267EFFFF267EFFFF68A4B3FFECF3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F0E7FF569BE7FF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF3C8BCFFFB4D1
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
  end
  inherited ImgPequenaLa: TImageList
    Top = 283
    Bitmap = {
      494C01010600000188020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000380000001C00000001002000000000008018
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FF267EFFFFA2A2A2FFE4E4E4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFFB3B3B3FF267EFFFF267EFFFF267EFFFF727272FFBCBCBCFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF828282FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF898989FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF898989FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF8A8A8AFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF828282FF888888FF6A6A6AFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF828282FF888888FF6A6A6AFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF8A8A8AFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277FFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF898989FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF898989FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFF828282FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF267EFFFFB3B3B3FF267EFFFF267EFFFF267EFFFF267EFFFF747474FFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FF267EFFFF868686FFBEBEBEFFEDEDEDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A1FF267EFFFF267E
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCFCFFF267E
      FFFF267EFFFF267EFFFFE2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A1FF267EFFFF267EFFFF267E
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000DFDFDFFF267E
      FFFF267EFFFF267EFFFF267EFFFF267EFFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A2A2FF267EFFFF267EFFFF267EFFFFA1A1
      A1FF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000F5F5F5FF267E
      FFFFC4C4C4FFFFFFFFFF267EFFFF267EFFFF267EFFFFFBFBFBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000277FFF000000
      0000000000000000000000000000DBFFFF00277FFF00277FFF00277FFF00FFDB
      90000000000000000000FFFFFFFFFFFFFFFFF2F2F2FFA5A5A5FF267EFFFF267E
      FFFF267EFFFFBCBCBCFFE4E4E4FF267EFFFF267EFFFF267EFFFFA1A1A1FFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFF267E
      FFFF267EFFFFE4E4E4FF267EFFFF267EFFFF267EFFFF267EFFFFFBFBFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000277FFF000000
      000000000000000000000000000000000000000000000000000090DBFF00277F
      FF00FFDB900000000000FFFFFFFFD1D1D1FF267EFFFF267EFFFF9E9E9EFFADAD
      ADFF8A8A8AFF267EFFFF267EFFFF267EFFFF267EFFFFA2A2A2FFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFFCECE
      CEFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFFF6F6
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000277FFF000000
      0000000000000000000000000000000000000000000000000000277FFF00277F
      FF00FFFFB60000000000E9E9E9FF267EFFFF8A8A8AFF267EFFFF939393FF9090
      90FFD9D9D9FFE8E8E8FF267EFFFF267EFFFFE4E4E4FFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF0000000000FFFFFFFFFDFD
      FDFFA4A4A4FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000277FFF00277F
      FF00277FFF00277FFF00277FFF000000000066B6FF00277FFF00277FFF000000
      00000000000000000000267EFFFF267EFFFFDADADAFF267EFFFF267EFFFF267E
      FFFFE8E8E8FFFFFFFFFFECECECFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF0000000000FFFFFFFFFFFF
      FFFFFFFFFFFFA7A7A7FF267EFFFF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000277FFF000000
      0000000000000000000000000000000000000000000000000000277FFF00277F
      FF000000000000000000267EFFFFBBBBBBFF267EFFFF267EFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF0000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA7A7A7FF267EFFFF267EFFFF267EFFFF267EFFFF267E
      FFFF267EFFFFD3D3D3FFECECECFFFFFFFFFF0000000000000000277FFF000000
      00000000000000000000000000000000000000000000000000003A90DB00277F
      FF00FFFFDB0000000000267EFFFFCDCDCDFF267EFFFFE8E8E8FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000277FFF00277FFF00277FFF00277FFF00277FFF00277FFF00277F
      FF00277FFF00277FFF00277FFF00277FFF00277FFF0000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FF267EFFFF267EFFFF267EFFFF267E
      FFFFBABABAFF267EFFFFBEBEBEFFFFFFFFFF0000000000000000277FFF000000
      0000000000000000000000000000B6FFFF00277FFF00FFFFDB00277FFF00277F
      FF000000000000000000267EFFFFBDBDBDFFC1C1C1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9FF267EFFFF267EFFFFBEBE
      BEFF267EFFFF989898FF959595FFA3A3A3FF0000000000000000277FFF00277F
      FF00277FFF00277FFF00277FFF00000000003A90DB00277FFF00277FFF00FFFF
      B6000000000000000000267EFFFF267EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFBFBFF267EFFFFA4A4A4FFFFFFFFFFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBFFB4B4B4FF267E
      FFFF9A9A9AFF9F9F9FFF267EFFFF267EFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D7FF267EFFFFADADADFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDFF267EFFFF267EFFFFF3F3F3FFFFFFFFFFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAFF9393
      93FF999999FF267EFFFF267EFFFFC5C5C5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFAFAFAFFF267EFFFF267EFFFFBEBEBEFFCFCF
      CFFFB2B2B2FF267EFFFF267EFFFFD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000000000000277FFF00277FFF00277F
      FF00277FFF000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6
      E6FF267EFFFF267EFFFF267EFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFD5D5D5FF267EFFFF267EFFFF267E
      FFFF267EFFFF267EFFFFE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCFFDDDDDDFFDFDFDFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      28000000380000001C0000000100010000000000E00000000000000000000000
      000000000000000000000000FFFFFF000003FFF0000000000003FFF000000000
      0003FFF0000000000003FFF0000000000003FFF0000000000002001000000000
      0002001000000000000200100000000000020010000000000003FFF000000000
      0003FFF0000000000003FFF0000000000003FFF0000000000003FFF000000000
      FFFC000FFFC00000FFFC000F87C00000FFFC000F87C00000DE0C000F87C00000
      DFC4000F87C00000DFC4000800400000C11C000800400000DFCC000800400000
      DFC4000800400000DE0C000F87C00000C10C000F87C00000FFFC000F87C00000
      FFFC000F87C00000FFFC000FFFC0000000000000000000000000000000000000
      000000000000}
  end
  object dsoCPG: TwwDataSource
    DataSet = dmGeral.CAD_CD_C_PAR_CPG
    OnStateChange = dsoStateChange
    Left = 1056
    Top = 299
  end
  object dsoSer: TwwDataSource
    DataSet = dmGeral.CAD_CD_C_PAR_SER
    OnStateChange = dsoStateChange
    Left = 1112
    Top = 299
  end
  object NFE: TACBrNFe
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 1099
    Top = 241
  end
  object odPesqCertRPS: TOpenDialog
    Left = 1094
    Top = 406
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
    Left = 1038
    Top = 342
  end
  object dsoBxp: TwwDataSource
    DataSet = dmGeral.CAD_CD_C_PAR_BXP
    OnStateChange = dsoStateChange
    Left = 1112
    Top = 355
  end
  object dsoRstPed: TwwDataSource
    DataSet = dmGeral.CAD_CD_C_PAR_RST
    OnStateChange = dsoStateChange
    Left = 1112
    Top = 451
  end
  object dsoBxr: TwwDataSource
    DataSet = dmGeral.CAD_CD_C_PAR_BXR
    Left = 1016
    Top = 456
  end
  object dsoEml: TwwDataSource
    DataSet = dmGeral.CAD_CD_C_PAR_EML
    Left = 224
    Top = 176
  end
  object opPathPfx: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 208
    Top = 336
  end
  object BUS_CD_C_TME_EXP4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_TME'
    RemoteServer = dmGeral.pcConecao
    Left = 64
    Top = 250
    object BUS_CD_C_TME_EXP4descricao: TWideStringField
      DisplayWidth = 30
      FieldName = 'descricao'
      Size = 30
    end
    object BUS_CD_C_TME_EXP4id_tipo_mov_estoque: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_tipo_mov_estoque'
    end
    object BUS_CD_C_TME_EXP4tipo_movimento: TIntegerField
      FieldName = 'tipo_movimento'
      Visible = False
    end
    object BUS_CD_C_TME_EXP4ativo: TBooleanField
      FieldName = 'ativo'
      Visible = False
    end
    object BUS_CD_C_TME_EXP4esto_critica: TBooleanField
      FieldName = 'esto_critica'
      Visible = False
    end
    object BUS_CD_C_TME_EXP4esto_movimenta: TBooleanField
      FieldName = 'esto_movimenta'
      Visible = False
    end
    object BUS_CD_C_TME_EXP4cfo_interno_pf: TWideStringField
      FieldName = 'cfo_interno_pf'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4cfo_interno_pj: TWideStringField
      FieldName = 'cfo_interno_pj'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4cfo_externo_pf: TWideStringField
      FieldName = 'cfo_externo_pf'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4cfo_externo_pj: TWideStringField
      FieldName = 'cfo_externo_pj'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4indicador: TIntegerField
      FieldName = 'indicador'
      Visible = False
    end
    object BUS_CD_C_TME_EXP4int_nomeipf: TWideStringField
      FieldName = 'int_nomeipf'
      Visible = False
      Size = 30
    end
    object BUS_CD_C_TME_EXP4int_nomeipj: TWideStringField
      FieldName = 'int_nomeipj'
      Visible = False
      Size = 30
    end
    object BUS_CD_C_TME_EXP4int_nomeepf: TWideStringField
      FieldName = 'int_nomeepf'
      Visible = False
      Size = 30
    end
    object BUS_CD_C_TME_EXP4int_nomeepj: TWideStringField
      FieldName = 'int_nomeepj'
      Visible = False
      Size = 30
    end
    object BUS_CD_C_TME_EXP4cod_lme: TWideStringField
      FieldName = 'cod_lme'
      Visible = False
    end
    object BUS_CD_C_TME_EXP4rev_lme: TWideStringField
      FieldName = 'rev_lme'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4cfo_servico_dentro: TWideStringField
      FieldName = 'cfo_servico_dentro'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4cfo_servico_fora: TWideStringField
      FieldName = 'cfo_servico_fora'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4cfo_interno_icm_s_pf: TWideStringField
      FieldName = 'cfo_interno_icm_s_pf'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4cfo_interno_icm_s_pj: TWideStringField
      FieldName = 'cfo_interno_icm_s_pj'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4cfo_externo_icm_s_pf: TWideStringField
      FieldName = 'cfo_externo_icm_s_pf'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4cfo_externo_icm_s_pj: TWideStringField
      FieldName = 'cfo_externo_icm_s_pj'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4cfo_exterior_pf: TWideStringField
      FieldName = 'cfo_exterior_pf'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_TME_EXP4cfo_exterior_pj: TWideStringField
      FieldName = 'cfo_exterior_pj'
      Visible = False
      Size = 5
    end
  end
  object BUS_CD_C_TME_EXP5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_TME'
    RemoteServer = dmGeral.pcConecao
    Left = 64
    Top = 316
  end
  object BUS_CD_C_CPG_REP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_CPG'
    RemoteServer = dmGeral.pcConecao
    Left = 56
    Top = 394
    object BUS_CD_C_CPG_REPdescricao: TWideStringField
      DisplayWidth = 30
      FieldName = 'descricao'
      Size = 30
    end
    object BUS_CD_C_CPG_REPid_condicao_pag: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_condicao_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BUS_CD_C_CPG_REPativo: TBooleanField
      FieldName = 'ativo'
      Visible = False
    end
    object BUS_CD_C_CPG_REPtipo_pagamento: TIntegerField
      FieldName = 'tipo_pagamento'
      Visible = False
    end
    object BUS_CD_C_CPG_REPnum_parcelas: TIntegerField
      FieldName = 'num_parcelas'
      Visible = False
    end
    object BUS_CD_C_CPG_REPcod_lme: TWideStringField
      FieldName = 'cod_lme'
      Visible = False
    end
    object BUS_CD_C_CPG_REPrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Visible = False
      Size = 5
    end
    object BUS_CD_C_CPG_REPper_desc: TFloatField
      FieldName = 'per_desc'
    end
    object BUS_CD_C_CPG_REPperm_desc_especial: TBooleanField
      FieldName = 'perm_desc_especial'
    end
    object BUS_CD_C_CPG_REPsgq_texto_cnd_ped: TBooleanField
      FieldName = 'sgq_texto_cnd_ped'
    end
  end
end
