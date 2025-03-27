object PCP_FM_M_OPR_ETQ_SEN: TPCP_FM_M_OPR_ETQ_SEN
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Autorizar a reimpress'#227'o da etiqueta'
  ClientHeight = 226
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblItem: TLabel
    Left = 324
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Funcion'#225'rio'
    Visible = False
  end
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
  object Label2: TLabel
    Left = 18
    Top = 70
    Width = 108
    Height = 13
    Caption = 'Motivo da reimpress'#227'o'
  end
  object Label3: TLabel
    Left = 18
    Top = 21
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object lblLiberacao: TLabel
    Left = 18
    Top = 152
    Width = 99
    Height = 19
    Caption = 'lblLiberacao'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnOk: TBitBtn
    Left = 128
    Top = 193
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 5
    OnClick = btnOkClick
  end
  object btnSair: TBitBtn
    Left = 206
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 6
    OnClick = btnSairClick
  end
  object txtCodFun: TJvDBComboEdit
    Left = 292
    Top = 30
    Width = 25
    Height = 21
    ClickKey = 114
    DataField = 'id_func_reimpressa'
    DataSource = PCP_FM_M_OPR_ETQ.dso
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
    TabOrder = 3
    Visible = False
    OnButtonClick = txtCodFunButtonClick
    OnExit = txtCodFunExit
  end
  object txtDescItem: TwwDBEdit
    Left = 312
    Top = 30
    Width = 113
    Height = 21
    TabStop = False
    Color = 14342874
    DataField = 'int_nome_func_reimp'
    DataSource = PCP_FM_M_OPR_ETQ.dso
    ReadOnly = True
    TabOrder = 4
    UnboundDataType = wwDefault
    Visible = False
    WantReturns = False
    WordWrap = False
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
  object txtMotivoReimpressa: TwwDBEdit
    Left = 18
    Top = 84
    Width = 402
    Height = 21
    DataField = 'motivo_reimpressa'
    DataSource = PCP_FM_M_OPR_ETQ.dso
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object txtLogin: TEdit
    Left = 18
    Top = 35
    Width = 104
    Height = 21
    TabOrder = 0
  end
  object btnSolicitarLib: TBitBtn
    Left = 312
    Top = 111
    Width = 108
    Height = 25
    Caption = 'Solicitar libera'#231#227'o'
    Enabled = False
    TabOrder = 7
    OnClick = btnSolicitarLibClick
  end
  object chkLib: TCheckBox
    Left = 18
    Top = 115
    Width = 97
    Height = 17
    Caption = 'Liberar via rede'
    TabOrder = 8
    OnClick = chkLibClick
  end
  object TimerLib: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = TimerLibTimer
    Left = 352
    Top = 152
  end
end
