inherited CAD_FM_C_RAM: TCAD_FM_C_RAM
  Caption = 'Cadastro'
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
            'Descri'#231#227'o')
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
          'ID_RAMO'#9'10'#9'C'#243'digo'#9'F'
          'DESCRICAO'#9'43'#9'Descri'#231#227'o'#9'F')
      end
    end
    inherited pnlBotoes: TPanel
      inherited btnIncluir: TcxButton
        Left = 2
        ExplicitLeft = 2
      end
      inherited btnAlterar: TcxButton
        Left = 54
        ExplicitLeft = 54
      end
    end
  end
  inherited pnlDireita: TPanel
    inherited pnlDados: TPanel
      Width = 415
      Height = 97
      ExplicitWidth = 415
      ExplicitHeight = 97
      object Label1: TLabel
        Left = 56
        Top = 5
        Width = 48
        Height = 13
        Caption = 'C'#243'digo :'
        FocusControl = txtCodigo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 49
        Top = 28
        Width = 55
        Height = 13
        Caption = 'Descri'#231#227'o :'
        FocusControl = txtDescricao
      end
      object Label3: TLabel
        Left = 70
        Top = 51
        Width = 34
        Height = 13
        Caption = 'CNAE :'
        FocusControl = txtDescricao
      end
      object lblRegimeTributario: TLabel
        Left = 7
        Top = 74
        Width = 97
        Height = 13
        Caption = 'Regime Tribut'#225'rio :'
        FocusControl = txtDescricao
      end
      object txtCNAEDescricao: TDBText
        Left = 193
        Top = 48
        Width = 217
        Height = 21
        Color = 14342874
        DataField = 'int_nomecne'
        DataSource = dso
        ParentColor = False
        Transparent = False
      end
      object Label53: TLabel
        Left = 312
        Top = 6
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
      object txtCodigo: TDBEdit
        Left = 110
        Top = 2
        Width = 80
        Height = 21
        Color = 14342874
        DataField = 'id_ramo'
        DataSource = dso
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object txtDescricao: TDBEdit
        Left = 110
        Top = 25
        Width = 300
        Height = 21
        Color = clWhite
        DataField = 'descricao'
        DataSource = dso
        TabOrder = 2
      end
      object cbbRegimeTributario: TwwDBLookupCombo
        Left = 110
        Top = 71
        Width = 300
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
        DataField = 'regime_tributario'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_X_RET
        LookupField = 'CODIGO'
        Color = clWhite
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbRegimeTributarioEnter
      end
      object txtCNAE: TJvDBComboEdit
        Left = 110
        Top = 48
        Width = 80
        Height = 21
        ClickKey = 114
        DataField = 'id_cnae'
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
        TabOrder = 3
        OnButtonClick = txtCNAEButtonClick
        OnExit = txtCNAEExit
      end
      object txtCodRev: TDBEdit
        Left = 350
        Top = 2
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
    end
  end
  inherited pnlTop: TJvPanel
    inherited pnlCima: TJvPanel
      inherited lblTitulo: TLabel
        Caption = 'Ramo de Atividade'
      end
    end
  end
  inherited dso: TwwDataSource
    DataSet = dmGeral.CAD_CD_C_RAM
  end
end
