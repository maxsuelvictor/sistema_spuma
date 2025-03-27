object frmBloq: TfrmBloq
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 176
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object enFormBloq: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 473
      Height = 33
      Align = alClient
      Alignment = taCenter
      Caption = 'Informa'#231#227'o Importante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 219
      ExplicitHeight = 25
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 473
    Height = 143
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object lblMsg: TLabel
      Left = 35
      Top = 10
      Width = 372
      Height = 32
      Caption = 
        'Existem boletos pendentes, favor entrar em contato nos telefones' +
        ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object txtTelefone: TLabel
      Left = 64
      Top = 70
      Width = 166
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = '(87) 3031-4296 '
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object lblTelefone: TLabel
      Left = 64
      Top = 56
      Width = 49
      Height = 13
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtTelefone2: TLabel
      Left = 64
      Top = 93
      Width = 166
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = '(87) 3031-8983 '
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object btnSair: TButton
      Left = 288
      Top = 108
      Width = 90
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btnSairClick
    end
    object btnCiente: TButton
      Left = 236
      Top = 71
      Width = 139
      Height = 25
      Caption = 'Estou ciente'
      TabOrder = 1
      OnClick = btnCienteClick
    end
  end
end
