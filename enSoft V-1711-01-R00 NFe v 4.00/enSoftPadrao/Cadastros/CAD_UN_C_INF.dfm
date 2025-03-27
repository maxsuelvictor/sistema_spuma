inherited CAD_FM_C_INF: TCAD_FM_C_INF
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
          'ID_INF'#9'10'#9'C'#243'digo'
          'DESCRICAO'#9'43'#9'Descri'#231#227'o'#9'F')
      end
    end
  end
  inherited pnlDireita: TPanel
    inherited pnlDados: TPanel
      Width = 465
      Height = 51
      ExplicitWidth = 465
      ExplicitHeight = 51
      object lblCodigo: TLabel
        Left = 7
        Top = 5
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
      object lblDescricao: TLabel
        Left = 0
        Top = 27
        Width = 55
        Height = 13
        Caption = 'Descri'#231#227'o :'
      end
      object Label53: TLabel
        Left = 363
        Top = 5
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
      object txtDescricao: TDBEdit
        Left = 61
        Top = 24
        Width = 400
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'DESCRICAO'
        DataSource = dso
        TabOrder = 2
      end
      object txtCodigo: TDBEdit
        Left = 61
        Top = 1
        Width = 55
        Height = 21
        Color = 14342874
        DataField = 'ID_INF'
        DataSource = dso
        Enabled = False
        TabOrder = 0
      end
      object txtCodRev: TDBEdit
        Left = 401
        Top = 1
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
        Caption = 'Informa'#231#245'es do Fisco'
      end
    end
  end
  inherited dso: TwwDataSource
    DataSet = dmGeral.CAD_CD_C_INF
  end
end
