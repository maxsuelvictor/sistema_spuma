object PCP_FM_M_OPR_FUN_COL: TPCP_FM_M_OPR_FUN_COL
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 559
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 30
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 440
      Height = 28
      Align = alClient
      Alignment = taCenter
      Caption = 'Impress'#227'o de etiqueta para Setores'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 301
      ExplicitHeight = 25
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 30
    Width = 442
    Height = 529
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlDados: TPanel
      Left = 0
      Top = 0
      Width = 432
      Height = 516
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 158
        Top = 402
        Width = 101
        Height = 16
        Caption = 'Qtde de etiquetas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 22
        Top = 7
        Width = 150
        Height = 13
        Caption = 'Funcion'#225'rios da Colchoaria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 22
        Top = 253
        Width = 140
        Height = 13
        Caption = 'Funcion'#225'rios da Colagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 18655
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 22
        Top = 130
        Width = 202
        Height = 13
        Caption = 'Funcion'#225'rios da Montagem de caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnSair: TcxButton
        Left = 209
        Top = 476
        Width = 90
        Height = 30
        Caption = 'Sair'
        TabOrder = 4
        OnClick = btnSairClick
      end
      object btnImprimir: TcxButton
        Left = 116
        Top = 476
        Width = 90
        Height = 30
        Caption = 'Imprimir'
        OptionsImage.Glyph.Data = {
          C6070000424DC607000000000000360000002800000016000000160000000100
          2000000000009007000000000000000000000000000000000000000000000000
          000000000000010101071D1D1D8F333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF1D1D
          1D8F010101070000000000000000000000000000000000000000000000001717
          1773333333FF2A2A2AD2252525B9252525B9252525B9252525B9252525B92525
          25B9252525B9252525B9252525B9252525B92C2C2CDD333333FF171717730000
          00000000000000000000000000000000000000000000222222A9333333FF0606
          061C000000000000000000000000000000000000000000000000000000000000
          000000000000000000000808082A333333FF222222A900000000000000000000
          00000000000000000000000000002020209F333333FF020202080606061E2020
          20A0202020A0202020A0202020A0202020A01A1A1A8202020208000000000000
          000004040413333333FF2020209F000000000000000000000000000000000000
          000000000001202020A1333333FF010101030A0A0A33333333FF333333FF3333
          33FF333333FF333333FF2C2C2CDE0000000200000000000000000606061C3333
          33FF202020A10000000100000000000000000909092D282828C72D2D2DE33131
          31F5333333FE050505170202020A0B0B0B380B0B0B380B0B0B380B0B0B380B0B
          0B380A0A0A330606061D0606061C0202020B0505051B333333FE313131F52D2D
          2DE3282828C70909092D292929CB333333FF333333FF333333FF333333FE0101
          01030A0A0A33333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF1616166C03030311323232FB333333FF333333FF333333FF2929
          29CB313131F7333333FF333333FF333333FF333333FE0303030E0606061E2020
          20A0202020A0202020A0202020A0202020A0202020A0202020A0202020A00C0C
          0C3C04040416323232FC333333FF333333FF333333FF313131F7303030F13333
          33FF333333FF333333FF333333FE010101040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000023333
          33FE333333FF333333FF333333FF303030F1303030F1333333FF333333FF3333
          33FF333333FF252525BB242424B3242424B3242424B3242424B3242424B32424
          24B3242424B3242424B3242424B3242424B3252525BB333333FF333333FF3333
          33FF333333FF303030F1303030F1333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FD323232FA333333FF333333FF3030
          30F1303030F1333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF323232F91616166D0D0D0D402B2B2BD5333333FF303030F1323232F83333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF313131F30808
          082900000000252525B8333333FF323232F8303030F1333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF272727C2212121A73131
          31F5333333FF303030F11212125B333333FD333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FD1212
          125B000000000909092D0C0C0C3A242424B6333333FF101010500C0C0C3A0C0C
          0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C
          0C3A10101050333333FF242424B60C0C0C3A0909092D00000000000000000000
          0000000000001E1E1E97333333FF020202080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202083333
          33FF1E1E1E970000000000000000000000000000000000000000000000002020
          20A0333333FF0606061C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000606061C333333FF202020A00000
          00000000000000000000000000000000000000000000202020A0333333FF0404
          0416000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040413333333FF202020A000000000000000000000
          0000000000000000000000000000222222A9333333FF05050519000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000808082A333333FF222222A9000000000000000000000000000000000000
          00000000000017171773333333FF2A2A2AD2252525B9252525B9252525B92525
          25B9252525B9252525B9252525B9252525B9252525B9252525B92C2C2CDD3333
          33FF171717730000000000000000000000000000000000000000000000000101
          01071D1D1D8F333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF1D1D1D8F010101070000
          00000000000000000000}
        TabOrder = 5
        OnClick = btnImprimirClick
      end
      object ckFuncionario: TCheckListBox
        Left = 22
        Top = 22
        Width = 393
        Height = 99
        ItemHeight = 13
        TabOrder = 0
        OnClick = ckFuncionarioClick
      end
      object txtQtde: TEdit
        Left = 158
        Top = 420
        Width = 105
        Height = 24
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 3
        OnExit = txtQtdeExit
      end
      object ckColagem: TCheckListBox
        Left = 22
        Top = 268
        Width = 393
        Height = 107
        ItemHeight = 13
        TabOrder = 2
        OnClick = ckColagemClick
      end
      object ckMontagemCaixa: TCheckListBox
        Left = 22
        Top = 145
        Width = 393
        Height = 99
        ItemHeight = 13
        TabOrder = 1
        OnClick = ckMontagemCaixaClick
      end
    end
  end
  object frxEtiquetas: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44536.660498344900000000
    ReportOptions.LastChange = 44536.660498344900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 369
    Top = 108
    Datasets = <
      item
        DataSet = DBEtiquetas
        DataSetName = 'DBEtiquetas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 105.000000000000000000
      PaperHeight = 13.000000000000000000
      PaperSize = 256
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 1.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 37.039370080000000000
        Width = 381.732530000000000000
        Columns = 3
        ColumnWidth = 125.858267716535400000
        DataSet = DBEtiquetas
        DataSetName = 'DBEtiquetas'
        RowCount = 0
        object BarCode1: TfrxBarCodeView
          Left = 42.338590000000000000
          Top = 2.779530000000000000
          Width = 68.000000000000000000
          Height = 30.236225350000000000
          BarType = bcCode128
          Expression = '<DBEtiquetas."codigo">'
          Rotation = 0
          ShowText = False
          Text = '150'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Californian FB'
          Font.Style = []
        end
        object Memo1: TfrxMemoView
          Left = 2.881880000000000000
          Top = 24.897650000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          DataField = 'codigo_limpo'
          DataSet = DBEtiquetas
          DataSetName = 'DBEtiquetas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBEtiquetas."codigo_limpo"]')
          ParentFont = False
        end
      end
    end
  end
  object DBEtiquetas: TfrxDBDataset
    UserName = 'DBEtiquetas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'descricao=descricao'
      'codigo_limpo=codigo_limpo')
    DataSet = cdsEtiquetas
    BCDToCurrency = False
    Left = 369
    Top = 244
  end
  object cdsEtiquetas: TClientDataSet
    PersistDataPacket.Data = {
      5C0000009619E0BD0100000018000000030000000000030000005C0006636F64
      69676F04000100000000000964657363726963616F0100490000000100055749
      4454480200020032000C636F6469676F5F6C696D706F04000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 369
    Top = 172
    object cdsEtiquetascodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsEtiquetasdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsEtiquetascodigo_limpo: TIntegerField
      FieldName = 'codigo_limpo'
    end
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Argox OS-214 plus series PPLA'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42592.701061192100000000
    ReportOptions.LastChange = 44531.408408136600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      '                                   '
      'begin'
      ''
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 369
    Top = 324
    Datasets = <
      item
        DataSetName = 'PCP_DB_C_ETQ_1_C_MSG'
      end>
    Variables = <
      item
        Name = ' Externo'
        Value = Null
      end
      item
        Name = 'ft_qtde'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 101.600000000000000000
      PaperHeight = 23.000000000000000000
      PaperSize = 256
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object BarCode1: TfrxBarCodeView
        Left = 14.559060000000000000
        Top = 3.779530000000000000
        Width = 68.000000000000000000
        Height = 22.677180000000000000
        BarType = bcCode128
        Rotation = 0
        ShowText = False
        Text = '150'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
      object BarCode7: TfrxBarCodeView
        Left = 149.842610000000000000
        Top = 3.779537325000000000
        Width = 68.000000000000000000
        Height = 22.677165350000000000
        BarType = bcCode128
        Rotation = 0
        ShowText = False
        Text = '150'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
      object BarCode2: TfrxBarCodeView
        Left = 281.126160000000000000
        Top = 3.779537325000000000
        Width = 68.000000000000000000
        Height = 22.677165350000000000
        BarType = bcCode128
        Rotation = 0
        ShowText = False
        Text = '150'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
      object BarCode3: TfrxBarCodeView
        Left = 14.779530000000000000
        Top = 52.897650000000000000
        Width = 68.000000000000000000
        Height = 22.677165350000000000
        BarType = bcCode128
        Rotation = 0
        ShowText = False
        Text = '150'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
      object BarCode8: TfrxBarCodeView
        Left = 150.063080000000000000
        Top = 52.897650000000000000
        Width = 68.000000000000000000
        Height = 22.677165350000000000
        BarType = bcCode128
        Rotation = 0
        ShowText = False
        Text = '150'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
      object BarCode9: TfrxBarCodeView
        Left = 281.346630000000000000
        Top = 52.897650000000000000
        Width = 68.000000000000000000
        Height = 22.677165350000000000
        BarType = bcCode128
        Rotation = 0
        ShowText = False
        Text = '150'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
    end
  end
  object BUS_CD_C_FUN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CAD_DP_C_FUN'
    RemoteServer = dmGeral.pcConecao
    Left = 281
    Top = 107
    object BUS_CD_C_FUNid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
    end
    object BUS_CD_C_FUNativo: TBooleanField
      FieldName = 'ativo'
    end
    object BUS_CD_C_FUNnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object BUS_CD_C_FUNendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object BUS_CD_C_FUNcep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object BUS_CD_C_FUNnumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object BUS_CD_C_FUNtel_fixo: TWideStringField
      FieldName = 'tel_fixo'
      Size = 14
    end
    object BUS_CD_C_FUNtel_movel: TWideStringField
      FieldName = 'tel_movel'
      Size = 14
    end
    object BUS_CD_C_FUNdoc_cpf: TWideStringField
      FieldName = 'doc_cpf'
      Size = 11
    end
    object BUS_CD_C_FUNdoc_identidade: TWideStringField
      FieldName = 'doc_identidade'
      Size = 11
    end
    object BUS_CD_C_FUNbairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object BUS_CD_C_FUNid_cidade: TWideStringField
      FieldName = 'id_cidade'
      Size = 10
    end
    object BUS_CD_C_FUNestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object BUS_CD_C_FUNemail: TWideStringField
      FieldName = 'email'
      Size = 60
    end
    object BUS_CD_C_FUNsexo: TIntegerField
      FieldName = 'sexo'
    end
    object BUS_CD_C_FUNdta_nascimento: TDateField
      FieldName = 'dta_nascimento'
    end
    object BUS_CD_C_FUNdta_cadastro: TDateField
      FieldName = 'dta_cadastro'
    end
    object BUS_CD_C_FUNlogin: TWideStringField
      FieldName = 'login'
      Size = 30
    end
    object BUS_CD_C_FUNsenha: TWideStringField
      FieldName = 'senha'
      Size = 100
    end
    object BUS_CD_C_FUNdta_senha_expira: TDateField
      FieldName = 'dta_senha_expira'
    end
    object BUS_CD_C_FUNid_perfil_seg: TIntegerField
      FieldName = 'id_perfil_seg'
    end
    object BUS_CD_C_FUNseg_alt_lim_cli: TBooleanField
      FieldName = 'seg_alt_lim_cli'
    end
    object BUS_CD_C_FUNseg_alt_sit_cli: TBooleanField
      FieldName = 'seg_alt_sit_cli'
    end
    object BUS_CD_C_FUNseg_alt_pre_pro: TBooleanField
      FieldName = 'seg_alt_pre_pro'
    end
    object BUS_CD_C_FUNseg_hab_bot_exc: TBooleanField
      FieldName = 'seg_hab_bot_exc'
    end
    object BUS_CD_C_FUNint_nomecid: TWideStringField
      FieldName = 'int_nomecid'
      ProviderFlags = []
      Size = 60
    end
    object BUS_CD_C_FUNcod_lme: TWideStringField
      FieldName = 'cod_lme'
    end
    object BUS_CD_C_FUNrev_lme: TWideStringField
      FieldName = 'rev_lme'
      Size = 5
    end
    object BUS_CD_C_FUNseg_vis_ult_cmp_ite: TBooleanField
      FieldName = 'seg_vis_ult_cmp_ite'
    end
    object BUS_CD_C_FUNseg_vis_msg_sol_cmp: TBooleanField
      FieldName = 'seg_vis_msg_sol_cmp'
    end
    object BUS_CD_C_FUNseg_apr_rep_cmp_ped: TBooleanField
      FieldName = 'seg_apr_rep_cmp_ped'
    end
    object BUS_CD_C_FUNseg_per_canc_orv: TBooleanField
      FieldName = 'seg_per_canc_orv'
    end
    object BUS_CD_C_FUNseg_habilitar_seg: TBooleanField
      FieldName = 'seg_habilitar_seg'
    end
    object BUS_CD_C_FUNseg_redef_senha: TBooleanField
      FieldName = 'seg_redef_senha'
    end
    object BUS_CD_C_FUNseg_hab_bot_alt_fun: TBooleanField
      FieldName = 'seg_hab_bot_alt_fun'
    end
    object BUS_CD_C_FUNseq_vis_msg_ped_exp_fat: TBooleanField
      FieldName = 'seq_vis_msg_ped_exp_fat'
    end
    object BUS_CD_C_FUNseg_ctc_apg: TBooleanField
      FieldName = 'seg_ctc_apg'
    end
    object BUS_CD_C_FUNseg_alt_vend_ped: TBooleanField
      FieldName = 'seg_alt_vend_ped'
    end
    object BUS_CD_C_FUNseq_vis_alert_est_min: TBooleanField
      FieldName = 'seq_vis_alert_est_min'
    end
    object BUS_CD_C_FUNexcluir_caixa: TBooleanField
      FieldName = 'excluir_caixa'
    end
    object BUS_CD_C_FUNseg_hab_lib_brd: TBooleanField
      FieldName = 'seg_hab_lib_brd'
    end
    object BUS_CD_C_FUNseg_vis_custo_csu_ite: TBooleanField
      FieldName = 'seg_vis_custo_csu_ite'
    end
    object BUS_CD_C_FUNseg_zerar_est: TBooleanField
      FieldName = 'seg_zerar_est'
    end
    object BUS_CD_C_FUNseg_vis_nota_csu_ite: TBooleanField
      FieldName = 'seg_vis_nota_csu_ite'
    end
    object BUS_CD_C_FUNid_empresa_mob: TIntegerField
      FieldName = 'id_empresa_mob'
    end
    object BUS_CD_C_FUNvnd_interno_externo: TIntegerField
      FieldName = 'vnd_interno_externo'
    end
    object BUS_CD_C_FUNtipo: TIntegerField
      FieldName = 'tipo'
    end
    object BUS_CD_C_FUNaniversariante_mes: TBooleanField
      FieldName = 'aniversariante_mes'
    end
    object BUS_CD_C_FUNsgq_reimprime_etq: TBooleanField
      FieldName = 'sgq_reimprime_etq'
    end
    object BUS_CD_C_FUNmob_alt_preco_ped: TBooleanField
      FieldName = 'mob_alt_preco_ped'
    end
    object BUS_CD_C_FUNseg_per_desc_maior: TBooleanField
      FieldName = 'seg_per_desc_maior'
    end
    object BUS_CD_C_FUNseg_cancelar_os: TBooleanField
      FieldName = 'seg_cancelar_os'
    end
    object BUS_CD_C_FUNadm_sistema: TBooleanField
      FieldName = 'adm_sistema'
    end
    object BUS_CD_C_FUNper_comissao: TFloatField
      FieldName = 'per_comissao'
    end
    object BUS_CD_C_FUNseg_alt_cli_ped: TBooleanField
      FieldName = 'seg_alt_cli_ped'
    end
    object BUS_CD_C_FUNsgq_perm_alt_comissao_ped: TBooleanField
      FieldName = 'sgq_perm_alt_comissao_ped'
    end
    object BUS_CD_C_FUNseg_alterar_local_tit_fin: TBooleanField
      FieldName = 'seg_alterar_local_tit_fin'
    end
    object BUS_CD_C_FUNseg_vis_aviso_tit_spc_protesto: TBooleanField
      FieldName = 'seg_vis_aviso_tit_spc_protesto'
    end
    object BUS_CD_C_FUNsgq_perm_botao_ger_prod: TBooleanField
      FieldName = 'sgq_perm_botao_ger_prod'
    end
    object BUS_CD_C_FUNsgq_perm_atual_contagem: TBooleanField
      FieldName = 'sgq_perm_atual_contagem'
    end
    object BUS_CD_C_FUNsgq_vis_vlr_tot_carga: TBooleanField
      FieldName = 'sgq_vis_vlr_tot_carga'
    end
    object BUS_CD_C_FUNseg_alterar_fpg_tit_fin: TBooleanField
      FieldName = 'seg_alterar_fpg_tit_fin'
    end
    object BUS_CD_C_FUNseg_alterar_ped_sit: TIntegerField
      FieldName = 'seg_alterar_ped_sit'
    end
    object BUS_CD_C_FUNsgq_per_comissao: TFloatField
      FieldName = 'sgq_per_comissao'
    end
    object BUS_CD_C_FUNper_alterar_repres: TBooleanField
      FieldName = 'per_alterar_repres'
    end
    object BUS_CD_C_FUNbus_som_ped_sem_pagtos: TBooleanField
      FieldName = 'bus_som_ped_sem_pagtos'
    end
    object BUS_CD_C_FUNsgq_perm_inserir_itens_op: TBooleanField
      FieldName = 'sgq_perm_inserir_itens_op'
    end
    object BUS_CD_C_FUNCAD_SQ_C_FUN_CPN: TDataSetField
      FieldName = 'CAD_SQ_C_FUN_CPN'
    end
    object BUS_CD_C_FUNCAD_SQ_C_FUN_EMP: TDataSetField
      FieldName = 'CAD_SQ_C_FUN_EMP'
    end
    object BUS_CD_C_FUNCAD_SQ_C_FUN_CRG: TDataSetField
      FieldName = 'CAD_SQ_C_FUN_CRG'
    end
  end
  object BUS_CD_C_FUN_CRG: TClientDataSet
    Aggregates = <>
    DataSetField = BUS_CD_C_FUNCAD_SQ_C_FUN_CRG
    Params = <>
    Left = 281
    Top = 179
    object BUS_CD_C_FUN_CRGid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
    end
    object BUS_CD_C_FUN_CRGid_cargo: TIntegerField
      FieldName = 'id_cargo'
    end
    object BUS_CD_C_FUN_CRGint_nomecrg: TWideStringField
      FieldName = 'int_nomecrg'
      ProviderFlags = []
      Size = 70
    end
    object BUS_CD_C_FUN_CRGint_desc_setor: TWideStringField
      FieldName = 'int_desc_setor'
      ProviderFlags = []
      Size = 50
    end
    object BUS_CD_C_FUN_CRGint_tipo_setor: TIntegerField
      FieldName = 'int_tipo_setor'
      ProviderFlags = []
    end
  end
  object Backup_FrxEtiquetas_original: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44536.660498344900000000
    ReportOptions.LastChange = 44536.660498344900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 345
    Top = 428
    Datasets = <
      item
        DataSet = DBEtiquetas
        DataSetName = 'DBEtiquetas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 105.000000000000000000
      PaperHeight = 13.000000000000000000
      PaperSize = 256
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 1.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 37.039370078740160000
        Top = 18.897650000000000000
        Width = 381.732530000000000000
        Columns = 3
        ColumnWidth = 125.858267716535400000
        DataSet = DBEtiquetas
        DataSetName = 'DBEtiquetas'
        RowCount = 0
        object BarCode1: TfrxBarCodeView
          Left = 22.338590000000000000
          Top = 5.779530000000000000
          Width = 79.000000000000000000
          Height = 18.897635350000000000
          BarType = bcCodeEAN128
          Expression = '<DBEtiquetas."codigo">'
          Rotation = 0
          ShowText = False
          Text = '150'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo1: TfrxMemoView
          Left = 46.236240000000000000
          Top = 21.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'codigo_limpo'
          DataSet = DBEtiquetas
          DataSetName = 'DBEtiquetas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBEtiquetas."codigo_limpo"]')
          ParentFont = False
        end
      end
    end
  end
end
