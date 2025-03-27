object FAT_FM_M_PED_SEN: TFAT_FM_M_PED_SEN
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Autoriza'#231#227'o de desconto b'#225'sico maior'
  ClientHeight = 110
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 126
    Top = 15
    Width = 3
    Height = 13
  end
  object Label1: TLabel
    Left = 138
    Top = 21
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Label3: TLabel
    Left = 18
    Top = 21
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object txtSenha: TEdit
    Left = 138
    Top = 35
    Width = 104
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnExit = txtSenhaExit
  end
  object txtLogin: TEdit
    Left = 18
    Top = 35
    Width = 104
    Height = 21
    TabOrder = 0
  end
  object btnOk: TBitBtn
    Left = 91
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = btnOkClick
  end
  object btnSair: TBitBtn
    Left = 167
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btnSairClick
  end
end
