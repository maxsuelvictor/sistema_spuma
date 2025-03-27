object PCP_FM_M_OPR_OPP_ALT: TPCP_FM_M_OPR_OPP_ALT
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PCP_FM_M_OPR_OPP_ALT'
  ClientHeight = 486
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbInformacoes: TGroupBox
    Left = 2
    Top = 6
    Width = 759
    Height = 259
    TabOrder = 0
    object Label10: TLabel
      Left = 488
      Top = 18
      Width = 24
      Height = 13
      Caption = 'Cor :'
    end
    object Label11: TLabel
      Left = 637
      Top = 18
      Width = 51
      Height = 13
      Caption = 'Tamanho :'
    end
    object Label3: TLabel
      Left = 10
      Top = 50
      Width = 337
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Informa'#231#245'es sobre o item'
      Color = 14342874
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label2: TLabel
      Left = 351
      Top = 50
      Width = 404
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ordem de Produ'#231#245'es que utilizaram saldo deste item'
      Color = 14342874
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label9: TLabel
      Left = 11
      Top = 17
      Width = 29
      Height = 13
      Caption = 'Item :'
    end
    object wwDBEdit5: TwwDBEdit
      Left = 41
      Top = 14
      Width = 62
      Height = 21
      Color = 14342874
      DataField = 'id_item'
      DataSource = dsoOpp
      ReadOnly = True
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit6: TwwDBEdit
      Left = 106
      Top = 14
      Width = 376
      Height = 21
      Color = 14342874
      DataField = 'int_nomeite'
      DataSource = dsoOpp
      ReadOnly = True
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit7: TwwDBEdit
      Left = 514
      Top = 14
      Width = 117
      Height = 21
      Color = 14342874
      DataField = 'int_nomecor'
      DataSource = dsoOpp
      ReadOnly = True
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object txtInfoAlt: TDBMemo
      Left = 10
      Top = 72
      Width = 337
      Height = 181
      Color = 14342874
      DataField = 'historico_alt'
      DataSource = dsoOpp
      TabOrder = 3
    end
    object wwDBGrid1: TwwDBGrid
      Left = 351
      Top = 72
      Width = 404
      Height = 181
      Selected.Strings = (
        'id_opr_ext'#9'10'#9'Ordem de Produ'#231#227'o'
        'int_dtaemissao_ext'#9'10'#9'Data O.P'
        'qtd_utilizado'#9'10'#9'Qtde utilizada'
        'dta_utilizado'#9'10'#9'Utilizado em'
        'hor_utilizado'#9'10'#9'Hora utilizado')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = 14342874
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 14342874
      DataSource = dsOprOppSop
      ReadOnly = True
      TabOrder = 4
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBEdit8: TwwDBEdit
      Left = 694
      Top = 14
      Width = 62
      Height = 21
      Color = 14342874
      DataField = 'int_nometam'
      DataSource = dsoOpp
      ReadOnly = True
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 271
    Width = 755
    Height = 215
    TabOrder = 1
    object Label4: TLabel
      Left = 160
      Top = 76
      Width = 78
      Height = 13
      Caption = 'Qtde a produzir '
    end
    object Label5: TLabel
      Left = 23
      Top = 76
      Width = 115
      Height = 13
      Caption = 'Qtde a produzir original '
    end
    object Label1: TLabel
      Left = 429
      Top = 76
      Width = 140
      Height = 13
      Caption = 'Qtde utilizada por outras O.P'
    end
    object Label6: TLabel
      Left = 284
      Top = 76
      Width = 130
      Height = 13
      Caption = 'Qtde utilizada por esta O.P'
    end
    object Label7: TLabel
      Left = 584
      Top = 76
      Width = 76
      Height = 13
      Caption = 'Saldo dispon'#237'vel'
    end
    object Label13: TLabel
      Left = 23
      Top = 121
      Width = 95
      Height = 13
      Caption = 'Motivo da altera'#231#227'o'
    end
    object lblDataEmissao: TLabel
      Left = 259
      Top = 41
      Width = 100
      Height = 13
      Caption = #218'ltima altera'#231#227'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 3
      Top = 3
      Width = 749
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Alterar produ'#231#227'o do item'
      Color = 14342874
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object btnSairAlt: TBitBtn
      Left = 661
      Top = 175
      Width = 75
      Height = 31
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btnSairAltClick
    end
    object txtQtdAProduzir: TwwDBEdit
      Left = 160
      Top = 92
      Width = 121
      Height = 21
      DataField = 'qtde_a_produzir'
      DataSource = dsoOpp
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = txtQtdAProduzirExit
    end
    object wwDBEdit1: TwwDBEdit
      Left = 23
      Top = 92
      Width = 133
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'qtde_a_produzir_orig'
      DataSource = dsoOpp
      ReadOnly = True
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object txtQtdUtilizOprExt: TwwDBEdit
      Left = 429
      Top = 92
      Width = 151
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'qtde_atender_opr_ext'
      DataSource = dsoOpp
      ReadOnly = True
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object txtQtdUtilizOpr: TwwDBEdit
      Left = 284
      Top = 92
      Width = 142
      Height = 21
      DataField = 'qtde_atender_opr'
      DataSource = dsoOpp
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = txtQtdUtilizOprExit
    end
    object txtQtdSldDisp: TwwDBEdit
      Left = 584
      Top = 92
      Width = 152
      Height = 21
      TabStop = False
      Color = 14342874
      DataField = 'saldo_disponivel'
      DataSource = dsoOpp
      ReadOnly = True
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object txtMotivoAlt: TwwDBEdit
      Left = 23
      Top = 136
      Width = 713
      Height = 21
      DataField = 'motivo_alt'
      DataSource = dsoOpp
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dpkDataEmissao: TJvDBDateEdit
      Left = 365
      Top = 37
      Width = 104
      Height = 21
      TabStop = False
      DataField = 'dta_alt'
      DataSource = dsoOpp
      ReadOnly = True
      Color = 14342874
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowNullDate = False
      TabOrder = 8
    end
    object Button1: TButton
      Left = 586
      Top = 175
      Width = 74
      Height = 31
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object dsOprOppSop: TwwDataSource
    DataSet = dmGeral.PCP_CD_M_OPR_OPP_SOP
    Left = 619
    Top = 132
  end
  object dsoOpp: TwwDataSource
    DataSet = dmGeral.PCP_CD_M_OPR_OPP
    Left = 652
    Top = 83
  end
end
