object CSU_FM_M_CLI_GPS: TCSU_FM_M_CLI_GPS
  Left = 0
  Top = 0
  Caption = 'Localiza'#231#227'o do Cliente'
  ClientHeight = 489
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 67
    Width = 639
    Height = 422
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 56
    ExplicitTop = 120
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C0000000B4200009D2B00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 639
    Height = 67
    Align = alTop
    TabOrder = 1
    ExplicitTop = 8
    object Label1: TLabel
      Left = 19
      Top = 11
      Width = 98
      Height = 13
      Caption = 'Latitude de Origem :'
    end
    object Label2: TLabel
      Left = 11
      Top = 38
      Width = 106
      Height = 13
      Caption = 'Longitude de Origem :'
    end
    object Label3: TLabel
      Left = 315
      Top = 11
      Width = 98
      Height = 13
      Caption = 'Latitude de Origem :'
    end
    object Label4: TLabel
      Left = 307
      Top = 38
      Width = 106
      Height = 13
      Caption = 'Longitude de Origem :'
    end
    object OLat: TEdit
      Left = 123
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '-9.396727'
    end
    object OLong: TEdit
      Left = 123
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '-40.485107'
    end
    object DLat: TEdit
      Left = 419
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '-9.353884'
    end
    object DLong: TEdit
      Left = 419
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 3
      Text = '-40.486409'
    end
    object btnRota: TButton
      Left = 546
      Top = 8
      Width = 75
      Height = 48
      Caption = 'Tra'#231'ar Rota'
      TabOrder = 4
      OnClick = btnRotaClick
    end
  end
end
