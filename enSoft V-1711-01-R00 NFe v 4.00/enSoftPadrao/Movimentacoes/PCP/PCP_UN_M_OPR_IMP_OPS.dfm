object PCP_FM_M_OPR_IMP_OPS: TPCP_FM_M_OPR_IMP_OPS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 200
  ClientWidth = 434
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 30
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 432
      Height = 28
      Align = alClient
      Alignment = taCenter
      Caption = 'Impress'#227'o de Ordem de Produ'#231#227'o para Setores'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 401
      ExplicitHeight = 25
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 30
    Width = 434
    Height = 170
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 173
    object pnlDados: TPanel
      Left = 1
      Top = 16
      Width = 486
      Height = 145
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 344
        Top = 83
        Width = 33
        Height = 13
        Caption = 'Setor :'
        Visible = False
      end
      object btnSair: TcxButton
        Left = 218
        Top = 107
        Width = 90
        Height = 30
        Caption = 'Sair'
        TabOrder = 1
        OnClick = btnSairClick
      end
      object btnImprimir: TcxButton
        Left = 127
        Top = 107
        Width = 90
        Height = 30
        Caption = 'Imprimir'
        OptionsImage.Glyph.Data = {
          C6070000424DC607000000000000360000002800000016000000160000000100
          2000000000009007000000000000000000000000000000000000000000000000
          000000000000010101071D1D1D8F333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF1D1D
          1D8F010101070000000000000000000000000000000000000000000000001717
          1773333333FF2A2A2AD2252525B9252525B9252525B9252525B9252525B92525
          25B9252525B9252525B9252525B9252525B92C2C2CDD333333FF171717730000
          00000000000000000000000000000000000000000000222222A9333333FF0606
          061C000000000000000000000000000000000000000000000000000000000000
          000000000000000000000808082A333333FF222222A900000000000000000000
          00000000000000000000000000002020209F333333FF020202080606061E2020
          20A0202020A0202020A0202020A0202020A01A1A1A8202020208000000000000
          000004040413333333FF2020209F000000000000000000000000000000000000
          000000000001202020A1333333FF010101030A0A0A33333333FF333333FF3333
          33FF333333FF333333FF2C2C2CDE0000000200000000000000000606061C3333
          33FF202020A10000000100000000000000000909092D282828C72D2D2DE33131
          31F5333333FE050505170202020A0B0B0B380B0B0B380B0B0B380B0B0B380B0B
          0B380A0A0A330606061D0606061C0202020B0505051B333333FE313131F52D2D
          2DE3282828C70909092D292929CB333333FF333333FF333333FF333333FE0101
          01030A0A0A33333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF1616166C03030311323232FB333333FF333333FF333333FF2929
          29CB313131F7333333FF333333FF333333FF333333FE0303030E0606061E2020
          20A0202020A0202020A0202020A0202020A0202020A0202020A0202020A00C0C
          0C3C04040416323232FC333333FF333333FF333333FF313131F7303030F13333
          33FF333333FF333333FF333333FE010101040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000023333
          33FE333333FF333333FF333333FF303030F1303030F1333333FF333333FF3333
          33FF333333FF252525BB242424B3242424B3242424B3242424B3242424B32424
          24B3242424B3242424B3242424B3242424B3252525BB333333FF333333FF3333
          33FF333333FF303030F1303030F1333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FD323232FA333333FF333333FF3030
          30F1303030F1333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF323232F91616166D0D0D0D402B2B2BD5333333FF303030F1323232F83333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF313131F30808
          082900000000252525B8333333FF323232F8303030F1333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF272727C2212121A73131
          31F5333333FF303030F11212125B333333FD333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FD1212
          125B000000000909092D0C0C0C3A242424B6333333FF101010500C0C0C3A0C0C
          0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C0C3A0C0C
          0C3A10101050333333FF242424B60C0C0C3A0909092D00000000000000000000
          0000000000001E1E1E97333333FF020202080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202083333
          33FF1E1E1E970000000000000000000000000000000000000000000000002020
          20A0333333FF0606061C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000606061C333333FF202020A00000
          00000000000000000000000000000000000000000000202020A0333333FF0404
          0416000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040413333333FF202020A000000000000000000000
          0000000000000000000000000000222222A9333333FF05050519000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000808082A333333FF222222A9000000000000000000000000000000000000
          00000000000017171773333333FF2A2A2AD2252525B9252525B9252525B92525
          25B9252525B9252525B9252525B9252525B9252525B9252525B92C2C2CDD3333
          33FF171717730000000000000000000000000000000000000000000000000101
          01071D1D1D8F333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF1D1D1D8F010101070000
          00000000000000000000}
        TabOrder = 2
        OnClick = btnImprimirClick
      end
      object cbbTipoSetor: TComboBox
        Left = 383
        Top = 80
        Width = 65
        Height = 21
        Style = csDropDownList
        TabOrder = 3
        Visible = False
      end
      object rgSetor: TRadioGroup
        Left = 40
        Top = -1
        Width = 353
        Height = 96
        Caption = ' Setor '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Bordadeira'
          'Colagem Tampo - Alfinetagem'
          'Colagem de Molas'
          'Corte e Costura'
          'Montagem de caixa'
          'Demais setores')
        TabOrder = 0
      end
    end
  end
  object PCP_PD_M_OPR: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 504
    Top = 109
  end
  object PCP_XL_M_OPR: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 504
    Top = 45
  end
  object PCP_DB_M_OPR: TfrxDBDataset
    UserName = 'PCP_DB_M_OPR'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_opr=id_opr'
      'dta_emissao=dta_emissao'
      'id_responsavel=id_responsavel'
      'situacao=situacao'
      'id_empresa=id_empresa'
      'id_tpp=id_tpp'
      'cub_produzir=cub_produzir'
      'cub_pedidos=cub_pedidos'
      'cod_lme=cod_lme'
      'rev_lme=rev_lme'
      'int_nomeres=int_nomeres'
      'int_nometpp=int_nometpp'
      'obs_administrativa=obs_administrativa'
      'obs_producao=obs_producao'
      'PCP_SQ_M_OPR_OPS=PCP_SQ_M_OPR_OPS'
      'PCP_SQ_M_OPR_PED=PCP_SQ_M_OPR_PED'
      'PCP_SQ_M_OPR_IPA=PCP_SQ_M_OPR_IPA'
      'PCP_SQ_M_OPR_OPP=PCP_SQ_M_OPR_OPP'
      'id_almoxarifado=id_almoxarifado'
      'int_nomealm=int_nomealm'
      'id_setor=id_setor'
      'int_nomestr=int_nomestr'
      'num_lote=num_lote')
    DataSet = dmGeral.PCP_CD_M_OPR
    BCDToCurrency = False
    Left = 400
    Top = 149
  end
  object PCP_FR_M_OPR_ITE_COL: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42550.423348784700000000
    ReportOptions.LastChange = 42550.423348784700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   corCinza: Boolean;'
      '     '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<xCor> = '#39'False'#39') and (<xTamanho> = '#39'False'#39') then'
      '     begin'
      '       MemoC.visible := false;'
      '       MemoT.visible := false;'
      '       MasterC.visible := false;'
      '       MasterT.visible := false;'
      '         '
      
        '       MemoU.Left := MemoU.Left + MasterC.width + MasterT.width;' +
        '                  '
      
        '       MasterU.Left := MasterU.Left + MasterC.width + MasterT.wi' +
        'dth;                                                            ' +
        '      '
      
        '       MasterI.width := MasterI.width + MasterC.width + MasterT.' +
        'width;'
      '     end;'
      ''
      '   if (<xCor> = '#39'False'#39') and (<xTamanho> = '#39'True'#39') then'
      '     begin'
      '       MemoC.visible := false;'
      '       MasterC.visible := false;'
      '         '
      '       MemoU.Left := MemoU.Left + MasterC.width;  '
      '       MasterU.Left := MasterU.Left + MasterC.width;           '
      '       MasterI.width := MasterI.width + MasterC.width;  '
      '     end;'
      ''
      '   if (<xCor> = '#39'True'#39') and (<xTamanho> = '#39'False'#39') then'
      '     begin'
      '       MemoT.visible := false;'
      '       MasterT.visible := false;'
      '    {           '
      '       MemoU.Left := MemoU.Left + MasterT.width;           '
      '       MasterU.Left := MasterU.Left + MasterT.width;  '
      '       MasterI.width := MasterI.width + MasterT.width;'
      
        '       MemoC.Left := MemoC.Left + MemoT.width;                  ' +
        '                                     '
      
        '       MasterC.Left := MasterC.Left + MasterT.width;}           ' +
        '                                               '
      '     end;              '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  mmPcpObs.Visible := false;    '
      
        '//  if trim(<PCP_DB_M_OPR_OPP."obs_producao">) = '#39#39' then        ' +
        '                   '
      
        '//     mmPcpObs.Visible := false;                               ' +
        '   '
      '  {if (corCinza = True) then'
      '    begin'
      
        '      Memo9.Color := $00E4E4E4;                                 ' +
        '                   '
      
        '      corCinza := False;                                        ' +
        '             '
      '    end'
      '  else'
      '    begin'
      
        '      Memo9.Color := clNone;                                    ' +
        '              '
      
        '      corCinza := True;                                         ' +
        '   '
      '    end; }    '
      'end;'
      ''
      'procedure GroupHeader2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                      '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  //corCinza := false;  '
      'end;'
      ''
      
        'procedure Memo14OnMouseUp(Sender: TfrxComponent; Button: TMouseB' +
        'utton; Shift: Integer; X, Y: Integer);'
      'begin'
      ''
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure MemoUOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 184
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = PCP_DB_M_OPR
        DataSetName = 'PCP_DB_M_OPR'
      end
      item
        DataSet = PCP_DB_M_OPR_OPP
        DataSetName = 'PCP_DB_M_OPR_OPP'
      end>
    Variables = <
      item
        Name = ' Externa'
        Value = Null
      end
      item
        Name = 'xTamanho'
        Value = Null
      end
      item
        Name = 'xCor'
        Value = Null
      end
      item
        Name = 'VlrLiqPed'
        Value = Null
      end
      item
        Name = 'CubPed'
        Value = Null
      end
      item
        Name = 'ft_Ano_Colagem'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 19.677180000000000000
        Top = 634.961040000000000000
        Width = 1084.725110000000000000
        object Memo25: TfrxMemoView
          Left = 457.323130000000000000
          Top = 0.779530000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Assin_enorth: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.779530000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Assin_enorth]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 865.045360770000000000
          Top = 2.669295000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Impresso Em :')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 959.610533850000000000
          Top = 2.669295000000000000
          Width = 117.165276220000000000
          Height = 11.338590000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] '#225's [Time]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 131.966843070000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Stretched = True
        object Memo1: TfrxMemoView
          Top = 25.236240000000000000
          Width = 1077.165586220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 23.456710000000000000
          Width = 1077.165564250000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 741.331170000000000000
          Top = 69.811070000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '<b>N'#186' de Ordem de Produ'#231#227'o :</b> [PCP_DB_M_OPR."num_lote"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 4.548760770000000000
          Top = 71.811070000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data Emiss'#227'o :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 130.714190770000000000
          Top = 71.811070000000000000
          Width = 86.929133860000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."dta_emissao"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 260.787570000000000000
          Top = 71.811070000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Respons'#225'vel :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 334.039580000000000000
          Top = 72.031540000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."int_nomeres"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo13: TfrxMemoView
          Left = 76.862566150000000000
          Top = 2.451881540000000000
          Width = 400.630180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."id_empresa"] - [CAD_DB_C_PAR."emp_fantasia"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo41: TfrxMemoView
          Left = 5.831026150000000000
          Top = 2.451881540000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 4.548760770000000000
          Top = 89.627610770000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Administrativa :')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 130.714190770000000000
          Top = 89.848080770000000000
          Width = 583.494851600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_administrativa"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 34.809453080000000000
          Top = 106.550687690000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Produ'#231#227'o :')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 130.738643080000000000
          Top = 106.771157690000000000
          Width = 583.494851600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_producao"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 481.137101540000000000
          Top = 70.550045380000000000
          Width = 123.252652310000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cubagem pedidos : ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 607.290947690000000000
          Top = 70.563888460000000000
          Width = 130.006056940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CubPed]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 45.370130000000000000
          Width = 1077.165564250000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo67: TfrxMemoView
          Left = 975.118740000000000000
          Top = 2.451881540000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd. I  7.5-14-01  Rev. 1')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Top = 46.354360000000000000
          Width = 1077.165354330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'RASTREABILIDADE DA COLAGEM - COLCH'#195'O DE MOLAS')
          ParentFont = False
        end
        object Line17: TfrxLineView
          Top = 66.252010000000000000
          Width = 1077.165354330710000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 74.047310000000000000
        Top = 211.653680000000000000
        Width = 1084.725110000000000000
        ReprintOnNewPage = True
        object Shape31: TfrxShapeView
          Left = 733.772110000000000000
          Top = 21.677180000000000000
          Width = 178.015748030000000000
          Height = 21.165354330000000000
        end
        object Memo22: TfrxMemoView
          Left = -1.000000000000000000
          Top = 21.692950000000000000
          Width = 1077.165354330000000000
          Height = 48.377952760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 328.700990000000000000
          Top = 20.677180000000000000
          Width = 25.322834650000000000
          Height = 48.377952760000000000
        end
        object Shape14: TfrxShapeView
          Left = 423.102660000000000000
          Top = 20.677180000000000000
          Width = 34.771660870000000000
          Height = 48.377952760000000000
        end
        object Shape17: TfrxShapeView
          Left = 926.496072760000000000
          Top = 20.677180000000000000
          Width = 149.669291338582700000
          Height = 21.921259840000000000
        end
        object Shape30: TfrxShapeView
          Left = 926.984850000000000000
          Top = 42.708661420000000000
          Width = 149.291328820000000000
          Height = 26.078740160000000000
        end
        object Shape15: TfrxShapeView
          Left = 457.897960000000000000
          Top = 21.677180000000000000
          Width = 276.661580870000000000
          Height = 21.165354330000000000
        end
        object Shape13: TfrxShapeView
          Left = 354.173470000000000000
          Top = 20.677180000000000000
          Width = 68.787430870000000000
          Height = 48.377952760000000000
        end
        object Shape1: TfrxShapeView
          Top = 20.677180000000000000
          Width = 69.543307090000000000
          Height = 48.377952760000000000
        end
        object Shape2: TfrxShapeView
          Left = 69.811070000000000000
          Top = 20.677180000000000000
          Width = 39.307067090000000000
          Height = 48.377952755905510000
        end
        object Shape3: TfrxShapeView
          Left = 109.165430000000000000
          Top = 20.677180000000000000
          Width = 219.590551181102400000
          Height = 48.377952760000000000
        end
        object MemoQP: TfrxMemoView
          Left = 427.405262100000000000
          Top = 36.031540000000000000
          Width = 25.025046360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Shape16: TfrxShapeView
          Left = 457.897960000000000000
          Top = 42.354360000000000000
          Width = 276.661580870000000000
          Height = 26.456710000000000000
        end
        object Shape18: TfrxShapeView
          Left = 734.260360000000000000
          Top = 42.708661420000000000
          Width = 84.661292830000000000
          Height = 26.078740157480320000
        end
        object MemoI: TfrxMemoView
          Left = 111.164787690000000000
          Top = 36.031540000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object MemoC: TfrxMemoView
          Left = 376.025094620000000000
          Top = 36.031540000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object MemoT: TfrxMemoView
          Left = 359.425480000000000000
          Top = 51.149660000000000000
          Width = 30.236178980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Tam.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 73.615445640000000000
          Top = 36.031540000000000000
          Width = 34.015708980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object MemoU: TfrxMemoView
          Left = 330.370078740000000000
          Top = 36.031540000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'MemoUOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 757.842795510000000000
          Top = 22.897650000000000000
          Width = 117.165368980000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Revestimento')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 928.039765510000000000
          Top = 22.897650000000000000
          Width = 64.251948980000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Borda Perim.')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 1013.693570000000000000
          Top = 22.897650000000000000
          Width = 43.922696360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Molejo')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 994.575450000000000000
          Top = 40.795300000000000000
          Width = 28.804576360000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo'
            'P / B')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 1029.811690000000000000
          Top = 47.354360000000000000
          Width = 40.143166360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186' Lote')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 928.205320000000000000
          Top = 41.354360000000000000
          Width = 60.472418980000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Espuma'
            'Nro do Lote')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 737.126470000000000000
          Top = 41.795300000000000000
          Width = 79.370068980000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tampo'
            'Superior')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 505.945270000000000000
          Top = 22.897650000000000000
          Width = 196.535498980000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186' do Lote das L'#226'minas de Espuma')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 457.268090000000000000
          Top = 47.354360000000000000
          Width = 43.922696360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 502.622450000000000000
          Top = 47.354360000000000000
          Width = 51.481756360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lamina 1')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 555.535870000000000000
          Top = 47.354360000000000000
          Width = 43.922696360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 601.669760000000000000
          Top = 47.354360000000000000
          Width = 51.481756360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lamina 2')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 655.669760000000000000
          Top = 47.354360000000000000
          Width = 32.584106360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 690.803650000000000000
          Top = 47.354360000000000000
          Width = 43.922696360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lamina 3')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 19.000000000000000000
          Top = 36.031540000000000000
          Width = 41.574768980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Left = 502.252320000000000000
          Top = 42.574830000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 555.165740000000000000
          Top = 42.574830000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 600.520100000000000000
          Top = 42.574830000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 653.433520000000000000
          Top = 42.574830000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Left = 689.787880000000000000
          Top = 42.574830000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          Left = 993.016390000000000000
          Top = 19.897650000000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          Left = 1028.032160000000000000
          Top = 42.574830000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape32: TfrxShapeView
          Left = 877.394250000000000000
          Top = 42.708661420000000000
          Width = 49.511820790000000000
          Height = 26.078740160000000000
        end
        object Memo82: TfrxMemoView
          Left = 887.394250000000000000
          Top = 47.015770000000000000
          Width = 28.804576360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TNT')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 2.338590000000000000
          Width = 1077.165354330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ITENS DA PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 823.937540000000000000
          Top = 47.905535000000000000
          Width = 45.354298980000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Faixa')
          ParentFont = False
        end
        object Shape119: TfrxShapeView
          Left = 819.158010000000000000
          Top = 42.574830000000000000
          Width = 57.826786300000000000
          Height = 26.456678270000000000
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 35.149613620000000000
        Top = 336.378170000000000000
        Width = 1084.725110000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = PCP_DB_M_OPR_OPP
        DataSetName = 'PCP_DB_M_OPR_OPP'
        RowCount = 0
        Stretched = True
        object Shape19: TfrxShapeView
          Left = 423.102660000000000000
          Width = 34.771653540000000000
          Height = 30.236220470000000000
        end
        object MasterT: TfrxMemoView
          Left = 365.000310000000000000
          Top = 9.338590000000000000
          Width = 24.548760770000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nometam"]')
          ParentFont = False
        end
        object MasterI: TfrxMemoView
          Left = 111.164787690000000000
          Top = 9.779530000000000000
          Width = 199.936983460000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomeite"]'
            '[PCP_DB_M_OPR_OPP."obs_producao"]')
          ParentFont = False
        end
        object MasterCD: TfrxMemoView
          Left = 71.615445640000000000
          Top = 9.779530000000000000
          Width = 37.292564620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."id_item"]')
          ParentFont = False
        end
        object MasterQP: TfrxMemoView
          Left = 423.968770000000000000
          Top = 9.779530000000000000
          Width = 32.241068460000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<PCP_DB_M_OPR_OPP."qtde_a_produzir"> - <PCP_DB_M_OPR_OPP."qtde_' +
              'produzida">]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object MasterU: TfrxMemoView
          Left = 327.582870000000000000
          Top = 9.779530000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'int_undvenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_undvenda"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 2.000000000000000000
          Top = 9.779530000000000000
          Width = 67.528804620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '___/____/ [ft_Ano_Colagem]')
          ParentFont = False
        end
        object Shape20: TfrxShapeView
          Left = 457.897960000000000000
          Width = 43.464566930000000000
          Height = 30.236220472440940000
        end
        object Shape21: TfrxShapeView
          Left = 501.252320000000000000
          Width = 53.291338580000000000
          Height = 30.236220472440940000
        end
        object Shape22: TfrxShapeView
          Left = 554.165740000000000000
          Width = 45.354360000000000000
          Height = 30.236220472440940000
        end
        object Shape23: TfrxShapeView
          Left = 599.520100000000000000
          Width = 54.425196850000000000
          Height = 30.236220472440940000
        end
        object Shape24: TfrxShapeView
          Left = 653.858267720000000000
          Width = 36.283464570000000000
          Height = 30.236220472440940000
        end
        object Shape25: TfrxShapeView
          Left = 690.346940000000000000
          Width = 42.708661420000000000
          Height = 30.236220472440940000
        end
        object Shape26: TfrxShapeView
          Left = 817.937540000000000000
          Width = 58.582677170000000000
          Height = 30.236220472440940000
        end
        object Shape27: TfrxShapeView
          Left = 926.984850000000000000
          Width = 66.141722520000000000
          Height = 30.236220470000000000
        end
        object Shape28: TfrxShapeView
          Left = 993.016390000000000000
          Width = 35.149606300000000000
          Height = 30.236220472440940000
        end
        object Shape29: TfrxShapeView
          Left = 1028.473095120000000000
          Width = 49.133890000000000000
          Height = 30.236220472440940000
        end
        object Shape33: TfrxShapeView
          Left = 876.614720000000000000
          Width = 50.267716540000000000
          Height = 30.236220470000000000
        end
        object Shape120: TfrxShapeView
          Left = 732.850393700000000000
          Width = 85.417322830000000000
          Height = 30.236220472440940000
        end
        object MasterC: TfrxMemoView
          Left = 351.788854620000000000
          Top = 9.779530000000000000
          Width = 62.362194960000000000
          Height = 15.118120000000000000
          DataField = 'int_nomecor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomecor"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 2.478925390000000000
        Top = 309.921460000000000000
        Width = 1084.725110000000000000
        OnBeforePrint = 'GroupHeader2OnBeforePrint'
        Condition = 'PCP_DB_M_OPR_OPP."int_id_grupo"'
        Stretched = True
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 3.779527560000000000
        Top = 393.071120000000000000
        Width = 1084.725110000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object Line2: TfrxLineView
          Left = 2.307692310000000000
          Top = 1.816230770000000000
          Width = 1077.165354330000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object ReportSummary2: TfrxReportSummary
        FillType = ftBrush
        Height = 154.960730000000000000
        Top = 457.323130000000000000
        Width = 1084.725110000000000000
        object Shape34: TfrxShapeView
          Left = 423.102660000000000000
          Width = 34.771653540000000000
          Height = 30.236220472440940000
        end
        object Shape35: TfrxShapeView
          Left = 457.897960000000000000
          Width = 43.464566930000000000
          Height = 30.236220472440940000
        end
        object Shape36: TfrxShapeView
          Left = 501.252320000000000000
          Width = 52.913385830000000000
          Height = 30.236220472440940000
        end
        object Shape37: TfrxShapeView
          Left = 554.165740000000000000
          Width = 45.354360000000000000
          Height = 30.236220472440940000
        end
        object Shape38: TfrxShapeView
          Left = 599.520100000000000000
          Width = 54.425196850000000000
          Height = 30.236220470000000000
        end
        object Shape39: TfrxShapeView
          Left = 653.858267720000000000
          Width = 36.283464570000000000
          Height = 30.236220472440940000
        end
        object Shape40: TfrxShapeView
          Left = 690.346940000000000000
          Width = 42.708661420000000000
          Height = 30.236220472440940000
        end
        object Shape41: TfrxShapeView
          Left = 732.850393700000000000
          Width = 85.417322830000000000
          Height = 30.236220472440940000
        end
        object Shape42: TfrxShapeView
          Left = 926.984850000000000000
          Width = 66.141732280000000000
          Height = 30.236220470000000000
        end
        object Shape43: TfrxShapeView
          Left = 993.016390000000000000
          Width = 35.149606300000000000
          Height = 30.236220472440940000
        end
        object Shape44: TfrxShapeView
          Left = 1028.473095120000000000
          Width = 49.133890000000000000
          Height = 30.236220472440940000
        end
        object Shape45: TfrxShapeView
          Left = 876.614720000000000000
          Width = 50.267716535433070000
          Height = 30.236220470000000000
        end
        object Shape46: TfrxShapeView
          Left = 354.173470000000000000
          Width = 68.787401570000000000
          Height = 30.236220472440940000
        end
        object Shape47: TfrxShapeView
          Left = 328.700990000000000000
          Width = 25.322834650000000000
          Height = 30.236220472440940000
        end
        object Shape48: TfrxShapeView
          Left = 107.716535430000000000
          Width = 221.102362200000000000
          Height = 30.236220470000000000
        end
        object Shape49: TfrxShapeView
          Left = 69.031540000000000000
          Width = 38.173228350000000000
          Height = 30.236220470000000000
        end
        object Shape50: TfrxShapeView
          Left = 0.220470000000000000
          Width = 69.543307090000000000
          Height = 30.236220472440940000
        end
        object Shape51: TfrxShapeView
          Left = 423.102660000000000000
          Top = 29.677180000000000000
          Width = 34.771653540000000000
          Height = 30.236220470000000000
        end
        object Shape52: TfrxShapeView
          Left = 457.897960000000000000
          Top = 29.677180000000000000
          Width = 43.464566930000000000
          Height = 30.236220470000000000
        end
        object Shape53: TfrxShapeView
          Left = 501.252320000000000000
          Top = 29.677180000000000000
          Width = 52.913385830000000000
          Height = 30.236220470000000000
        end
        object Shape54: TfrxShapeView
          Left = 554.165740000000000000
          Top = 29.677180000000000000
          Width = 45.354360000000000000
          Height = 30.236220470000000000
        end
        object Shape55: TfrxShapeView
          Left = 599.520100000000000000
          Top = 29.677180000000000000
          Width = 54.425196850000000000
          Height = 30.236220470000000000
        end
        object Shape56: TfrxShapeView
          Left = 653.858267720000000000
          Top = 29.677180000000000000
          Width = 36.283464570000000000
          Height = 30.236220470000000000
        end
        object Shape57: TfrxShapeView
          Left = 690.346940000000000000
          Top = 29.677180000000000000
          Width = 42.708661420000000000
          Height = 30.236220470000000000
        end
        object Shape58: TfrxShapeView
          Left = 732.850393700000000000
          Top = 29.677180000000000000
          Width = 85.417322830000000000
          Height = 30.236220470000000000
        end
        object Shape59: TfrxShapeView
          Left = 926.984850000000000000
          Top = 29.677180000000000000
          Width = 66.141732280000000000
          Height = 30.236220470000000000
        end
        object Shape60: TfrxShapeView
          Left = 993.016390000000000000
          Top = 29.677180000000000000
          Width = 35.149606300000000000
          Height = 30.236220470000000000
        end
        object Shape61: TfrxShapeView
          Left = 1028.473095120000000000
          Top = 29.677180000000000000
          Width = 49.133890000000000000
          Height = 30.236220470000000000
        end
        object Shape62: TfrxShapeView
          Left = 876.614720000000000000
          Top = 29.677180000000000000
          Width = 50.267716535433070000
          Height = 30.236220470000000000
        end
        object Shape63: TfrxShapeView
          Left = 354.173470000000000000
          Top = 29.677180000000000000
          Width = 68.787401570000000000
          Height = 30.236220470000000000
        end
        object Shape64: TfrxShapeView
          Left = 328.700990000000000000
          Top = 29.677180000000000000
          Width = 25.322834650000000000
          Height = 30.236220470000000000
        end
        object Shape65: TfrxShapeView
          Left = 107.716535430000000000
          Top = 29.677180000000000000
          Width = 221.102362200000000000
          Height = 30.236220470000000000
        end
        object Shape66: TfrxShapeView
          Left = 69.031540000000000000
          Top = 29.677180000000000000
          Width = 38.173228350000000000
          Height = 30.236220470000000000
        end
        object Shape67: TfrxShapeView
          Left = 0.220470000000000000
          Top = 29.677180000000000000
          Width = 69.543307090000000000
          Height = 30.236220470000000000
        end
        object Shape68: TfrxShapeView
          Left = 423.102660000000000000
          Top = 60.354360000000000000
          Width = 34.771653540000000000
          Height = 30.236220470000000000
        end
        object Shape69: TfrxShapeView
          Left = 457.897960000000000000
          Top = 60.354360000000000000
          Width = 43.464566930000000000
          Height = 30.236220470000000000
        end
        object Shape70: TfrxShapeView
          Left = 501.252320000000000000
          Top = 60.354360000000000000
          Width = 52.913385830000000000
          Height = 30.236220470000000000
        end
        object Shape71: TfrxShapeView
          Left = 554.165740000000000000
          Top = 60.354360000000000000
          Width = 45.354360000000000000
          Height = 30.236220470000000000
        end
        object Shape72: TfrxShapeView
          Left = 599.520100000000000000
          Top = 60.354360000000000000
          Width = 54.425196850000000000
          Height = 30.236220470000000000
        end
        object Shape73: TfrxShapeView
          Left = 653.858267720000000000
          Top = 60.354360000000000000
          Width = 36.283464570000000000
          Height = 30.236220470000000000
        end
        object Shape74: TfrxShapeView
          Left = 690.346940000000000000
          Top = 60.354360000000000000
          Width = 42.708661420000000000
          Height = 30.236220470000000000
        end
        object Shape75: TfrxShapeView
          Left = 732.850393700000000000
          Top = 60.354360000000000000
          Width = 85.417322830000000000
          Height = 30.236220470000000000
        end
        object Shape76: TfrxShapeView
          Left = 926.984850000000000000
          Top = 60.354360000000000000
          Width = 66.141732280000000000
          Height = 30.236220470000000000
        end
        object Shape77: TfrxShapeView
          Left = 993.016390000000000000
          Top = 60.354360000000000000
          Width = 35.149606300000000000
          Height = 30.236220470000000000
        end
        object Shape78: TfrxShapeView
          Left = 1028.473095120000000000
          Top = 60.354360000000000000
          Width = 49.133890000000000000
          Height = 30.236220470000000000
        end
        object Shape79: TfrxShapeView
          Left = 876.614720000000000000
          Top = 60.354360000000000000
          Width = 50.267716535433070000
          Height = 30.236220470000000000
        end
        object Shape80: TfrxShapeView
          Left = 354.173470000000000000
          Top = 60.354360000000000000
          Width = 68.787401570000000000
          Height = 30.236220470000000000
        end
        object Shape81: TfrxShapeView
          Left = 328.700990000000000000
          Top = 60.354360000000000000
          Width = 25.322834650000000000
          Height = 30.236220470000000000
        end
        object Shape82: TfrxShapeView
          Left = 107.716535430000000000
          Top = 60.354360000000000000
          Width = 221.102362200000000000
          Height = 30.236220470000000000
        end
        object Shape83: TfrxShapeView
          Left = 69.031540000000000000
          Top = 60.354360000000000000
          Width = 38.173228350000000000
          Height = 30.236220470000000000
        end
        object Shape84: TfrxShapeView
          Left = 0.220470000000000000
          Top = 60.354360000000000000
          Width = 69.543307090000000000
          Height = 30.236220470000000000
        end
        object Shape85: TfrxShapeView
          Left = 423.102660000000000000
          Top = 91.031540000000000000
          Width = 34.771653540000000000
          Height = 30.236220470000000000
        end
        object Shape86: TfrxShapeView
          Left = 457.897960000000000000
          Top = 91.031540000000000000
          Width = 43.464566930000000000
          Height = 30.236220470000000000
        end
        object Shape87: TfrxShapeView
          Left = 501.252320000000000000
          Top = 91.031540000000000000
          Width = 52.913385830000000000
          Height = 30.236220470000000000
        end
        object Shape88: TfrxShapeView
          Left = 554.165740000000000000
          Top = 91.031540000000000000
          Width = 45.354360000000000000
          Height = 30.236220470000000000
        end
        object Shape89: TfrxShapeView
          Left = 599.520100000000000000
          Top = 91.031540000000000000
          Width = 54.425196850000000000
          Height = 30.236220470000000000
        end
        object Shape90: TfrxShapeView
          Left = 653.858267720000000000
          Top = 91.031540000000000000
          Width = 36.283464570000000000
          Height = 30.236220470000000000
        end
        object Shape91: TfrxShapeView
          Left = 690.346940000000000000
          Top = 91.031540000000000000
          Width = 42.708661420000000000
          Height = 30.236220470000000000
        end
        object Shape92: TfrxShapeView
          Left = 732.850393700000000000
          Top = 91.031540000000000000
          Width = 85.417322830000000000
          Height = 30.236220470000000000
        end
        object Shape93: TfrxShapeView
          Left = 926.984850000000000000
          Top = 91.031540000000000000
          Width = 66.141732280000000000
          Height = 30.236220470000000000
        end
        object Shape94: TfrxShapeView
          Left = 993.016390000000000000
          Top = 91.031540000000000000
          Width = 35.149606300000000000
          Height = 30.236220470000000000
        end
        object Shape95: TfrxShapeView
          Left = 1028.473095120000000000
          Top = 91.031540000000000000
          Width = 49.133890000000000000
          Height = 30.236220470000000000
        end
        object Shape96: TfrxShapeView
          Left = 876.614720000000000000
          Top = 91.031540000000000000
          Width = 50.267716535433070000
          Height = 30.236220470000000000
        end
        object Shape97: TfrxShapeView
          Left = 354.173470000000000000
          Top = 91.031540000000000000
          Width = 68.787401570000000000
          Height = 30.236220470000000000
        end
        object Shape98: TfrxShapeView
          Left = 328.700990000000000000
          Top = 91.031540000000000000
          Width = 25.322834650000000000
          Height = 30.236220470000000000
        end
        object Shape99: TfrxShapeView
          Left = 107.716535430000000000
          Top = 91.031540000000000000
          Width = 221.102362200000000000
          Height = 30.236220470000000000
        end
        object Shape100: TfrxShapeView
          Left = 69.031540000000000000
          Top = 91.031540000000000000
          Width = 38.173228350000000000
          Height = 30.236220470000000000
        end
        object Shape101: TfrxShapeView
          Left = 0.220470000000000000
          Top = 91.031540000000000000
          Width = 69.543307090000000000
          Height = 30.236220470000000000
        end
        object Shape102: TfrxShapeView
          Left = 423.102660000000000000
          Top = 121.708720000000000000
          Width = 34.771653540000000000
          Height = 30.236220470000000000
        end
        object Shape103: TfrxShapeView
          Left = 457.897960000000000000
          Top = 121.708720000000000000
          Width = 43.464566930000000000
          Height = 30.236220470000000000
        end
        object Shape104: TfrxShapeView
          Left = 501.252320000000000000
          Top = 121.708720000000000000
          Width = 52.913385830000000000
          Height = 30.236220470000000000
        end
        object Shape105: TfrxShapeView
          Left = 554.165740000000000000
          Top = 121.708720000000000000
          Width = 45.354360000000000000
          Height = 30.236220470000000000
        end
        object Shape106: TfrxShapeView
          Left = 599.520100000000000000
          Top = 121.708720000000000000
          Width = 54.425196850000000000
          Height = 30.236220470000000000
        end
        object Shape107: TfrxShapeView
          Left = 653.858267720000000000
          Top = 121.708720000000000000
          Width = 36.283464570000000000
          Height = 30.236220470000000000
        end
        object Shape108: TfrxShapeView
          Left = 690.346940000000000000
          Top = 121.708720000000000000
          Width = 42.708661420000000000
          Height = 30.236220470000000000
        end
        object Shape109: TfrxShapeView
          Left = 732.850393700000000000
          Top = 121.708720000000000000
          Width = 85.417322830000000000
          Height = 30.236220470000000000
        end
        object Shape110: TfrxShapeView
          Left = 926.984850000000000000
          Top = 121.708720000000000000
          Width = 66.141732280000000000
          Height = 30.236220470000000000
        end
        object Shape111: TfrxShapeView
          Left = 993.016390000000000000
          Top = 121.708720000000000000
          Width = 35.149606300000000000
          Height = 30.236220470000000000
        end
        object Shape112: TfrxShapeView
          Left = 1028.473095120000000000
          Top = 121.708720000000000000
          Width = 49.133890000000000000
          Height = 30.236220470000000000
        end
        object Shape113: TfrxShapeView
          Left = 876.614720000000000000
          Top = 121.708720000000000000
          Width = 50.267716535433070000
          Height = 30.236220470000000000
        end
        object Shape114: TfrxShapeView
          Left = 354.173470000000000000
          Top = 121.708720000000000000
          Width = 68.787401570000000000
          Height = 30.236220470000000000
        end
        object Shape115: TfrxShapeView
          Left = 328.700990000000000000
          Top = 121.708720000000000000
          Width = 25.322834650000000000
          Height = 30.236220470000000000
        end
        object Shape116: TfrxShapeView
          Left = 107.716535430000000000
          Top = 121.708720000000000000
          Width = 221.102362200000000000
          Height = 30.236220470000000000
        end
        object Shape117: TfrxShapeView
          Left = 69.031540000000000000
          Top = 121.708720000000000000
          Width = 38.173228350000000000
          Height = 30.236220470000000000
        end
        object Shape118: TfrxShapeView
          Left = 0.220470000000000000
          Top = 121.708720000000000000
          Width = 69.543307090000000000
          Height = 30.236220470000000000
        end
        object Shape121: TfrxShapeView
          Left = 817.937540000000000000
          Width = 58.582677170000000000
          Height = 30.236220472440940000
        end
        object Shape122: TfrxShapeView
          Left = 817.937540000000000000
          Top = 29.677180000000000000
          Width = 58.582677170000000000
          Height = 30.236220470000000000
        end
        object Shape123: TfrxShapeView
          Left = 817.937540000000000000
          Top = 60.354360000000000000
          Width = 58.582677170000000000
          Height = 30.236220470000000000
        end
        object Shape124: TfrxShapeView
          Left = 817.937540000000000000
          Top = 91.031540000000000000
          Width = 58.582677170000000000
          Height = 30.236220470000000000
        end
        object Shape125: TfrxShapeView
          Left = 817.937540000000000000
          Top = 121.708720000000000000
          Width = 58.582677170000000000
          Height = 30.236220470000000000
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 589.606680000000000000
        Width = 755.906000000000000000
        object Memo15: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Assin_enorth]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 499.667190770000000000
          Top = 3.929189990000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Impresso Em :')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 594.232363850000000000
          Top = 3.929189990000000000
          Width = 117.165276220000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] '#225's [Time]')
          ParentFont = False
        end
      end
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 139.668807690000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Stretched = True
        object Memo26: TfrxMemoView
          Top = 25.236240000000000000
          Width = 752.125984250000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 25.456710000000000000
          Width = 752.125984250000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo29: TfrxMemoView
          Left = 414.732530000000000000
          Top = 66.811070000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '<b>N'#186' de Ordem de Produ'#231#227'o :</b> [PCP_DB_M_OPR."num_lote"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 4.548760770000000000
          Top = 84.550045380000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data Emiss'#227'o :')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 130.714190770000000000
          Top = 84.770515380000000000
          Width = 86.929133860000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."dta_emissao"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 56.692950000000000000
          Top = 66.811070000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Respons'#225'vel :')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 129.944960000000000000
          Top = 67.031540000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."int_nomeres"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo34: TfrxMemoView
          Left = 76.862566150000000000
          Top = 2.451881540000000000
          Width = 400.630180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."id_empresa"] - [CAD_DB_C_PAR."emp_fantasia"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo35: TfrxMemoView
          Left = 5.831026150000000000
          Top = 2.451881540000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 4.548760770000000000
          Top = 103.627610770000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Administrativa :')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 130.714190770000000000
          Top = 103.848080770000000000
          Width = 583.494851600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_administrativa"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 34.809453080000000000
          Top = 120.550687690000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Produ'#231#227'o :')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 130.738643080000000000
          Top = 120.771157690000000000
          Width = 583.494851600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_producao"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 494.538461540000000000
          Top = 84.550045380000000000
          Width = 123.252652310000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cubagem pedidos : ')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 620.692307690000000000
          Top = 84.563888460000000000
          Width = 130.006056940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CubPed]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Top = 45.354360000000000000
          Width = 752.126006220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'RASTREABILIDADE DA COLAGEM / ALFINETAGEM  -  FAIXA - TAMPO ')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 648.283860000000000000
          Top = 6.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd. I  7.5-5-01  Rev. 1')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 45.354360000000000000
          Width = 752.125984250000000000
          Color = clBlack
          Diagonal = True
        end
        object Line16: TfrxLineView
          Top = 66.252010000000000000
          Width = 752.125984250000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 58.929190000000000000
        Top = 219.212740000000000000
        Width = 755.906000000000000000
        ReprintOnNewPage = True
        object Memo43: TfrxMemoView
          Top = 22.692950000000000000
          Width = 752.126006220000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 122.078207690000000000
          Top = 28.472480000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 363.788854620000000000
          Top = 28.472480000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 432.609962100000000000
          Top = 28.472480000000000000
          Width = 32.584106360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Top = 2.338590000000000000
          Width = 752.126470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ITENS DA PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 76.615445640000000000
          Top = 28.472480000000000000
          Width = 41.574768980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 330.582870000000000000
          Top = 28.472480000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 582.016110510000000000
          Top = 21.677180000000000000
          Width = 45.354298980000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tampo'
            'Nro lote')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 642.819295510000000000
          Top = 21.897650000000000000
          Width = 45.354298980000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Faixa'
            'Nro lote')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 700.189425510000000000
          Top = 21.897650000000000000
          Width = 45.354298980000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cola'
            'Nro lote')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 496.764100510000000000
          Top = 22.677180000000000000
          Width = 52.913358980000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Espuma'
            'Nro Lote')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Top = 28.472480000000000000
          Width = 41.574768980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 328.819110000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = PCP_DB_M_OPR_OPP
        DataSetName = 'PCP_DB_M_OPR_OPP'
        RowCount = 0
        Stretched = True
        object Shape5: TfrxShapeView
          Left = 642.268090000000000000
          Width = 52.913420000000000000
          Height = 28.724409448818900000
        end
        object Shape6: TfrxShapeView
          Left = 694.520100000000000000
          Width = 56.692950000000000000
          Height = 28.724409448818900000
        end
        object Shape7: TfrxShapeView
          Left = 468.748300000000000000
          Width = 109.606370000000000000
          Height = 28.724409448818900000
        end
        object Memo57: TfrxMemoView
          Left = 122.078207690000000000
          Top = 9.779530000000000000
          Width = 207.165430000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomeite"]'
            '[PCP_DB_M_OPR_OPP."obs_producao"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 360.788854620000000000
          Top = 9.779530000000000000
          Width = 74.518505380000000000
          Height = 15.118120000000000000
          DataField = 'int_nomecor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomecor"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 84.677180000000000000
          Top = 9.779530000000000000
          Width = 33.513034620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."id_item"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 436.732530000000000000
          Top = 9.779530000000000000
          Width = 28.461538460000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<PCP_DB_M_OPR_OPP."qtde_a_produzir"> - <PCP_DB_M_OPR_OPP."qtde_' +
              'produzida">]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo61: TfrxMemoView
          Left = 331.582870000000000000
          Top = 9.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'int_undvenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_undvenda"]')
          ParentFont = False
        end
        object Shape8: TfrxShapeView
          Left = 578.236550000000000000
          Width = 64.252010000000000000
          Height = 28.724409448818900000
        end
        object Memo46: TfrxMemoView
          Top = 9.779530000000000000
          Width = 82.646924620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '____/_____/ [ft_Ano_Colagem]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 2.478925390000000000
        Top = 302.362400000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'GroupHeader2OnBeforePrint'
        Condition = 'PCP_DB_M_OPR_OPP."int_id_grupo"'
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 5.754103080000000000
        Top = 381.732530000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object Line6: TfrxLineView
          Left = 2.307692310000000000
          Top = 2.816230770000000000
          Width = 752.125984251969000000
          Color = clBlack
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 117.165430000000000000
        Top = 449.764070000000000000
        Width = 755.906000000000000000
        object Shape9: TfrxShapeView
          Left = 2.267718970000000000
          Top = 3.779530000000000000
          Width = 748.346456690000000000
          Height = 24.566929130000000000
        end
        object Shape10: TfrxShapeView
          Left = 2.267718970000000000
          Top = 28.456710000000000000
          Width = 748.346456690000000000
          Height = 24.566929130000000000
        end
        object Shape11: TfrxShapeView
          Left = 2.267718970000000000
          Top = 53.133890000000000000
          Width = 748.346456690000000000
          Height = 24.566929130000000000
        end
        object Shape12: TfrxShapeView
          Left = 2.267718970000000000
          Top = 77.811070000000000000
          Width = 748.346456690000000000
          Height = 24.566929133858270000
        end
        object Line7: TfrxLineView
          Left = 330.346630000000000000
          Top = 3.779530000000000000
          Height = 98.267716540000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 79.574830000000000000
          Top = 3.779530000000000000
          Height = 98.267780000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 361.362400000000000000
          Top = 3.779530000000000000
          Height = 98.267716540000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 434.732530000000000000
          Top = 3.779530000000000000
          Height = 98.267716540000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 468.748300000000000000
          Top = 3.779530000000000000
          Height = 98.267716540000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 579.457020000000000000
          Top = 3.779530000000000000
          Height = 98.267716535433070000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 642.504330000000000000
          Top = 3.779530000000000000
          Height = 98.267716535433070000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 694.417750000000000000
          Top = 3.779530000000000000
          Height = 98.267716535433070000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 117.047310000000000000
          Top = 3.779530000000000000
          Height = 98.267716540000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo55: TfrxMemoView
          Left = 2.779530000000000000
          Top = 14.338590000000000000
          Width = 71.308334620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '___/____/ [ft_Ano_Colagem]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 2.779530000000000000
          Top = 39.015770000000000000
          Width = 71.308334620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '___/____/ [ft_Ano_Colagem]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 2.779530000000000000
          Top = 63.692950000000000000
          Width = 71.308334620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '___/____/ [ft_Ano_Colagem]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 3.000000000000000000
          Top = 88.370130000000000000
          Width = 71.308334620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '___/____/ [ft_Ano_Colagem]')
          ParentFont = False
        end
      end
    end
  end
  object PCP_DB_M_OPR_OPP: TfrxDBDataset
    UserName = 'PCP_DB_M_OPR_OPP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_opr=id_opr'
      'id_opr_opp=id_opr_opp'
      'id_item=id_item'
      'id_cor=id_cor'
      'id_tamanho=id_tamanho'
      'qtde_a_produzir=qtde_a_produzir'
      'qtde_produzida=qtde_produzida'
      'qtde_a_produzir_orig=qtde_a_produzir_orig'
      'id_resp_alt=id_resp_alt'
      'dta_alt=dta_alt'
      'hora_alt=hora_alt'
      'qtde_atender_opr=qtde_atender_opr'
      'qtde_atender_opr_ext=qtde_atender_opr_ext'
      'saldo_disponivel=saldo_disponivel'
      'reg_alt=reg_alt'
      'historico_alt=historico_alt'
      'motivo_alt=motivo_alt'
      'int_nomeite=int_nomeite'
      'int_undvenda=int_undvenda'
      'int_nomecor=int_nomecor'
      'int_nometam=int_nometam'
      'int_nomeresp=int_nomeresp'
      'PCP_SQ_M_OPR_OPP_SOP=PCP_SQ_M_OPR_OPP_SOP'
      'int_id_grupo=int_id_grupo'
      'int_nomegru=int_nomegru'
      'gerado_aut=gerado_aut'
      'motivo_ger_man=motivo_ger_man'
      'id_resp_man=id_resp_man'
      'dta_man=dta_man'
      'hor_man=hor_man'
      'int_nomeresp_man=int_nomeresp_man'
      'id_busca_item=id_busca_item'
      'obs_producao=obs_producao'
      'int_rastrea_espumacao=int_rastrea_espumacao'
      'int_rastrea_laminacao=int_rastrea_laminacao'
      'int_rastrea_bordadeira=int_rastrea_bordadeira'
      'int_rastrea_corte_costura=int_rastrea_corte_costura'
      'int_rastrea_colagem_tampo_alfin=int_rastrea_colagem_tampo_alfin'
      'int_rastrea_colagem_molas=int_rastrea_colagem_molas')
    DataSet = dmGeral.PCP_CD_M_OPR_OPP
    BCDToCurrency = False
    Left = 464
    Top = 112
  end
  object PCP_DB_M_OPR_OPS: TfrxDBDataset
    UserName = 'PCP_DB_M_OPR_OPS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_opr=id_opr'
      'id_opr_ops=id_opr_ops'
      'id_setor=id_setor'
      'id_item=id_item'
      'id_cor=id_cor'
      'id_tamanho=id_tamanho'
      'qtde=qtde'
      'tamanho=tamanho'
      'referencias=referencias'
      'num_lote=num_lote'
      'id_item_acabado=id_item_acabado'
      'id_cor_acabado=id_cor_acabado'
      'id_tamanho_acabado=id_tamanho_acabado'
      'int_cor=int_cor'
      'int_tamanho=int_tamanho'
      'int_undcompra=int_undcompra'
      'int_coracab=int_coracab'
      'int_tamacab=int_tamacab'
      'int_undvendaacab=int_undvendaacab'
      'PCP_SQ_M_OPR_OPS_LOT=PCP_SQ_M_OPR_OPS_LOT'
      'PCP_SQ_M_OPR_OPS_IPS=PCP_SQ_M_OPR_OPS_IPS'
      'num_lote_bordadeira=num_lote_bordadeira'
      'num_lote_tecido=num_lote_tecido'
      'num_lote_tnt=num_lote_tnt'
      'qtde_acabado=qtde_acabado'
      'num_lote_espuma=num_lote_espuma'
      'int_trs_ite=int_trs_ite'
      'int_desc_setor=int_desc_setor'
      'int_tipodesc_setor=int_tipodesc_setor'
      'int_tipo_setor=int_tipo_setor'
      'int_nomeite_acab=int_nomeite_acab'
      'int_nomeite=int_nomeite'
      'int_undvenda=int_undvenda'
      'int_cod_tipo_rast=int_cod_tipo_rast'
      'obs_producao=obs_producao'
      'int_nomegru=int_nomegru'
      'int_id_grupo_ibb=int_id_grupo_ibb')
    DataSet = dmGeral.PCP_CD_M_OPR_OPS
    BCDToCurrency = False
    Left = 459
    Top = 40
  end
  object PCP_FR_M_OPR_ITE_CCT: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42550.423348784700000000
    ReportOptions.LastChange = 42550.423348784700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   corCinza: Boolean;'
      '     '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<xCor> = '#39'False'#39') and (<xTamanho> = '#39'False'#39') then'
      '     begin'
      '       MemoC.visible := false;'
      '       MemoT.visible := false;'
      '       MasterC.visible := false;'
      '       MasterT.visible := false;'
      '         '
      
        '       MemoU.Left := MemoU.Left + MasterC.width + MasterT.width;' +
        '                  '
      
        '       MasterU.Left := MasterU.Left + MasterC.width + MasterT.wi' +
        'dth;                                                            ' +
        '      '
      
        '       MasterI.width := MasterI.width + MasterC.width + MasterT.' +
        'width;'
      '     end;'
      ''
      '   if (<xCor> = '#39'False'#39') and (<xTamanho> = '#39'True'#39') then'
      '     begin'
      '       MemoC.visible := false;'
      '       MasterC.visible := false;'
      '         '
      '       MemoU.Left := MemoU.Left + MasterC.width;  '
      '       MasterU.Left := MasterU.Left + MasterC.width;           '
      '       MasterI.width := MasterI.width + MasterC.width;  '
      '     end;'
      ''
      '   if (<xCor> = '#39'True'#39') and (<xTamanho> = '#39'False'#39') then'
      '     begin'
      '       MemoT.visible := false;'
      '       MasterT.visible := false;'
      '         '
      '       MemoU.Left := MemoU.Left + MasterT.width;           '
      '       MasterU.Left := MasterU.Left + MasterT.width;  '
      '       MasterI.width := MasterI.width + MasterT.width;'
      
        '       MemoC.Left := MemoC.Left + MemoT.width;                  ' +
        '                                     '
      
        '       MasterC.Left := MasterC.Left + MasterT.width;            ' +
        '                                            '
      '     end;              '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  mmPcpObs.Visible := false;    '
      
        '//  if trim(<PCP_DB_M_OPR_OPP."obs_producao">) = '#39#39' then        ' +
        '                   '
      
        '//     mmPcpObs.Visible := false;                               ' +
        '   '
      '  {if (corCinza = True) then'
      '    begin'
      
        '      Memo9.Color := $00E4E4E4;                                 ' +
        '                   '
      
        '      corCinza := False;                                        ' +
        '             '
      '    end'
      '  else'
      '    begin'
      
        '      Memo9.Color := clNone;                                    ' +
        '              '
      
        '      corCinza := True;                                         ' +
        '   '
      '    end; }    '
      'end;'
      ''
      'procedure GroupHeader2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                      '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  //corCinza := false;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 192
    Top = 176
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = PCP_DB_M_OPR
        DataSetName = 'PCP_DB_M_OPR'
      end
      item
        DataSet = PCP_DB_M_OPR_OPP
        DataSetName = 'PCP_DB_M_OPR_OPP'
      end>
    Variables = <
      item
        Name = ' Externa'
        Value = Null
      end
      item
        Name = 'xTamanho'
        Value = Null
      end
      item
        Name = 'xCor'
        Value = Null
      end
      item
        Name = 'VlrLiqPed'
        Value = Null
      end
      item
        Name = 'CubPed'
        Value = Null
      end
      item
        Name = 'ft_AnoCorteCostura'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 574.488560000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Assin_enorth: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000080000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Assin_enorth]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 499.667190770000000000
          Top = 3.929189990000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Impresso Em :')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 594.232363850000000000
          Top = 3.929189990000000000
          Width = 117.165276220000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] '#225's [Time]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 139.525903070000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Stretched = True
        object Memo1: TfrxMemoView
          Top = 24.236240000000000000
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 718.110700000000000000
          Top = 23.456710000000000000
          Width = -718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 718.110700000000000000
          Top = 43.252010000000000000
          Width = -718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 381.732530000000000000
          Top = 65.811070000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '<b>N'#186' de Ordem de Produ'#231#227'o :</b> [PCP_DB_M_OPR."num_lote"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 4.548760770000000000
          Top = 83.550045380000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data Emiss'#227'o :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 130.714190770000000000
          Top = 83.770515380000000000
          Width = 86.929133860000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."dta_emissao"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 65.811070000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Respons'#225'vel :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 129.944960000000000000
          Top = 66.031540000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."int_nomeres"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo13: TfrxMemoView
          Left = 76.862566150000000000
          Top = 2.451881540000000000
          Width = 400.630180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."id_empresa"] - [CAD_DB_C_PAR."emp_fantasia"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo41: TfrxMemoView
          Left = 5.831026150000000000
          Top = 2.451881540000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 4.548760770000000000
          Top = 102.627610770000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Administrativa :')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 130.714190770000000000
          Top = 102.848080770000000000
          Width = 583.494851600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_administrativa"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 34.809453080000000000
          Top = 119.550687690000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Produ'#231#227'o :')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 130.738643080000000000
          Top = 119.771157690000000000
          Width = 583.494851600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_producao"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 461.538461540000000000
          Top = 83.550045380000000000
          Width = 123.252652310000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cubagem pedidos : ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 587.692307690000000000
          Top = 83.563888460000000000
          Width = 130.006056940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CubPed]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 589.606680000000000000
          Top = 6.779530000000000000
          Width = 124.724490000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd. I  7.5-6-01  Rev. 2')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Top = 44.354360000000000000
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'RASTREABILIDADE CORTE E COSTURA - FAIXA, TAMPO LISO E BASE BOX')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 718.110700000000000000
          Top = 64.252010000000000000
          Width = -718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 75.385900000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo22: TfrxMemoView
          Top = 41.692950000000000000
          Width = 718.110236220000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          ParentFont = False
        end
        object MemoI: TfrxMemoView
          Left = 136.164787690000000000
          Top = 48.472480000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object MemoC: TfrxMemoView
          Left = 419.686504620000000000
          Top = 48.472480000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object MemoT: TfrxMemoView
          Left = 463.016080000000000000
          Top = 48.472480000000000000
          Width = 30.236178980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Tam.')
          ParentFont = False
        end
        object MemoQP: TfrxMemoView
          Left = 653.515652100000000000
          Top = 42.472480000000000000
          Width = 59.040816360000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Restante '
            'a produzir')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 20.338590000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ITENS DA PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 90.394975640000000000
          Top = 48.472480000000000000
          Width = 41.574768980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object MemoU: TfrxMemoView
          Left = 389.480520000000000000
          Top = 48.472480000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 494.535745510000000000
          Top = 41.677180000000000000
          Width = 64.251948980000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Faixinha'
            'nro lote')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 581.472820510000000000
          Top = 41.897650000000000000
          Width = 49.133828980000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Faixa'
            'nro lote')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 48.472480000000000000
          Width = 41.574768980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 482.523333850000000000
          Top = 3.000000000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Rastreado por : ')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 578.268090000000000000
          Top = 16.338590000000000000
          Width = 136.063080000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 25.322834650000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = PCP_DB_M_OPR_OPP
        DataSetName = 'PCP_DB_M_OPR_OPP'
        RowCount = 0
        Stretched = True
        object MasterI: TfrxMemoView
          Left = 136.164787690000000000
          Top = 1.779530000000000000
          Width = 248.740260000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomeite"]'
            '[PCP_DB_M_OPR_OPP."obs_producao"]'
            '')
          ParentFont = False
        end
        object MasterC: TfrxMemoView
          Left = 419.686504620000000000
          Top = 1.779530000000000000
          Width = 66.959445380000000000
          Height = 15.118120000000000000
          DataField = 'int_nomecor'
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomecor"]')
          ParentFont = False
        end
        object MasterCD: TfrxMemoView
          Left = 90.897650000000000000
          Top = 1.779530000000000000
          Width = 41.072094620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."id_item"]')
          ParentFont = False
        end
        object MasterT: TfrxMemoView
          Left = 466.795610000000000000
          Top = 8.338590000000000000
          Width = 24.548760770000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nometam"]')
          ParentFont = False
        end
        object MasterQP: TfrxMemoView
          Left = 650.079160000000000000
          Top = 1.779530000000000000
          Width = 62.477308460000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<PCP_DB_M_OPR_OPP."qtde_a_produzir"> - <PCP_DB_M_OPR_OPP."qtde_' +
              'produzida">]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object MasterU: TfrxMemoView
          Left = 389.480520000000000000
          Top = 1.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'int_undvenda'
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_undvenda"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 492.645950000000000000
          Top = 1.889765000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
        end
        object Shape2: TfrxShapeView
          Left = 566.354670000000000000
          Top = 1.889765000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
        end
        object Memo15: TfrxMemoView
          Left = 1.779530000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '____/____/ [ft_AnoCorteCostura]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 2.478925390000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupHeader2OnBeforePrint'
        Condition = 'PCP_DB_M_OPR_OPP."int_id_grupo"'
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 5.754103080000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 2.307692310000000000
          Top = 2.816230770000000000
          Width = 716.923076920000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 461.102660000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          Left = 2.307692310000000000
          Top = 35.897650000000000000
          Width = 716.976377950000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Left = 2.307692310000000000
          Top = 61.354360000000000000
          Width = 716.976377950000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Left = 2.307692310000000000
          Top = 88.031540000000000000
          Width = 716.976377950000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object PCP_FR_M_OPR_ITE: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42550.423348784700000000
    ReportOptions.LastChange = 42550.423348784700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   corCinza: Boolean;'
      '     '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<xCor> = '#39'False'#39') and (<xTamanho> = '#39'False'#39') then'
      '     begin'
      '       MemoC.visible := false;'
      '       MemoT.visible := false;'
      '       MasterC.visible := false;'
      '       MasterT.visible := false;'
      '         '
      
        '       MemoU.Left := MemoU.Left + MasterC.width + MasterT.width;' +
        '                  '
      
        '       MasterU.Left := MasterU.Left + MasterC.width + MasterT.wi' +
        'dth;                                                            ' +
        '      '
      
        '       MasterI.width := MasterI.width + MasterC.width + MasterT.' +
        'width;'
      '     end;'
      ''
      '   if (<xCor> = '#39'False'#39') and (<xTamanho> = '#39'True'#39') then'
      '     begin'
      '       MemoC.visible := false;'
      '       MasterC.visible := false;'
      '         '
      '       MemoU.Left := MemoU.Left + MasterC.width;  '
      '       MasterU.Left := MasterU.Left + MasterC.width;           '
      '       MasterI.width := MasterI.width + MasterC.width;  '
      '     end;'
      ''
      '   if (<xCor> = '#39'True'#39') and (<xTamanho> = '#39'False'#39') then'
      '     begin'
      '       MemoT.visible := false;'
      '       MasterT.visible := false;'
      '         '
      '       MemoU.Left    := MemoU.Left + MasterT.width;           '
      '       MasterU.Left  := MasterU.Left + MasterT.width;  '
      '       MasterI.width := MasterI.width + MasterT.width;'
      '       //MemoC.Left    := MemoC.Left + MemoT.width;'
      
        '       MemoC.Left    := MemoU.Left + MemoU.width + 0.10;        ' +
        '   '
      '       //MasterC.Left  := MasterC.Left + MasterT.width;'
      '       MasterC.Left  := MemoC.Left;           '
      '     end;              '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  mmPcpObs.Visible := false;    '
      
        '//  if trim(<PCP_DB_M_OPR_OPP."obs_producao">) = '#39#39' then        ' +
        '                   '
      
        '//     mmPcpObs.Visible := false;                               ' +
        '   '
      '  {if (corCinza = True) then'
      '    begin'
      
        '      Memo9.Color := $00E4E4E4;                                 ' +
        '                   '
      
        '      corCinza := False;                                        ' +
        '             '
      '    end'
      '  else'
      '    begin'
      
        '      Memo9.Color := clNone;                                    ' +
        '              '
      
        '      corCinza := True;                                         ' +
        '   '
      '    end; }    '
      'end;'
      ''
      'procedure GroupHeader2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                      '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  //corCinza := false;  '
      'end;'
      ''
      
        'procedure MemoUOnPreviewClick(Sender: TfrxView; Button: TMouseBu' +
        'tton; Shift: Integer; var Modified: Boolean);'
      'begin'
      ''
      'end;'
      ''
      
        'procedure MasterTOnPreviewClick(Sender: TfrxView; Button: TMouse' +
        'Button; Shift: Integer; var Modified: Boolean);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 320
    Top = 170
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = PCP_DB_M_OPR
        DataSetName = 'PCP_DB_M_OPR'
      end
      item
        DataSet = PCP_DB_M_OPR_OPP
        DataSetName = 'PCP_DB_M_OPR_OPP'
      end>
    Variables = <
      item
        Name = ' Externa'
        Value = Null
      end
      item
        Name = 'xTamanho'
        Value = Null
      end
      item
        Name = 'xCor'
        Value = Null
      end
      item
        Name = 'VlrLiqPed'
        Value = Null
      end
      item
        Name = 'CubPed'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Assin_enorth: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000080000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Assin_enorth]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 499.667190770000000000
          Top = 3.929189990000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Impresso Em :')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 594.232363850000000000
          Top = 3.929189990000000000
          Width = 117.165276220000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] '#225's [Time]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 116.848723070000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Stretched = True
        object Memo1: TfrxMemoView
          Top = 24.236240000000000000
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 718.110700000000000000
          Top = 23.456710000000000000
          Width = -718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 718.110700000000000000
          Top = 43.252010000000000000
          Width = -718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 381.732530000000000000
          Top = 45.811070000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '<b>N'#186' de Ordem de Produ'#231#227'o :</b> [PCP_DB_M_OPR."num_lote"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 4.548760770000000000
          Top = 63.550045380000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data Emiss'#227'o :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 130.714190770000000000
          Top = 63.770515380000000000
          Width = 86.929133860000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."dta_emissao"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.811070000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Respons'#225'vel :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 129.944960000000000000
          Top = 46.031540000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."int_nomeres"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo13: TfrxMemoView
          Left = 76.862566150000000000
          Top = 2.451881540000000000
          Width = 400.630180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."id_empresa"] - [CAD_DB_C_PAR."emp_fantasia"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo41: TfrxMemoView
          Left = 5.831026150000000000
          Top = 2.451881540000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 4.548760770000000000
          Top = 82.627610770000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Administrativa :')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 130.714190770000000000
          Top = 82.848080770000000000
          Width = 583.494851600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_administrativa"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 34.809453080000000000
          Top = 99.550687690000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Produ'#231#227'o :')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 130.738643080000000000
          Top = 99.771157690000000000
          Width = 583.494851600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_producao"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 461.538461540000000000
          Top = 63.550045380000000000
          Width = 123.252652310000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cubagem pedidos : ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 587.692307690000000000
          Top = 63.563888460000000000
          Width = 130.006056940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CubPed]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 223.207601540000000000
          Top = 64.401669990000000000
          Width = 123.252652310000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Liq. pedidos : ')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 350.130678460000000000
          Top = 63.770515380000000000
          Width = 106.159903090000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[VlrLiqPed]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 55.149660000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo22: TfrxMemoView
          Top = 22.692950000000000000
          Width = 718.110236220000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          ParentFont = False
        end
        object MemoI: TfrxMemoView
          Left = 51.164787690000000000
          Top = 28.472480000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object MemoC: TfrxMemoView
          Left = 382.686504620000000000
          Top = 28.472480000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object MemoT: TfrxMemoView
          Left = 497.016080000000000000
          Top = 28.472480000000000000
          Width = 30.236178980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Tam.')
          ParentFont = False
        end
        object MemoQP: TfrxMemoView
          Left = 653.515652100000000000
          Top = 22.472480000000000000
          Width = 59.040816360000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Restante '
            'a produzir')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 2.338590000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ITENS DA PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 1.615445640000000000
          Top = 28.472480000000000000
          Width = 45.354298980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object MemoU: TfrxMemoView
          Left = 352.480520000000000000
          Top = 28.472480000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          OnPreviewClick = 'MemoUOnPreviewClick'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17.763774650000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = PCP_DB_M_OPR_OPP
        DataSetName = 'PCP_DB_M_OPR_OPP'
        RowCount = 0
        Stretched = True
        object MasterI: TfrxMemoView
          Left = 51.164787690000000000
          Top = 0.779530000000000000
          Width = 297.874150000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomeite"]'
            '[PCP_DB_M_OPR_OPP."obs_producao"]'
            '')
          ParentFont = False
        end
        object MasterC: TfrxMemoView
          Left = 382.686504620000000000
          Top = 0.779530000000000000
          Width = 85.857095380000000000
          Height = 15.118120000000000000
          DataField = 'int_nomecor'
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomecor"]')
          ParentFont = False
        end
        object MasterCD: TfrxMemoView
          Top = 0.779530000000000000
          Width = 44.851624620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."id_item"]')
          ParentFont = False
        end
        object MasterT: TfrxMemoView
          Left = 500.795610000000000000
          Top = 0.779530000000000000
          Width = 85.021240770000000000
          Height = 15.118120000000000000
          OnPreviewClick = 'MasterTOnPreviewClick'
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nometam"]')
          ParentFont = False
        end
        object MasterQP: TfrxMemoView
          Left = 650.079160000000000000
          Top = 0.779530000000000000
          Width = 62.477308460000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<PCP_DB_M_OPR_OPP."qtde_a_produzir"> - <PCP_DB_M_OPR_OPP."qtde_' +
              'produzida">]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object MasterU: TfrxMemoView
          Left = 352.480520000000000000
          Top = 0.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'int_undvenda'
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_undvenda"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 2.478925390000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupHeader2OnBeforePrint'
        Condition = 'PCP_DB_M_OPR_OPP."int_id_grupo"'
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 5.754103080000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 2.307692310000000000
          Top = 2.816230770000000000
          Width = 716.923076920000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object PCP_FR_M_OPR_ITE_BOR: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42550.423348784700000000
    ReportOptions.LastChange = 42550.423348784700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   corCinza: Boolean;'
      '     '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<xCor> = '#39'False'#39') and (<xTamanho> = '#39'False'#39') then'
      '     begin'
      '       MemoC.visible := false;'
      '       MemoT.visible := false;'
      '       MasterC.visible := false;'
      '       MasterT.visible := false;'
      '         '
      
        '       MemoU.Left := MemoU.Left + MasterC.width + MasterT.width;' +
        '                  '
      
        '       MasterU.Left := MasterU.Left + MasterC.width + MasterT.wi' +
        'dth;                                                            ' +
        '      '
      
        '       MasterI.width := MasterI.width + MasterC.width + MasterT.' +
        'width;'
      '     end;'
      ''
      '   if (<xCor> = '#39'False'#39') and (<xTamanho> = '#39'True'#39') then'
      '     begin'
      '       MemoC.visible := false;'
      '       MasterC.visible := false;'
      '         '
      '       MemoU.Left := MemoU.Left + MasterC.width;  '
      '       MasterU.Left := MasterU.Left + MasterC.width;           '
      '       MasterI.width := MasterI.width + MasterC.width;  '
      '     end;'
      ''
      '   if (<xCor> = '#39'True'#39') and (<xTamanho> = '#39'False'#39') then'
      '     begin'
      '       MemoT.visible := false;'
      '       MasterT.visible := false;'
      '         '
      '       MemoU.Left := MemoU.Left + MasterT.width;           '
      '       MasterU.Left := MasterU.Left + MasterT.width;  '
      '       MasterI.width := MasterI.width + MasterT.width;'
      
        '       MemoC.Left := MemoC.Left + MemoT.width;                  ' +
        '                                     '
      
        '       MasterC.Left := MasterC.Left + MasterT.width;            ' +
        '                                            '
      '     end;              '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  mmPcpObs.Visible := false;    '
      
        '//  if trim(<PCP_DB_M_OPR_OPP."obs_producao">) = '#39#39' then        ' +
        '                   '
      
        '//     mmPcpObs.Visible := false;                               ' +
        '   '
      '  {if (corCinza = True) then'
      '    begin'
      
        '      Memo9.Color := $00E4E4E4;                                 ' +
        '                   '
      
        '      corCinza := False;                                        ' +
        '             '
      '    end'
      '  else'
      '    begin'
      
        '      Memo9.Color := clNone;                                    ' +
        '              '
      
        '      corCinza := True;                                         ' +
        '   '
      '    end; }    '
      'end;'
      ''
      'procedure GroupHeader2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                      '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  //corCinza := false;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 137
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = PCP_DB_M_OPR
        DataSetName = 'PCP_DB_M_OPR'
      end
      item
        DataSet = PCP_DB_M_OPR_OPP
        DataSetName = 'PCP_DB_M_OPR_OPP'
      end>
    Variables = <
      item
        Name = ' Externa'
        Value = Null
      end
      item
        Name = 'xTamanho'
        Value = Null
      end
      item
        Name = 'xCor'
        Value = Null
      end
      item
        Name = 'VlrLiqPed'
        Value = ''
      end
      item
        Name = 'CubPed'
        Value = ''
      end
      item
        Name = 'ft_Ano_Bordadeira'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 631.181510000000000000
        Width = 1046.929810000000000000
        object Memo25: TfrxMemoView
          Left = 468.661720000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Assin_enorth: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000080000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Assin_enorth]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 828.486300770000000000
          Top = 3.929189990000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Impresso Em :')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 923.051473850000000000
          Top = 3.929189990000000000
          Width = 117.165276220000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] '#225's [Time]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 128.187313070000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Stretched = True
        object Memo1: TfrxMemoView
          Top = 25.236240000000000000
          Width = 1039.370286220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1039.370750000000000000
          Top = 23.456710000000000000
          Width = -1039.370286220000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 1039.370750000000000000
          Top = 43.252010000000000000
          Width = -1039.370286220000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 699.740570000000000000
          Top = 69.811070000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '<b>N'#186' de Ordem de Produ'#231#227'o :</b> [PCP_DB_M_OPR."num_lote"]'
            '')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 4.548760770000000000
          Top = 69.550045380000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data Emiss'#227'o :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 130.714190770000000000
          Top = 69.770515380000000000
          Width = 86.929133860000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."dta_emissao"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 223.094620000000000000
          Top = 69.811070000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Respons'#225'vel :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 296.346630000000000000
          Top = 70.031540000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."int_nomeres"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo13: TfrxMemoView
          Left = 76.862566150000000000
          Top = 2.451881540000000000
          Width = 400.630180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."id_empresa"] - [CAD_DB_C_PAR."emp_fantasia"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo41: TfrxMemoView
          Left = 5.831026150000000000
          Top = 2.451881540000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 4.548760770000000000
          Top = 86.627610770000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Administrativa :')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 130.714190770000000000
          Top = 86.848080770000000000
          Width = 908.534431600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_administrativa"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 34.809453080000000000
          Top = 103.550687690000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Produ'#231#227'o :')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 130.738643080000000000
          Top = 103.771157690000000000
          Width = 908.534431600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_producao"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 457.554231540000000000
          Top = 68.652395380000000000
          Width = 108.134532310000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cubagem pedidos : ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 568.589957690000000000
          Top = 68.666238460000000000
          Width = 122.446996940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CubPed]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 45.354360000000000000
          Width = 1039.370078740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'RASTREABILIDADE BORDADEIRA')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 1039.370750000000000000
          Top = 64.252010000000000000
          Width = -1039.370286220000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo29: TfrxMemoView
          Left = 913.646260000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd. I  7.5-4-01  Rev. 1')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 55.149660000000000000
        Top = 207.874150000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Memo22: TfrxMemoView
          Top = 22.692950000000000000
          Width = 1043.149816220000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          ParentFont = False
        end
        object MemoI: TfrxMemoView
          Left = 147.282907690000000000
          Top = 28.472480000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object MemoC: TfrxMemoView
          Left = 428.174754620000000000
          Top = 26.252010000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object MemoT: TfrxMemoView
          Left = 407.913730000000000000
          Top = 20.913420000000000000
          Width = 15.118058980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Tam.')
          ParentFont = False
        end
        object MemoQP: TfrxMemoView
          Left = 573.161292100000000000
          Top = 28.141775000000000000
          Width = 59.040816360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'A produzir')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 2.338590000000000000
          Width = 1043.150280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ITENS DA PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 106.292625640000000000
          Top = 28.472480000000000000
          Width = 37.795238980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object MemoU: TfrxMemoView
          Left = 452.457020000000000000
          Top = 28.472480000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 768.480860510000000000
          Top = 21.677180000000000000
          Width = 45.354298980000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tecido'
            'Nro Lote')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 844.055690510000000000
          Top = 21.897650000000000000
          Width = 45.354298980000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Espuma'
            'Nro Lote')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 916.536055510000000000
          Top = 21.897650000000000000
          Width = 45.354298980000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TNT nro '
            'do Lote')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 979.236829490000000000
          Top = 21.897650000000000000
          Width = 60.472418980000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Bordado'
            'Nro do Lote')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 2.559060000000000000
          Top = 28.472480000000000000
          Width = 45.354298980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 651.772110000000000000
          Top = 22.677180000000000000
          Width = 83.149598980000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade'
            'Tampo | Faixa')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 523.031850000000000000
          Top = 24.566945000000000000
          Width = 43.922696360000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo do '
            'Tecido')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 25.322834650000000000
        Top = 313.700990000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = PCP_DB_M_OPR_OPP
        DataSetName = 'PCP_DB_M_OPR_OPP'
        RowCount = 0
        Stretched = True
        object MasterI: TfrxMemoView
          Left = 147.282907690000000000
          Top = 2.779530000000000000
          Width = 301.653680000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomeite"]'
            '[PCP_DB_M_OPR_OPP."obs_producao"]'
            '')
          ParentFont = False
        end
        object MasterC: TfrxMemoView
          Left = 498.663004620000000000
          Top = 2.779530000000000000
          Width = 82.077565380000000000
          Height = 15.118120000000000000
          DataField = 'int_nomecor'
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomecor"]')
          ParentFont = False
        end
        object MasterCD: TfrxMemoView
          Left = 103.015770000000000000
          Top = 2.779530000000000000
          Width = 41.072094620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."id_item"]')
          ParentFont = False
        end
        object MasterT: TfrxMemoView
          Left = 478.401980000000000000
          Top = 5.338590000000000000
          Width = 24.548760770000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nometam"]')
          ParentFont = False
        end
        object MasterQP: TfrxMemoView
          Left = 592.401980000000000000
          Top = 2.779530000000000000
          Width = 39.800128460000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<PCP_DB_M_OPR_OPP."qtde_a_produzir"> - <PCP_DB_M_OPR_OPP."qtde_' +
              'produzida">]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object MasterU: TfrxMemoView
          Left = 452.457020000000000000
          Top = 2.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'int_undvenda'
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_undvenda"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 828.937540000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
        end
        object Shape3: TfrxShapeView
          Left = 904.748610000000000000
          Top = 1.000000000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
        end
        object Shape4: TfrxShapeView
          Left = 977.236829490000000000
          Top = 1.000000000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
        end
        object Memo19: TfrxMemoView
          Left = 2.559060000000000000
          Top = 2.779530000000000000
          Width = 97.765044620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '_____/______/ [ft_Ano_Bordadeira]')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Left = 636.653990000000000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
        end
        object Shape6: TfrxShapeView
          Left = 697.126470000000000000
          Top = 1.000000000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
        end
        object Shape1: TfrxShapeView
          Left = 753.362710000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 2.478925390000000000
        Top = 287.244280000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'GroupHeader2OnBeforePrint'
        Condition = 'PCP_DB_M_OPR_OPP."int_id_grupo"'
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 5.754103080000000000
        Top = 362.834880000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          Left = 2.307692310000000000
          Top = 2.816230770000000000
          Width = 1041.962656920000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 177.637910000000000000
        Top = 430.866420000000000000
        Width = 1046.929810000000000000
        object Shape7: TfrxShapeView
          Top = 25.236240000000000000
          Width = 1046.173230790000000000
          Height = 22.677180000000000000
        end
        object Shape14: TfrxShapeView
          Top = 3.000000000000000000
          Width = 1046.173230790000000000
          Height = 22.677180000000000000
        end
        object Memo39: TfrxMemoView
          Left = 0.220470000000000000
          Top = 8.559060000000000000
          Width = 97.765044620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '_____/______/ [ft_Ano_Bordadeira]')
          ParentFont = False
        end
        object Shape8: TfrxShapeView
          Top = 70.370130000000000000
          Width = 1046.173230790000000000
          Height = 22.677180000000000000
        end
        object Shape9: TfrxShapeView
          Top = 48.133890000000000000
          Width = 1046.173230790000000000
          Height = 22.677180000000000000
        end
        object Shape10: TfrxShapeView
          Top = 93.488250000000000000
          Width = 1046.173230790000000000
          Height = 22.677180000000000000
        end
        object Shape11: TfrxShapeView
          Top = 138.622140000000000000
          Width = 1046.173230790000000000
          Height = 22.677180000000000000
        end
        object Shape12: TfrxShapeView
          Top = 116.385900000000000000
          Width = 1046.173230790000000000
          Height = 22.677180000000000000
        end
        object Line8: TfrxLineView
          Left = 99.811070000000000000
          Top = 2.779530000000000000
          Height = 158.740260000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 493.472790000000000000
          Top = 2.779530000000000000
          Height = 158.740260000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 638.213050000000000000
          Top = 2.779530000000000000
          Height = 158.740157480000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 697.567410000000000000
          Top = 2.779530000000000000
          Height = 158.740157480000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 754.244590000000000000
          Top = 2.779530000000000000
          Height = 158.740157480000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 828.953310000000000000
          Top = 2.779530000000000000
          Height = 158.740157480000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 905.866730000000000000
          Top = 2.779530000000000000
          Height = 158.740157480000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 974.559680000000000000
          Top = 2.779530000000000000
          Height = 158.740157480000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 586.386210000000000000
          Top = 3.779530000000000000
          Height = 158.740260000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo30: TfrxMemoView
          Top = 31.236240000000000000
          Width = 97.765044620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '_____/______/ [ft_Ano_Bordadeira]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Top = 53.913420000000000000
          Width = 97.765044620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '_____/______/ [ft_Ano_Bordadeira]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Top = 76.590600000000000000
          Width = 97.765044620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '_____/______/ [ft_Ano_Bordadeira]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Top = 100.267780000000000000
          Width = 97.765044620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '_____/______/ [ft_Ano_Bordadeira]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Top = 121.944960000000000000
          Width = 97.765044620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '_____/______/ [ft_Ano_Bordadeira]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Top = 144.622140000000000000
          Width = 97.765044620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '_____/______/ [ft_Ano_Bordadeira]')
          ParentFont = False
        end
      end
    end
  end
  object PCP_FR_M_OPR_ITE_MTB: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42550.423348784700000000
    ReportOptions.LastChange = 42550.423348784700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   corCinza: Boolean;'
      '     '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<xCor> = '#39'False'#39') and (<xTamanho> = '#39'False'#39') then'
      '     begin'
      '       MemoC.visible := false;'
      '       MemoT.visible := false;'
      '       MasterC.visible := false;'
      '       MasterT.visible := false;'
      '         '
      
        '       MemoU.Left := MemoU.Left + MasterC.width + MasterT.width;' +
        '                  '
      
        '       MasterU.Left := MasterU.Left + MasterC.width + MasterT.wi' +
        'dth;                                                            ' +
        '      '
      
        '       MasterI.width := MasterI.width + MasterC.width + MasterT.' +
        'width;'
      '     end;'
      ''
      '   if (<xCor> = '#39'False'#39') and (<xTamanho> = '#39'True'#39') then'
      '     begin'
      '       MemoC.visible := false;'
      '       MasterC.visible := false;'
      '         '
      '       MemoU.Left := MemoU.Left + MasterC.width;  '
      '       MasterU.Left := MasterU.Left + MasterC.width;           '
      '       MasterI.width := MasterI.width + MasterC.width;  '
      '     end;'
      ''
      '   if (<xCor> = '#39'True'#39') and (<xTamanho> = '#39'False'#39') then'
      '     begin'
      '       MemoT.visible := false;'
      '       MasterT.visible := false;'
      '         '
      '       MemoU.Left := MemoU.Left + MasterT.width;           '
      '       MasterU.Left := MasterU.Left + MasterT.width;  '
      '       MasterI.width := MasterI.width + MasterT.width;'
      
        '       MemoC.Left := MemoC.Left + MemoT.width;                  ' +
        '                                     '
      
        '       MasterC.Left := MasterC.Left + MasterT.width;            ' +
        '                                            '
      '     end;              '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  mmPcpObs.Visible := false;    '
      
        '//  if trim(<PCP_DB_M_OPR_OPP."obs_producao">) = '#39#39' then        ' +
        '                   '
      
        '//     mmPcpObs.Visible := false;                               ' +
        '   '
      '  {if (corCinza = True) then'
      '    begin'
      
        '      Memo9.Color := $00E4E4E4;                                 ' +
        '                   '
      
        '      corCinza := False;                                        ' +
        '             '
      '    end'
      '  else'
      '    begin'
      
        '      Memo9.Color := clNone;                                    ' +
        '              '
      
        '      corCinza := True;                                         ' +
        '   '
      '    end; }    '
      'end;'
      ''
      'procedure GroupHeader2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                      '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  //corCinza := false;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 472
    Top = 173
    Datasets = <
      item
        DataSet = dmGeral.CAD_DB_R_PAR
        DataSetName = 'CAD_DB_C_PAR'
      end
      item
        DataSet = PCP_DB_M_OPR
        DataSetName = 'PCP_DB_M_OPR'
      end
      item
        DataSet = PCP_DB_M_OPR_OPP
        DataSetName = 'PCP_DB_M_OPR_OPP'
      end>
    Variables = <
      item
        Name = ' Externa'
        Value = Null
      end
      item
        Name = 'xTamanho'
        Value = Null
      end
      item
        Name = 'xCor'
        Value = Null
      end
      item
        Name = 'VlrLiqPed'
        Value = ''
      end
      item
        Name = 'CubPed'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 442.205010000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Assin_enorth: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000080000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Assin_enorth]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 499.667190770000000000
          Top = 3.929189990000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Impresso Em :')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 594.232363850000000000
          Top = 3.929189990000000000
          Width = 117.165276220000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] '#225's [Time]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 139.525903070000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Stretched = True
        object Memo1: TfrxMemoView
          Top = 26.236240000000000000
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 718.110700000000000000
          Top = 23.456710000000000000
          Width = -718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 718.110700000000000000
          Top = 43.252010000000000000
          Width = -718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 381.732530000000000000
          Top = 66.811070000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '<b>N'#186' de Ordem de Produ'#231#227'o :</b> [PCP_DB_M_OPR."num_lote"]'
            '')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 4.548760770000000000
          Top = 84.550045380000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data Emiss'#227'o :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 130.714190770000000000
          Top = 84.770515380000000000
          Width = 86.929133860000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."dta_emissao"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 66.811070000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Respons'#225'vel :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 129.944960000000000000
          Top = 67.031540000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."int_nomeres"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo13: TfrxMemoView
          Left = 76.862566150000000000
          Top = 2.451881540000000000
          Width = 400.630180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CAD_DB_C_PAR."id_empresa"] - [CAD_DB_C_PAR."emp_fantasia"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo41: TfrxMemoView
          Left = 5.831026150000000000
          Top = 2.451881540000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa :')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 4.548760770000000000
          Top = 103.627610770000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Administrativa :')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 130.714190770000000000
          Top = 103.848080770000000000
          Width = 583.494851600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_administrativa"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 34.809453080000000000
          Top = 120.550687690000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Obs. Produ'#231#227'o :')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 130.738643080000000000
          Top = 120.771157690000000000
          Width = 583.494851600000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR."obs_producao"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 461.538461540000000000
          Top = 84.550045380000000000
          Width = 123.252652310000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cubagem pedidos : ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 587.692307690000000000
          Top = 84.563888460000000000
          Width = 130.006056940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[CubPed]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 223.207601540000000000
          Top = 85.401669990000000000
          Width = 123.252652310000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Liq. pedidos : ')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 350.130678460000000000
          Top = 84.770515380000000000
          Width = 106.159903090000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[VlrLiqPed]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Top = 45.354360000000000000
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'MONTAGEM DE CAIXA BOX')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 718.110700000000000000
          Top = 63.252010000000000000
          Width = -718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 55.149660000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          Top = 22.692950000000000000
          Width = 718.110236220000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14342874
          HAlign = haCenter
          ParentFont = False
        end
        object MemoI: TfrxMemoView
          Left = 51.164787690000000000
          Top = 28.472480000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object MemoC: TfrxMemoView
          Left = 334.686504620000000000
          Top = 28.472480000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object MemoT: TfrxMemoView
          Left = 378.016080000000000000
          Top = 28.472480000000000000
          Width = 30.236178980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Tam.')
          ParentFont = False
        end
        object MemoQP: TfrxMemoView
          Left = 653.515652100000000000
          Top = 22.472480000000000000
          Width = 59.040816360000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Restante '
            'a produzir')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 2.338590000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = 14342874
          HAlign = haCenter
          Memo.UTF8W = (
            'ITENS DA PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 1.615445640000000000
          Top = 28.472480000000000000
          Width = 45.354298980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object MemoU: TfrxMemoView
          Left = 304.480520000000000000
          Top = 28.472480000000000000
          Width = 26.456648980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 25.322834645669290000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = PCP_DB_M_OPR_OPP
        DataSetName = 'PCP_DB_M_OPR_OPP'
        RowCount = 0
        Stretched = True
        object MasterI: TfrxMemoView
          Left = 51.164787690000000000
          Top = 0.779530000000000000
          Width = 248.740260000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomeite"]')
          ParentFont = False
        end
        object MasterC: TfrxMemoView
          Left = 334.686504620000000000
          Top = 0.779530000000000000
          Width = 66.959445380000000000
          Height = 15.118120000000000000
          DataField = 'int_nomecor'
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nomecor"]')
          ParentFont = False
        end
        object MasterCD: TfrxMemoView
          Top = 0.779530000000000000
          Width = 44.851624620000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."id_item"]')
          ParentFont = False
        end
        object MasterT: TfrxMemoView
          Left = 381.795610000000000000
          Top = 8.338590000000000000
          Width = 24.548760770000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_nometam"]')
          ParentFont = False
        end
        object MasterQP: TfrxMemoView
          Left = 650.079160000000000000
          Top = 0.779530000000000000
          Width = 62.477308460000000000
          Height = 15.118120000000000000
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<PCP_DB_M_OPR_OPP."qtde_a_produzir"> - <PCP_DB_M_OPR_OPP."qtde_' +
              'produzida">]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object MasterU: TfrxMemoView
          Left = 304.480520000000000000
          Top = 0.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'int_undvenda'
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."int_undvenda"]')
          ParentFont = False
        end
        object PCP_DB_M_OPR_OPPobs_producao: TfrxMemoView
          Left = 50.333333330000000000
          Top = 16.782003330000000000
          Width = 250.126160000000000000
          Height = 7.564316670000000000
          StretchMode = smMaxHeight
          DataField = 'obs_producao'
          DataSet = PCP_DB_M_OPR_OPP
          DataSetName = 'PCP_DB_M_OPR_OPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[PCP_DB_M_OPR_OPP."obs_producao"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 2.478925390000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupHeader2OnBeforePrint'
        Condition = 'PCP_DB_M_OPR_OPP."int_id_grupo"'
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 5.754103080000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 2.307692310000000000
          Top = 2.816230770000000000
          Width = 716.923076920000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
end
