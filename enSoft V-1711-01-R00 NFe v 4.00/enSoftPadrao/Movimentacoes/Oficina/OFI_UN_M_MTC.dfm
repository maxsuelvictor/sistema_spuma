object OFI_FM_M_MTC: TOFI_FM_M_MTC
  Left = 0
  Top = 0
  ClientHeight = 536
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 525
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 525
      Height = 30
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Manuten'#231#227'o de Oficina'
      Color = 3355443
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 416
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 30
    Width = 525
    Height = 506
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object pnlDados: TPanel
      Left = 35
      Top = 1
      Width = 467
      Height = 498
      Align = alCustom
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object dbcOrv: TDBCtrlGrid
        Left = 1
        Top = 1
        Width = 465
        Height = 462
        AllowDelete = False
        AllowInsert = False
        DataSource = dso
        PanelBorder = gbNone
        PanelHeight = 154
        PanelWidth = 448
        TabOrder = 0
        object lblOrdem: TLabel
          Left = 11
          Top = 10
          Width = 39
          Height = 13
          Caption = 'Ordem :'
        end
        object lblEntrega: TLabel
          Left = 171
          Top = 10
          Width = 45
          Height = 13
          Caption = 'Entrega :'
        end
        object lblPlaca: TLabel
          Left = 325
          Top = 10
          Width = 32
          Height = 13
          Caption = 'Placa :'
        end
        object lblCliente: TLabel
          Left = 10
          Top = 32
          Width = 40
          Height = 13
          Caption = 'Cliente :'
        end
        object lblReclamacaoCliente: TLabel
          Left = 3
          Top = 82
          Width = 438
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Reclama'#231#227'o do Cliente'
          Color = clSilver
          ParentColor = False
          Transparent = False
        end
        object lblTipoOS: TLabel
          Left = 6
          Top = 58
          Width = 44
          Height = 13
          Caption = 'Tipo OS :'
        end
        object lblSituacao: TLabel
          Left = 204
          Top = 57
          Width = 48
          Height = 13
          Caption = 'Situa'#231#227'o :'
        end
        object txtOrdem: TwwDBEdit
          Left = 51
          Top = 7
          Width = 102
          Height = 21
          Color = 14342874
          DataField = 'id_ordem'
          DataSource = dso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtData: TJvDBDateEdit
          Left = 218
          Top = 7
          Width = 90
          Height = 21
          DataField = 'dta_entrega'
          DataSource = dso
          ReadOnly = True
          Color = 14342874
          ShowNullDate = False
          TabOrder = 1
        end
        object txtPlaca: TwwDBEdit
          Left = 360
          Top = 7
          Width = 81
          Height = 21
          Color = 14342874
          DataField = 'int_placa'
          DataSource = dso
          ReadOnly = True
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtCliente: TwwDBEdit
          Left = 50
          Top = 30
          Width = 391
          Height = 21
          Color = 14342874
          DataField = 'int_nomecli'
          DataSource = dso
          ReadOnly = True
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtReclamacaoCliente: TDBMemo
          Left = 3
          Top = 101
          Width = 438
          Height = 51
          Color = 14342874
          DataField = 'obs_reclamacao'
          DataSource = dso
          ReadOnly = True
          TabOrder = 4
        end
        object txtTipoOS: TwwDBEdit
          Left = 51
          Top = 55
          Width = 136
          Height = 21
          Color = 14342874
          DataField = 'int_nometio'
          DataSource = dso
          ReadOnly = True
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object cbbSituacao: TwwDBComboBox
          Left = 258
          Top = 55
          Width = 183
          Height = 21
          ShowButton = True
          Style = csDropDownList
          MapList = True
          AllowClearKey = False
          DataField = 'status_painel'
          DataSource = dso
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'Aguardando Inicio do Servi'#231'o'#9'0'
            'Pr'#243'xima Ordem de Servi'#231'o'#9'1'
            'Em Servi'#231'o'#9'2'
            'Pr'#233'-Inspe'#231#227'o'#9'3'
            'Aguardando Lavagem'#9'4'
            'Inspe'#231#227'o Final'#9'5'
            'Aguardando Aprova'#231#227'o'#9'6'
            'Aguardando Pe'#231'as'#9'7'
            'Aguardando Servi'#231'o'#9'8'
            'Aguardando Pr'#233'-Entrega'#9'9'
            'Aguardando Entrega'#9'10'
            'Entregue'#9'11')
          Sorted = False
          TabOrder = 6
          UnboundDataType = wwDefault
          OnChange = cbbSituacaoChange
          OnEnter = cbbSituacaoEnter
        end
      end
      object btnSair: TcxButton
        Left = 361
        Top = 469
        Width = 105
        Height = 28
        Caption = 'Sair'
        OptionsImage.Glyph.Data = {
          46030000424D460300000000000036000000280000000E0000000E0000000100
          2000000000001003000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208252525BC17171774060606210000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E981313135F2F2F2FEF323232FF2F2F2FF2222222AE101010530000
          0000000000000000000000000000000000000000000000000000323232FF1E1E
          1E9B2B2B2BDD323232FF323232FF323232FF303030F700000000000000000000
          000000000000000000000000000000000000323232FD1D1D1D932C2C2CDE3232
          32FF323232FF323232FF2F2F2FF1000000000000000000000000000000000000
          00000000000000000000323232FD1D1D1D932C2C2CDE323232FF323232FF3232
          32FF2F2F2FF00000000000000000000000000000000000000000000000000000
          0000323232FD1D1D1D922D2D2DE7323232FF323232FF323232FF2F2F2FF00000
          0000000000000000000000000000000000000000000000000000323232FD1F1F
          1F9C1D1D1D94242424B8323232FF323232FF2F2F2FF000000000000000000000
          000000000000000000000000000000000000323232FD1F1F1F9C1D1D1D942424
          24B8323232FF323232FF2F2F2FF0000000000000000000000000000000000000
          00000000000000000000323232FD1D1D1D922D2D2DE7323232FF323232FF3232
          32FF2F2F2FF00000000000000000000000000000000000000000000000000000
          0000323232FD1D1D1D932C2C2CDE323232FF323232FF323232FF2F2F2FF00000
          0000000000000000000000000000000000000000000000000000323232FD1D1D
          1D932C2C2CDE323232FF323232FF323232FF2F2F2FF000000000000000000000
          000000000000000000000000000000000000323232FF1E1E1E9B2B2B2BDD3232
          32FF323232FF323232FF313131FB000000000000000000000000000000000000
          000000000000000000001E1E1E981212125E2F2F2FEE323232FF323232FF2E2E
          2EED222222AC0000000000000000000000000000000000000000000000000000
          00000000000001010107272727C51D1D1D961010105105050517000000000000
          00000000000000000000}
        TabOrder = 1
        OnClick = btnSairClick
      end
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.OFI_CD_M_ORV
    Left = 440
    Top = 342
  end
end
