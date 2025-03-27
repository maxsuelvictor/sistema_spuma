inherited CTC_FM_C_OBR: TCTC_FM_C_OBR
  ExplicitWidth = 1156
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlEsquerda: TPanel
    inherited pnlFiltro: TPanel
      inherited gbxFiltro: TGroupBox
        inherited cbbPesquisa: TComboBox
          ItemIndex = 1
          Text = 'Descri'#231#227'o'
          OnChange = cbbPesquisaChange
          Items.Strings = (
            'C'#243'digo'
            'Descri'#231#227'o'
            'Cliente'
            'Cidade')
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
      inherited dbGrid: TwwDBGrid
        Selected.Strings = (
          'id_obra'#9'10'#9'C'#243'digo'#9'F'
          'descricao'#9'43'#9'Descri'#231#227'o'#9'F')
      end
    end
    inherited pnlBotoes: TPanel
      inherited btnIncluir: TcxButton
        Left = 2
        Top = 1
        ExplicitLeft = 2
        ExplicitTop = 1
      end
    end
  end
  inherited pnlDireita: TPanel
    inherited pnlDados: TPanel
      Left = 7
      Width = 770
      Height = 471
      ExplicitLeft = 7
      ExplicitWidth = 770
      ExplicitHeight = 471
      object lblCodigo: TLabel
        Left = 115
        Top = 7
        Width = 48
        Height = 13
        Caption = 'C'#243'digo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCidade: TLabel
        Left = 121
        Top = 100
        Width = 42
        Height = 13
        Caption = 'Cidade :'
      end
      object txtCidadeDescricao: TDBText
        Left = 262
        Top = 96
        Width = 293
        Height = 21
        Color = 14342874
        DataField = 'int_nomecid'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object lblDescricao: TLabel
        Left = 108
        Top = 53
        Width = 55
        Height = 13
        Caption = 'Descri'#231#227'o :'
      end
      object lblEndereco: TLabel
        Left = 109
        Top = 76
        Width = 54
        Height = 13
        Caption = 'Endere'#231'o :'
      end
      object lblCEP: TLabel
        Left = 477
        Top = 54
        Width = 25
        Height = 13
        Caption = 'CEP :'
      end
      object lblTelefone: TLabel
        Left = 113
        Top = 123
        Width = 50
        Height = 13
        Caption = 'Telefone :'
      end
      object lblFax: TLabel
        Left = 308
        Top = 123
        Width = 25
        Height = 13
        Caption = 'FAX :'
      end
      object lblAniversario: TLabel
        Left = 435
        Top = 124
        Width = 67
        Height = 13
        Caption = 'Dta Entrega :'
      end
      object lblCliente: TLabel
        Left = 121
        Top = 31
        Width = 42
        Height = 13
        Caption = 'Cliente :'
      end
      object txtClienteDescricao: TDBText
        Left = 262
        Top = 27
        Width = 336
        Height = 21
        Color = 14342874
        DataField = 'int_nomecli'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object Label1: TLabel
        Left = 136
        Top = 146
        Width = 27
        Height = 13
        Caption = 'Obs :'
      end
      object txtEstado: TDBText
        Left = 558
        Top = 96
        Width = 40
        Height = 21
        Color = 14342874
        DataField = 'int_nomeuf'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object txtCodigo: TDBEdit
        Left = 169
        Top = 4
        Width = 90
        Height = 21
        Color = 14342874
        DataField = 'id_obra'
        DataSource = dso
        Enabled = False
        TabOrder = 0
      end
      object chkAtivo: TDBCheckBox
        Left = 556
        Top = 7
        Width = 42
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Ativo'
        DataField = 'ativo'
        DataSource = dso
        TabOrder = 1
      end
      object txtCidade: TJvDBComboEdit
        Left = 169
        Top = 96
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
        OnButtonClick = txtCidadeButtonClick
        OnExit = txtCidadeExit
      end
      object txtDescricao: TDBEdit
        Left = 169
        Top = 50
        Width = 260
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'descricao'
        DataSource = dso
        TabOrder = 3
      end
      object txtEndereco: TDBEdit
        Left = 169
        Top = 73
        Width = 429
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'endereco'
        DataSource = dso
        TabOrder = 5
      end
      object txtCEP: TDBEdit
        Left = 508
        Top = 50
        Width = 90
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'cep'
        DataSource = dso
        TabOrder = 4
      end
      object txtTelefone: TDBEdit
        Left = 169
        Top = 120
        Width = 90
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'tel_fixo'
        DataSource = dso
        TabOrder = 7
      end
      object txtFax: TDBEdit
        Left = 339
        Top = 120
        Width = 90
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'fax'
        DataSource = dso
        TabOrder = 8
      end
      object dpkDtaEntrega: TJvDBDateEdit
        Left = 508
        Top = 120
        Width = 90
        Height = 21
        DataField = 'dta_entrega'
        DataSource = dso
        ShowNullDate = False
        TabOrder = 9
      end
      object txtCliente: TJvDBComboEdit
        Left = 169
        Top = 27
        Width = 90
        Height = 21
        ClickKey = 114
        DataField = 'id_cliente'
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
        TabOrder = 2
        OnButtonClick = txtClienteButtonClick
        OnExit = txtClienteExit
      end
      object txtObs: TDBEdit
        Left = 169
        Top = 143
        Width = 429
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        Ctl3D = True
        DataField = 'obs'
        DataSource = dso
        ParentCtl3D = False
        TabOrder = 10
      end
      object pcDados: TPageControl
        Left = 9
        Top = 170
        Width = 752
        Height = 295
        ActivePage = tsEquipamento
        TabOrder = 11
        object tsEquipamento: TTabSheet
          Caption = 'Equipamentos'
          object gbEquip: TGroupBox
            Left = 3
            Top = 13
            Width = 738
            Height = 251
            TabOrder = 0
            object pnEquip: TPanel
              Left = 36
              Top = 11
              Width = 699
              Height = 38
              BevelOuter = bvNone
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              OnExit = pnEquipExit
              object lblItem: TLabel
                Left = 4
                Top = 1
                Width = 38
                Height = 13
                Caption = 'C'#243'digo'
              end
              object Label9: TLabel
                Left = 616
                Top = 1
                Width = 27
                Height = 13
                Caption = 'Valor'
              end
              object txtDescEquip: TDBText
                Left = 84
                Top = 16
                Width = 123
                Height = 21
                Color = 14342874
                DataField = 'int_nome_eqp'
                DataSource = dsObrEqp
                ParentColor = False
                Transparent = False
              end
              object Label15: TLabel
                Left = 210
                Top = 1
                Width = 60
                Height = 13
                Caption = 'Observa'#231#227'o'
              end
              object Label16: TLabel
                Left = 423
                Top = -1
                Width = 188
                Height = 15
                Alignment = taCenter
                AutoSize = False
                Caption = 'Per'#237'odo do contrato'
                Color = clSilver
                ParentColor = False
                Transparent = False
              end
              object txtCodEqp: TJvDBComboEdit
                Left = 1
                Top = 17
                Width = 80
                Height = 21
                ClickKey = 114
                DataField = 'id_meq'
                DataSource = dsObrEqp
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
                OnButtonClick = txtCodEqpButtonClick
                OnExit = txtCodEqpExit
              end
              object txtValor: TwwDBEdit
                Left = 616
                Top = 16
                Width = 83
                Height = 21
                DataField = 'valor'
                DataSource = dsObrEqp
                TabOrder = 4
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
                OnExit = txtValorExit
              end
              object txtObsEqp: TwwDBEdit
                Left = 213
                Top = 17
                Width = 209
                Height = 21
                DataField = 'obs'
                DataSource = dsObrEqp
                TabOrder = 1
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object txtDtaIniCtrEqp: TJvDBDateEdit
                Left = 423
                Top = 16
                Width = 92
                Height = 22
                DataField = 'dta_ini_contrato'
                DataSource = dsObrEqp
                Color = clWhite
                ShowNullDate = False
                TabOrder = 2
              end
              object txtDtaFimCtrEqp: TJvDBDateEdit
                Left = 521
                Top = 16
                Width = 92
                Height = 22
                DataField = 'dta_fim_contrato'
                DataSource = dsObrEqp
                Color = clWhite
                ShowNullDate = False
                TabOrder = 3
              end
            end
            object grdEqp: TwwDBGrid
              Left = 3
              Top = 55
              Width = 728
              Height = 189
              Selected.Strings = (
                'id_meq'#9'10'#9'C'#243'digo'#9'F'
                'int_nome_eqp'#9'25'#9'Equipamento'#9'F'
                'obs'#9'35'#9'Observa'#231#227'o'#9'F'
                'dta_ini_contrato'#9'10'#9'In'#237'cio contrato'#9'F'
                'dta_fim_contrato'#9'10'#9'Fim contrato'#9'F'
                'valor'#9'15'#9'Valor'#9'F')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = 13750737
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = dsObrEqp
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
              OnMouseUp = grdEqpMouseUp
              object grdEqpIButton: TwwIButton
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
                OnClick = grdEqpIButtonClick
              end
            end
            object btn_Add_Eqp: TBitBtn
              Left = 7
              Top = 27
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
              OnClick = btn_Add_EqpClick
            end
          end
        end
        object tsFuncCargo: TTabSheet
          Caption = 'Funcion'#225'rios por cargo'
          ImageIndex = 1
          object gbCrg: TGroupBox
            Left = 6
            Top = 16
            Width = 735
            Height = 251
            TabOrder = 0
            object pnCargo: TPanel
              Left = 37
              Top = 6
              Width = 696
              Height = 84
              BevelOuter = bvNone
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              OnExit = pnCargoExit
              object Label2: TLabel
                Left = 4
                Top = 3
                Width = 38
                Height = 13
                Caption = 'C'#243'digo'
              end
              object Label3: TLabel
                Left = 631
                Top = 43
                Width = 27
                Height = 13
                Caption = 'Valor'
              end
              object txtDescCrg: TDBText
                Left = 61
                Top = 18
                Width = 326
                Height = 21
                Color = 14342874
                DataField = 'int_nome_crg'
                DataSource = dsObrCrg
                ParentColor = False
                Transparent = False
              end
              object Label4: TLabel
                Left = 585
                Top = 3
                Width = 110
                Height = 13
                Caption = 'Qtde de funcion'#225'rios'
              end
              object Label5: TLabel
                Left = 61
                Top = 3
                Width = 31
                Height = 13
                Caption = 'Cargo'
              end
              object Label13: TLabel
                Left = 393
                Top = 1
                Width = 190
                Height = 15
                Alignment = taCenter
                AutoSize = False
                Caption = 'Per'#237'odo do contrato'
                Color = clSilver
                ParentColor = False
                Transparent = False
              end
              object Label14: TLabel
                Left = 1
                Top = 43
                Width = 60
                Height = 13
                Caption = 'Observa'#231#227'o'
              end
              object txtCodigoCrg: TJvDBComboEdit
                Left = 1
                Top = 18
                Width = 59
                Height = 21
                ClickKey = 114
                DataField = 'id_cargo'
                DataSource = dsObrCrg
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
                OnButtonClick = txtCodigoCrgButtonClick
                OnExit = txtCodigoCrgExit
              end
              object txtValorCrg: TwwDBEdit
                Left = 631
                Top = 57
                Width = 64
                Height = 21
                DataField = 'valor'
                DataSource = dsObrCrg
                TabOrder = 5
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
                OnExit = txtValorCrgExit
              end
              object txtQtdeFunc: TwwDBEdit
                Left = 585
                Top = 17
                Width = 110
                Height = 21
                DataField = 'qtde_func'
                DataSource = dsObrCrg
                TabOrder = 3
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object txtDtaIniCtrCrg: TJvDBDateEdit
                Left = 393
                Top = 18
                Width = 92
                Height = 22
                DataField = 'dta_ini_contrato'
                DataSource = dsObrCrg
                Color = clWhite
                ShowNullDate = False
                TabOrder = 1
              end
              object txtDtaFimCtrCrg: TJvDBDateEdit
                Left = 491
                Top = 18
                Width = 92
                Height = 22
                DataField = 'dta_fim_contrato'
                DataSource = dsObrCrg
                Color = clWhite
                ShowNullDate = False
                TabOrder = 2
              end
              object txtObsCrg: TwwDBEdit
                Left = 1
                Top = 57
                Width = 624
                Height = 21
                DataField = 'obs'
                DataSource = dsObrCrg
                TabOrder = 4
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
            end
            object grdCargo: TwwDBGrid
              Left = 7
              Top = 96
              Width = 725
              Height = 147
              Selected.Strings = (
                'id_cargo'#9'10'#9'C'#243'digo'#9'F'
                'int_nome_crg'#9'25'#9'Cargo'#9'F'
                'obs'#9'20'#9'Observa'#231#227'o'#9'F'
                'dta_ini_contrato'#9'10'#9'In'#237'cio contrato'#9'F'
                'dta_fim_contrato'#9'10'#9'Fim contrato'#9'F'
                'qtde_func'#9'10'#9'Qtde de Funcion'#225'rios'#9'F'
                'valor'#9'10'#9'Valor'#9'F')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = 13750737
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = dsObrCrg
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
              OnMouseUp = grdCargoMouseUp
              object grdCargoIButton: TwwIButton
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
                OnClick = grdCargoIButtonClick
              end
            end
            object btn_Add_Crg: TBitBtn
              Left = 7
              Top = 24
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
              OnClick = btn_Add_CrgClick
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Itens'
          ImageIndex = 2
          object gbItens: TGroupBox
            Left = 3
            Top = 16
            Width = 738
            Height = 251
            TabOrder = 0
            object pnItens: TPanel
              Left = 33
              Top = 5
              Width = 696
              Height = 44
              BevelOuter = bvNone
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              OnExit = pnCargoExit
              object Label6: TLabel
                Left = 4
                Top = 7
                Width = 38
                Height = 13
                Caption = 'C'#243'digo'
              end
              object Label7: TLabel
                Left = 622
                Top = 7
                Width = 27
                Height = 13
                Caption = 'Valor'
              end
              object txtNomeItem: TDBText
                Left = 61
                Top = 21
                Width = 146
                Height = 21
                Color = 14342874
                DataField = 'int_nomeite'
                DataSource = dsObrIte
                ParentColor = False
                Transparent = False
              end
              object Label10: TLabel
                Left = 61
                Top = 7
                Width = 22
                Height = 13
                Caption = 'Item'
              end
              object Label8: TLabel
                Left = 429
                Top = 5
                Width = 188
                Height = 15
                Alignment = taCenter
                AutoSize = False
                Caption = 'Per'#237'odo do contrato'
                Color = clSilver
                ParentColor = False
                Transparent = False
              end
              object Label11: TLabel
                Left = 247
                Top = 7
                Width = 60
                Height = 13
                Caption = 'Observa'#231#227'o'
              end
              object txtUnd: TDBText
                Left = 210
                Top = 21
                Width = 31
                Height = 21
                Color = 14342874
                DataField = 'int_undvenda'
                DataSource = dsObrIte
                ParentColor = False
                Transparent = False
              end
              object Label12: TLabel
                Left = 211
                Top = 7
                Width = 22
                Height = 13
                Caption = 'Und'
              end
              object txtCodItem: TJvDBComboEdit
                Left = 1
                Top = 22
                Width = 59
                Height = 21
                ClickKey = 114
                DataField = 'id_item'
                DataSource = dsObrIte
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
                OnButtonClick = txtCodItemButtonClick
                OnExit = txtCodItemExit
              end
              object txtValorIte: TwwDBEdit
                Left = 622
                Top = 21
                Width = 70
                Height = 21
                DataField = 'valor'
                DataSource = dsObrIte
                TabOrder = 4
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
                OnExit = txtValorIteExit
              end
              object txtDtaIniCtrIte: TJvDBDateEdit
                Left = 429
                Top = 21
                Width = 92
                Height = 22
                DataField = 'dta_ini_contrato'
                DataSource = dsObrIte
                Color = clWhite
                ShowNullDate = False
                TabOrder = 2
              end
              object txtDtaFimCtrIte: TJvDBDateEdit
                Left = 527
                Top = 21
                Width = 92
                Height = 22
                DataField = 'dta_fim_contrato'
                DataSource = dsObrIte
                Color = clWhite
                ShowNullDate = False
                TabOrder = 3
              end
              object txtObsItem: TwwDBEdit
                Left = 247
                Top = 21
                Width = 176
                Height = 21
                DataField = 'obs'
                DataSource = dsObrIte
                TabOrder = 1
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
            end
            object grdItens: TwwDBGrid
              Left = 3
              Top = 53
              Width = 722
              Height = 189
              Selected.Strings = (
                'id_item'#9'7'#9'C'#243'digo'#9'F'
                'int_nomeite'#9'30'#9'Item'#9'F'
                'int_undvenda'#9'3'#9'Und'#9'F'
                'obs'#9'30'#9'Observa'#231#227'o'#9'F'
                'dta_ini_contrato'#9'10'#9'In'#237'cio contrato'#9'F'
                'dta_fim_contrato'#9'10'#9'Fim contrato'#9'F'
                'valor'#9'12'#9'Valor'#9'F')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = 13750737
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = dsObrIte
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
              OnMouseUp = grdItensMouseUp
              object grdIteIButton: TwwIButton
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
                OnClick = grdIteIButtonClick
              end
            end
            object btn_Add_Ite: TBitBtn
              Left = 5
              Top = 27
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
              OnClick = btn_Add_IteClick
            end
          end
        end
      end
    end
  end
  inherited pnlTop: TJvPanel
    inherited pnlCima: TJvPanel
      inherited lblTitulo: TLabel
        Caption = 'Controle de Obras'
        ExplicitLeft = 32
        ExplicitTop = 103
      end
    end
  end
  inherited acBotoes: TActionList
    Left = 1203
  end
  inherited dso: TwwDataSource
    DataSet = dmCtc.ctc_cd_c_obr
    Left = 1115
  end
  inherited imgBotoesAtivo: TImageList
    Left = 1115
  end
  inherited imgBotoesInativo: TImageList
    Left = 1115
  end
  inherited ImgPequena: TImageList
    Left = 1203
  end
  inherited imgBotoesAtivoAz: TImageList
    Left = 1115
  end
  inherited ImgPequenaAz: TImageList
    Left = 1203
  end
  inherited imgBotoesAtivoVe: TImageList
    Left = 1115
  end
  inherited ImgPequenaVe: TImageList
    Left = 1203
  end
  inherited BUS_CD_C_AUS_PAD: TClientDataSet
    Left = 1116
  end
  inherited BUS_CD_C_AUS_PRG_PAD: TClientDataSet
    Left = 1120
  end
  inherited imgBotoesAtivoLa: TImageList
    Left = 1187
    Bitmap = {
      494C01010800DC00880118001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 1131
    Bitmap = {
      494C010106000001C0010E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
  object dsObrEqp: TDataSource
    DataSet = dmCtc.ctc_cd_c_obr_eqp
    Left = 590
    Top = 378
  end
  object dsObrCrg: TDataSource
    DataSet = dmCtc.ctc_cd_c_obr_crg
    Left = 662
    Top = 378
  end
  object dsObrIte: TDataSource
    DataSet = dmCtc.ctc_cd_c_obr_ite
    Left = 742
    Top = 378
  end
end
