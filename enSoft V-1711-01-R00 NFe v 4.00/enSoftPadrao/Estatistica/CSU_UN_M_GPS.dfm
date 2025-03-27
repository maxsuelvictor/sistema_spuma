object CSU_FM_M_GPS: TCSU_FM_M_GPS
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
    OnNavigateComplete2 = WebBrowser1NavigateComplete2
    OnDocumentComplete = WebBrowser1DocumentComplete
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
      Left = 206
      Top = 11
      Width = 98
      Height = 13
      Caption = 'Latitude de Origem :'
      Visible = False
    end
    object Label4: TLabel
      Left = 198
      Top = 38
      Width = 106
      Height = 13
      Caption = 'Longitude de Origem :'
      Visible = False
    end
    object OLat: TEdit
      Left = 123
      Top = 8
      Width = 69
      Height = 21
      TabOrder = 0
    end
    object OLong: TEdit
      Left = 123
      Top = 35
      Width = 69
      Height = 21
      TabOrder = 1
    end
    object DLat: TEdit
      Left = 310
      Top = 8
      Width = 69
      Height = 21
      TabOrder = 2
      Visible = False
    end
    object DLong: TEdit
      Left = 310
      Top = 35
      Width = 69
      Height = 21
      TabOrder = 3
      Visible = False
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
    object MemoUrl: TMemo
      Left = 385
      Top = 8
      Width = 155
      Height = 48
      Lines.Strings = (
        'MemoUrl')
      TabOrder = 5
    end
  end
end
