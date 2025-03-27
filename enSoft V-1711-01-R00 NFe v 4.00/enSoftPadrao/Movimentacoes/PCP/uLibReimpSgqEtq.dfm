object frmLibReimpSgqEtq: TfrmLibReimpSgqEtq
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'enSoftSpuma - Libera'#231#227'o de re-impress'#227'o de etiqueta(s)'
  ClientHeight = 260
  ClientWidth = 661
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
  object lblStatusSolicitacao: TLabel
    Left = 187
    Top = 31
    Width = 240
    Height = 23
    Caption = 'Nenhuma solicita'#231#227'o foi feita'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 122
    Top = 31
    Width = 59
    Height = 23
    Caption = 'Status:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 55
    Top = 77
    Width = 126
    Height = 23
    Caption = 'Solicitado por: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblUsuario: TLabel
    Left = 187
    Top = 77
    Width = 62
    Height = 23
    Caption = 'Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 129
    Top = 106
    Width = 52
    Height = 23
    Caption = 'Data: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 128
    Top = 135
    Width = 53
    Height = 23
    Caption = 'Hora: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblData: TLabel
    Left = 187
    Top = 106
    Width = 39
    Height = 23
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblHora: TLabel
    Left = 187
    Top = 135
    Width = 61
    Height = 23
    Caption = 'Hor'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnReimpressao: TButton
    Left = 263
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Liberar'
    TabOrder = 0
    OnClick = btnReimpressaoClick
  end
  object btnSair: TButton
    Left = 344
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btnSairClick
  end
end
