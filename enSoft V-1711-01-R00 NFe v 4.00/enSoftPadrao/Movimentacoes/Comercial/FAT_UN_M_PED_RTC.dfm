object FAT_FM_M_PED_RTC: TFAT_FM_M_PED_RTC
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 430
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 399
    Height = 33
    Align = alTop
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 397
      Height = 31
      Align = alClient
      Alignment = taCenter
      Caption = 'Restri'#231#245'es/Cancelamento'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitWidth = 242
      ExplicitHeight = 30
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 33
    Width = 399
    Height = 397
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlPrincipal: TPanel
      Left = 15
      Top = 6
      Width = 378
      Height = 387
      BevelOuter = bvNone
      TabOrder = 0
      object btnSair: TcxButton
        Left = 286
        Top = 347
        Width = 75
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
        TabOrder = 0
        OnClick = btnSairClick
      end
      object gbRestricoes: TGroupBox
        Left = 0
        Top = 0
        Width = 361
        Height = 126
        Caption = 'Restri'#231#245'es'
        TabOrder = 1
        object lbxRestricoes: TListBox
          Left = 9
          Top = 18
          Width = 336
          Height = 101
          ItemHeight = 13
          TabOrder = 0
        end
      end
      object gbCancelamento: TGroupBox
        Left = 0
        Top = 193
        Width = 361
        Height = 145
        Caption = 'Cancelamento '
        TabOrder = 2
        object lblUsuario: TLabel
          Left = 26
          Top = 48
          Width = 43
          Height = 13
          Caption = 'Usu'#225'rio :'
        end
        object lblDataCanc: TLabel
          Left = 39
          Top = 21
          Width = 30
          Height = 13
          Caption = 'Data :'
        end
        object lblMotivoCanc: TLabel
          Left = 30
          Top = 75
          Width = 39
          Height = 13
          Caption = 'Motivo :'
        end
        object Label1: TLabel
          Left = 177
          Top = 21
          Width = 30
          Height = 13
          Caption = 'Hora :'
        end
        object txtUsuarioCanc: TEdit
          Left = 72
          Top = 44
          Width = 268
          Height = 21
          Color = 14342874
          ReadOnly = True
          TabOrder = 3
        end
        object txtDataCan: TJvDateEdit
          Left = 72
          Top = 17
          Width = 91
          Height = 21
          Color = 14342874
          ReadOnly = True
          ShowNullDate = False
          TabOrder = 0
        end
        object mmTextoCanc: TMemo
          Left = 72
          Top = 75
          Width = 268
          Height = 65
          Color = 14342874
          Lines.Strings = (
            '')
          ReadOnly = True
          TabOrder = 2
        end
        object txtHora: TEdit
          Left = 209
          Top = 17
          Width = 57
          Height = 21
          Color = 14342874
          ReadOnly = True
          TabOrder = 1
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 128
        Width = 361
        Height = 59
        Caption = 'Justificativa da Libera'#231#227'o do Pedido'
        TabOrder = 3
        object txtJustificativa: TMemo
          Left = 9
          Top = 16
          Width = 336
          Height = 35
          Lines.Strings = (
            'txtJustificativa')
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  object dsoNFECanc: TwwDataSource
    DataSet = dmGeral.FAT_CD_M_NFE
    Left = 223
    Top = 319
  end
end
