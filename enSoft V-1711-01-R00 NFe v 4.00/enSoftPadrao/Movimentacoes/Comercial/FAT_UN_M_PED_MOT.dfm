object FAT_FM_M_PED_MOT: TFAT_FM_M_PED_MOT
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 477
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 394
    Top = 442
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object pcDadosImp: TPageControl
    Left = 4
    Top = 8
    Width = 465
    Height = 428
    ActivePage = tsMotivo
    TabOrder = 1
    object tsDadosImp: TTabSheet
      Caption = 'Dados impress'#227'o'
      object GroupBox1: TGroupBox
        Left = 8
        Top = 16
        Width = 441
        Height = 65
        Caption = ' Primeira impress'#227'o '
        TabOrder = 0
        object txtItemDescricao: TDBText
          Left = 58
          Top = 33
          Width = 188
          Height = 21
          Color = 14342874
          DataField = 'int_nomepri_impres'
          DataSource = dsPedido
          ParentColor = False
          Transparent = False
        end
        object Label1: TLabel
          Left = 14
          Top = 18
          Width = 23
          Height = 13
          Caption = 'C'#243'd.'
        end
        object Label2: TLabel
          Left = 58
          Top = 18
          Width = 55
          Height = 13
          Caption = 'Funcion'#225'rio'
        end
        object Label3: TLabel
          Left = 252
          Top = 18
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label4: TLabel
          Left = 364
          Top = 18
          Width = 23
          Height = 13
          Caption = 'Hora'
        end
        object txtObservacao: TwwDBEdit
          Left = 14
          Top = 33
          Width = 38
          Height = 21
          TabStop = False
          Color = clWhite
          DataField = 'id_func_pri_impressao'
          DataSource = dsPedido
          MaxLength = 150
          ReadOnly = True
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtDtaEntrega: TJvDBDateEdit
          Left = 252
          Top = 33
          Width = 106
          Height = 21
          TabStop = False
          DataField = 'dta_pri_impressao'
          DataSource = dsPedido
          ReadOnly = True
          Color = 14342874
          ShowNullDate = False
          TabOrder = 1
        end
        object wwDBDateTimePicker1: TwwDBDateTimePicker
          Left = 364
          Top = 32
          Width = 61
          Height = 21
          TabStop = False
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Tahoma'
          CalendarAttributes.Font.Style = []
          Color = 14342874
          DataField = 'hor_pri_impressao'
          DataSource = dsPedido
          Epoch = 1950
          ReadOnly = True
          ShowButton = True
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 91
        Width = 441
        Height = 138
        Caption = ' Segunda impress'#227'o '
        TabOrder = 1
        object Label5: TLabel
          Left = 364
          Top = 20
          Width = 23
          Height = 13
          Caption = 'Hora'
        end
        object Label6: TLabel
          Left = 252
          Top = 20
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object DBText1: TDBText
          Left = 58
          Top = 35
          Width = 188
          Height = 21
          Color = 14342874
          DataField = 'int_nomeseg_impres'
          DataSource = dsPedido
          ParentColor = False
          Transparent = False
        end
        object Label7: TLabel
          Left = 58
          Top = 20
          Width = 55
          Height = 13
          Caption = 'Funcion'#225'rio'
        end
        object Label8: TLabel
          Left = 14
          Top = 20
          Width = 23
          Height = 13
          Caption = 'C'#243'd.'
        end
        object Label13: TLabel
          Left = 14
          Top = 70
          Width = 32
          Height = 13
          Caption = 'Motivo'
        end
        object wwDBDateTimePicker2: TwwDBDateTimePicker
          Left = 364
          Top = 34
          Width = 61
          Height = 21
          TabStop = False
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Tahoma'
          CalendarAttributes.Font.Style = []
          Color = 14342874
          DataField = 'hor_seg_impressao'
          DataSource = dsPedido
          Epoch = 1950
          ReadOnly = True
          ShowButton = True
          TabOrder = 0
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 252
          Top = 35
          Width = 106
          Height = 21
          TabStop = False
          DataField = 'dta_seg_impressao'
          DataSource = dsPedido
          ReadOnly = True
          Color = 14342874
          ShowNullDate = False
          TabOrder = 1
        end
        object wwDBEdit1: TwwDBEdit
          Left = 14
          Top = 35
          Width = 38
          Height = 21
          TabStop = False
          Color = clWhite
          DataField = 'id_func_seg_impressao'
          DataSource = dsPedido
          MaxLength = 150
          ReadOnly = True
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object txtSegMotivo: TDBMemo
          Left = 14
          Top = 85
          Width = 410
          Height = 36
          TabStop = False
          Color = clWhite
          DataField = 'motivo_seg_impressao'
          DataSource = dsPedido
          ReadOnly = True
          TabOrder = 3
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 240
        Width = 441
        Height = 154
        Caption = ' Terceira ou mais impress'#227'o '
        TabOrder = 2
        object Label9: TLabel
          Left = 14
          Top = 28
          Width = 23
          Height = 13
          Caption = 'C'#243'd.'
        end
        object Label10: TLabel
          Left = 58
          Top = 28
          Width = 55
          Height = 13
          Caption = 'Funcion'#225'rio'
        end
        object DBText2: TDBText
          Left = 58
          Top = 43
          Width = 188
          Height = 21
          Color = 14342874
          DataField = 'int_nometer_impres'
          DataSource = dsPedido
          ParentColor = False
          Transparent = False
        end
        object Label11: TLabel
          Left = 252
          Top = 28
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label12: TLabel
          Left = 364
          Top = 28
          Width = 23
          Height = 13
          Caption = 'Hora'
        end
        object Label14: TLabel
          Left = 15
          Top = 75
          Width = 32
          Height = 13
          Caption = 'Motivo'
        end
        object wwDBEdit2: TwwDBEdit
          Left = 14
          Top = 43
          Width = 38
          Height = 21
          TabStop = False
          Color = clWhite
          DataField = 'id_func_ter_impressao'
          DataSource = dsPedido
          MaxLength = 150
          ReadOnly = True
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object JvDBDateEdit2: TJvDBDateEdit
          Left = 252
          Top = 43
          Width = 106
          Height = 21
          TabStop = False
          DataField = 'dta_ter_impressao'
          DataSource = dsPedido
          ReadOnly = True
          Color = clWhite
          ShowNullDate = False
          TabOrder = 1
        end
        object wwDBDateTimePicker3: TwwDBDateTimePicker
          Left = 364
          Top = 42
          Width = 61
          Height = 21
          TabStop = False
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Tahoma'
          CalendarAttributes.Font.Style = []
          Color = 14342874
          DataField = 'hor_ter_impressao'
          DataSource = dsPedido
          Epoch = 1950
          ReadOnly = True
          ShowButton = True
          TabOrder = 2
        end
        object DBMemo1: TDBMemo
          Left = 15
          Top = 90
          Width = 410
          Height = 48
          TabStop = False
          Color = clWhite
          DataField = 'motivo_ter_impressao'
          DataSource = dsPedido
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
    object tsMotivo: TTabSheet
      Caption = 'Motivo'
      ImageIndex = 1
      object Label44: TLabel
        Left = 4
        Top = 29
        Width = 119
        Height = 13
        Caption = 'Movito da re-impress'#227'o :'
      end
      object txtMotivo: TMemo
        Left = 4
        Top = 45
        Width = 450
        Height = 340
        Lines.Strings = (
          'txtMotivo')
        TabOrder = 0
      end
    end
  end
  object dsPedido: TDataSource
    DataSet = dmGeral.FAT_CD_M_PED
    Left = 224
    Top = 344
  end
end
