object frmChat: TfrmChat
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'enSoftSpuma - Chat'
  ClientHeight = 416
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 96
    Width = 51
    Height = 13
    Caption = 'Mensagem'
  end
  object Label2: TLabel
    Left = 40
    Top = 216
    Width = 41
    Height = 13
    Caption = 'Hist'#243'rico'
  end
  object lblCanal: TLabel
    Left = 40
    Top = 35
    Width = 27
    Height = 13
    Caption = 'Canal'
  end
  object lblManagerId: TLabel
    Left = 40
    Top = 142
    Width = 62
    Height = 13
    Caption = 'lblManagerId'
  end
  object txtfuncionario: TLabeledEdit
    Left = 40
    Top = 69
    Width = 257
    Height = 21
    EditLabel.Width = 55
    EditLabel.Height = 13
    EditLabel.Caption = 'Funcion'#225'rio'
    TabOrder = 0
  end
  object btnEnviar: TBitBtn
    Left = 222
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = btnEnviarClick
  end
  object txtHistorico: TMemo
    Left = 40
    Top = 235
    Width = 257
    Height = 171
    Color = clMenu
    Lines.Strings = (
      'txtHistorico')
    TabOrder = 3
  end
  object txtMsg: TEdit
    Left = 40
    Top = 115
    Width = 257
    Height = 21
    TabOrder = 1
    Text = 'txtMsg'
  end
  object Edit1: TEdit
    Left = 40
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'enSpumaAvisos'
  end
  object Button1: TButton
    Left = 222
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object dsCliCallChanMan: TDSClientCallbackChannelManager
    DSHostname = 'localhost'
    DSPort = '211'
    CommunicationProtocol = 'tcp/ip'
    ChannelName = 'enSpumaAvisos'
    ManagerId = '976170.758458.718305'
    Left = 88
    Top = 160
  end
end
