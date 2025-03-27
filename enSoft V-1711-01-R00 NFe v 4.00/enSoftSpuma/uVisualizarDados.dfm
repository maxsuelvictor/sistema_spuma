object frmVisualizarDados: TfrmVisualizarDados
  Left = 0
  Top = 0
  Caption = 'frmVisualizarDados'
  ClientHeight = 662
  ClientWidth = 1186
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 620
    Top = 13
    Width = 97
    Height = 13
    Caption = 'Parametros controle'
  end
  object Label2: TLabel
    Left = 627
    Top = 106
    Width = 82
    Height = 13
    Caption = 'Ficha de estoque'
  end
  object Label3: TLabel
    Left = 398
    Top = 247
    Width = 29
    Height = 13
    Caption = 'Saldo '
  end
  object Label4: TLabel
    Left = 612
    Top = 383
    Width = 32
    Height = 13
    Caption = 'Pedido'
  end
  object Label5: TLabel
    Left = 638
    Top = 519
    Width = 60
    Height = 13
    Caption = 'Notas fiscais'
  end
  object Label6: TLabel
    Left = 867
    Top = 247
    Width = 106
    Height = 13
    Caption = 'Saldo do almoxarifado'
  end
  object Label7: TLabel
    Left = 127
    Top = 84
    Width = 67
    Height = 13
    Caption = 'Nro do pedido'
  end
  object Label8: TLabel
    Left = 120
    Top = 506
    Width = 61
    Height = 13
    Caption = 'Nome cliente'
  end
  object Label9: TLabel
    Left = 40
    Top = 506
    Width = 52
    Height = 13
    Caption = 'Nro pedido'
  end
  object DBGrid1: TDBGrid
    Left = 200
    Top = 32
    Width = 937
    Height = 59
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 200
    Top = 121
    Width = 937
    Height = 113
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 200
    Top = 266
    Width = 433
    Height = 96
    DataSource = DataSource3
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_empresa'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_item'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_cor'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_tamanho'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde_entrada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde_saida'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo_fisico'
        Width = 59
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 200
    Top = 402
    Width = 937
    Height = 95
    DataSource = DataSource4
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid5: TDBGrid
    Left = 200
    Top = 538
    Width = 937
    Height = 120
    DataSource = DataSource5
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dta_emissao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_pedido_venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_mercadoria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_liquido'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 120
    Top = 48
    Width = 75
    Height = 25
    Caption = 'gravar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 119
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 119
    Top = 158
    Width = 75
    Height = 25
    Caption = 'gravar'
    TabOrder = 7
  end
  object Button4: TButton
    Left = 119
    Top = 266
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 119
    Top = 297
    Width = 75
    Height = 25
    Caption = 'gravar'
    TabOrder = 9
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 119
    Top = 417
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 10
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 119
    Top = 448
    Width = 75
    Height = 25
    Caption = 'gravar'
    TabOrder = 11
  end
  object Button8: TButton
    Left = 119
    Top = 552
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 12
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 119
    Top = 583
    Width = 75
    Height = 25
    Caption = 'gravar'
    TabOrder = 13
    OnClick = Button9Click
  end
  object Edit1: TEdit
    Left = 119
    Top = 103
    Width = 75
    Height = 21
    NumbersOnly = True
    TabOrder = 14
  end
  object Edit2: TEdit
    Left = 119
    Top = 520
    Width = 75
    Height = 21
    TabOrder = 15
  end
  object DBGrid6: TDBGrid
    Left = 736
    Top = 266
    Width = 401
    Height = 96
    DataSource = DataSource6
    TabOrder = 16
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_empresa'
        Title.Caption = 'Emp'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_almoxarifado'
        Title.Caption = 'id_almox'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_item'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_cor'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_tamanho'
        Title.Caption = 'id_tam'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde_entrada'
        Title.Caption = 'Entrada'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde_saida'
        Title.Caption = 'Sa'#237'da'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo_fisico'
        Visible = True
      end>
  end
  object Button10: TButton
    Left = 655
    Top = 298
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 17
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 655
    Top = 329
    Width = 75
    Height = 25
    Caption = 'gravar'
    TabOrder = 18
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 655
    Top = 360
    Width = 75
    Height = 25
    Caption = 'delete'
    TabOrder = 19
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 119
    Top = 328
    Width = 75
    Height = 25
    Caption = 'delete'
    TabOrder = 20
    OnClick = Button13Click
  end
  object Edit3: TEdit
    Left = 39
    Top = 520
    Width = 75
    Height = 21
    TabOrder = 21
  end
  object DataSource1: TDataSource
    DataSet = dmGeral.CAD_CD_C_PAR_CTR
    Left = 48
    Top = 48
  end
  object DataSource2: TDataSource
    DataSet = dmGeral.EST_CD_M_FEA
    Left = 48
    Top = 104
  end
  object DataSource3: TDataSource
    DataSet = dmGeral.EST_CD_M_FES
    Left = 48
    Top = 168
  end
  object DataSource4: TDataSource
    DataSet = dmGeral.FAT_CD_M_PED
    Left = 48
    Top = 224
  end
  object DataSource5: TDataSource
    DataSet = dmGeral.FAT_CD_M_NFE
    Left = 48
    Top = 280
  end
  object DataSource6: TDataSource
    DataSet = dmGeral.EST_CD_M_FES_ALM
    Left = 656
    Top = 248
  end
end
