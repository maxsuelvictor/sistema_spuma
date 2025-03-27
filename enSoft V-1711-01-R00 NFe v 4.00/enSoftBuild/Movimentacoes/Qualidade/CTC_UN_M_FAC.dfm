inherited CTC_FM_M_FAC: TCTC_FM_M_FAC
  ExplicitWidth = 1156
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlEsquerda: TPanel
    inherited pnlFiltro: TPanel
      inherited gbxFiltro: TGroupBox
        inherited cbbPesquisa: TComboBox
          Left = 3
          Top = 18
          ItemIndex = 0
          Text = 'C'#243'digo'
          OnChange = cbbPesquisaChange
          Items.Strings = (
            'C'#243'digo'
            'Data')
          ExplicitLeft = 3
          ExplicitTop = 18
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
          'id_fac'#9'10'#9'N'#186' FAC'#9'F'
          'dta_abertura'#9'13'#9'Abertura'#9'F'
          'pro_descricao'#9'28'#9'Problema'#9'F')
      end
    end
  end
  inherited pnlDireita: TPanel
    inherited pnlDados: TPanel
      Left = 7
      Width = 807
      Height = 435
      ExplicitLeft = 7
      ExplicitWidth = 807
      ExplicitHeight = 435
      object lblNFac: TLabel
        Left = 69
        Top = 8
        Width = 42
        Height = 13
        Caption = 'N'#186' FAC :'
      end
      object lblDataAbertura: TLabel
        Left = 250
        Top = 8
        Width = 72
        Height = 13
        Caption = 'Dta.Abertura :'
      end
      object lblAcao: TLabel
        Left = 80
        Top = 31
        Width = 31
        Height = 13
        Caption = 'A'#231#227'o :'
      end
      object lblOrigem: TLabel
        Left = 278
        Top = 31
        Width = 44
        Height = 13
        Caption = 'Origem :'
      end
      object lbldescricaoprob: TLabel
        Left = 437
        Top = 8
        Width = 102
        Height = 13
        Caption = 'Descri'#231#227'o do Prob. :'
      end
      object lblResponsavel1: TLabel
        Left = 469
        Top = 31
        Width = 70
        Height = 13
        Caption = 'Respons'#225'vel :'
      end
      object lblData1: TLabel
        Left = 665
        Top = 31
        Width = 30
        Height = 13
        Caption = 'Data :'
      end
      object lblacaoimediata: TLabel
        Left = 3
        Top = 54
        Width = 108
        Height = 13
        Caption = 'A'#231#227'o Imediata/Disp. :'
      end
      object lblData2: TLabel
        Left = 665
        Top = 54
        Width = 30
        Height = 13
        Caption = 'Data :'
      end
      object lblData3: TLabel
        Left = 665
        Top = 77
        Width = 30
        Height = 13
        Caption = 'Data :'
      end
      object lblcausaproblema: TLabel
        Left = 6
        Top = 123
        Width = 105
        Height = 13
        Caption = 'Causa do Problema :'
      end
      object lblData4: TLabel
        Left = 665
        Top = 100
        Width = 30
        Height = 13
        Caption = 'Data :'
      end
      object lblacaoCP: TLabel
        Left = 3
        Top = 165
        Width = 25
        Height = 13
        Caption = 'A'#231#227'o'
      end
      object lblresponsavel: TLabel
        Left = 545
        Top = 165
        Width = 64
        Height = 13
        Caption = 'Respons'#225'vel'
      end
      object lbldata: TLabel
        Left = 701
        Top = 165
        Width = 24
        Height = 13
        Caption = 'Data'
      end
      object lblmetodoavaliacao: TLabel
        Left = 3
        Top = 275
        Width = 798
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'M'#233'todo para Avalia'#231#227'o da Efic'#225'cia'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lblacaocorre_prev: TLabel
        Left = -1
        Top = 147
        Width = 798
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'A'#231#227'o Corretiva / Preventiva'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lblprazoacao: TLabel
        Left = 330
        Top = 319
        Width = 34
        Height = 13
        Caption = 'Prazo :'
      end
      object lblprazoimplementacao: TLabel
        Left = 330
        Top = 342
        Width = 34
        Height = 13
        Caption = 'Prazo :'
      end
      object lblnovafacacao: TLabel
        Left = 309
        Top = 365
        Width = 55
        Height = 13
        Caption = 'Nova FAC :'
      end
      object lblanlisecritica: TLabel
        Left = 3
        Top = 411
        Width = 119
        Height = 13
        Caption = 'An'#225'lise critica da a'#231#227'o :'
      end
      object lblnovafaccomplementar: TLabel
        Left = 309
        Top = 389
        Width = 55
        Height = 13
        Caption = 'Nova FAC :'
      end
      object lblResponsavel2: TLabel
        Left = 469
        Top = 54
        Width = 70
        Height = 13
        Caption = 'Respons'#225'vel :'
      end
      object lblResponsavel3: TLabel
        Left = 469
        Top = 77
        Width = 70
        Height = 13
        Caption = 'Respons'#225'vel :'
      end
      object lblResponsavel4: TLabel
        Left = 469
        Top = 100
        Width = 70
        Height = 13
        Caption = 'Respons'#225'vel :'
      end
      object txtNFac: TDBEdit
        Left = 117
        Top = 5
        Width = 100
        Height = 21
        Color = 14342874
        DataField = 'id_fac'
        DataSource = dso
        Enabled = False
        TabOrder = 0
      end
      object txtDescricaoProblema: TDBEdit
        Left = 545
        Top = 5
        Width = 256
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'pro_descricao'
        DataSource = dso
        TabOrder = 1
      end
      object txtDataAbertura: TDBEdit
        Left = 328
        Top = 5
        Width = 100
        Height = 21
        Color = 14342874
        DataField = 'dta_abertura'
        DataSource = dso
        Enabled = False
        TabOrder = 2
      end
      object cbbOrigem: TJvDBComboBox
        Left = 328
        Top = 28
        Width = 100
        Height = 21
        DataField = 'pro_origem'
        DataSource = dso
        TabOrder = 3
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbResponsavel1: TwwDBLookupCombo
        Left = 544
        Top = 28
        Width = 115
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'id_funcionario'#9'10'#9'id_funcionario'#9'F'
          'nome'#9'30'#9'nome'#9'F')
        DataField = 'pro_id_responsavel'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FUN
        LookupField = 'id_funcionario'
        Color = clWhite
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbResponsavel1Enter
        OnExit = cbbResponsavel1Exit
      end
      object dpkDada1: TDBEdit
        Left = 701
        Top = 32
        Width = 100
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'pro_data'
        DataSource = dso
        TabOrder = 5
      end
      object cbbAcao: TJvDBComboBox
        Left = 117
        Top = 28
        Width = 100
        Height = 21
        DataField = 'pro_acao'
        DataSource = dso
        TabOrder = 6
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object txtacaoimed: TDBEdit
        Left = 117
        Top = 50
        Width = 311
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'aci_descricao'
        DataSource = dso
        TabOrder = 7
      end
      object cbbResponsavel2: TwwDBLookupCombo
        Left = 545
        Top = 51
        Width = 115
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'id_funcionario'#9'10'#9'id_funcionario'#9'F'
          'nome'#9'30'#9'nome'#9'F')
        DataField = 'aci_id_responsavel'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FUN
        LookupField = 'id_funcionario'
        Color = clWhite
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbResponsavel2Enter
        OnExit = cbbResponsavel2Exit
      end
      object dpkDada2: TDBEdit
        Left = 701
        Top = 51
        Width = 100
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'aci_data'
        DataSource = dso
        TabOrder = 9
      end
      object cbbResponsavel3: TwwDBLookupCombo
        Left = 545
        Top = 74
        Width = 115
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'id_funcionario'#9'10'#9'id_funcionario'#9'F'
          'nome'#9'50'#9'nome'#9'F')
        DataField = 'ava_id_responsavel'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FUN
        LookupField = 'id_funcionario'
        Color = clWhite
        TabOrder = 10
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbResponsavel3Enter
        OnExit = cbbResponsavel3Exit
      end
      object dpkDada3: TDBEdit
        Left = 701
        Top = 78
        Width = 100
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'ava_data'
        DataSource = dso
        TabOrder = 11
      end
      object txtCausaProblema: TDBEdit
        Left = 117
        Top = 120
        Width = 684
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'cap_descricao'
        DataSource = dso
        TabOrder = 12
      end
      object cbbResponsavel4: TwwDBLookupCombo
        Left = 545
        Top = 101
        Width = 115
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'id_funcionario'#9'10'#9'id_funcionario'#9'F'
          'nome'#9'50'#9'nome'#9'F')
        DataField = 'cap_id_responsavel'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FUN
        LookupField = 'id_funcionario'
        Color = clWhite
        TabOrder = 13
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbResponsavel4Enter
        OnExit = cbbResponsavel4Exit
      end
      object dpkDada4: TDBEdit
        Left = 701
        Top = 97
        Width = 100
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'cap_data'
        DataSource = dso
        TabOrder = 14
      end
      object txtAcao1: TDBEdit
        Left = 3
        Top = 181
        Width = 536
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'acp_descricao_01'
        DataSource = dso
        TabOrder = 15
      end
      object cbbResponsavel5: TwwDBLookupCombo
        Left = 545
        Top = 178
        Width = 150
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
        DataField = 'acp_id_resp_01'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FUN
        LookupField = 'id_funcionario'
        Color = clWhite
        TabOrder = 16
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbResponsavel5Enter
        OnExit = cbbResponsavel5Exit
      end
      object dpkDada5: TDBEdit
        Left = 701
        Top = 178
        Width = 100
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'acp_data_01'
        DataSource = dso
        TabOrder = 17
      end
      object txtAcao2: TDBEdit
        Left = 3
        Top = 205
        Width = 536
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'acp_descricao_02'
        DataSource = dso
        TabOrder = 18
      end
      object cbbResponsavel6: TwwDBLookupCombo
        Left = 545
        Top = 205
        Width = 150
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
        DataField = 'acp_id_resp_02'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FUN
        LookupField = 'id_funcionario'
        Color = clWhite
        TabOrder = 19
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbResponsavel6Enter
        OnExit = cbbResponsavel6Exit
      end
      object dpkDada6: TDBEdit
        Left = 701
        Top = 205
        Width = 100
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'acp_data_02'
        DataSource = dso
        TabOrder = 20
      end
      object txtAcao3: TDBEdit
        Left = 3
        Top = 227
        Width = 536
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'acp_descricao_03'
        DataSource = dso
        TabOrder = 21
      end
      object cbbResponsavel7: TwwDBLookupCombo
        Left = 545
        Top = 227
        Width = 150
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
        DataField = 'acp_id_resp_03'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FUN
        LookupField = 'id_funcionario'
        Color = clWhite
        TabOrder = 22
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbResponsavel7Enter
        OnExit = cbbResponsavel7Exit
      end
      object dpkDada7: TDBEdit
        Left = 701
        Top = 227
        Width = 100
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'acp_data_03'
        DataSource = dso
        TabOrder = 23
      end
      object txtAcao4: TDBEdit
        Left = 3
        Top = 250
        Width = 536
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'acp_descricao_04'
        DataSource = dso
        TabOrder = 24
      end
      object cbbResponsavel8: TwwDBLookupCombo
        Left = 545
        Top = 250
        Width = 150
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'30'#9'Descri'#231#227'o'#9'F')
        DataField = 'acp_id_resp_04'
        DataSource = dso
        LookupTable = dmGeral.BUS_CD_C_FUN
        LookupField = 'id_funcionario'
        Color = clWhite
        TabOrder = 25
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = cbbResponsavel8Enter
        OnExit = cbbResponsavel8Exit
      end
      object dpkDada8: TDBEdit
        Left = 701
        Top = 250
        Width = 100
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'acp_data_04'
        DataSource = dso
        TabOrder = 26
      end
      object txtMetodoAvaliacao: TDBEdit
        Left = 3
        Top = 292
        Width = 798
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'mae_descricao'
        DataSource = dso
        TabOrder = 27
      end
      object txtprazoacao: TDBEdit
        Left = 370
        Top = 316
        Width = 58
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'aco_perg_01_prazo'
        DataSource = dso
        TabOrder = 28
      end
      object txtprazoimplantada: TDBEdit
        Left = 370
        Top = 339
        Width = 58
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'aco_perg_02_prazo'
        DataSource = dso
        TabOrder = 29
      end
      object txtnovafacefi: TDBEdit
        Left = 370
        Top = 362
        Width = 58
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'aco_perg_03_fac'
        DataSource = dso
        TabOrder = 30
      end
      object txtnovafaccomp: TDBEdit
        Left = 370
        Top = 385
        Width = 58
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'aco_perg_04_fac'
        DataSource = dso
        TabOrder = 31
      end
      object txtanalisecri: TDBEdit
        Left = 128
        Top = 408
        Width = 673
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'aca_descricao'
        DataSource = dso
        TabOrder = 32
      end
      object chbacaoimplantada: TwwCheckBox
        Left = 3
        Top = 318
        Width = 300
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = 'A'#231#227'o Implantada ?'
        DataField = 'aco_perg_01'
        DataSource = dso
        TabOrder = 33
      end
      object chbiplantadaprazo: TwwCheckBox
        Left = 3
        Top = 341
        Width = 300
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = 'Implantada no prazo ?'
        DataField = 'aco_perg_02'
        DataSource = dso
        TabOrder = 34
      end
      object chbacaoeficaz: TwwCheckBox
        Left = 3
        Top = 364
        Width = 300
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = 'A'#231#227'o Eficaz ?'
        DataField = 'aco_perg_03'
        DataSource = dso
        TabOrder = 35
      end
      object chbnescessidadeacao: TwwCheckBox
        Left = 3
        Top = 385
        Width = 300
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = 'Necessidade de a'#231#227'o complementar ?'
        DataField = 'aco_perg_04'
        DataSource = dso
        TabOrder = 36
      end
      object rgAvaliacao: TwwRadioGroup
        Left = 117
        Top = 77
        Width = 311
        Height = 41
        DisableThemes = False
        Caption = ' Avalia'#231#227'o '
        Columns = 3
        DataField = 'ava_avaliacao'
        DataSource = dso
        Items.Strings = (
          'Trivialidade'
          'FAC Existente'
          'Proseguir')
        TabOrder = 37
      end
    end
  end
  inherited pnlTop: TJvPanel
    inherited pnlCima: TJvPanel
      inherited lblTitulo: TLabel
        Caption = 'A'#231#227'o Corretiva, Preventiva e de Melhoria - FAC'
      end
    end
  end
  inherited acBotoes: TActionList
    Left = 115
    Top = 259
  end
  inherited dso: TwwDataSource
    DataSet = dmCtc.ctc_cd_m_fac
    Left = 224
    Top = 187
  end
  inherited imgBotoesAtivo: TImageList
    Left = 27
    Top = 115
  end
  inherited imgBotoesInativo: TImageList
    Left = 27
    Top = 259
  end
  inherited ImgPequena: TImageList
    Left = 115
    Top = 115
  end
  inherited imgBotoesAtivoAz: TImageList
    Left = 27
    Top = 163
  end
  inherited ImgPequenaAz: TImageList
    Left = 115
    Top = 163
  end
  inherited imgBotoesAtivoVe: TImageList
    Left = 27
    Top = 211
  end
  inherited ImgPequenaVe: TImageList
    Left = 115
    Top = 211
  end
end
