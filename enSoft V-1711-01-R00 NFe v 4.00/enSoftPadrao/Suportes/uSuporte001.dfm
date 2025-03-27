object frmSuporte001: TfrmSuporte001
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Suporte 001'
  ClientHeight = 540
  ClientWidth = 891
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
  object Label1: TLabel
    Left = 296
    Top = 79
    Width = 290
    Height = 33
    Caption = 'Faturar notas pendentes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 34
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 226
    Height = 13
    Caption = 'Digite a senha para poder iniciar o faturamento'
  end
  object Label5: TLabel
    Left = 42
    Top = 315
    Width = 44
    Height = 13
    Caption = 'Faturada'
  end
  object lblQtdeReg: TLabel
    Left = 656
    Top = 108
    Width = 53
    Height = 13
    Caption = 'lblQtdeReg'
  end
  object lblCaixa: TLabel
    Left = 567
    Top = 337
    Width = 4
    Height = 13
    Caption = '.'
  end
  object Label4: TLabel
    Left = 560
    Top = 318
    Width = 102
    Height = 13
    Caption = '- Caixa respons'#225'vel -'
  end
  object dbGrid: TwwDBGrid
    AlignWithMargins = True
    Left = 7
    Top = 124
    Width = 881
    Height = 186
    Hint = 'Clique com o bot'#227'o direito para outras tarefas...'
    Margins.Left = 2
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ControlType.Strings = (
      'int_nomeemi;RichEdit;;F'
      'int_nfeecf;RichEdit;;F'
      'int_nometme;RichEdit;;F'
      'int_nomeope;RichEdit;;F'
      'int_nomeem;RichEdit;;F'
      'prevenda;CheckBox;True;False')
    Selected.Strings = (
      'int_nomeemp'#9'20'#9'Empresa'#9'F'
      'id_fiscal'#9'9'#9'Controle'#9'F'
      'numero'#9'10'#9'N'#250'mero'#9'F'
      'status'#9'10'#9'Status'#9'F'
      'nfe_chave'#9'24'#9'Chave'#9'F'
      'int_nfeecf'#9'8'#9'Tipo'#9'F'
      'int_nometme'#9'16'#9'Tipo de Estoque'#9'F'
      'int_nomecpg'#9'10'#9'Condi'#231#227'o'#9'F'
      'dta_emissao'#9'10'#9'Emiss'#227'o'#9'F'
      'serie'#9'6'#9'S'#233'rie'#9'F'
      'modelo'#9'9'#9'Modelo'#9'F'
      'int_nomeemi'#9'12'#9'Emitente'#9'F'
      'vlr_liquido'#9'12'#9'Vlr Total'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    OnRowChanged = dbGridRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dso
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    OnCalcCellColors = dbGridCalcCellColors
  end
  object btnFaturar: TButton
    Left = 8
    Top = 495
    Width = 81
    Height = 41
    Caption = 'Faturar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnFaturarClick
  end
  object btnSair: TButton
    Left = 807
    Top = 495
    Width = 81
    Height = 41
    Caption = 'Sair'
    TabOrder = 2
    OnClick = btnSairClick
  end
  object txtSenha: TEdit
    Left = 48
    Top = 31
    Width = 97
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object btnIniciaFat: TButton
    Left = 151
    Top = 29
    Width = 138
    Height = 25
    Caption = 'Iniciar faturamento'
    TabOrder = 4
    OnClick = btnIniciaFatClick
  end
  object Panel4: TPanel
    Left = 21
    Top = 314
    Width = 15
    Height = 15
    BevelOuter = bvNone
    Color = clGreen
    ParentBackground = False
    TabOrder = 5
  end
  object pgNfeDados: TPageControl
    Left = 8
    Top = 337
    Width = 524
    Height = 118
    ActivePage = tsTitulos
    TabOrder = 6
    TabPosition = tpBottom
    object tsItens: TTabSheet
      Caption = 'Itens'
      object dgItens: TwwDBGrid
        AlignWithMargins = True
        Left = 2
        Top = 0
        Width = 514
        Height = 92
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Selected.Strings = (
          'id_item'#9'10'#9'Item'#9'F'
          'int_desc_item'#9'17'#9'Descri'#231#227'o'#9'F'
          'int_und_venda'#9'5'#9'Und'#9'F'
          'int_nomecor'#9'8'#9'Cor'#9'F'
          'int_nometam'#9'10'#9'Tamanho'#9'F'
          'qtde'#9'7'#9'Qtde'#9'F'
          'vlr_unitario'#9'11'#9'Vlr Unit'#225'rio'#9'F'
          'vlr_desconto'#9'8'#9'Desc.'#9'F'
          'vlr_liquido'#9'10'#9'Vlr Total'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = FAT_DS_M_NFE_ITE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
      end
    end
    object tsTitulos: TTabSheet
      Caption = 'T'#237'tulos'
      ImageIndex = 2
      object grdTitulos: TwwDBGrid
        AlignWithMargins = True
        Left = 2
        Top = 0
        Width = 514
        Height = 92
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Selected.Strings = (
          'id_forma_pag'#9'8'#9'C'#243'digo'#9'F'
          'int_nomefpg'#9'22'#9'Forma de pagamento'#9'F'
          'num_parcela'#9'15'#9'Parcela'#9'F'
          'dta_vencimento'#9'12'#9'Vencimento'#9'F'
          'vlr_titulo'#9'11'#9'Vlr T'#237'tulo'#9'F'
          'che_agencia'#9'7'#9'Ag'#234'ncia'#9'F'
          'che_banco'#9'7'#9'Banco'#9'F'
          'che_conta'#9'10'#9'Conta'#9'F'
          'che_numero'#9'8'#9'Nro'#9'F'
          'che_emitente'#9'50'#9'Emitente'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = FAT_DS_M_NFE_TIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
      end
    end
    object tsInfFiscal: TTabSheet
      Caption = 'Informa'#231#227'o fiscal'
      ImageIndex = 2
      object txtNfeObs: TDBMemo
        Left = 0
        Top = 0
        Width = 516
        Height = 67
        DataField = 'nfe_obs'
        DataSource = dso
        Enabled = False
        TabOrder = 0
      end
      object btnSalvarInfFis: TBitBtn
        Left = 442
        Top = 68
        Width = 71
        Height = 25
        Caption = '&Salvar'
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
      end
      object btnAlterarInfFis: TBitBtn
        Left = 371
        Top = 68
        Width = 71
        Height = 25
        Caption = '&Alterar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000010170000101700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE9E9E97B7B7B4D4D4D4D4D4D4D4D4D4C4C4C6969699A
          9A9A6F6F6FA2A2A2DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D6D515151
          AFAFAFB9B9B9B7B7B7B6B6B6C3C3C3B7B7B7959595BEBEBE434343C3C3C3FFFF
          FFFFFFFFFFFFFFFFFFFF3D3D3DBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1
          F1F17272727474743333333C3C3CBDBDBDFFFFFFFFFFFFFFFFFF3E3E3EC7C7C7
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B93333333333333333333939
          39B3B3B3FFFFFFFFFFFF3F3F3FC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFC2C2C23D3D3D333333333333505050DADADAFFFFFF3F3F3FC5C5C5
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C83D3D3D5050
          508F8F8F828282D5D5D53F3F3FC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFDADADA9393937F7F7F7272725F5F5F3F3F3FC5C5C5
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1C9C9C9E4E4
          E4898989414141C9C9C93F3F3FC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF858585626262FFFFFFE5E5E5E2E2E2FFFFFF3F3F3FC5C5C5
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383686868FFFF
          FFFFFFFFFFFFFFFFFFFF3F3F3FC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFE5E5E56E
          6E6E6464646060603737378D8D8DFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FC6C6C6
          FFFFFFFFFFFFFFFFFFFFFFFFC6C6C6333333333333333333515151E7E7E7FFFF
          FFFFFFFFFFFFFFFFFFFF3C3C3CC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFCECECE33
          3333333333535353E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6161615D5D5D
          C2C2C2CDCDCDCCCCCCCECECE909090333333585858E3E3E3FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFDEDEDE6464643F3F3F4242424141414242423E3E3E79
          7979EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 1
      end
    end
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_CXA
    Left = 827
    Top = 6
  end
  object FAT_DS_M_NFE_TIT: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_TIT_CXA
    Left = 746
    Top = 14
  end
  object FAT_DS_M_NFE_ITE: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE_CXA
    Left = 746
    Top = 62
  end
  object dsCxa: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_CXA
    Left = 619
    Top = 22
  end
end
