object FAT_FM_M_MDF: TFAT_FM_M_MDF
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 563
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 709
    Height = 30
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'MDFe'
    Color = 3618615
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = False
    ExplicitWidth = 56
  end
  object pnlDireita: TPanel
    Left = 0
    Top = 30
    Width = 709
    Height = 533
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label97: TLabel
      Left = 6
      Top = 9
      Width = 695
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Romaneio'
      Color = 14342874
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object lblChave: TLabel
      Left = 7
      Top = 121
      Width = 37
      Height = 13
      Caption = 'Chave :'
    end
    object lblAberto: TLabel
      Left = 32
      Top = 94
      Width = 52
      Height = 13
      Caption = 'Em aberto'
    end
    object Label5: TLabel
      Left = 117
      Top = 94
      Width = 38
      Height = 13
      Caption = 'Gerado'
    end
    object Label6: TLabel
      Left = 274
      Top = 94
      Width = 54
      Height = 13
      Caption = 'Cancelado'
    end
    object Label1: TLabel
      Left = 188
      Top = 94
      Width = 52
      Height = 13
      Caption = 'Encerrado'
    end
    object btnStatusServ: TButton
      Left = 172
      Top = 197
      Width = 163
      Height = 25
      Caption = 'Status Servi'#231'o'
      TabOrder = 0
      OnClick = btnStatusServClick
    end
    object btnGerarMDFe: TButton
      Left = 642
      Top = 280
      Width = 47
      Height = 25
      Caption = 'Gerar MDFe'
      TabOrder = 1
      Visible = False
      OnClick = btnGerarMDFeClick
    end
    object btnGerarPDF: TButton
      Left = 6
      Top = 170
      Width = 163
      Height = 25
      Caption = 'Gerar PDF'
      TabOrder = 3
      OnClick = btnGerarPDFClick
    end
    object btnCriarEnviar: TButton
      Left = 6
      Top = 143
      Width = 163
      Height = 25
      Caption = 'Gerar MDFe'
      TabOrder = 2
      OnClick = btnCriarEnviarClick
    end
    object btnConsultarChave: TButton
      Left = 503
      Top = 170
      Width = 163
      Height = 25
      Caption = 'Consultar pela Chave'
      TabOrder = 4
      OnClick = btnConsultarChaveClick
    end
    object btnGerarPDFEvento: TButton
      Left = 338
      Top = 170
      Width = 163
      Height = 25
      Caption = 'Gerar PDF Evento'
      TabOrder = 5
      OnClick = btnGerarPDFEventoClick
    end
    object btnImprimirEvento: TButton
      Left = 6
      Top = 197
      Width = 163
      Height = 25
      Caption = 'Imprimir Evento'
      TabOrder = 7
      OnClick = btnImprimirEventoClick
    end
    object btnImprimir: TButton
      Left = 172
      Top = 143
      Width = 163
      Height = 25
      Caption = 'Imprimir DAMDFe'
      TabOrder = 6
      OnClick = btnImprimirClick
    end
    object PageControl2: TPageControl
      Left = 7
      Top = 232
      Width = 699
      Height = 273
      ActivePage = TabSheet5
      TabOrder = 8
      object TabSheet5: TTabSheet
        Caption = 'Respostas'
        object MemoResp: TMemo
          Left = 0
          Top = 0
          Width = 691
          Height = 245
          Align = alClient
          TabOrder = 0
          OnChange = MemoRespChange
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'XML Resposta'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object WBResposta: TWebBrowser
          Left = 0
          Top = 0
          Width = 691
          Height = 245
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 548
          ExplicitHeight = 364
          ControlData = {
            4C0000006B470000521900000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Log'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object memoLog: TMemo
          Left = 0
          Top = 0
          Width = 691
          Height = 245
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'MDFe'
        ImageIndex = 3
        object trvwMDFe: TTreeView
          Left = 0
          Top = 0
          Width = 691
          Height = 245
          Align = alClient
          Indent = 19
          TabOrder = 0
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Retorno Completo WS'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object memoRespWS: TMemo
          Left = 0
          Top = 0
          Width = 691
          Height = 245
          Align = alClient
          TabOrder = 0
        end
      end
      object Dados: TTabSheet
        Caption = 'Dados'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object MemoDados: TMemo
          Left = 0
          Top = 0
          Width = 691
          Height = 245
          Align = alClient
          TabOrder = 0
        end
      end
    end
    object btnCancelamento: TButton
      Left = 172
      Top = 170
      Width = 163
      Height = 25
      Caption = 'Cancelamento'
      TabOrder = 9
      OnClick = btnCancelamentoClick
    end
    object txtAmbiente: TEdit
      Left = 0
      Top = 511
      Width = 709
      Height = 22
      TabStop = False
      Align = alBottom
      Alignment = taCenter
      BorderStyle = bsNone
      Color = clWhite
      ReadOnly = True
      TabOrder = 10
    end
    object grdMDFe: TwwDBGrid
      Left = 7
      Top = 36
      Width = 694
      Height = 56
      Selected.Strings = (
        'id_romaneio'#9'10'#9'Romaneio'#9#9
        'mdf_numero'#9'10'#9'N'#250'mero'#9#9
        'dta_emissao'#9'10'#9'Emiss'#227'o'#9#9
        'int_nomemta'#9'61'#9'Motorista'#9#9
        'int_desctipo'#9'15'#9'Tipo'#9#9
        'id_placa'#9'11'#9'Placa'#9#9
        'status'#9'10'#9'status'#9#9
        'canc_motivo'#9'100'#9'canc_motivo'#9#9
        'canc_data'#9'10'#9'canc_data'#9#9
        'canc_usuario'#9'11'#9'canc_usuario'#9#9
        'cancelado'#9'8'#9'cancelado'#9#9
        'FAT_SQ_M_ROM_PER'#9'10'#9'FAT_SQ_M_ROM_PER'#9'F'#9
        'total_notas'#9'19'#9'total_notas'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = FAT_FM_M_ROM.dso
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      PopupMenu = pmApoio
      TabOrder = 11
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = grdMDFeCalcCellColors
    end
    object txtChave: TDBEdit
      Left = 49
      Top = 117
      Width = 652
      Height = 21
      TabStop = False
      Color = cl3DLight
      DataField = 'chave_mdf'
      DataSource = FAT_FM_M_ROM.dso
      ReadOnly = True
      TabOrder = 12
    end
    object pnlAberto: TPanel
      Left = 16
      Top = 94
      Width = 13
      Height = 13
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 13
    end
    object Panel4: TPanel
      Left = 100
      Top = 94
      Width = 13
      Height = 13
      BevelOuter = bvNone
      Color = clGreen
      ParentBackground = False
      TabOrder = 14
    end
    object Panel5: TPanel
      Left = 258
      Top = 94
      Width = 13
      Height = 13
      BevelOuter = bvNone
      Color = clRed
      ParentBackground = False
      TabOrder = 15
    end
    object btnConsultaNaoEnc: TButton
      Left = 338
      Top = 143
      Width = 163
      Height = 25
      Caption = 'Consultar N'#227'o encerrados'
      TabOrder = 16
      OnClick = btnConsultaNaoEncClick
    end
    object btnEncerrar: TButton
      Left = 503
      Top = 143
      Width = 163
      Height = 25
      Caption = 'Encerramento'
      TabOrder = 17
      OnClick = btnEncerrarClick
    end
    object Panel1: TPanel
      Left = 171
      Top = 94
      Width = 13
      Height = 13
      BevelOuter = bvNone
      Color = clNavy
      ParentBackground = False
      TabOrder = 19
    end
    object BitBtn1: TBitBtn
      Left = 503
      Top = 196
      Width = 163
      Height = 26
      Caption = 'Encerrar sem xml'
      TabOrder = 21
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 503
      Top = 223
      Width = 163
      Height = 26
      Caption = 'Adicionar protocolo ao XML'
      TabOrder = 20
      WordWrap = True
      OnClick = BitBtn2Click
    end
    object Button1: TButton
      Left = 338
      Top = 197
      Width = 163
      Height = 25
      Caption = 'Consultar pelo XML'
      TabOrder = 18
      OnClick = Button1Click
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 88
    Top = 392
  end
  object DanfeMfd: TACBrMDFeDAMDFEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    ACBrMDFe = MDFE
    ImprimeHoraSaida = False
    TipoDAMDFe = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    Encerrado = False
    ImprimeDadosExtras = [deValorTotal, deRelacaoDFe]
    ExibirMunicipioDescarregamento = False
    SelecionaImpressora = False
    EspessuraBorda = 1
    Left = 338
    Top = 389
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 383
    Top = 341
  end
  object MDFE: TACBrMDFe
    MAIL = ACBrMail1
    OnStatusChange = MDFEStatusChange
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.RetirarAcentos = False
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DAMDFE = DanfeMfd
    Left = 482
    Top = 353
  end
  object pmApoio: TPopupMenu
    Left = 578
    Top = 326
    object btnFaturarAposXML: TMenuItem
      Caption = 'Finalizar p'#243's XML'
      OnClick = btnFaturarAposXMLClick
    end
  end
end
