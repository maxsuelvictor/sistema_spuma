object CSU_FM_M_NPO: TCSU_FM_M_NPO
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  ClientHeight = 587
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 30
    Width = 700
    Height = 557
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlDados: TPanel
      Left = 10
      Top = 7
      Width = 671
      Height = 522
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 122
        Top = 34
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aguardando Servi'#231'os'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Label3: TLabel
        Left = 196
        Top = 34
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pr'#243'ximos Servi'#231'os'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Label4: TLabel
        Left = 269
        Top = 34
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Em Servi'#231'o'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Label5: TLabel
        Left = 343
        Top = 34
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pr'#233'-Inspe'#231#227'o'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Label6: TLabel
        Left = 416
        Top = 34
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aguardando Lavagem'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Label7: TLabel
        Left = 489
        Top = 34
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Inspe'#231#227'o Final'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Label8: TLabel
        Left = 123
        Top = 105
        Width = 216
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'TRABALHOS PARALIZADOS'
        Color = clSilver
        ParentColor = False
        Transparent = False
      end
      object Label9: TLabel
        Left = 123
        Top = 129
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aguardando Aprova'#231#227'o'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Label10: TLabel
        Left = 196
        Top = 129
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aguardando Pe'#231'as'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Label11: TLabel
        Left = 269
        Top = 129
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aguardando Servi'#231'o'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Label12: TLabel
        Left = 343
        Top = 129
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aguardando Pr'#233'-Entrega'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Label13: TLabel
        Left = 416
        Top = 129
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aguardando Entrega'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Label14: TLabel
        Left = 489
        Top = 129
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Entregue'
        Color = clSilver
        ParentColor = False
        Transparent = False
      end
      object Label15: TLabel
        Left = 12
        Top = 204
        Width = 645
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'TICKET MEDIO'
        Color = clSilver
        ParentColor = False
        Transparent = False
        WordWrap = True
      end
      object Entrega: TLabel
        Left = 343
        Top = 105
        Width = 216
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Entrega'
        Color = clSilver
        ParentColor = False
        Transparent = False
      end
      object Label1: TLabel
        Left = 122
        Top = 10
        Width = 437
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'TRABALHO DE OFICINA'
        Color = clSilver
        ParentColor = False
        Transparent = False
      end
      object btnSair: TcxButton
        Left = 546
        Top = 488
        Width = 111
        Height = 25
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
        TabOrder = 12
        OnClick = btnSairClick
      end
      object txtAguardandoServicos: TwwDBEdit
        Left = 122
        Top = 68
        Width = 70
        Height = 21
        DataField = 'qtde_aguar_serv'
        DataSource = dso
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtAguardandoServicosDblClick
      end
      object txtProximoServico: TwwDBEdit
        Left = 196
        Top = 68
        Width = 70
        Height = 21
        DataField = 'qtde_prox_serv'
        DataSource = dso
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtProximoServicoDblClick
      end
      object txtEmServico: TwwDBEdit
        Left = 269
        Top = 67
        Width = 70
        Height = 21
        DataField = 'qtde_em_serv'
        DataSource = dso
        ReadOnly = True
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtEmServicoDblClick
      end
      object txtPreInspecao: TwwDBEdit
        Left = 343
        Top = 68
        Width = 70
        Height = 21
        DataField = 'qtde_pre_inspec'
        DataSource = dso
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtPreInspecaoDblClick
      end
      object txtAguardandoLavagem: TwwDBEdit
        Left = 416
        Top = 68
        Width = 70
        Height = 21
        DataField = 'qtde_aguard_lavagem'
        DataSource = dso
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtAguardandoLavagemDblClick
      end
      object txtInspecaoFinal: TwwDBEdit
        Left = 489
        Top = 67
        Width = 70
        Height = 21
        DataField = 'qtde_insp_final'
        DataSource = dso
        ReadOnly = True
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtInspecaoFinalDblClick
      end
      object txtAguardandoAprovacao: TwwDBEdit
        Left = 122
        Top = 162
        Width = 70
        Height = 21
        DataField = 'qtde_aguard_aprov'
        DataSource = dso
        ReadOnly = True
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtAguardandoAprovacaoDblClick
      end
      object txtAguardandoPecas: TwwDBEdit
        Left = 196
        Top = 162
        Width = 70
        Height = 21
        DataField = 'qtde_aguard_peca'
        DataSource = dso
        ReadOnly = True
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtAguardandoPecasDblClick
      end
      object txtAguardandoServico: TwwDBEdit
        Left = 269
        Top = 162
        Width = 70
        Height = 21
        DataField = 'qtde_aguard_serv'
        DataSource = dso
        ReadOnly = True
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtAguardandoServicoDblClick
      end
      object txtPreEntrega: TwwDBEdit
        Left = 343
        Top = 162
        Width = 70
        Height = 21
        DataField = 'qtde_pre_entrega'
        DataSource = dso
        ReadOnly = True
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtPreEntregaDblClick
      end
      object txtAguardandoEntrega: TwwDBEdit
        Left = 416
        Top = 162
        Width = 70
        Height = 21
        DataField = 'qtde_aguard_entrega'
        DataSource = dso
        ReadOnly = True
        TabOrder = 10
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtAguardandoEntregaDblClick
      end
      object txtEntregue: TwwDBEdit
        Left = 489
        Top = 162
        Width = 70
        Height = 21
        DataField = 'qtde_entregue'
        DataSource = dso
        ReadOnly = True
        TabOrder = 11
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnDblClick = txtEntregueDblClick
      end
      object chtFaturamento: TDBChart
        Left = 12
        Top = 231
        Width = 645
        Height = 250
        Title.Text.Strings = (
          'TDBChart')
        Title.Visible = False
        BottomAxis.Title.Caption = 'DIAS'
        Legend.Visible = False
        View3D = False
        TabOrder = 13
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series2: TFastLineSeries
          Marks.Transparent = True
          Marks.Visible = True
          Marks.Style = smsValue
          ValueFormat = '#,##0.0,0;(#,##0.0,0)'
          LinePen.Color = 10708548
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          Data = {
            02150000000000000000000000FFFFFF1F0000000000000000FFFFFF1F000000
            0000000000FFFFFF1F0000000000000000FFFFFF1F0000000000000000FFFFFF
            1F0000000000000000FFFFFF1F0000000000000000FFFFFF1F00000000000000
            00FFFFFF1F0000000000000000FFFFFF1F0000000000000000FFFFFF1F000000
            0000000000FFFFFF1F0000000000000000FFFFFF1F0000000000000000FFFFFF
            1F0000000000000000FFFFFF1F0000000000000000FFFFFF1F00000000000000
            00FFFFFF1F0000000000000000FFFFFF1F0000000000000000FFFFFF1F000000
            0000000000FFFFFF1F0000000000000000FFFFFF1F0000000000000000FFFFFF
            1F}
        end
      end
    end
  end
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 700
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lblTitulo: TLabel
      Left = 0
      Top = 0
      Width = 700
      Height = 30
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Painel de Oficina'
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
      ExplicitWidth = 614
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_PNO
    Left = 610
    Top = 109
  end
end
