inherited CAD_FM_C_NAT: TCAD_FM_C_NAT
  Caption = 'Cadastro'
  ExplicitWidth = 1156
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlEsquerda: TPanel
    inherited pnlFiltro: TPanel
      inherited gbxFiltro: TGroupBox
        inherited cbbPesquisa: TComboBox
          ItemIndex = 0
          Text = 'Classe'
          OnChange = cbbPesquisaChange
          Items.Strings = (
            'Classe'
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
          'id_classe'#9'10'#9'Classe'#9'F'
          'descricao'#9'43'#9'Descri'#231#227'o'#9'F')
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
      Width = 368
      Height = 51
      ExplicitWidth = 368
      ExplicitHeight = 51
      object lblClasse: TLabel
        Left = 16
        Top = 5
        Width = 46
        Height = 13
        Caption = 'Classe :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDescricao: TLabel
        Left = 7
        Top = 28
        Width = 55
        Height = 13
        Caption = 'Descri'#231#227'o :'
        FocusControl = txtDescricao
      end
      object Label53: TLabel
        Left = 265
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
      object txtClasse: TDBEdit
        Left = 68
        Top = 2
        Width = 90
        Height = 21
        Color = clWhite
        DataField = 'id_classe'
        DataSource = dso
        TabOrder = 0
      end
      object txtDescricao: TDBEdit
        Left = 68
        Top = 25
        Width = 295
        Height = 21
        Color = clWhite
        DataField = 'descricao'
        DataSource = dso
        TabOrder = 2
      end
      object txtCodRev: TDBEdit
        Left = 303
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
        Caption = 'Natureza da Opera'#231#227'o'
      end
    end
  end
  inherited dso: TwwDataSource
    DataSet = dmGeral.CAD_CD_C_NAT
  end
end
