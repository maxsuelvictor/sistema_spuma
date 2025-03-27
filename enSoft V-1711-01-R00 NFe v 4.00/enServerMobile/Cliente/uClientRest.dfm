object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 343
  ClientWidth = 589
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
  object Memo1: TMemo
    Left = 88
    Top = 192
    Width = 409
    Height = 137
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object btnGet: TBitBtn
    Left = 88
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Get'
    TabOrder = 1
    OnClick = btnGetClick
  end
  object btnPost: TBitBtn
    Left = 184
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Post'
    TabOrder = 2
    OnClick = btnPostClick
  end
  object BitBtn1: TBitBtn
    Left = 312
    Top = 160
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 3
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    FieldDefs = <>
    Left = 360
    Top = 96
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    AcceptEncoding = 'identity'
    BaseURL = 'http://192.168.254.17:211/datasnap/rest/TSM'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 240
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <>
    Resource = 'perfil'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 328
    Top = 16
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'text/html'
    Left = 408
    Top = 32
  end
end
