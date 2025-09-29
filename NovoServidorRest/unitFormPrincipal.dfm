object Form1: TForm1
  Left = 271
  Top = 114
  Caption = 'Form1'
  ClientHeight = 362
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 142
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object Label2: TLabel
    Left = 40
    Top = 50
    Width = 52
    Height = 13
    Caption = 'Certificado'
  end
  object Label3: TLabel
    Left = 40
    Top = 90
    Width = 18
    Height = 13
    Caption = 'Key'
  end
  object ButtonStart: TButton
    Left = 24
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = ButtonStartClick
  end
  object ButtonStop: TButton
    Left = 105
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = ButtonStopClick
  end
  object EditPort: TEdit
    Left = 40
    Top = 157
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '214'
  end
  object ButtonOpenBrowser: TButton
    Left = 40
    Top = 185
    Width = 107
    Height = 25
    Caption = 'Open Browser'
    TabOrder = 3
    OnClick = ButtonOpenBrowserClick
  end
  object mmTexto: TMemo
    Left = 40
    Top = 225
    Width = 481
    Height = 129
    Lines.Strings = (
      'mmTexto')
    TabOrder = 4
  end
  object txtCertificado: TEdit
    Left = 40
    Top = 64
    Width = 401
    Height = 21
    TabOrder = 5
    Text = 'C:\enorth\bin\ServidorRestVendas\Certificados\cert.pem'
  end
  object txtKey: TEdit
    Left = 40
    Top = 106
    Width = 401
    Height = 21
    TabOrder = 6
    Text = 'C:\enorth\bin\ServidorRestVendas\Certificados\key.pem'
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 536
    Top = 224
  end
end
