object OFI_FM_M_CVL_IMP: TOFI_FM_M_CVL_IMP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 175
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 30
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 445
      Height = 28
      Align = alClient
      Alignment = taCenter
      Caption = 'Impress'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 99
      ExplicitHeight = 30
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 447
    Height = 145
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 80
      Top = 67
      Width = 43
      Height = 13
      Caption = 'Per'#237'odo :'
    end
    object Label3: TLabel
      Left = 231
      Top = 67
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label4: TLabel
      Left = 91
      Top = 40
      Width = 32
      Height = 13
      Caption = 'Placa :'
    end
    object txtDtaInicio: TJvDateEdit
      Left = 129
      Top = 64
      Width = 96
      Height = 21
      ShowNullDate = False
      TabOrder = 1
    end
    object txtDtaFinal: TJvDateEdit
      Left = 240
      Top = 64
      Width = 97
      Height = 21
      ShowNullDate = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 181
      Top = 91
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 262
      Top = 91
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = Button2Click
    end
    object txtPlaca: TJvComboEdit
      Left = 129
      Top = 37
      Width = 90
      Height = 21
      ClickKey = 114
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0066B6DB903AFFFFFFFFFFFFFFFFFFFF
        FFFFDBFFFF003A900000000000003A0000FFDB90FFFFFFFFFFFFFFFFFFFFFFFF
        0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFF90DBFFB6663AFFFFFFFFFFFF3A90
        DB660000FFFFB6FFFFFFFFFFFFFFFFFF0066B6DB903AFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF90DBFF3A003AFFDB90FFFFFFFFFFFFFFFFFF
        0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A90
        DB660000FFFFB6FFFFFFFFFFFFFFFFFF0066B6000000000000000000660000FF
        FFB6FFFFFF66B6FF000000000000B66600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6FFFF0000
        66DB903AFFFFFFFFFFFFFFFFFFFFFFFF0066B6DB903AFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A90DB903A00FFFFDBFFFFFFFFFFFFFFFFFF
        0066B6DB903AFFFFFFFFFFFFFFFFFFFFFFFFB6FFFF903A66FFFFDBFFFFFF0066
        B6B66600FFFFFFFFFFFFFFFFFFFFFFFF0066B6000000000000000000000000FF
        B666FFFFFF3A90DB000000000000660000FFFFB6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 0
      Text = ''
      OnButtonClick = txtPlacaButtonClick
      OnExit = txtPlacaExit
    end
  end
end
