object OFI_FM_M_ORV_IMP: TOFI_FM_M_ORV_IMP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 169
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 242
    Height = 30
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 240
      Height = 28
      Align = alClient
      Alignment = taCenter
      Caption = 'Exibir na Impress'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 186
      ExplicitHeight = 25
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 242
    Height = 139
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object btnSair: TcxButton
      Left = 127
      Top = 83
      Width = 91
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btnSairClick
    end
    object btnImprimir: TcxButton
      Left = 39
      Top = 83
      Width = 82
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 1
      OnClick = btnImprimirClick
    end
    object chbVlrPecas: TCheckBox
      Left = 48
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Valor das Pe'#231'as'
      TabOrder = 2
    end
    object chbVlrServicos: TCheckBox
      Left = 48
      Top = 55
      Width = 105
      Height = 17
      Caption = 'Valor dos Servi'#231'os'
      TabOrder = 3
    end
  end
end
