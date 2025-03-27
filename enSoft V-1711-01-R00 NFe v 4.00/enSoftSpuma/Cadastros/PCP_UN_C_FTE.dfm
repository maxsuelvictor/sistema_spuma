inherited PCP_FM_C_FTE: TPCP_FM_C_FTE
  Caption = 'Cadastro'
  ClientHeight = 515
  ExplicitLeft = -112
  ExplicitWidth = 1156
  ExplicitHeight = 543
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlEsquerda: TPanel
    Height = 485
    ExplicitHeight = 485
    inherited pnlFiltro: TPanel
      Top = 435
      ExplicitTop = 435
      inherited gbxFiltro: TGroupBox
        inherited cbbPesquisa: TComboBox
          ItemIndex = 1
          Text = 'Requisitos'
          OnChange = cbbPesquisaChange
          Items.Strings = (
            'Controle'
            'Requisitos')
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
          'id_fte'#9'10'#9'Controle'#9'F'
          'requisitos'#9'43'#9'Requisitos'#9'F')
        ExplicitHeight = 381
      end
    end
  end
  inherited pnlDireita: TPanel
    Height = 485
    ExplicitHeight = 485
    inherited pnlDados: TPanel
      Left = 7
      Top = 4
      Width = 607
      Height = 472
      ExplicitLeft = 7
      ExplicitTop = 4
      ExplicitWidth = 607
      ExplicitHeight = 472
      object Label15: TLabel
        Left = 71
        Top = 29
        Width = 60
        Height = 13
        Caption = 'Requisitos :'
      end
      object lblRevisao: TLabel
        Left = 484
        Top = 10
        Width = 24
        Height = 13
        Caption = 'Rev.:'
        FocusControl = txtRevisaoFte
      end
      object lblObservacoes: TLabel
        Left = 83
        Top = 110
        Width = 48
        Height = 13
        Caption = 'Contato :'
        FocusControl = txtContatos
      end
      object Label1: TLabel
        Left = 35
        Top = 133
        Width = 96
        Height = 13
        Caption = 'Aviso de remo'#231#227'o :'
        FocusControl = txtRemocao
      end
      object Label2: TLabel
        Left = 52
        Top = 87
        Width = 79
        Height = 13
        Caption = 'Dados do SAC :'
        FocusControl = txtSAC
      end
      object txtRequisitos: TDBMemo
        Left = 134
        Top = 29
        Width = 440
        Height = 52
        DataField = 'requisitos'
        DataSource = dso
        TabOrder = 1
      end
      object txtRevisaoFte: TDBEdit
        Left = 514
        Top = 6
        Width = 60
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'rev_lme'
        DataSource = dso
        ReadOnly = True
        TabOrder = 0
      end
      object txtContatos: TDBEdit
        Left = 134
        Top = 106
        Width = 440
        Height = 21
        Color = clWhite
        DataField = 'inf_contato'
        DataSource = dso
        TabOrder = 3
      end
      object txtRemocao: TDBEdit
        Left = 134
        Top = 129
        Width = 440
        Height = 21
        Color = clWhite
        DataField = 'inf_remocao'
        DataSource = dso
        TabOrder = 4
      end
      object txtSAC: TDBEdit
        Left = 134
        Top = 83
        Width = 440
        Height = 21
        Color = clWhite
        DataField = 'inf_sac'
        DataSource = dso
        TabOrder = 2
      end
      object gbEtiquetas: TGroupBox
        Left = 8
        Top = 156
        Width = 593
        Height = 310
        Caption = ' Etiquetas '
        TabOrder = 5
        object grdItens: TwwDBGrid
          Left = 7
          Top = 162
          Width = 578
          Height = 140
          Selected.Strings = (
            'cod_int_etq'#9'10'#9'C'#243'digo'#9'F'
            'cod_int_etq_rev'#9'5'#9'Rev'#9'F'
            'descricao'#9'71'#9'Descri'#231#227'o'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clWhite
          DataSource = dsoFteEtq
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
          object grdItensIButton: TwwIButton
            Left = -1
            Top = -1
            Width = 22
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
            OnClick = grdItensIButtonClick
          end
        end
        object btn_Add_Itens: TBitBtn
          Left = 7
          Top = 19
          Width = 22
          Height = 22
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
          OnClick = btn_Add_ItensClick
        end
        object pnItens: TPanel
          Left = 52
          Top = 14
          Width = 538
          Height = 145
          BevelOuter = bvNone
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          OnExit = pnItensExit
          object Label21: TLabel
            Left = 36
            Top = 8
            Width = 56
            Height = 13
            Caption = 'Aplica'#231#227'o  :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 28
            Top = 96
            Width = 64
            Height = 13
            Caption = 'Texto livre 1 :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 28
            Top = 119
            Width = 64
            Height = 13
            Caption = 'Texto livre 2 :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object btnImagemEtq: TSpeedButton
            Left = 362
            Top = 4
            Width = 105
            Height = 21
            Caption = 'Imagem etiqueta'
            OnClick = btnImagemEtqClick
          end
          object Label5: TLabel
            Left = 14
            Top = 30
            Width = 78
            Height = 13
            Caption = 'Especifica'#231#245'es :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 472
            Top = 8
            Width = 26
            Height = 13
            Caption = 'Rev :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 142
            Top = 74
            Width = 104
            Height = 13
            Caption = 'Layout de Impress'#227'o :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object txtDescricao: TwwDBEdit
            Left = 95
            Top = 4
            Width = 260
            Height = 21
            Color = clWhite
            DataField = 'descricao'
            DataSource = dsoFteEtq
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object txtTextoLiv1: TwwDBEdit
            Left = 95
            Top = 92
            Width = 440
            Height = 21
            Color = clWhite
            DataField = 'texto_livre1'
            DataSource = dsoFteEtq
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object txtTextoLiv2: TwwDBEdit
            Left = 95
            Top = 115
            Width = 440
            Height = 21
            Color = clWhite
            DataField = 'texto_livre2'
            DataSource = dsoFteEtq
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = txtTextoLiv2Exit
          end
          object txtEspecificacoes: TDBMemo
            Left = 95
            Top = 27
            Width = 440
            Height = 40
            DataField = 'especificacoes'
            DataSource = dsoFteEtq
            TabOrder = 2
          end
          object txtRev: TwwDBEdit
            Left = 502
            Top = 4
            Width = 33
            Height = 21
            Color = clWhite
            DataField = 'cod_int_etq_rev'
            DataSource = dsoFteEtq
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object chkEtiquetaTecnica: TDBCheckBox
            Left = 5
            Top = 73
            Width = 104
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Etiqueta T'#233'cnica :'
            DataField = 'etq_tecnica'
            DataSource = dsoFteEtq
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = chkEtiquetaTecnicaClick
          end
          object cbbModeloImpressao: TwwDBLookupCombo
            Left = 255
            Top = 69
            Width = 280
            Height = 21
            DropDownAlignment = taRightJustify
            Selected.Strings = (
              'DESCRICAO'#9'60'#9'Descri'#231#227'o'#9'F'
              'CODIGO'#9'10'#9'C'#243'digo'#9'F')
            DataField = 'modelo_etq'
            DataSource = dsoFteEtq
            LookupTable = dmGeral.BUS_CD_X_FTE_MOD_ETQ
            LookupField = 'CODIGO'
            Color = clWhite
            TabOrder = 4
            AutoDropDown = False
            ShowButton = True
            SeqSearchOptions = []
            OrderByDisplay = False
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = cbbModeloImpressaoEnter
          end
        end
        object pnlImagem: TPanel
          Left = 157
          Top = 154
          Width = 402
          Height = 259
          TabOrder = 3
          Visible = False
          OnExit = pnlImagemExit
          object img_Etiqueta: TImage
            Left = 1
            Top = 44
            Width = 400
            Height = 214
            Align = alBottom
            Stretch = True
          end
          object btnSelImagem: TBitBtn
            Left = 1
            Top = 11
            Width = 111
            Height = 25
            Caption = '&Selecionar imagem'
            TabOrder = 0
            OnClick = btnSelImagemClick
          end
          object btnSairImg: TBitBtn
            Left = 118
            Top = 11
            Width = 75
            Height = 25
            Caption = 'S&air'
            TabOrder = 1
            OnClick = btnSairImgClick
          end
        end
      end
    end
  end
  inherited pnlTop: TJvPanel
    inherited pnlCima: TJvPanel
      inherited lblCodificacaoLMestre: TLabel
        ExplicitWidth = 823
      end
      inherited lblTitulo: TLabel
        Caption = 'Ficha T'#233'cnica de Etiqueta'
        ExplicitWidth = 828
      end
    end
  end
  inherited dso: TwwDataSource
    DataSet = dmSgq.PCP_CD_C_FTE
  end
  object dsoFteEtq: TwwDataSource
    DataSet = dmSgq.PCP_CD_C_FTE_ETQ
    OnStateChange = dsoStateChange
    Left = 1048
    Top = 315
  end
  object opd_Imagem: TOpenPictureDialog
    Filter = 'All (*.jpeg;*.jpg)|*.jpeg;*.jpg'
    FilterIndex = 5
    Left = 1096
    Top = 187
  end
end
