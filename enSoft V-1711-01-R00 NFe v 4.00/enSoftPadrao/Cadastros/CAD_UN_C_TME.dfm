inherited CAD_FM_C_TME: TCAD_FM_C_TME
  Caption = 'Cadastro'
  ExplicitLeft = -259
  ExplicitTop = -90
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
          Top = 17
          OnClick = btnFiltroClick
          ExplicitTop = 17
        end
      end
    end
    inherited pnlDatagrid: TPanel
      inherited dbGrid: TwwDBGrid
        Selected.Strings = (
          'ID_TIPO_MOV_ESTOQUE'#9'10'#9'C'#243'digo'#9'F'
          'DESCRICAO'#9'43'#9'Descri'#231#227'o'#9'F')
      end
    end
  end
  inherited pnlDireita: TPanel
    inherited pnlDados: TPanel
      Width = 779
      Height = 459
      ExplicitWidth = 779
      ExplicitHeight = 459
      object lblCodigo: TLabel
        Left = 119
        Top = 6
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
        Left = 112
        Top = 29
        Width = 55
        Height = 13
        Caption = 'Descri'#231#227'o :'
      end
      object lblTipoMovimento: TLabel
        Left = 62
        Top = 52
        Width = 105
        Height = 13
        Caption = 'Tipo de Movimento :'
      end
      object lblIndicador: TLabel
        Left = 112
        Top = 75
        Width = 55
        Height = 13
        Caption = 'Indicador :'
      end
      object lblPessoaFisica: TLabel
        Left = 6
        Top = 172
        Width = 326
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CFOP - Pessoa F'#237'sica'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object lblInternoPessoaFisica: TLabel
        Left = 6
        Top = 191
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Interno'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object lblExternoPessoaFisica: TLabel
        Left = 172
        Top = 191
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Externo'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object lblPessoaJuridica: TLabel
        Left = 338
        Top = 172
        Width = 326
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CFOP - Pessoa Jur'#237'dica'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object lblInternoPessoaJuridica: TLabel
        Left = 338
        Top = 191
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Interno'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object lblExternoPessoaJuridica: TLabel
        Left = 504
        Top = 191
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Externo'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label53: TLabel
        Left = 566
        Top = 7
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
      object Label1: TLabel
        Left = 6
        Top = 281
        Width = 658
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'ICMS - Substitu'#237'do'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label2: TLabel
        Left = 172
        Top = 375
        Width = 326
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CFOP - Servi'#231'o'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label3: TLabel
        Left = 172
        Top = 394
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Interno'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label4: TLabel
        Left = 338
        Top = 394
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Externo'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label5: TLabel
        Left = 6
        Top = 153
        Width = 658
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'ICMS - Normal'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label6: TLabel
        Left = 6
        Top = 300
        Width = 326
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CFOP - Pessoa F'#237'sica'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label7: TLabel
        Left = 6
        Top = 319
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Interno'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label8: TLabel
        Left = 172
        Top = 319
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Externo'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label9: TLabel
        Left = 338
        Top = 319
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Interno'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label10: TLabel
        Left = 336
        Top = 300
        Width = 326
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CFOP - Pessoa Jur'#237'dica'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label11: TLabel
        Left = 502
        Top = 319
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Externo'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label12: TLabel
        Left = 87
        Top = 233
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Exterior'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object Label13: TLabel
        Left = 418
        Top = 233
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Exterior'
        Color = 14342874
        ParentColor = False
        Transparent = False
      end
      object txtCodigo: TDBEdit
        Left = 173
        Top = 3
        Width = 90
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'ID_TIPO_MOV_ESTOQUE'
        DataSource = dso
        ReadOnly = True
        TabOrder = 0
      end
      object txtDescricao: TDBEdit
        Left = 173
        Top = 26
        Width = 491
        Height = 21
        Color = clWhite
        DataField = 'DESCRICAO'
        DataSource = dso
        TabOrder = 3
      end
      object chkAtivo: TDBCheckBox
        Left = 331
        Top = 5
        Width = 42
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Ativo'
        DataField = 'ATIVO'
        DataSource = dso
        TabOrder = 1
      end
      object chkMovimentaEstoque: TDBCheckBox
        Left = 173
        Top = 122
        Width = 123
        Height = 17
        Caption = 'Movimenta Estoque?'
        DataField = 'ESTO_MOVIMENTA'
        DataSource = dso
        TabOrder = 7
      end
      object chkCriticaEstoque: TDBCheckBox
        Left = 173
        Top = 99
        Width = 147
        Height = 17
        Caption = 'Aceita Estoque Negativo?'
        DataField = 'ESTO_CRITICA'
        DataSource = dso
        TabOrder = 6
      end
      object cbbTipoMovimento: TwwDBLookupCombo
        Left = 173
        Top = 49
        Width = 200
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'DESCRICAO'#9'F')
        DataField = 'tipo_movimento'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_X_EXS
        LookupField = 'CODIGO'
        Style = csDropDownList
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbTipoMovimentoEnter
      end
      object cbbIndicador: TwwDBLookupCombo
        Left = 173
        Top = 72
        Width = 200
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'DESCRICAO'#9'F')
        DataField = 'indicador'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_X_IND
        LookupField = 'CODIGO'
        Style = csDropDownList
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbIndicadorEnter
      end
      object cbbInternoPessoaFisica: TwwDBLookupCombo
        Left = 6
        Top = 210
        Width = 160
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_interno_pf'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbInternoPessoaFisicaEnter
      end
      object cbbExternoPessoaFisica: TwwDBLookupCombo
        Left = 172
        Top = 210
        Width = 160
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_externo_pf'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 9
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbExternoPessoaFisicaEnter
      end
      object cbbInternoPessoaJuridica: TwwDBLookupCombo
        Left = 338
        Top = 210
        Width = 160
        Height = 21
        DropDownAlignment = taRightJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_interno_pj'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 10
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbInternoPessoaJuridicaEnter
      end
      object cbbExternoPessoaJuridica: TwwDBLookupCombo
        Left = 504
        Top = 210
        Width = 160
        Height = 21
        DropDownAlignment = taRightJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_externo_pj'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 11
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbExternoPessoaJuridicaEnter
      end
      object txtCodRev: TDBEdit
        Left = 604
        Top = 3
        Width = 60
        Height = 21
        TabStop = False
        Color = 14342874
        DataField = 'rev_lme'
        DataSource = dso
        Enabled = False
        ReadOnly = True
        TabOrder = 2
      end
      object cbbInternoPessoaFisicaSubstituta: TwwDBLookupCombo
        Left = 6
        Top = 338
        Width = 160
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_interno_icm_s_pf'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 14
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbInternoPessoaFisicaSubstitutaEnter
      end
      object cbbExternoPessoaFisicaSubstituta: TwwDBLookupCombo
        Left = 172
        Top = 338
        Width = 160
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_externo_icm_s_pf'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 15
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbExternoPessoaFisicaSubstitutaEnter
      end
      object cbbInternoPessoaJuridicaSubstituta: TwwDBLookupCombo
        Left = 338
        Top = 338
        Width = 160
        Height = 21
        DropDownAlignment = taRightJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_interno_icm_s_pj'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 16
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbInternoPessoaJuridicaSubstitutaEnter
      end
      object cbbExternoPessoaJuridicaSubstituta: TwwDBLookupCombo
        Left = 502
        Top = 338
        Width = 160
        Height = 21
        DropDownAlignment = taRightJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_externo_icm_s_pj'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 17
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbExternoPessoaJuridicaSubstitutaEnter
      end
      object cbbExternoServico: TwwDBLookupCombo
        Left = 338
        Top = 413
        Width = 160
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_servico_fora'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 19
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbExternoServicoEnter
      end
      object cbbInternoServico: TwwDBLookupCombo
        Left = 172
        Top = 413
        Width = 160
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_servico_dentro'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 18
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbInternoServicoEnter
      end
      object cbbExteriorPessoaFisica: TwwDBLookupCombo
        Left = 87
        Top = 251
        Width = 160
        Height = 21
        DropDownAlignment = taRightJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_exterior_pf'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 12
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbExteriorPessoaFisicaEnter
      end
      object cbbExteriorPessoaJuridica: TwwDBLookupCombo
        Left = 418
        Top = 251
        Width = 160
        Height = 21
        DropDownAlignment = taRightJustify
        Selected.Strings = (
          'id_cfo'#9'5'#9'id_cfo'#9'F'
          'descricao'#9'80'#9'descricao'#9'F')
        DataField = 'cfo_exterior_pj'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_CFO
        LookupField = 'id_cfo'
        Options = [loRowLines]
        TabOrder = 13
        AutoDropDown = False
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbExteriorPessoaJuridicaEnter
      end
    end
  end
  inherited pnlTop: TJvPanel
    inherited pnlCima: TJvPanel
      inherited lblTitulo: TLabel
        Caption = 'Tipo de Movimento de Estoque'
      end
    end
  end
  inherited dso: TwwDataSource
    DataSet = dmGeral.CAD_CD_C_TME
  end
end
