object CMServerForm: TCMServerForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Servidor'
  ClientHeight = 477
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    489
    477)
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 8
    Top = 117
    Width = 99
    Height = 16
    Caption = 'Vers'#227'o servidor :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPedidoVenda: TLabel
    Left = 0
    Top = 0
    Width = 489
    Height = 32
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Servidor e-North'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitLeft = 8
    ExplicitTop = 1
    ExplicitWidth = 473
  end
  object Label1: TLabel
    Left = 8
    Top = 143
    Width = 98
    Height = 16
    Caption = 'Vers'#227'o cliente   :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDadosInv: TLabel
    Left = 0
    Top = 459
    Width = 489
    Height = 18
    Align = alBottom
    AutoSize = False
    Caption = 'dados do inventario'
    Color = 14342874
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitLeft = 112
    ExplicitTop = 331
    ExplicitWidth = 233
  end
  object lblTemp: TLabel
    Left = 296
    Top = 143
    Width = 180
    Height = 13
    Caption = 'Ex.: O valor 3600000 '#233' igual a 60 min'
    Visible = False
  end
  object Label2: TLabel
    Left = 8
    Top = 172
    Width = 99
    Height = 16
    Caption = 'Banco de dados :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 352
    Width = 78
    Height = 13
    Caption = 'Mensagem geral'
  end
  object Label6: TLabel
    Left = 8
    Top = 208
    Width = 73
    Height = 13
    Caption = 'IPs conectados'
  end
  object Label7: TLabel
    Left = 242
    Top = 208
    Width = 71
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Sess'#245'es ativas'
    ExplicitLeft = 240
  end
  object mm: TMemo
    Left = 8
    Top = 368
    Width = 467
    Height = 42
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 416
    Width = 102
    Height = 30
    Caption = 'Limpa Log'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object btnStartStop: TButton
    Left = 70
    Top = 64
    Width = 106
    Height = 24
    Caption = 'Iniciar / Parar'
    TabOrder = 2
    OnClick = btnStartStopClick
  end
  object edtPort: TLabeledEdit
    Left = 8
    Top = 64
    Width = 57
    Height = 24
    EditLabel.Width = 30
    EditLabel.Height = 16
    EditLabel.Caption = 'Porta'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 3
    Text = '211'
  end
  object txtTempInv: TEdit
    Left = 297
    Top = 162
    Width = 179
    Height = 21
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 4
    Text = '7200000'
    Visible = False
    OnExit = txtTempInvExit
  end
  object txtVersao: TEdit
    Left = 113
    Top = 114
    Width = 161
    Height = 21
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 5
    Text = 'txtVersao'
  end
  object txtVersaoCli: TEdit
    Left = 113
    Top = 141
    Width = 161
    Height = 21
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 6
    Text = 'txtVersao'
  end
  object txtBanco: TEdit
    Left = 113
    Top = 170
    Width = 161
    Height = 21
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    Text = 'txtBanco'
  end
  object ConnectionsList: TListBox
    Left = 8
    Top = 225
    Width = 228
    Height = 127
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    PopupMenu = pmIpConect
    TabOrder = 8
  end
  object SessionIdList: TListBox
    Left = 242
    Top = 225
    Width = 245
    Height = 127
    Anchors = [akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 9
  end
  object pnStatusServer: TPanel
    Left = 192
    Top = 42
    Width = 283
    Height = 65
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = 'Parado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object Button1: TButton
    Left = 408
    Top = 339
    Width = 27
    Height = 25
    TabOrder = 11
    OnClick = Button1Click
  end
  object timeInv: TTimer
    Enabled = False
    Interval = 7200000
    OnTimer = timeInvTimer
    Left = 448
    Top = 416
  end
  object timeDestCli: TTimer
    Enabled = False
    OnTimer = timeDestCliTimer
    Left = 336
    Top = 416
  end
  object timeBackup: TTimer
    Enabled = False
    OnTimer = timeBackupTimer
    Left = 264
    Top = 416
  end
  object timeServSis: TTimer
    Enabled = False
    OnTimer = timeServSisTimer
    Left = 392
    Top = 416
  end
  object timeEnvioRel: TTimer
    Enabled = False
    OnTimer = timeEnvioRelTimer
    Left = 192
    Top = 416
  end
  object pmIpConect: TPopupMenu
    Left = 112
    Top = 280
    object Fecharconexo1: TMenuItem
      Caption = 'Fechar conex'#227'o'
      OnClick = Fecharconexo1Click
    end
  end
  object timeUsuarioLogado: TTimer
    Enabled = False
    OnTimer = timeUsuarioLogadoTimer
    Left = 120
    Top = 376
  end
end
