object Form1: TForm1
  Left = 271
  Top = 114
  Caption = 'Servidor Mobile'
  ClientHeight = 482
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 170
    Top = 63
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object Label2: TLabel
    Left = 8
    Top = 63
    Width = 29
    Height = 13
    Caption = 'Banco'
  end
  object lblIniDataHor: TLabel
    Left = 170
    Top = 21
    Width = 62
    Height = 13
    Caption = 'lblIniDataHor'
  end
  object lblVersao: TLabel
    Left = 320
    Top = 78
    Width = 55
    Height = 16
    Caption = 'Vers'#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ButtonStart: TButton
    Left = 7
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = ButtonStartClick
  end
  object ButtonStop: TButton
    Left = 84
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = ButtonStopClick
  end
  object EditPort: TEdit
    Left = 170
    Top = 77
    Width = 97
    Height = 21
    TabStop = False
    TabOrder = 2
    Text = '220'
  end
  object ButtonOpenBrowser: TButton
    Left = 170
    Top = 193
    Width = 107
    Height = 25
    Caption = 'Open Browser'
    TabOrder = 3
    Visible = False
    OnClick = ButtonOpenBrowserClick
  end
  object mmTexto: TMemo
    Left = 8
    Top = 104
    Width = 629
    Height = 373
    TabOrder = 4
  end
  object txtBanco: TEdit
    Left = 8
    Top = 77
    Width = 156
    Height = 21
    TabStop = False
    TabOrder = 5
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 296
  end
end
