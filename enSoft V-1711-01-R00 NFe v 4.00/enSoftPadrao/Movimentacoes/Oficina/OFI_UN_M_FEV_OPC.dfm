object OFI_FM_M_FEV_OPC: TOFI_FM_M_FEV_OPC
  Left = 0
  Top = 0
  ClientHeight = 142
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object rgTipoNota: TRadioGroup
    Left = 0
    Top = 23
    Width = 388
    Height = 84
    Caption = ' '
    Items.Strings = (
      'Nota Fiscal '#250'nica'
      'Nota Fiscal separada (Pe'#231'a e Servi'#231'o)')
    TabOrder = 1
  end
  object pnlTop: TJvPanel
    Tag = 1
    Left = 0
    Top = 0
    Width = 388
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object pnlCima: TJvPanel
      Tag = 1
      Left = 0
      Top = 0
      Width = 388
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object lblCodificacaoLMestre: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 4
        Width = 383
        Height = 25
        Margins.Left = 0
        Margins.Top = 4
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Alignment = taRightJustify
        AutoSize = False
        Color = 3355443
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 622
      end
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 388
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Gera'#231#227'o da Nota Fiscal'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ExplicitTop = -4
        ExplicitWidth = 627
      end
      object pnlBaixo: TPanel
        Left = 0
        Top = 29
        Width = 388
        Height = 0
        Align = alTop
        BevelOuter = bvNone
        Color = 3355443
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
  object btnSalvar: TBitBtn
    Left = 216
    Top = 108
    Width = 169
    Height = 34
    Caption = 'Confirmar '
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000010170000101700000000000000000000B5B5B54F4F4F
      8585859494949191919191919191919191919191919191919191919191919494
      948585854F4F4FB5B5B54141414D4D4DFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC4D4D4D414141363636595959
      FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFDFDFD595959363636393939585858FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB585858393939393939585858
      FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFBFBFB585858393939393939585858FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB5858583939393939395A5A5A
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF5A5A5A3939393A3A3A494949E5E5E5F3F3F3F3F3F3F3F3F3F3F3F3F3
      F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E5E5E54949493A3A3A3F3F3F333333
      3C3C3C3B3B3B3939393939393939393939393939393939393939393939393E3E
      3E3C3C3C3333333F3F3F3F3F3F33333333333345454559595958585858585858
      58585858586161616565655454543333333333333333333F3F3F3F3F3F333333
      393939D7D7D7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBAAAAAA919191EDEDED6E6E
      6E3333333333333F3F3F3F3F3F3333333B3B3BE8E8E8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF5E5E5E333333EAEAEA7F7F7F3333333333333D3D3D3F3F3F333333
      3B3B3BE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666343434E9E9E97D7D
      7D3333333333334545453D3D3D3333333B3B3BE6E6E6FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF616161333333E9E9E97E7E7E333333333333A5A5A5484848333333
      363636E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949494707070F2F2F27171
      71333333959595FFFFFFB7B7B74D4D4D40404077777795959591919191919191
      91919191919191919393938C8C8C525252A3A3A3FFFFFFFFFFFF}
    TabOrder = 2
    OnClick = btnSalvarClick
  end
end
