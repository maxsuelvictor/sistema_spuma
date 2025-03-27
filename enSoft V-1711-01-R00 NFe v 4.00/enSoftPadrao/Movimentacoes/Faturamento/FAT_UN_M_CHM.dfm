inherited FAT_FM_M_CHM: TFAT_FM_M_CHM
  ClientHeight = 534
  ClientWidth = 1023
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 1029
  ExplicitHeight = 562
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlDireita: TPanel
    Width = 1023
    Height = 504
    ExplicitWidth = 1023
    ExplicitHeight = 504
    inherited pnlDados: TPanel
      Left = 0
      Top = 0
      Width = 1023
      Height = 521
      Align = alTop
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 1023
      ExplicitHeight = 521
      inherited pnlBotoes: TPanel
        Top = 432
        Width = 1019
        Height = 85
        ExplicitTop = 432
        ExplicitWidth = 1019
        ExplicitHeight = 85
        object Label3: TLabel [0]
          Left = 0
          Top = 0
          Width = 455
          Height = 22
          Align = alCustom
          Alignment = taCenter
          AutoSize = False
          Caption = 
            'Atualizar datas de vencimentos dos pedidos selecionados apenas p' +
            'ara impress'#227'o'
          Color = 16563629
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        inherited btnSair: TButton
          Left = 894
          Top = 29
          Width = 115
          Height = 39
          Anchors = [akRight, akBottom]
          ImageAlignment = iaLeft
          TabOrder = 3
          ExplicitLeft = 894
          ExplicitTop = 29
          ExplicitWidth = 115
          ExplicitHeight = 39
        end
        inherited btnImprime: TcxButton
          Left = 571
          Top = 30
          Width = 115
          Height = 39
          Anchors = [akRight, akBottom]
          OptionsImage.Layout = blGlyphLeft
          TabOrder = 4
          Visible = False
          ExplicitLeft = 571
          ExplicitTop = 30
          ExplicitWidth = 115
          ExplicitHeight = 39
        end
        object cbAtualiza: TCheckBox
          Left = 16
          Top = 40
          Width = 193
          Height = 17
          Caption = 'Atualizar as datas de vencimento'
          TabOrder = 0
          OnClick = cbAtualizaClick
        end
        object btnAtualiza: TBitBtn
          Left = 253
          Top = 36
          Width = 73
          Height = 25
          Caption = 'Atualizar'
          TabOrder = 1
          OnClick = btnAtualizaClick
        end
        object BitBtn1: TBitBtn
          Left = 779
          Top = 29
          Width = 115
          Height = 39
          Anchors = [akRight, akBottom]
          Caption = 'Visualizar'
          TabOrder = 2
          OnClick = BitBtn1Click
        end
      end
      object pnFiltro: TPanel
        Left = 0
        Top = 0
        Width = 1019
        Height = 66
        Align = alTop
        TabOrder = 1
        object lblDataBase: TLabel
          Left = 3
          Top = 16
          Width = 57
          Height = 13
          Caption = 'Data base :'
        end
        object lblAlmoxarifado: TLabel
          Left = 698
          Top = 30
          Width = 42
          Height = 13
          Caption = 'Cliente :'
        end
        object lblNomeCli: TLabel
          Left = 827
          Top = 27
          Width = 159
          Height = 21
          AutoSize = False
          Color = 14342874
          ParentColor = False
          Transparent = False
        end
        object Label8: TLabel
          Left = 328
          Top = 32
          Width = 42
          Height = 13
          Caption = 'Pedido :'
        end
        object lblPedNomeCli: TLabel
          Left = 455
          Top = 28
          Width = 150
          Height = 21
          AutoSize = False
          Color = 14342874
          ParentColor = False
          Transparent = False
        end
        object Label9: TLabel
          Left = 3
          Top = 44
          Width = 132
          Height = 13
          Caption = 'Qtde dias primeiro vecto :'
        end
        object gbFiltroPedidos: TGroupBox
          Left = 310
          Top = 0
          Width = 371
          Height = 26
          Caption = 'Buscar pedidos '
          TabOrder = 5
          Visible = False
          object lblPeriodo: TLabel
            Left = 6
            Top = 25
            Width = 46
            Height = 13
            Caption = 'Per'#237'odo :'
          end
          object lblAte: TLabel
            Left = 154
            Top = 25
            Width = 16
            Height = 13
            Caption = 'at'#233
          end
          object deInicial: TJvDateEdit
            Left = 58
            Top = 22
            Width = 90
            Height = 21
            ShowNullDate = False
            TabOrder = 0
          end
          object deFinal: TJvDateEdit
            Left = 176
            Top = 22
            Width = 90
            Height = 21
            ShowNullDate = False
            TabOrder = 1
          end
          object btnFiltro: TcxButton
            Left = 272
            Top = 21
            Width = 23
            Height = 23
            OptionsImage.ImageIndex = 1
            OptionsImage.Images = ImgPequena
            OptionsImage.Layout = blGlyphTop
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = btnFiltroClick
          end
        end
        object deBase: TJvDateEdit
          Left = 66
          Top = 12
          Width = 90
          Height = 21
          Enabled = False
          ShowNullDate = False
          TabOrder = 0
          OnEnter = deBaseEnter
          OnExit = deBaseExit
        end
        object rgRelacaoCheques: TRadioGroup
          Left = 172
          Top = 5
          Width = 154
          Height = 56
          Caption = 'Rela'#231#227'o de Cheques '
          Items.Strings = (
            'Por pedido'
            'Unificar Pedidos')
          TabOrder = 2
          OnClick = rgRelacaoChequesClick
        end
        object txtCliente: TJvComboEdit
          Left = 746
          Top = 27
          Width = 80
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
          TabOrder = 6
          Text = ''
          OnButtonClick = txtClienteButtonClick
          OnExit = txtClienteExit
          NumbersOnly = True
        end
        object btnBusCliente: TcxButton
          Left = 987
          Top = 26
          Width = 23
          Height = 23
          OptionsImage.ImageIndex = 1
          OptionsImage.Images = ImgPequena
          OptionsImage.Layout = blGlyphTop
          TabOrder = 7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnBusClienteClick
        end
        object txtCodPed: TJvComboEdit
          Left = 374
          Top = 28
          Width = 80
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
          TabOrder = 3
          Text = ''
          OnButtonClick = txtClienteButtonClick
          OnExit = txtCodPedExit
          NumbersOnly = True
        end
        object btnAdicionar: TcxButton
          Left = 606
          Top = 26
          Width = 61
          Height = 23
          Caption = 'Marcar'
          OptionsImage.ImageIndex = 1
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnAdicionarClick
        end
        object txtQtdeDias: TEdit
          Left = 137
          Top = 39
          Width = 29
          Height = 21
          NumbersOnly = True
          TabOrder = 1
          OnExit = txtQtdeDiasExit
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 66
        Width = 1019
        Height = 366
        Align = alClient
        TabOrder = 2
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 454
          Height = 364
          Align = alLeft
          TabOrder = 0
          object Label1: TLabel
            Left = 1
            Top = 216
            Width = 452
            Height = 22
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Vencimentos do Pedido'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitTop = 169
          end
          object Label2: TLabel
            Left = 1
            Top = 42
            Width = 452
            Height = 22
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Pedidos de Venda'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitLeft = -4
            ExplicitTop = 49
            ExplicitWidth = 447
          end
          object grdPedTit: TwwDBGrid
            Left = 1
            Top = 238
            Width = 452
            Height = 125
            Selected.Strings = (
              'id_titulo'#9'10'#9'C'#243'digo'
              'int_nomefpg'#9'21'#9'Forma de pagamento'
              'dias'#9'6'#9'Dias'
              'vlr_titulo'#9'13'#9'Valor'
              'dta_vencimento'#9'15'#9'Vencimento')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 4
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = dsPedTit
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            OnKeyDown = grdPedTitKeyDown
          end
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 452
            Height = 41
            Align = alTop
            TabOrder = 0
          end
          object grdPedido: TwwDBGrid
            Left = 1
            Top = 64
            Width = 452
            Height = 128
            ControlType.Strings = (
              'int_selecao;CheckBox;True;False')
            Selected.Strings = (
              'int_selecao'#9'2'#9'     '#9#9
              'id_pedido'#9'8'#9'Pedido'#9#9
              'dta_pedido'#9'10'#9'Data'#9#9
              'int_nomecli'#9'40'#9'Cliente'#9'F'
              'int_nomecpg'#9'16'#9'Condi'#231#227'o pagto'#9#9
              'vlr_liquido'#9'11'#9'Vlr. liquido'#9#9)
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsPed
            TabOrder = 2
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            OnCalcCellColors = grdPedidoCalcCellColors
          end
          object Panel7: TPanel
            Left = 1
            Top = 192
            Width = 452
            Height = 24
            Align = alTop
            TabOrder = 3
            object Label27: TLabel
              Left = 82
              Top = 4
              Width = 75
              Height = 13
              Align = alCustom
              Alignment = taCenter
              AutoSize = False
              Caption = 'Em Produ'#231#227'o'
              Color = clBlue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label28: TLabel
              Left = 1
              Top = 4
              Width = 75
              Height = 13
              Align = alCustom
              Alignment = taCenter
              AutoSize = False
              Caption = 'Faturado'
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
          end
        end
        object Panel4: TPanel
          Left = 519
          Top = 1
          Width = 495
          Height = 364
          Align = alLeft
          TabOrder = 1
          object Label4: TLabel
            Left = 1
            Top = 42
            Width = 493
            Height = 22
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Pedidos de Venda'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitLeft = 2
            ExplicitTop = 50
            ExplicitWidth = 396
          end
          object Label5: TLabel
            Left = 1
            Top = 192
            Width = 493
            Height = 22
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Vencimentos do Pedido'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitLeft = 6
            ExplicitTop = 180
            ExplicitWidth = 396
          end
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 493
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label6: TLabel
              Left = 1
              Top = 14
              Width = 491
              Height = 26
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Caption = 'Vencimentos a serem impresso'
              Color = 3355443
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
              ExplicitLeft = 8
              ExplicitTop = 8
              ExplicitWidth = 449
              ExplicitHeight = 22
            end
            object Label7: TLabel
              Left = 1
              Top = 1
              Width = 491
              Height = 13
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              Color = 3355443
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
          end
          object grdPedImp: TwwDBGrid
            Left = 1
            Top = 64
            Width = 493
            Height = 128
            ControlType.Strings = (
              'unificado;CheckBox;True;False')
            Selected.Strings = (
              'id_pedido'#9'10'#9'Pedido'
              'dta_pedido'#9'10'#9'Data'
              'int_nomecli'#9'22'#9'Cliente'
              'int_nomecpg'#9'20'#9'Condi'#231#227'o '
              'vlr_liquido'#9'10'#9'Vlr. l'#237'quido')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsPedImp
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            PopupMenu = pmPedImp
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
          end
          object grdPedTitImp: TwwDBGrid
            Left = 1
            Top = 214
            Width = 493
            Height = 107
            Selected.Strings = (
              'id_titulo'#9'10'#9'C'#243'digo'
              'int_nomefpg'#9'21'#9'Forma de pagamento'
              'dias'#9'6'#9'Dias'
              'vlr_titulo'#9'14'#9'Valor'
              'dta_vencimento'#9'12'#9'Vencimento')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 4
            ShowHorzScrollBar = True
            DataSource = dsPedTitImp
            TabOrder = 2
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            OnCalcCellColors = grdPedTitImpCalcCellColors
            OnKeyDown = grdPedTitImpKeyDown
          end
        end
        object Panel6: TPanel
          Left = 455
          Top = 1
          Width = 64
          Height = 364
          Align = alLeft
          TabOrder = 2
          DesignSize = (
            64
            364)
          object Image1: TImage
            Left = 23
            Top = 159
            Width = 35
            Height = 33
            Anchors = []
            Picture.Data = {
              0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
              0020000000200806000000737A7AF40000000467414D410000B18E7CFB519300
              0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
              003A980000176F925FC546000000097048597300000B0C00000B0C013F4022C8
              00000856494441545847A597075094671AC7B77EFB2DEC2E2EB0B0A288A00615
              148458013116ECB10635B633B146134FC43644A3413D3CDB054D345E34D18B1A
              7B200A1614A588A2A008162C73B11BE72C907237E666FEF77FBF5D5C3068CCF9
              CCFC8732ECFB7BDEA7BD0FAA9731BF0D9640BFF59644BF2F2D79F5BEB254F8AD
              37A3EE3A33EC9F99E09B6A82CF32F74AEF056E85D60463B2699014C18FC8945A
              F9F0AB18411104E6046EB6223A2D00C3B2C230253706B34F76C39CC2EEFCDA15
              8905B118772402FDD38211B9CE0EDF0526D4F9B35CECD64BDF874798298D72D8
              1FB1BA9F9BADBCEDAAA02D9EE899D114334F74C7D2B3A3F0C5C599D87635057B
              FEF909BEA5765C5B8A8DE573915A3A091F170DC28C139D30F1682462BEF087F7
              0C3798864ABBF54D342D78E4CB4744C0EB6DB29444EEAACFDB75C1DF4AC72BC0
              821FD271E15101AE3C2EC2A5472771EEC1519CBA9F899CBB3BB0EFC63A6CBE92
              ACFC6D52614F4CCE6B8D1159216838D7036EC3A51B5ABBA6238F16D178B11355
              F08EE9415850344039B4F07E06AEFF7801377F2A571CC8BBBB1B7BAFAFC1D6AB
              8BF1657912A3324B89CCBA8B89585D36051F17C763CAF1688C38168AB7B25F43
              E30556C803F4B735DEEAAE443CDF89EAF045C54390F6FD6A943F2EC4AD9F2EA3
              F4612E3278CB7517A72BA19E75B20B1208F920BFADA2A9C7DB21F1442C124E74
              C6FBAC8931B991883FDA0CFD0E3742AFAC4004245920F5D4DDD178BDC00991F3
              B67B1A60FEE9FECC6F2AAE569CC1F73F96E1D89DEDF8FCC274CC3BD517EFE7B7
              C1A4DC70456B2F4C6324D662E3E57998901B8677725A60D4D1100C3BDA1C83B3
              83096F8C1E590DD1E55003743C580FDEEF19A18FD2E612D58A1235E13251ED81
              5F5B31BDA033365DFE08E71FE6E34A459192DB65257F424241CC53B0D0CA7363
              51DDF2EE7D8B11040F2178C09126E8733808DD09EF7CC81F3184B73B6047789A
              378CF17A681BA817101940B9BA833D9E1397DE04CB4BDE618E77294526F2BCF8
              CC304CCD6F57032E246EFEAC65B336FA1F698CDE84C76505E08D43F5117DC00F
              6DF7FBA255A60DA1199EF04D7683D4457B8BC8384AA442A5B2AF310736D8E081
              69F99DB0E5CA4294B0BAB36E6DC292B3236B84BCBA16B2D07EFEB5D28976D9A1
              3B3BD18D21EF74B03E3A1CA88BD68487677A2384F0D7F6792060970972BC0EAC
              8564A21B516A95EF2A7362BB6FFC915C3418FB6FAE47FEBD3D58737E2A6FDEBE
              567855BE934E0FC4FD7FDF72A25D76A5B20C718783F1FA7E1F8411DE3CC38A26
              8437FCCE847AE96EB0CC90A06BA93946780C25AB7C569AF2DECA0855F27AF0E6
              57D87E6D8932E16A838FCF09C318B65755BE47E644E01A5BF4592BAF2C45D4A1
              2034DD6745E3BD163420DC8FF0BAE94678AD3240EAACBD47F8DB944DE5B3DCBD
              6242761B7CCA1E1603470C1301130E556905B5ECDCBB4829198385674763FE99
              91985B3C1C738A866146D1105CAD3CEF44BBEC62C539841FF047E05E0FC28D0A
              5CC8778B0C435FDD13C213A920956D89BB52E5A9A513B1FED26CA5DD0EDFFEDA
              79CCAB595945099A66DA6B382064E8AF03E18BA91095172B73DAF128A49C198E
              A525A395DBFF524B81FDBF967937DDE5409A434E075650612ACF796ECA344B2A
              ECA14838F0AFFFDC767EFCD56D59F942870302BEC721433FC5819554B8CA3ADB
              C8C72342E9F7AA9E5FCA7970F15121CE731E9451A58F4EE0DCC3029CA5CE3C3C
              8E62EAF4837C9C7A908742EAD62FD79DB89AB6EDC63F5CA127D8FE8DACC8F066
              35073C12E4CA510742F05E6E2BC25B616C4E4B8C3E1682B739CBC563D28FC345
              CCF3AAFE8EE27069E31C2EA2BFFB733FA878F2D88974590D3865DF6984CF0619
              B6D506187AE97E25DC9102F304B9B0CFD6464A7FBFCBFE1E79AC39866637C520
              8ED437F998F4E448ED4A782C47AA182ED5FBBB5F6EF44BC145F87D3713CE16AC
              F391042956FB90F0BF50212AF7A152728B145B8DFE1E48785F8E54C763E29AE7
              9184B7CCF44233F677DF9CDAE1A2E86AC085187E9FBFCBF04A31C034560F5D73
              4D19E133A820951CAB8BA8334E46FCC160C42B8F49F579EE8FE883629EDB3956
              ED6891E1C5E15207B147426B858BB60B66DBD5808BDB6F95E1BDCC00CFB90C7F
              6F2DD416751AE1C3291BA592E581FAE2967FB5298F8923DF01BFC9B7784C9AD1
              81C0BD66AC285FE444BAAC563865DF65846D8D0C6B9204D3683DF4D1DA4764A6
              52624B529E65B5BEB5B68F6988846EFB029CF9763D268E7C7B3AE6F95EC73C1F
              94DFDD8975D8F3E04AE859789EF3252EAACC7D572DB8196593399D6A2CD8C201
              6166CEE7DD3E93DD94E5E1D97C8B791E506D9ED7FBCE5D7142E45B14DCF3E0BE
              1B99F7452C3CC2E59E5AE8C2B437C95A4DB99E63A76934FEEA165C9B6ED49DE5
              8E0886BC2ADF8D94C7C4FD37E3F4B962CE95965BEF807B7C20C1D85B077D7BED
              CF6A836A2759E3A99A0B89D3648D4DDD51EAA1BB6D9B694430E141CC77FD7477
              C714AB526D502101DEED6CB74F19F679123C26EB61ECA183AEAD024F27630E25
              FE71310AE0B326F261168B239DB8639924C16F27432E0E6621D9B753DBA81D14
              6FA8FC4E48FCCCE926C22DC05E0B19F2040996717AC89D19F6364FE11F52ED05
              C3C9AAD59E3A211648B1BDD4996FE0AD1CF9B4AD7540C4341343C53B955A6E50
              426DFD9085368DE0F17AB8F565C83B101EAAB9AD9655BB78A6B8790771B693F1
              42539CA05A890552EC70F2601DCCCCA598629E8B2405E839578275367F9748E8
              443D4CC37530F622388AE0D7B515BC440ECF100537818A749EF9BBF02A137F28
              7A54144B9CD8E1B846E5489DB43F4871BA2752372DA437B4D077A462A828ED7F
              D9CA15DA60CD250E19116E01160B470FAA212572FED2F0EA262A55782E1648B1
              C389354A8C5031C7C563225E3421F17D0A359B1A4975A29A5016EA8FFF735A8B
              5545448CCE202A840AA3C29D12DF875262B8F8502F796395EA7F92791D6A56A2
              324B0000000049454E44AE426082}
            OnClick = Image1Click
          end
        end
      end
    end
  end
  inherited pnlTop: TJvPanel
    Width = 1023
    ExplicitWidth = 1023
    inherited pnlCima: TJvPanel
      Width = 1023
      ExplicitWidth = 1023
      inherited lblCodificacaoLMestre: TLabel
        Width = 1018
        ExplicitWidth = 915
      end
      inherited lblTitulo: TLabel
        Width = 1023
        Caption = 'Rela'#231#227'o de Cheques ao Motorista'
        ExplicitWidth = 920
      end
      inherited pnlBaixo: TPanel
        Width = 1023
        ExplicitWidth = 1023
      end
    end
  end
  inherited imgBotoesAtivo: TImageList
    Left = 1019
    Top = 19
    Bitmap = {
      494C01010800A800AC0118001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Bitmap = {
      494C010108003001000218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000060606390000
      000E000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000122E2E2E96717171EC5555
      55CD474747BC474747BC474747BC474747BC474747BC474747BC474747BC4747
      47BC474747BC474747BC474747BC474747BC474747BC474747BC474747BC4747
      47BC505050C77B7B7BF6434343B6050505340000000000000000000000000000
      00070B0B0B4A545454CC858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF5A5A5AD30F0F
      0F57000000090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000686868E34141
      41B3151515670101011700000000000000000000000000000000000000000000
      0000000000000000000000000000000000002B2B2B92838383FE666666E10202
      0224000000130000001300000013000000130000001300000013000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      00130101011E585858D0848484FE434343B60000000000000000000000000303
      032B535353CA757575F15F5F5FD85B5B5BD45B5B5BD45B5B5BD45B5B5BD45B5B
      5BD45B5B5BD45B5B5BD45B5B5BD45B5B5BD45B5B5BD4616161DA757575F05858
      58D00707073B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000000858585FF8585
      85FF858585FF737373EE262626890000000E0000000000000000000000000000
      000000000000000000000000000000000000797979F4858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF7D7D7DF80000000000000000000000000808
      083F858585FF363636A400000012000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101193232329D8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000010000
      0001000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF7D7D7DF7373737A503030328000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF0000000000000000000000000808
      083F858585FF2D2D2D9500000000050505320F0F0F560F0F0F560F0F0F560F0F
      0F560F0F0F560D0D0D50000000120000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      0000000000000000000000000008090909432B2B2B925A5A5AD36D6D6DE87676
      76F06F6F6FEA5A5A5AD32E2E2E980A0A0A460000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF0000000000000000000000000808
      083F858585FF2D2D2D95000000002C2C2C94858585FF858585FF858585FF8585
      85FF858585FF747474EF050505360000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      000000000000010101193131319B6A6A6AE5838383FD858585FF858585FF8585
      85FF858585FF858585FF858585FF727272ED0C0C0C4E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF0000000814141463212121803333
      33A0858585FF2D2D2D95000000000A0A0A492020207F2020207F2020207F2020
      207F2020207F1C1C1C770101011B0000000000000000000000002020207F8585
      85FF3B3B3BAB2121218015151566000000100000000000000000000000000000
      00000101011D494949BF858585FF858585FF858585FF848484FE7B7B7BF56C6C
      6CE6787878F3848484FE858585FF525252C80000000700000012010101180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF1C1C1C776D6D6DE7858585FF8585
      85FF858585FF2D2D2D95000000000F0F0F572D2D2D952D2D2D952D2D2D952D2D
      2D952D2D2D952D2D2D952D2D2D952D2D2D951A1A1A71000000162020207F8585
      85FF858585FF858585FF6F6F6FE9212121800000000000000000000000000000
      00013030309A838383FE858585FF787878F33B3B3BAA0C0C0C4D010101170000
      000A000000140A0A0A482D2D2D950101011E0000000224242487737373EF2626
      2689050505320000000300000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF6F6F6FEA858585FF858585FF8585
      85FF858585FF2D2D2D95000000002C2C2C94858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF4B4B4BC0020202262020207F8585
      85FF858585FF858585FF858585FF717171EC0000000000000000000000000A0A
      0A49787878F3858585FF858585FF1D1D1D780000001200000000000000000000
      00000000000000000000000000070000000000000013454545B8858585FF8181
      81FB5F5F5FD82A2A2A9005050534000000030000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF2D2D2D9500000000020202240808083F0808083F0808083F0808
      083F0808083F0808083F0808083F0808083F0404042F000000092020207F8585
      85FF858585FF858585FF858585FF858585FF0000000000000000000000066262
      62DC858585FF858585FF2929298F000000000000000000000000000000000000
      00000000000000000000000000000000000004040431616161DB858585FF8585
      85FF858585FF858585FF797979F42C2C2C940000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CB0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EAF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF2D2D2D9500000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002020207F8585
      85FF858585FF858585FF858585FF858585FF00000000000000000707073D8484
      84FE858585FF686868E20000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F56797979F5858585FF8585
      85FF858585FF787878F3494949BE1B1B1B750000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF545454CC0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F3F3FB0858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF7B7B7BF66F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F
      6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA7B7B7BF58585
      85FF858585FF858585FF858585FF858585FF00000000000000001A1A1A718585
      85FF858585FF373737A400000000000000000000000000000000000000000000
      0000000000000000000000000000000000002929298E858585FF858585FF8585
      85FF858585FF494949BD01010119000000020000000000000000000000000000
      0000000000000000000000000000858585FF858585FF000000013E3E3EAF0000
      000F848484FE858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF7B7B7BF60505
      0533000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      000102020222767676F1858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8484
      84FE858585FF858585FF858585FF858585FF0000000000000000242424868585
      85FF858585FF2121218000000000000000050000000600000000000000000000
      000000000000000000000000000000000000505050C67E7E7EF7474747BB8282
      82FC858585FF5D5D5DD600000003000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001525252CA1212
      1260848484FE858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF545454CB1313
      13611D1D1D786A6A6AE5858585FF858585FF0000000000000000222222838585
      85FF858585FF333333A01C1C1C76434343B70A0A0A4600000000000000000000
      0000000000000000000000000000000000021616166905050532020202238181
      81FC858585FF686868E200000008000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF393939A80303
      0328060606395A5A5AD3858585FF858585FF0000000000000000151515688585
      85FF858585FF7B7B7BF5838383FE616161DB0404043100000000000000000000
      00000000000000000000000000000000000000000000000000000707073D8484
      84FE858585FF5C5C5CD500000003000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF838383FD555555CC3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E
      3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF494949BD858585FF8585
      85FF858585FF858585FF858585FF858585FF747474EF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF616161DB2929
      298E333333A0717171ED858585FF757575F0000000010606063B434343B68585
      85FF858585FF858585FF858585FF4B4B4BC00000001600000000000000000000
      00000000000000000000000000000000000000000000000000002B2B2B918585
      85FF858585FF373737A400000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF4C4C4CC20101011800000000000000000000000000000000000000000000
      000000000000000000110D0D0D51121212600909094500000005212121808585
      85FF858585FF858585FF858585FF858585FF23232384707070EB858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF727272ED2828288D1D1D1D78737373EE858585FF8585
      85FF858585FF858585FF858585FF2828288D0000000300000000000000000000
      0000000000000000000000000000000000000000000002020226777777F28585
      85FF808080FA0808084200000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF454545B80000000D00000000000000000000000000000000000000000000
      0000000000000404042D5E5E5ED7858585FF454545B80000000D121212608585
      85FF858585FF858585FF858585FF858585FF000000091A1A1A722C2C2C943E3E
      3EAF858585FF5A5A5AD32C2C2C942C2C2C942C2C2C942C2C2C942C2C2C942C2C
      2C942C2C2C942C2C2C942C2C2C942C2C2C942C2C2C942C2C2C94525252CA8585
      85FF454545B82C2C2C941C1C1C7600000012010101190F0F0F56474747BB8585
      85FF858585FF858585FF858585FF0D0D0D530000000000000000000000000000
      00000000000000000000000000000000000000000016363636A4858585FF8585
      85FF4C4C4CC10000000600000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF454545B80000000D00000000000000000000000000000000000000000000
      0000000000000404042D5E5E5ED7858585FF454545B80000000D121212608585
      85FF858585FF858585FF858585FF858585FF0000000000000000000000000808
      083F858585FF2D2D2D9500000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000707
      073C575757CF858585FF7F7F7FFA01010117000000000404042F000000090000
      000000000000000000000000000000000012454545B8858585FF858585FF7575
      75F00C0C0C4D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF454545B80000000D00000000000000000000000000000000000000000000
      0000000000000404042D5E5E5ED7858585FF454545B80000000D121212608585
      85FF858585FF858585FF858585FF767676F10000000000000000000000000808
      083F858585FF2D2D2D9500000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      0000000000111717176B25252588000000020707073D7B7B7BF5555555CD2525
      2589151515671A1A1A71343434A06F6F6FEA858585FF858585FF818181FB2A2A
      2A910000000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000858585FF858585FF00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF454545B80000000D00000000000000000000000000000000000000000000
      0000000000000404042D5E5E5ED7858585FF454545B80000000D121212608585
      85FF858585FF858585FF848484FE383838A60000000000000000000000000808
      083F858585FF2D2D2D9500000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      00000000000000000001000000060101011C444444B7858585FF858585FF8585
      85FF818181FB838383FD858585FF858585FF858585FF717171EC1A1A1A720000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000838383FE838383FE00000001858585FF8585
      85FF858585FF858585FF858585FF858585FF848484FE0F0F0F56000000000000
      000000000000000000000000000000000000858585FF858585FF858585FF8585
      85FF454545B80000000D00000000000000000000000000000000000000000000
      0000000000000404042D5E5E5ED7858585FF454545B80000000D121212608585
      85FF858585FF858585FF575757D0020202260000000000000000000000000808
      083F858585FF2D2D2D9500000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002020207F8585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000E1E1E1E7A7B7B7BF5858585FF8585
      85FF858585FF858585FF858585FF848484FE505050C606060638000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000858585FF8585
      85FF7F7F7FF95F5F5FD8434343B52020207E0707073B00000008000000000000
      000000000000000000000000000000000000686868E3858585FF858585FF8585
      85FF464646B90000000E00000000000000000000000000000000000000000000
      00000000000002020226434343B55E5E5ED73131319B0000000B141414648585
      85FF858585FF5F5F5FD90808083F000000000000000000000000000000000808
      083F858585FF373737A600000014000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101011C343434A08585
      85FF0F0F0F560000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101011A1111115D2525
      25883131319C2D2D2D941E1E1E7A090909450000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5BD42A2A
      2A900D0D0D510404042E0000000E000000000000000000000000000000000000
      00000000000000000000000000000000000014141463838383FD858585FF8585
      85FF5F5F5FD80A0A0A4A02020225020202250202022502020225020202250202
      0225020202250404042D0B0B0B4C0D0D0D530909094604040431424242B48484
      84FE4A4A4ABF0404042F00000000000000000000000000000000000000000303
      03294E4E4EC47D7D7DF8717171EC6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F
      6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA6F6F6FEA717171ED7D7D7DF85454
      54CC060606380000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014141463686868E38585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF818181FB3434
      34A10101011C0000000000000000000000000000000000000000000000000000
      00040808083F505050C7858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF575757CF0B0B
      0B4C000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000030101011E0707
      073B090909430909094309090943090909430909094309090943090909430909
      09430707073E00000002000000000101011B1717176D393939A8585858D13F3F
      3FB11E1E1E7B0303032A000000010000000000000000000000030101011E0707
      073B0909094309090943090909430909094309090943090909430404042F0505
      0533060606380101011700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060606383B3B3BAB7F7F7FFA858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF818181FC4B4B4BC11010
      105B0000000800000000000000000000000000000000000000030101011E0707
      073B090909430909094309090943090909430909094309090943090909430909
      09430707073E00000002000000000101011B1717176D393939A8585858D13F3F
      3FB11E1E1E7B0303032A0000000100000000000000001111115C4E4E4EC46A6A
      6AE5717171ED717171ED717171ED717171ED717171ED717171ED717171ED7171
      71ED2727278C000000020707073B4F4F4FC57F7F7FFA858585FF858585FF8585
      85FF838383FE5B5B5BD40F0F0F5800000001000000001111115C4E4E4EC46A6A
      6AE5717171ED717171ED717171ED717171ED717171ED717171ED2E2E2E973333
      339E686868E24B4B4BC02B2B2B930D0D0D520000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003F3F3FB0828282FC4B4B4BC0373737A5373737A5373737A5373737A53737
      37A5373737A5373737A5373737A5373737A5373737A5434343B7818181FB5F5F
      5FD80404042E000000000000000000000000000000001111115C4E4E4EC46A6A
      6AE5717171ED717171ED717171ED717171ED717171ED717171ED717171ED7171
      71ED2727278C000000020707073B4F4F4FC57F7F7FFA858585FF858585FF8585
      85FF838383FE5B5B5BD40F0F0F5800000001030303277F7F7FF9858585FF6262
      62DB3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3838
      38A60000000600000015484848BE858585FF858585FF646464DE3E3E3EAF5A5A
      5AD2858585FF858585FF5B5B5BD40303032A030303277F7F7FF9858585FF6262
      62DB3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF1919196F1818
      186F5E5E5ED7020202221F1F1F7C838383FE2424248700000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A828282FC424242B500000001000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002929298E8383
      83FE1010105B000000000000000000000000030303277F7F7FF9858585FF6262
      62DB3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3E3E3EAF3838
      38A60000000600000015484848BE858585FF2B2B2B922C2C2C94858585FF6363
      63DD1717176C565656CE5B5B5BD40303032A464646BA7D7D7DF81A1A1A710000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F567D7D7DF7858585FF858585FF2D2D2D95000000001919
      196F858585FF858585FF838383FE1E1E1E7B464646BA7D7D7DF81A1A1A710000
      0001000000000000000000000000000000000000000000000000000000000404
      042D7B7B7BF50000001508080840848484FE777777F21F1F1F7C000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0010858585FF2D2D2D95000000000303032A121212600101011F000000070A0A
      0A47121212600000000E00000014121212600909094500000005121212608585
      85FF12121260000000000000000000000000464646BA7D7D7DF81A1A1A710000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F567D7D7DF7858585FF030303270000000F242424850C0C
      0C4D000000071616166A838383FE1E1E1E7B797979F4616161DA040404300000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000024242485858585FF7B7B7BF61919196F08080841000000000404
      04301919196F5A5A5AD2858585FF3F3F3FB0797979F4616161DA040404300000
      0000000000000000000000000000000000000000000000000000000000000000
      00045D5D5DD6414141B34F4F4FC6858585FF858585FF787878F32828288D0000
      0007000000000000000000000000000000000000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000797979F4616161DA040404300000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000024242485858585FF858585FF373737A50101011D000000050000
      00050C0C0C4F636363DD858585FF3F3F3FB0858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000383838A6858585FF757575F00000000000000000000000000000
      0000000000003E3E3EAF858585FF585858D1858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A0A0A47818181FB858585FF858585FF858585FF858585FF858585FF2929
      298F000000060000000000000000000000000000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000383838A6858585FF858585FF646464DE05050536000000000000
      000524242486858585FF858585FF585858D1858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F7C858585FF7F7F7FF92D2D2D950F0F0F57000000000808
      08412D2D2D95646464DE858585FF393939A8858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000121212616D6D6DE8858585FF858585FF858585FF858585FF7A7A
      7AF4222222820000000700000000000000000000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F7C858585FF858585FF0C0C0C4E00000009050505330101
      011C0000000F2C2C2C93858585FF393939A8858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B4B757575F0858585FF858585FF2D2D2D95000000001919
      196F858585FF858585FF7F7F7FFA1717176C858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000081212125F7F7F7FFA858585FF858585FF858585FF8585
      85FF6D6D6DE80202022000000005000000000000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B4B757575F0858585FF0A0A0A4A0C0C0C4D616161DC3636
      36A3030303282A2A2A907F7F7FFA1717176C858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A3B3B3BAB858585FF858585FF7F7F7FF9757575F07B7B
      7BF6858585FF858585FF4F4F4FC50101011B858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A477F7F7FFA858585FF858585FF7B7B
      7BF6141414652D2D2D962727278C000000030000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A3B3B3BAB858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF4F4F4FC50101011B858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020202243B3B3BAA757575F0858585FF858585FF8585
      85FF7D7D7DF7484848BE0707073C00000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111115D6B6B6BE67B7B7BF62424
      24862C2C2C94585858D115151568080808410000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020202243B3B3BAA757575F0858585FF858585FF8585
      85FF7D7D7DF7484848BE0707073C00000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0B0B0B4B1F1F1F7D383838A62424
      24850F0F0F56000000150000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000081010105A141414642C2C
      2C94434343B50D0D0D53575757CF4B4B4BC10000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0B0B0B4B1F1F1F7D383838A62424
      24850F0F0F56000000150000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000000404042F5353
      53CA0D0D0D527A7A7AF4838383FE232323830000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3C3C3CAC0B0B0B4B000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3C3C3CAC0B0B0B4B000000000202
      02213E3E3EAF7B7B7BF62C2C2C94000000130000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D3C3C3CAC0B0B0B4B000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      0005050505340C0C0C4D00000012000000000000000000000000000000000000
      0010858585FF2D2D2D95000000001919196F858585FF0D0D0D51000000134747
      47BC858585FF0202022505050535848484FE454545B80000000D121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010858585FF2D2D2D95000000000B0B0B4C3E3E3EAF060606370000000D2222
      22813E3E3EAF01010119020202253E3E3EAF2020207F00000009121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030327858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030327858585FF2D2D2D95000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010858585FF2D2D2D9500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121212608585
      85FF12121260000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030327858585FF2D2D2D95000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000050505352626
      268A2A2A2A902A2A2A913131319C4F4F4FC6858585FF23232384000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000050505352626
      268A2A2A2A902A2A2A913131319C4F4F4FC6858585FF23232384000000000000
      00000000000000000000000000000000000000000000010101191E1E1E7A2E2E
      2E97858585FF585858D12A2A2A902A2A2A902A2A2A902E2E2E98373737A43939
      39A8393939A8383838A63131319C2A2A2A902A2A2A902A2A2A90464646BA8585
      85FF464646BA2A2A2A900505053300000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000050505352626
      268A2A2A2A902A2A2A913131319C4F4F4FC6858585FF23232384000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      00000000000000000000000000000000000000000000000000003333339F8585
      85FF858585FF858585FF858585FF858585FF737373EE09090944000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      00000000000000000000000000000000000000000000000000003333339F8585
      85FF858585FF858585FF858585FF858585FF737373EE09090944000000000000
      000000000000000000000000000000000000000000000404042D5E5E5ED78585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF1010105B00000000858585FF5A5A5AD2030303280000
      00000000000000000000000000000000000000000000000000003333339F8585
      85FF858585FF858585FF858585FF858585FF737373EE09090944000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF858585FF838383FD2727278B0000000D000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF858585FF838383FD2727278B0000000D000000000000
      00000000000000000000000000000000000000000000000000131D1D1D788585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF2F2F2F990202022600000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF858585FF838383FD2727278B0000000D000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF838383FE2828288D0000001000000000000000000000
      000000000000000000000000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF838383FE2828288D0000001000000000000000000000
      0000000000000000000000000000000000000000000000000000010101196F6F
      6FE9858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF858585FF858585FF858585FF858585FF858585FF858585FF858585FF8585
      85FF767676F1030303270000000000000000858585FF5A5A5AD2030303280000
      0000000000000000000000000000000000000000000000000000373737A58585
      85FF858585FF858585FF838383FE2828288D0000001000000000000000000000
      0000000000000000000000000000000000006F6F6FEA676767E1060606380000
      00000000000000000000000000000000000000000000000000003A3A3AA98585
      85FF858585FF838383FE2828288D000000000000000000000000000000000000
      0000000000000000000000000000000000006F6F6FEA676767E1060606380000
      00000000000000000000000000000000000000000000000000003A3A3AA98585
      85FF858585FF838383FE2828288D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000200000010000000100000001022222281858585FF1C1C1C77000000100000
      001000000010000000100E0E0E54848484FE4B4B4BC102020221000000100000
      0010000000070000000000000000000000006F6F6FEA676767E1060606380000
      00000000000000000000000000000000000000000000000000003A3A3AA98585
      85FF858585FF838383FE2828288D000000000000000000000000000000000000
      0000000000000000000000000000000000002C2C2C93838383FE2F2F2F990606
      063803030328030303280303032803030328030303280404042E595959D28585
      85FF838383FD2D2D2D9600000014000000000000000000000000000000000000
      0000000000000000000000000000000000002C2C2C93838383FE2F2F2F990606
      063803030328030303280303032803030328030303280404042E595959D28585
      85FF838383FD2D2D2D9600000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A47737373EE626262DC090909430303
      032C0303032B060606393C3C3CAD858585FF2626268A00000002000000000000
      0000000000000000000000000000000000002C2C2C93838383FE2F2F2F990606
      063803030328030303280303032803030328030303280404042E595959D28585
      85FF838383FD2D2D2D9600000014000000000000000000000000000000000000
      00000000000000000000000000000000000001010118535353CA838383FE6767
      67E15A5A5AD25A5A5AD25A5A5AD25A5A5AD25A5A5AD25E5E5ED7858585FF7F7F
      7FFA212121810000001200000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010118535353CA838383FE6767
      67E15A5A5AD25A5A5AD25A5A5AD25A5A5AD25A5A5AD25E5E5ED7858585FF7F7F
      7FFA212121810000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010117484848BD858585FF707070EB5D5D
      5DD65C5C5CD5686868E2818181FC7F7F7FF90404042F00000000000000000000
      00000000000000000000000000000000000001010118535353CA838383FE6767
      67E15A5A5AD25A5A5AD25A5A5AD25A5A5AD25A5A5AD25E5E5ED7858585FF7F7F
      7FFA212121810000001200000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101182C2C2C936F6F
      6FEA858585FF858585FF858585FF858585FF858585FF858585FF5B5B5BD40B0B
      0B4B000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101182C2C2C936F6F
      6FEA858585FF858585FF858585FF858585FF858585FF858585FF5B5B5BD40B0B
      0B4B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D1B1B1B756D6D6DE88585
      85FF858585FF797979F42E2E2E98000000130000000000000000000000000000
      00000000000000000000000000000000000000000000010101182C2C2C936F6F
      6FEA858585FF858585FF858585FF858585FF858585FF858585FF5B5B5BD40B0B
      0B4B000000000000000000000000000000000000000000000000000000000000
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
  inherited ImgPequena: TImageList
    Bitmap = {
      494C010112000001FC010E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Bitmap = {
      494C01010800DC00A40118001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Bitmap = {
      494C010106000001F4010E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 931
    Top = 83
    Bitmap = {
      494C01010800DC00B40118001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Bitmap = {
      494C01010600000104020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
  inherited imgBotoesAtivoLa: TImageList
    Bitmap = {
      494C01010800DC00000218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Bitmap = {
      494C01010600000138020E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
  object dsPed: TDataSource
    DataSet = cdsPed
    Left = 160
    Top = 358
  end
  object dsPedTit: TDataSource
    DataSet = cdsPed_Tit
    Left = 160
    Top = 422
  end
  object cdsPed: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id_pedido'
        DataType = ftInteger
      end
      item
        Name = 'id_empresa'
        DataType = ftInteger
      end
      item
        Name = 'dta_pedido'
        DataType = ftDate
      end
      item
        Name = 'id_tipo_mov_estoque'
        DataType = ftInteger
      end
      item
        Name = 'id_vendedor'
        DataType = ftInteger
      end
      item
        Name = 'vlr_bruto'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_desconto'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'per_desconto'
        DataType = ftFloat
      end
      item
        Name = 'vlr_liquido'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'hor_pedido'
        DataType = ftTimeStamp
      end
      item
        Name = 'id_condicao_pag'
        DataType = ftInteger
      end
      item
        Name = 'pcp_obs'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'pcp_id_opr'
        DataType = ftInteger
      end
      item
        Name = 'situacao'
        DataType = ftInteger
      end
      item
        Name = 'situacao_aprovacao'
        DataType = ftInteger
      end
      item
        Name = 'id_atendente'
        DataType = ftInteger
      end
      item
        Name = 'id_responsavel'
        DataType = ftInteger
      end
      item
        Name = 'id_cliente'
        DataType = ftInteger
      end
      item
        Name = 'tipo_restricao'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'id_almoxarifado'
        DataType = ftInteger
      end
      item
        Name = 'justificativa'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'id_usuario_lib'
        DataType = ftInteger
      end
      item
        Name = 'cod_lme'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'rev_lme'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'origem'
        DataType = ftInteger
      end
      item
        Name = 'dispositivo'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'gps_latitude'
        DataType = ftFloat
      end
      item
        Name = 'gps_longitude'
        DataType = ftFloat
      end
      item
        Name = 'cubagem'
        DataType = ftFloat
      end
      item
        Name = 'id_orcamento'
        DataType = ftInteger
      end
      item
        Name = 'envia_carga'
        DataType = ftBoolean
      end
      item
        Name = 'dta_prev_entrega'
        DataType = ftDate
      end
      item
        Name = 'int_nomecli'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'int_nometme'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'int_nomefun'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'int_nomecpg'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'int_nomeate'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'int_nomeres'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'int_nomecid'
        DataType = ftWideString
        Size = 60
      end
      item
        Name = 'int_nomeest'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'int_cpfcnpj'
        DataType = ftWideString
        Size = 14
      end
      item
        Name = 'int_pessoacli'
        DataType = ftInteger
      end
      item
        Name = 'int_id_perfil'
        DataType = ftInteger
      end
      item
        Name = 'id_ors'
        DataType = ftInteger
      end
      item
        Name = 'int_sitaprov'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'int_sitped'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'id_abertura'
        DataType = ftInteger
      end
      item
        Name = 'int_ie_rg_cli'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'int_selecao'
        DataType = ftBoolean
      end
      item
        Name = 'dias_cpg_prazo'
        DataType = ftInteger
      end
      item
        Name = 'int_nomereg'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'offline'
        DataType = ftBoolean
      end
      item
        Name = 'conferido'
        DataType = ftBoolean
      end
      item
        Name = 'id_conf'
        DataType = ftInteger
      end
      item
        Name = 'dta_conf'
        DataType = ftDate
      end
      item
        Name = 'hor_conf'
        DataType = ftTime
      end
      item
        Name = 'resultado_conf'
        DataType = ftInteger
      end
      item
        Name = 'id_resp_conf'
        DataType = ftInteger
      end
      item
        Name = 'int_nome_rcn'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'id_propriedade'
        DataType = ftInteger
      end
      item
        Name = 'mod_frete'
        DataType = ftInteger
      end
      item
        Name = 'vlr_frete'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'id_mkt'
        DataType = ftInteger
      end
      item
        Name = 'can_usuario'
        DataType = ftInteger
      end
      item
        Name = 'can_data'
        DataType = ftDate
      end
      item
        Name = 'can_motivo'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'can_hora'
        DataType = ftTime
      end
      item
        Name = 'int_numloteopr'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'id_motorista'
        DataType = ftInteger
      end
      item
        Name = 'id_placa'
        DataType = ftWideString
        Size = 8
      end
      item
        Name = 'int_nomemta'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'vlr_credito'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_desc_especial'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_desc_basico'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'sgq_per_comissao'
        DataType = ftFloat
      end
      item
        Name = 'int_sitped2'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'qtde_volume'
        DataType = ftFloat
      end
      item
        Name = 'vlr_icm_desn'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'int_sitord'
        DataType = ftInteger
      end
      item
        Name = 'vlr_desc_produtos'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'per_desc_produtos'
        DataType = ftFloat
      end
      item
        Name = 'vlr_produtos'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_serv_bruto'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_desc_servicos'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'per_desc_servicos'
        DataType = ftFloat
      end
      item
        Name = 'vlr_ser_liquido'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_terceiro'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_desc_terceiro'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'per_desc_terceiro'
        DataType = ftFloat
      end
      item
        Name = 'vlr_terc_liquido'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'ped_gera_fin_separado'
        DataType = ftBoolean
      end
      item
        Name = 'vlr_prod_liquido'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'separa_prod_serv'
        DataType = ftBoolean
      end
      item
        Name = 'vlr_cred_produtos'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_cred_servicos'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'obs'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'id_mecanico'
        DataType = ftInteger
      end
      item
        Name = 'sgq_texto_cond_pgto'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'per_desc_basico'
        DataType = ftFloat
      end
      item
        Name = 'per_desc_especial'
        DataType = ftFloat
      end
      item
        Name = 'dta_liberacao'
        DataType = ftDate
      end
      item
        Name = 'int_nomelib'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'FAT_SQ_M_PED_TIT_SER'
        DataType = ftDataSet
      end
      item
        Name = 'FAT_SQ_M_PED_TIT'
        DataType = ftDataSet
      end
      item
        Name = 'FAT_SQ_M_PED_ITE'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'cdsPedIndex2'
        Fields = 'id_pedido'
        Options = [ixDescending]
      end>
    IndexName = 'cdsPedIndex2'
    Params = <>
    ProviderName = 'FAT_DP_M_PED'
    RemoteServer = dmGeral.pcConecao
    StoreDefs = True
    Left = 232
    Top = 358
    object cdsPedint_selecao: TBooleanField
      DisplayLabel = '     '
      DisplayWidth = 2
      FieldName = 'int_selecao'
      ProviderFlags = []
    end
    object cdsPedid_pedido: TIntegerField
      DisplayLabel = 'Pedido'
      DisplayWidth = 8
      FieldName = 'id_pedido'
    end
    object cdsPeddta_pedido: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'dta_pedido'
    end
    object cdsPedint_nomecli: TWideStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 40
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Size = 50
    end
    object cdsPedint_nomecpg: TWideStringField
      DisplayLabel = 'Condi'#231#227'o pagto'
      DisplayWidth = 16
      FieldName = 'int_nomecpg'
      ProviderFlags = []
      Size = 30
    end
    object cdsPedvlr_liquido: TFMTBCDField
      DisplayLabel = 'Vlr. liquido'
      DisplayWidth = 11
      FieldName = 'vlr_liquido'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object cdsPedint_sitped: TWideStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 20
      FieldName = 'int_sitped'
      ProviderFlags = []
      Visible = False
    end
    object cdsPedcubagem: TFloatField
      DisplayLabel = 'Cubagem'
      DisplayWidth = 8
      FieldName = 'cubagem'
      Visible = False
    end
    object cdsPedint_nomefun: TWideStringField
      DisplayLabel = 'Representante'
      DisplayWidth = 13
      FieldName = 'int_nomefun'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object cdsPedint_nomeres: TWideStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 10
      FieldName = 'int_nomeres'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object cdsPedint_nomecid: TWideStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 12
      FieldName = 'int_nomecid'
      ProviderFlags = []
      Visible = False
      Size = 60
    end
    object cdsPedint_nomeest: TWideStringField
      DisplayLabel = 'UF'
      DisplayWidth = 2
      FieldName = 'int_nomeest'
      ProviderFlags = []
      Visible = False
      Size = 2
    end
    object cdsPedobs: TWideStringField
      DisplayLabel = 'Obs'
      DisplayWidth = 40
      FieldName = 'obs'
      Visible = False
      Size = 255
    end
    object cdsPedpcp_obs: TWideStringField
      DisplayLabel = 'Obs p/ produ'#231#227'o'
      DisplayWidth = 70
      FieldName = 'pcp_obs'
      Visible = False
      Size = 100
    end
    object cdsPedint_nometme: TWideStringField
      DisplayLabel = 'Tipo Mov. Est'
      DisplayWidth = 16
      FieldName = 'int_nometme'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object cdsPedid_empresa: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_empresa'
      Visible = False
    end
    object cdsPedid_tipo_mov_estoque: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_tipo_mov_estoque'
      Visible = False
    end
    object cdsPedid_vendedor: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_vendedor'
      Visible = False
    end
    object cdsPedvlr_bruto: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_bruto'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedvlr_desconto: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_desconto'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedper_desconto: TFloatField
      DisplayWidth = 10
      FieldName = 'per_desconto'
      Visible = False
    end
    object cdsPedhor_pedido: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'hor_pedido'
      Visible = False
    end
    object cdsPedid_condicao_pag: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_condicao_pag'
      Visible = False
    end
    object cdsPedpcp_id_opr: TIntegerField
      DisplayWidth = 10
      FieldName = 'pcp_id_opr'
      Visible = False
    end
    object cdsPedsituacao: TIntegerField
      DisplayWidth = 10
      FieldName = 'situacao'
      Visible = False
    end
    object cdsPedsituacao_aprovacao: TIntegerField
      DisplayWidth = 10
      FieldName = 'situacao_aprovacao'
      Visible = False
    end
    object cdsPedid_atendente: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_atendente'
      Visible = False
    end
    object cdsPedid_responsavel: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_responsavel'
      Visible = False
    end
    object cdsPedid_cliente: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_cliente'
      Visible = False
    end
    object cdsPedtipo_restricao: TWideStringField
      DisplayWidth = 100
      FieldName = 'tipo_restricao'
      Visible = False
      Size = 100
    end
    object cdsPedid_almoxarifado: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_almoxarifado'
      Visible = False
    end
    object cdsPedjustificativa: TWideStringField
      DisplayWidth = 100
      FieldName = 'justificativa'
      Visible = False
      Size = 100
    end
    object cdsPedid_usuario_lib: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_usuario_lib'
      Visible = False
    end
    object cdsPedcod_lme: TWideStringField
      DisplayWidth = 20
      FieldName = 'cod_lme'
      Visible = False
    end
    object cdsPedrev_lme: TWideStringField
      DisplayWidth = 5
      FieldName = 'rev_lme'
      Visible = False
      Size = 5
    end
    object cdsPedorigem: TIntegerField
      DisplayWidth = 10
      FieldName = 'origem'
      Visible = False
    end
    object cdsPeddispositivo: TWideStringField
      DisplayWidth = 50
      FieldName = 'dispositivo'
      Visible = False
      Size = 50
    end
    object cdsPedgps_latitude: TFloatField
      DisplayWidth = 10
      FieldName = 'gps_latitude'
      Visible = False
    end
    object cdsPedgps_longitude: TFloatField
      DisplayWidth = 10
      FieldName = 'gps_longitude'
      Visible = False
    end
    object cdsPedid_orcamento: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_orcamento'
      Visible = False
    end
    object cdsPedenvia_carga: TBooleanField
      DisplayWidth = 5
      FieldName = 'envia_carga'
      Visible = False
    end
    object cdsPeddta_prev_entrega: TDateField
      DisplayWidth = 10
      FieldName = 'dta_prev_entrega'
      Visible = False
    end
    object cdsPedint_nomeate: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomeate'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object cdsPedint_cpfcnpj: TWideStringField
      DisplayWidth = 14
      FieldName = 'int_cpfcnpj'
      ProviderFlags = []
      Visible = False
      Size = 14
    end
    object cdsPedint_pessoacli: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_pessoacli'
      ProviderFlags = []
      Visible = False
    end
    object cdsPedint_id_perfil: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_id_perfil'
      ProviderFlags = []
      Visible = False
    end
    object cdsPedid_ors: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_ors'
      ProviderFlags = []
      Visible = False
    end
    object cdsPedint_sitaprov: TWideStringField
      DisplayWidth = 20
      FieldName = 'int_sitaprov'
      ProviderFlags = []
      Visible = False
    end
    object cdsPedid_abertura: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_abertura'
      Visible = False
    end
    object cdsPedint_ie_rg_cli: TWideStringField
      DisplayWidth = 20
      FieldName = 'int_ie_rg_cli'
      ProviderFlags = []
      Visible = False
    end
    object cdsPeddias_cpg_prazo: TIntegerField
      DisplayWidth = 10
      FieldName = 'dias_cpg_prazo'
      Visible = False
    end
    object cdsPedint_nomereg: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomereg'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object cdsPedoffline: TBooleanField
      DisplayWidth = 5
      FieldName = 'offline'
      Visible = False
    end
    object cdsPedconferido: TBooleanField
      DisplayWidth = 5
      FieldName = 'conferido'
      Visible = False
    end
    object cdsPedid_conf: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_conf'
      Visible = False
    end
    object cdsPeddta_conf: TDateField
      DisplayWidth = 10
      FieldName = 'dta_conf'
      Visible = False
    end
    object cdsPedhor_conf: TTimeField
      DisplayWidth = 10
      FieldName = 'hor_conf'
      Visible = False
    end
    object cdsPedresultado_conf: TIntegerField
      DisplayWidth = 10
      FieldName = 'resultado_conf'
      Visible = False
    end
    object cdsPedid_resp_conf: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_resp_conf'
      Visible = False
    end
    object cdsPedint_nome_rcn: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nome_rcn'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object cdsPedid_propriedade: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_propriedade'
      Visible = False
    end
    object cdsPedmod_frete: TIntegerField
      DisplayWidth = 10
      FieldName = 'mod_frete'
      Visible = False
    end
    object cdsPedvlr_frete: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_frete'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedid_mkt: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_mkt'
      Visible = False
    end
    object cdsPedcan_usuario: TIntegerField
      DisplayWidth = 10
      FieldName = 'can_usuario'
      Visible = False
    end
    object cdsPedcan_data: TDateField
      DisplayWidth = 10
      FieldName = 'can_data'
      Visible = False
    end
    object cdsPedcan_motivo: TWideStringField
      DisplayWidth = 100
      FieldName = 'can_motivo'
      Visible = False
      Size = 100
    end
    object cdsPedcan_hora: TTimeField
      DisplayWidth = 10
      FieldName = 'can_hora'
      Visible = False
    end
    object cdsPedint_numloteopr: TWideStringField
      DisplayWidth = 15
      FieldName = 'int_numloteopr'
      ProviderFlags = []
      Visible = False
      Size = 15
    end
    object cdsPedid_motorista: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_motorista'
      Visible = False
    end
    object cdsPedid_placa: TWideStringField
      DisplayWidth = 8
      FieldName = 'id_placa'
      Visible = False
      Size = 8
    end
    object cdsPedint_nomemta: TWideStringField
      DisplayWidth = 80
      FieldName = 'int_nomemta'
      ProviderFlags = []
      Visible = False
      Size = 80
    end
    object cdsPedvlr_credito: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_credito'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedvlr_desc_especial: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_desc_especial'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedvlr_desc_basico: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_desc_basico'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedsgq_per_comissao: TFloatField
      DisplayWidth = 10
      FieldName = 'sgq_per_comissao'
      Visible = False
    end
    object cdsPedint_sitped2: TWideStringField
      DisplayWidth = 20
      FieldName = 'int_sitped2'
      ProviderFlags = []
      Visible = False
    end
    object cdsPedqtde_volume: TFloatField
      DisplayWidth = 10
      FieldName = 'qtde_volume'
      Visible = False
    end
    object cdsPedvlr_icm_desn: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_icm_desn'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedint_sitord: TIntegerField
      DisplayWidth = 10
      FieldName = 'int_sitord'
      ProviderFlags = []
      Visible = False
    end
    object cdsPedvlr_desc_produtos: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_desc_produtos'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedper_desc_produtos: TFloatField
      DisplayWidth = 10
      FieldName = 'per_desc_produtos'
      Visible = False
    end
    object cdsPedvlr_produtos: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_produtos'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedvlr_serv_bruto: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_serv_bruto'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedvlr_desc_servicos: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_desc_servicos'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedper_desc_servicos: TFloatField
      DisplayWidth = 10
      FieldName = 'per_desc_servicos'
      Visible = False
    end
    object cdsPedvlr_ser_liquido: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_ser_liquido'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedvlr_terceiro: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_terceiro'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedvlr_desc_terceiro: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_desc_terceiro'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedper_desc_terceiro: TFloatField
      DisplayWidth = 10
      FieldName = 'per_desc_terceiro'
      Visible = False
    end
    object cdsPedvlr_terc_liquido: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_terc_liquido'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedped_gera_fin_separado: TBooleanField
      DisplayWidth = 5
      FieldName = 'ped_gera_fin_separado'
      Visible = False
    end
    object cdsPedvlr_prod_liquido: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_prod_liquido'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedsepara_prod_serv: TBooleanField
      DisplayWidth = 5
      FieldName = 'separa_prod_serv'
      Visible = False
    end
    object cdsPedvlr_cred_produtos: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_cred_produtos'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedvlr_cred_servicos: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'vlr_cred_servicos'
      Visible = False
      Precision = 18
      Size = 4
    end
    object cdsPedid_mecanico: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_mecanico'
      Visible = False
    end
    object cdsPedsgq_texto_cond_pgto: TWideStringField
      DisplayWidth = 80
      FieldName = 'sgq_texto_cond_pgto'
      Visible = False
      Size = 80
    end
    object cdsPedper_desc_basico: TFloatField
      DisplayWidth = 10
      FieldName = 'per_desc_basico'
      Visible = False
    end
    object cdsPedper_desc_especial: TFloatField
      DisplayWidth = 10
      FieldName = 'per_desc_especial'
      Visible = False
    end
    object cdsPeddta_liberacao: TDateField
      DisplayWidth = 10
      FieldName = 'dta_liberacao'
      Visible = False
    end
    object cdsPedint_nomelib: TWideStringField
      DisplayWidth = 50
      FieldName = 'int_nomelib'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object cdsPedFAT_SQ_M_PED_TIT: TDataSetField
      DisplayWidth = 10
      FieldName = 'FAT_SQ_M_PED_TIT'
      Visible = False
    end
  end
  object cdsPed_Tit: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedFAT_SQ_M_PED_TIT
    Params = <>
    Left = 232
    Top = 422
    object cdsPed_Titid_titulo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'id_titulo'
    end
    object cdsPed_Titint_nomefpg: TWideStringField
      DisplayLabel = 'Forma de pagamento'
      DisplayWidth = 21
      FieldName = 'int_nomefpg'
      ProviderFlags = []
      Size = 30
    end
    object cdsPed_Titdias: TIntegerField
      DisplayLabel = 'Dias'
      DisplayWidth = 6
      FieldName = 'dias'
    end
    object cdsPed_Titvlr_titulo: TFMTBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 13
      FieldName = 'vlr_titulo'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object cdsPed_Titdta_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 15
      FieldName = 'dta_vencimento'
    end
    object cdsPed_Titid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Visible = False
    end
    object cdsPed_Titche_banco: TWideStringField
      FieldName = 'che_banco'
      Visible = False
      Size = 10
    end
    object cdsPed_Titche_agencia: TWideStringField
      FieldName = 'che_agencia'
      Visible = False
      Size = 10
    end
    object cdsPed_Titche_conta: TIntegerField
      FieldName = 'che_conta'
      Visible = False
    end
    object cdsPed_Titche_numero: TIntegerField
      FieldName = 'che_numero'
      Visible = False
    end
    object cdsPed_Titche_emitente: TWideStringField
      FieldName = 'che_emitente'
      Visible = False
      Size = 50
    end
    object cdsPed_Titid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Visible = False
    end
    object cdsPed_Titbol_nosso_numero: TIntegerField
      FieldName = 'bol_nosso_numero'
      Visible = False
    end
    object cdsPed_Titid_maquineta: TIntegerField
      FieldName = 'id_maquineta'
      Visible = False
    end
    object cdsPed_Titint_docimpresso: TIntegerField
      FieldName = 'int_docimpresso'
      ProviderFlags = []
      Visible = False
    end
  end
  object cdsPedImp: TClientDataSet
    PersistDataPacket.Data = {
      601800009619E0BD0200000018000000B200000000000300000060180969645F
      70656469646F04000100000000000A69645F656D707265736104000100000000
      000A6474615F70656469646F04000600000000001369645F7469706F5F6D6F76
      5F6573746F71756504000100000000000B69645F76656E6465646F7204000100
      0000000009766C725F627275746F0B0012000000020008444543494D414C5302
      00020004000557494454480200020012000C766C725F646573636F6E746F0B00
      12000000020008444543494D414C530200020004000557494454480200020012
      000C7065725F646573636F6E746F08000400000000000B766C725F6C69717569
      646F0B0012000000020008444543494D414C5302000200040005574944544802
      00020012000A686F725F70656469646F10001100000000000F69645F636F6E64
      6963616F5F7061670400010000000000077063705F6F627301004A0000000100
      05574944544802000200C8000A7063705F69645F6F7072040001000000000008
      736974756163616F040001000000000012736974756163616F5F6170726F7661
      63616F04000100000000000C69645F6174656E64656E74650400010000000000
      0E69645F726573706F6E736176656C04000100000000000A69645F636C69656E
      746504000100000000000E7469706F5F72657374726963616F01004A00000001
      0005574944544802000200C8000F69645F616C6D6F786172696661646F040001
      00000000000D6A75737469666963617469766101004A00000001000557494454
      4802000200C8000E69645F7573756172696F5F6C696204000100000000000763
      6F645F6C6D6501004A0000000100055749445448020002002800077265765F6C
      6D6501004A0000000100055749445448020002000A00066F726967656D040001
      00000000000B646973706F73697469766F01004A000000010005574944544802
      00020064000C6770735F6C6174697475646508000400000000000D6770735F6C
      6F6E6769747564650800040000000000076375626167656D0800040000000000
      0C69645F6F7263616D656E746F04000100000000000B656E7669615F63617267
      610200030000000000106474615F707265765F656E7472656761040006000000
      00000B696E745F6E6F6D65636C6901004A000000020005574944544802000200
      64000950524F56464C41475304000180000000000B696E745F6E6F6D65746D65
      01004A0000000200055749445448020002003C000950524F56464C4147530400
      0180000000000B696E745F6E6F6D6566756E01004A0000000200055749445448
      0200020064000950524F56464C41475304000180000000000B696E745F6E6F6D
      6563706701004A0000000200055749445448020002003C000950524F56464C41
      475304000180000000000B696E745F6E6F6D6561746501004A00000002000557
      494454480200020064000950524F56464C41475304000180000000000B696E74
      5F6E6F6D6572657301004A00000002000557494454480200020064000950524F
      56464C41475304000180000000000B696E745F6E6F6D6563696401004A000000
      02000557494454480200020078000950524F56464C4147530400018000000000
      0B696E745F6E6F6D6565737401004A0000000200055749445448020002000400
      0950524F56464C41475304000180000000000B696E745F637066636E706A0100
      4A0000000200055749445448020002001C000950524F56464C41475304000180
      000000000D696E745F706573736F61636C6904000100000001000950524F5646
      4C41475304000180000000000D696E745F69645F70657266696C040001000000
      01000950524F56464C41475304000180000000000669645F6F72730400010000
      0001000950524F56464C41475304000180000000000C696E745F736974617072
      6F7601004A00000002000557494454480200020028000950524F56464C414753
      04000180000000000A696E745F73697470656401004A00000002000557494454
      480200020028000950524F56464C41475304000180000000000B69645F616265
      727475726104000100000000000D696E745F69655F72675F636C6901004A0000
      0002000557494454480200020028000950524F56464C41475304000180000000
      000B696E745F73656C6563616F02000300000001000950524F56464C41475304
      000180000000000E646961735F6370675F7072617A6F04000100000000000B69
      6E745F6E6F6D6572656701004A00000002000557494454480200020064000950
      524F56464C4147530400018000000000076F66666C696E650200030000000000
      09636F6E66657269646F02000300000000000769645F636F6E66040001000000
      0000086474615F636F6E66040006000000000008686F725F636F6E6604000700
      000000000E726573756C7461646F5F636F6E6604000100000000000C69645F72
      6573705F636F6E6604000100000000000C696E745F6E6F6D655F72636E01004A
      00000002000557494454480200020064000950524F56464C4147530400018000
      0000000E69645F70726F70726965646164650400010000000000096D6F645F66
      72657465040001000000000009766C725F66726574650B001200000002000844
      4543494D414C530200020004000557494454480200020012000669645F6D6B74
      04000100000000000B63616E5F7573756172696F04000100000000000863616E
      5F6461746104000600000000000A63616E5F6D6F7469766F01004A0000000100
      05574944544802000200C8000863616E5F686F726104000700000000000E696E
      745F6E756D6C6F74656F707201004A0000000200055749445448020002001E00
      0950524F56464C41475304000180000000000C69645F6D6F746F726973746104
      000100000000000869645F706C61636101004A00000001000557494454480200
      020010000B696E745F6E6F6D656D746101004A00000002000557494454480200
      0200A0000950524F56464C41475304000180000000000B766C725F6372656469
      746F0B0012000000020008444543494D414C5302000200040005574944544802
      000200120011766C725F646573635F657370656369616C0B0012000000020008
      444543494D414C530200020004000557494454480200020012000F766C725F64
      6573635F62617369636F0B0012000000020008444543494D414C530200020004
      00055749445448020002001200107367715F7065725F636F6D697373616F0800
      0400000000000B696E745F7369747065643201004A0000000200055749445448
      0200020028000950524F56464C41475304000180000000000B717464655F766F
      6C756D6508000400000000000C766C725F69636D5F6465736E0B001200000002
      0008444543494D414C530200020004000557494454480200020012000A696E74
      5F7369746F726404000100000001000950524F56464C41475304000180000000
      0011766C725F646573635F70726F6475746F730B001200000002000844454349
      4D414C53020002000400055749445448020002001200117065725F646573635F
      70726F6475746F7308000400000000000C766C725F70726F6475746F730B0012
      000000020008444543494D414C53020002000400055749445448020002001200
      0E766C725F736572765F627275746F0B0012000000020008444543494D414C53
      02000200040005574944544802000200120011766C725F646573635F73657276
      69636F730B0012000000020008444543494D414C530200020004000557494454
      48020002001200117065725F646573635F7365727669636F7308000400000000
      000F766C725F7365725F6C69717569646F0B0012000000020008444543494D41
      4C530200020004000557494454480200020012000C766C725F74657263656972
      6F0B0012000000020008444543494D414C530200020004000557494454480200
      0200120011766C725F646573635F746572636569726F0B001200000002000844
      4543494D414C53020002000400055749445448020002001200117065725F6465
      73635F746572636569726F080004000000000010766C725F746572635F6C6971
      7569646F0B0012000000020008444543494D414C530200020004000557494454
      48020002001200157065645F676572615F66696E5F736570617261646F020003
      000000000010766C725F70726F645F6C69717569646F0B001200000002000844
      4543494D414C5302000200040005574944544802000200120010736570617261
      5F70726F645F73657276020003000000000011766C725F637265645F70726F64
      75746F730B0012000000020008444543494D414C530200020004000557494454
      4802000200120011766C725F637265645F7365727669636F730B001200000002
      0008444543494D414C53020002000400055749445448020002001200036F6273
      02004A000000010005574944544802000200FE010B69645F6D6563616E69636F
      0400010000000000137367715F746578746F5F636F6E645F7067746F01004A00
      0000010005574944544802000200A0000F7065725F646573635F62617369636F
      0800040000000000117065725F646573635F657370656369616C080004000000
      00000D6474615F6C696265726163616F04000600000000000B696E745F6E6F6D
      656C696201004A00000002000557494454480200020064000950524F56464C41
      47530400018000000000144641545F53515F4D5F5045445F5449545F5345520F
      000E05000000000969645F70656469646F04000100000000000969645F746974
      756C6F0400010000000000046469617304000100000000000E6474615F76656E
      63696D656E746F04000600000000000A766C725F746974756C6F0B0012000000
      020008444543494D414C53020002000400055749445448020002001200096368
      655F62616E636F01004A00000001000557494454480200020014000B6368655F
      6167656E63696101004A0000000100055749445448020002001400096368655F
      636F6E746104000100000000000A6368655F6E756D65726F0400010000000000
      0C6368655F656D6974656E746501004A00000001000557494454480200020064
      000C69645F666F726D615F706167040001000000000010626F6C5F6E6F73736F
      5F6E756D65726F04000100000000000C69645F6D617175696E65746104000100
      000000000B696E745F6E6F6D6566706701004A00000002000557494454480200
      02003C000950524F56464C41475304000180000000000F696E745F646F63696D
      70726573736F04000100000001000950524F56464C4147530400018000000000
      03000D44454641554C545F4F524445520400820001000000040000000C4D445F
      53454D414E544943530400018001000000044C43494404000100000000001046
      41545F53515F4D5F5045445F5449540F000E05000000000969645F7065646964
      6F04000100000000000969645F746974756C6F04000100000000000464696173
      04000100000000000E6474615F76656E63696D656E746F04000600000000000A
      766C725F746974756C6F0B0012000000020008444543494D414C530200020004
      00055749445448020002001200096368655F62616E636F01004A000000010005
      57494454480200020014000B6368655F6167656E63696101004A000000010005
      5749445448020002001400096368655F636F6E746104000100000000000A6368
      655F6E756D65726F04000100000000000C6368655F656D6974656E746501004A
      00000001000557494454480200020064000C69645F666F726D615F7061670400
      01000000000010626F6C5F6E6F73736F5F6E756D65726F04000100000000000B
      696E745F6E6F6D6566706701004A0000000200055749445448020002003C0009
      50524F56464C41475304000180000000000C69645F6D617175696E6574610400
      0100000000000F696E745F646F63696D70726573736F04000100000001000950
      524F56464C414753040001800000000003000D44454641554C545F4F52444552
      0400820001000000040000000C4D445F53454D414E5449435304000180010000
      00044C4349440400010000000000104641545F53515F4D5F5045445F4954452B
      000E05000000000969645F70656469646F04000100000000000C69645F736571
      75656E63696104000100000000000769645F6974656D04000100000000000471
      74646508000400000000000C766C725F756E69746172696F0B00120000000200
      08444543494D414C5302000200040005574944544802000200120009766C725F
      627275746F0B0012000000020008444543494D414C5302000200040005574944
      54480200020012000C7065725F646573636F6E746F08000400000000000C766C
      725F646573636F6E746F0B0012000000020008444543494D414C530200020004
      000557494454480200020012000B766C725F6C69717569646F0B001200000002
      0008444543494D414C530200020004000557494454480200020012000669645F
      636F7204000100000000000A69645F74616D616E686F04000100000000000D69
      645F62757363615F6974656D01004A0000000100055749445448020002003C00
      0B696E745F6E6F6D6569746501004A000000020005574944544802000200C800
      0950524F56464C41475304000180000000000B696E745F6E6F6D65636F720100
      4A00000002000557494454480200020050000950524F56464C41475304000180
      0000000010696E745F69645F756E645F76656E646101004A0000000200055749
      4454480200020006000950524F56464C41475304000180000000000B696E745F
      6E6F6D6574616D01004A00000002000557494454480200020050000950524F56
      464C414753040001800000000011766C725F756E69746172696F5F6F7269670B
      0012000000020008444543494D414C5302000200040005574944544802000200
      12000D696E745F7469706F5F6974656D01004A00000002000557494454480200
      020004000950524F56464C41475304000180000000000B696E745F7365716974
      656D04000100000001000950524F56464C414753040001800000000007696E74
      5F72756101004A00000002000557494454480200020008000950524F56464C41
      475304000180000000000E696E745F70726174656C6569726101004A00000002
      000557494454480200020008000950524F56464C41475304000180000000000D
      696E745F657363616E696E686F01004A00000002000557494454480200020008
      000950524F56464C41475304000180000000000C7065725F646573635F6D6178
      08000400000000000E717464655F636F6E66657269646108000400000000000C
      7063705F6F62735F6974656D02004A0000000100055749445448020002002C01
      0A69645F63756C7475726104000100000000000B696E745F6E6F6D6563756C01
      004A0000000200055749445448020002003C000950524F56464C414753040001
      80000000000B696E745F73656C6563616F02000300000001000950524F56464C
      414753040001800000000009766C725F66726574650B00120000000200084445
      43494D414C5302000200040005574944544802000200120008696E745F727561
      3201004A00000002000557494454480200020008000950524F56464C41475304
      000180000000000F696E745F70726174656C656972613201004A000000020005
      57494454480200020008000950524F56464C41475304000180000000000E696E
      745F657363616E696E686F3201004A0000000200055749445448020002000800
      0950524F56464C41475304000180000000000C766C725F69636D5F6465736E0B
      0012000000020008444543494D414C5302000200040005574944544802000200
      1200086E756D5F6C6F746501004A0000000100055749445448020002001E000C
      696E745F6C6F74655F67727502000300000001000950524F56464C4147530400
      0180000000000F6D6F7469766F5F69636D735F64657304000100000000000F69
      6E745F736572746572636569726F02000300000001000950524F56464C414753
      04000180000000000B69645F6D6563616E69636F04000100000000000B696E74
      5F6E6F6D656D656301004A00000002000557494454480200020064000950524F
      56464C41475304000180000000000F7065725F646573635F62617369636F0800
      0400000000000F766C725F646573635F62617369636F0B001200000002000844
      4543494D414C53020002000400055749445448020002001200117065725F6465
      73635F657370656369616C080004000000000011766C725F646573635F657370
      656369616C0B0012000000020008444543494D414C5302000200040005574944
      544802000200120002000C4D445F53454D414E54494353040001800100000004
      4C434944040001000000000005000D4D445F4649454C444C494E4B5302008100
      030000006700010001000D4D445F4649454C444C494E4B530200810003000000
      6800010001000D4D445F4649454C444C494E4B53020081000300000069000100
      01000C4D445F53454D414E544943530400018001000000044C43494404000100
      00000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id_pedido'
        DataType = ftInteger
      end
      item
        Name = 'id_empresa'
        DataType = ftInteger
      end
      item
        Name = 'dta_pedido'
        DataType = ftDate
      end
      item
        Name = 'id_tipo_mov_estoque'
        DataType = ftInteger
      end
      item
        Name = 'id_vendedor'
        DataType = ftInteger
      end
      item
        Name = 'vlr_bruto'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_desconto'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'per_desconto'
        DataType = ftFloat
      end
      item
        Name = 'vlr_liquido'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'hor_pedido'
        DataType = ftTimeStamp
      end
      item
        Name = 'id_condicao_pag'
        DataType = ftInteger
      end
      item
        Name = 'pcp_obs'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'pcp_id_opr'
        DataType = ftInteger
      end
      item
        Name = 'situacao'
        DataType = ftInteger
      end
      item
        Name = 'situacao_aprovacao'
        DataType = ftInteger
      end
      item
        Name = 'id_atendente'
        DataType = ftInteger
      end
      item
        Name = 'id_responsavel'
        DataType = ftInteger
      end
      item
        Name = 'id_cliente'
        DataType = ftInteger
      end
      item
        Name = 'tipo_restricao'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'id_almoxarifado'
        DataType = ftInteger
      end
      item
        Name = 'justificativa'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'id_usuario_lib'
        DataType = ftInteger
      end
      item
        Name = 'cod_lme'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'rev_lme'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'origem'
        DataType = ftInteger
      end
      item
        Name = 'dispositivo'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'gps_latitude'
        DataType = ftFloat
      end
      item
        Name = 'gps_longitude'
        DataType = ftFloat
      end
      item
        Name = 'cubagem'
        DataType = ftFloat
      end
      item
        Name = 'id_orcamento'
        DataType = ftInteger
      end
      item
        Name = 'envia_carga'
        DataType = ftBoolean
      end
      item
        Name = 'dta_prev_entrega'
        DataType = ftDate
      end
      item
        Name = 'int_nomecli'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'int_nometme'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'int_nomefun'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'int_nomecpg'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'int_nomeate'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'int_nomeres'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'int_nomecid'
        DataType = ftWideString
        Size = 60
      end
      item
        Name = 'int_nomeest'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'int_cpfcnpj'
        DataType = ftWideString
        Size = 14
      end
      item
        Name = 'int_pessoacli'
        DataType = ftInteger
      end
      item
        Name = 'int_id_perfil'
        DataType = ftInteger
      end
      item
        Name = 'id_ors'
        DataType = ftInteger
      end
      item
        Name = 'int_sitaprov'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'int_sitped'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'id_abertura'
        DataType = ftInteger
      end
      item
        Name = 'int_ie_rg_cli'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'int_selecao'
        DataType = ftBoolean
      end
      item
        Name = 'dias_cpg_prazo'
        DataType = ftInteger
      end
      item
        Name = 'int_nomereg'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'offline'
        DataType = ftBoolean
      end
      item
        Name = 'conferido'
        DataType = ftBoolean
      end
      item
        Name = 'id_conf'
        DataType = ftInteger
      end
      item
        Name = 'dta_conf'
        DataType = ftDate
      end
      item
        Name = 'hor_conf'
        DataType = ftTime
      end
      item
        Name = 'resultado_conf'
        DataType = ftInteger
      end
      item
        Name = 'id_resp_conf'
        DataType = ftInteger
      end
      item
        Name = 'int_nome_rcn'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'id_propriedade'
        DataType = ftInteger
      end
      item
        Name = 'mod_frete'
        DataType = ftInteger
      end
      item
        Name = 'vlr_frete'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'id_mkt'
        DataType = ftInteger
      end
      item
        Name = 'can_usuario'
        DataType = ftInteger
      end
      item
        Name = 'can_data'
        DataType = ftDate
      end
      item
        Name = 'can_motivo'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'can_hora'
        DataType = ftTime
      end
      item
        Name = 'int_numloteopr'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'id_motorista'
        DataType = ftInteger
      end
      item
        Name = 'id_placa'
        DataType = ftWideString
        Size = 8
      end
      item
        Name = 'int_nomemta'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'vlr_credito'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_desc_especial'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_desc_basico'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'sgq_per_comissao'
        DataType = ftFloat
      end
      item
        Name = 'int_sitped2'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'qtde_volume'
        DataType = ftFloat
      end
      item
        Name = 'vlr_icm_desn'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'int_sitord'
        DataType = ftInteger
      end
      item
        Name = 'vlr_desc_produtos'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'per_desc_produtos'
        DataType = ftFloat
      end
      item
        Name = 'vlr_produtos'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_serv_bruto'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_desc_servicos'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'per_desc_servicos'
        DataType = ftFloat
      end
      item
        Name = 'vlr_ser_liquido'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_terceiro'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_desc_terceiro'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'per_desc_terceiro'
        DataType = ftFloat
      end
      item
        Name = 'vlr_terc_liquido'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'ped_gera_fin_separado'
        DataType = ftBoolean
      end
      item
        Name = 'vlr_prod_liquido'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'separa_prod_serv'
        DataType = ftBoolean
      end
      item
        Name = 'vlr_cred_produtos'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'vlr_cred_servicos'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'obs'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'id_mecanico'
        DataType = ftInteger
      end
      item
        Name = 'sgq_texto_cond_pgto'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'per_desc_basico'
        DataType = ftFloat
      end
      item
        Name = 'per_desc_especial'
        DataType = ftFloat
      end
      item
        Name = 'dta_liberacao'
        DataType = ftDate
      end
      item
        Name = 'int_nomelib'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'FAT_SQ_M_PED_TIT_SER'
        DataType = ftDataSet
      end
      item
        Name = 'FAT_SQ_M_PED_TIT'
        DataType = ftDataSet
      end
      item
        Name = 'FAT_SQ_M_PED_ITE'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'cdsPedImpIndex1'
        Fields = 'id_pedido'
        Options = [ixDescending]
      end>
    Params = <>
    StoreDefs = True
    Left = 774
    Top = 368
    object cdsPedImpid_pedido: TIntegerField
      DisplayLabel = 'Pedido'
      DisplayWidth = 10
      FieldName = 'id_pedido'
    end
    object cdsPedImpdta_pedido: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'dta_pedido'
    end
    object cdsPedImpint_nomecli: TWideStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 22
      FieldName = 'int_nomecli'
      ProviderFlags = []
      Size = 50
    end
    object cdsPedImpint_nomecpg: TWideStringField
      DisplayLabel = 'Condi'#231#227'o '
      DisplayWidth = 20
      FieldName = 'int_nomecpg'
      ProviderFlags = []
      Size = 30
    end
    object cdsPedImpvlr_liquido: TFMTBCDField
      DisplayLabel = 'Vlr. l'#237'quido'
      DisplayWidth = 10
      FieldName = 'vlr_liquido'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object cdsPedImpFAT_SQ_M_PED_TIT: TDataSetField
      DisplayWidth = 10
      FieldName = 'FAT_SQ_M_PED_TIT'
      Visible = False
    end
    object cdsPedImpid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Visible = False
    end
    object cdsPedImpobs: TWideStringField
      FieldName = 'obs'
      Visible = False
      Size = 255
    end
  end
  object cdsPedTitImp: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsPedImpFAT_SQ_M_PED_TIT
    IndexFieldNames = 'dta_vencimento'
    Params = <>
    Left = 774
    Top = 432
    object cdsPedTitImpid_titulo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'id_titulo'
    end
    object cdsPedTitImpint_nomefpg: TWideStringField
      DisplayLabel = 'Forma de pagamento'
      DisplayWidth = 21
      FieldName = 'int_nomefpg'
      ProviderFlags = []
      Size = 30
    end
    object cdsPedTitImpdias: TIntegerField
      DisplayLabel = 'Dias'
      DisplayWidth = 6
      FieldName = 'dias'
    end
    object cdsPedTitImpvlr_titulo: TFMTBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 14
      FieldName = 'vlr_titulo'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object cdsPedTitImpdta_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 12
      FieldName = 'dta_vencimento'
    end
  end
  object dsPedImp: TDataSource
    DataSet = cdsPedImp
    Left = 696
    Top = 368
  end
  object dsPedTitImp: TDataSource
    DataSet = cdsPedTitImp
    Left = 696
    Top = 432
  end
  object pmPedImp: TPopupMenu
    Left = 655
    Top = 201
    object Retirarregistro1: TMenuItem
      Caption = 'Retirar registro'
      OnClick = Retirarregistro1Click
    end
    object Retirartodososregistros1: TMenuItem
      Caption = 'Retirar todos os registros'
      OnClick = Retirartodososregistros1Click
    end
  end
  object fr_recibo: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43508.647545821800000000
    ReportOptions.LastChange = 43508.647545821800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Child1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<db_recibo_pai."obs"> = '#39#39') then'
      '    begin'
      '      db_recibo_paiobs.visible := false;'
      
        '      db_recibo_paiobs_2.visible := false;                      ' +
        '                                  '
      '    end;  '
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                '
      'end;'
      ''
      'procedure Header1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  '
      '  db_recibo_filhodta_vencimento.Font.color := clBlack;'
      '  Memo4.Font.color := clBlack;'
      '  db_recibo_filhovlr_titulo.Font.color := clBlack;'
      '    '
      '   if (<db_recibo_filho."dta_vencimento"> = '#39'31/12/9999'#39') then'
      '    begin'
      '      db_recibo_filhodta_vencimento.Font.color := clWhite;'
      '      Memo4.Font.color := clWhite;'
      
        '      db_recibo_filhovlr_titulo.Font.color := clWhite;          ' +
        '  '
      '    end;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 463
    Top = 97
    Datasets = <
      item
        DataSet = db_recibo_filho
        DataSetName = 'db_recibo_filho'
      end
      item
        DataSet = db_recibo_pai
        DataSetName = 'db_recibo_pai'
      end>
    Variables = <>
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
        Height = 7.559060000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = db_recibo_pai
        DataSetName = 'db_recibo_pai'
        PrintIfDetailEmpty = True
        RowCount = 0
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 27.590551180000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = db_recibo_filho
        DataSetName = 'db_recibo_filho'
        RowCount = 0
        Stretched = True
        object Shape3: TfrxShapeView
          Left = 351.496290000000000000
          Top = 0.377952755905511200
          Width = 185.196970000000000000
          Height = 26.456692910000000000
        end
        object Shape2: TfrxShapeView
          Left = 139.622140000000000000
          Top = 0.377952755905511200
          Width = 212.031496060000000000
          Height = 26.456710000000000000
        end
        object Shape1: TfrxShapeView
          Left = 11.338590000000000000
          Top = 0.377952755905511200
          Width = 128.126006220000000000
          Height = 26.456692910000000000
        end
        object db_recibo_filhovlr_titulo: TfrxMemoView
          Left = 369.393940000000000000
          Top = 4.377952760000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataSet = db_recibo_filho
          DataSetName = 'db_recibo_filho'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$  [db_recibo_filho."vlr_titulo"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 18.897650000000000000
          Top = 4.377952760000000000
          Width = 117.165430000000000000
          Height = 18.897632910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
        end
        object db_recibo_filhodta_vencimento: TfrxMemoView
          Left = 168.952845000000000000
          Top = 4.377952760000000000
          Width = 139.842610000000000000
          Height = 18.897632910000000000
          DataField = 'dta_vencimento'
          DataSet = db_recibo_filho
          DataSetName = 'db_recibo_filho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[db_recibo_filho."dta_vencimento"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 49.133890000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'Header1OnBeforePrint'
        Stretched = True
        object Shape6: TfrxShapeView
          Left = 350.740194090000000000
          Width = 185.196970000000000000
          Height = 26.456710000000000000
        end
        object Shape5: TfrxShapeView
          Left = 139.401670000000000000
          Width = 211.653680000000000000
          Height = 26.456710000000000000
        end
        object Shape4: TfrxShapeView
          Left = 11.338590000000000000
          Width = 128.126006220000000000
          Height = 26.456710000000000000
        end
        object Memo1: TfrxMemoView
          Left = 185.960730000000000000
          Top = 4.779530000000001000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 401.519945000000000000
          Top = 4.779530000000001000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Top = 4.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 27.968503937007880000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        Child = fr_recibo.Child1
        Stretched = True
        object Shape8: TfrxShapeView
          Left = 351.496290000000000000
          Top = 0.779529999999994100
          Width = 185.574849530000000000
          Height = 26.456692910000000000
        end
        object Shape7: TfrxShapeView
          Left = 11.338590000000000000
          Top = 0.779529999999994100
          Width = 340.157563310000000000
          Height = 26.456692910000000000
        end
        object db_recibo_paivlr_liquido: TfrxMemoView
          Left = 361.834880000000000000
          Top = 4.559059999999988000
          Width = 166.299320000000000000
          Height = 18.897632910000000000
          DataSet = db_recibo_pai
          DataSetName = 'db_recibo_pai'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$  [db_recibo_pai."vlr_liquido"]')
          ParentFont = False
        end
        object db_recibo_paiint_nomecli: TfrxMemoView
          Left = 18.897650000000000000
          Top = 4.559059999999988000
          Width = 222.992270000000000000
          Height = 18.897632910000000000
          DataField = 'int_nomecli'
          DataSet = db_recibo_pai
          DataSetName = 'db_recibo_pai'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[db_recibo_pai."int_nomecli"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Left = 249.448980000000000000
          Top = 4.559060000000017000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total ')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 21.543307086614170000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'Child1OnBeforePrint'
        Child = fr_recibo.Child2
        Stretched = True
        object db_recibo_paiobs: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.559060000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'obs'
          DataSet = db_recibo_pai
          DataSetName = 'db_recibo_pai'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HideZeros = True
          Memo.UTF8W = (
            '[db_recibo_pai."obs"]')
          ParentFont = False
        end
        object db_recibo_paiobs_2: TfrxMemoView
          Left = 351.496290000000000000
          Top = 1.559059999999988000
          Width = 185.574803150000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = db_recibo_pai
          DataSetName = 'db_recibo_pai'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HideZeros = True
          Memo.UTF8W = (
            '[db_recibo_pai."obs"]')
          ParentFont = False
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 7.220470000000006000
          Width = 525.354670000000100000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object db_recibo_pai: TfrxDBDataset
    UserName = 'db_recibo_pai'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_pedido=id_pedido'
      'dta_pedido=dta_pedido'
      'int_nomecli=int_nomecli'
      'int_nomecpg=int_nomecpg'
      'vlr_liquido=vlr_liquido'
      'FAT_SQ_M_PED_TIT=FAT_SQ_M_PED_TIT'
      'id_cliente=id_cliente'
      'obs=obs')
    DataSet = cdsPedImp
    BCDToCurrency = False
    Left = 463
    Top = 145
  end
  object db_recibo_filho: TfrxDBDataset
    UserName = 'db_recibo_filho'
    CloseDataSource = False
    DataSet = cdsPedTitImp
    BCDToCurrency = False
    Left = 463
    Top = 201
  end
end
