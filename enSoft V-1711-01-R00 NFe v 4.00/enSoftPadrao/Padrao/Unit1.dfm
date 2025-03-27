object frmNFCe: TfrmNFCe
  Left = 0
  Top = 0
  Caption = 'frmNFCe'
  ClientHeight = 615
  ClientWidth = 951
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 615
    Align = alLeft
    TabOrder = 0
    object lblColaborador: TLabel
      Left = 18
      Top = 511
      Width = 261
      Height = 13
      Cursor = crHandPoint
      Caption = 'Veja a lista de Colaboradores do Projeto ACBr'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPatrocinador: TLabel
      Left = 16
      Top = 535
      Width = 265
      Height = 13
      Cursor = crHandPoint
      Caption = 'Veja a lista de Patrocinadores do Projeto ACBr'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDoar1: TLabel
      Left = 21
      Top = 559
      Width = 255
      Height = 13
      Cursor = crHandPoint
      Caption = 'Para se tornar Patrocinador do Projeto ACBr,'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDoar2: TLabel
      Left = 117
      Top = 575
      Width = 63
      Height = 13
      Cursor = crHandPoint
      Caption = 'clique aqui'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnSalvarConfig: TBitBtn
      Left = 70
      Top = 480
      Width = 153
      Height = 25
      Caption = 'Salvar Configura'#231#245'es'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnSalvarConfigClick
    end
    object PageControl1: TPageControl
      Left = 8
      Top = 9
      Width = 283
      Height = 465
      ActivePage = TabSheet1
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Configura'#231#245'es'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PageControl4: TPageControl
          Left = 0
          Top = 0
          Width = 275
          Height = 437
          ActivePage = TabSheet4
          Align = alClient
          MultiLine = True
          TabOrder = 0
          object TabSheet3: TTabSheet
            Caption = 'Certificado'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label43: TLabel
              Left = 9
              Top = 8
              Width = 76
              Height = 13
              Caption = 'Tipo de Emiss'#227'o'
            end
            object Label44: TLabel
              Left = 9
              Top = 59
              Width = 225
              Height = 65
              Caption = 
                'Informe o n'#250'mero de s'#233'rie do certificado'#13#10'Dispon'#237'vel no Internet' +
                ' Explorer no menu'#13#10'Ferramentas - Op'#231#245'es da Internet - Conte'#250'do '#13 +
                #10'Certificados - Exibir - Detalhes - '#13#10'N'#250'mero do certificado'
              Visible = False
            end
            object gbCertificado: TGroupBox
              Left = 2
              Top = 130
              Width = 265
              Height = 144
              Caption = 'Certificado'
              TabOrder = 0
              object Label1: TLabel
                Left = 8
                Top = 16
                Width = 41
                Height = 13
                Caption = 'Caminho'
              end
              object Label2: TLabel
                Left = 8
                Top = 56
                Width = 30
                Height = 13
                Caption = 'Senha'
              end
              object sbtnCaminhoCert: TSpeedButton
                Left = 235
                Top = 32
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnCaminhoCertClick
              end
              object Label25: TLabel
                Left = 8
                Top = 96
                Width = 79
                Height = 13
                Caption = 'N'#250'mero de S'#233'rie'
              end
              object sbtnGetCert: TSpeedButton
                Left = 235
                Top = 110
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnGetCertClick
              end
              object edtCaminho: TEdit
                Left = 8
                Top = 32
                Width = 225
                Height = 21
                TabOrder = 0
              end
              object edtSenha: TEdit
                Left = 8
                Top = 72
                Width = 249
                Height = 21
                PasswordChar = '*'
                TabOrder = 1
              end
              object edtNumSerie: TEdit
                Left = 8
                Top = 112
                Width = 225
                Height = 21
                TabOrder = 2
              end
            end
            object cbTipoEmissao: TComboBox
              Left = 9
              Top = 27
              Width = 238
              Height = 21
              Style = csDropDownList
              TabOrder = 1
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Geral'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox3: TGroupBox
              Left = 0
              Top = 4
              Width = 265
              Height = 381
              Caption = 'Geral'
              TabOrder = 0
              object sbtnPathSalvar: TSpeedButton
                Left = 235
                Top = 311
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnPathSalvarClick
              end
              object Label29: TLabel
                Left = 8
                Top = 88
                Width = 86
                Height = 13
                Caption = 'Forma de Emiss'#227'o'
              end
              object Label31: TLabel
                Left = 8
                Top = 50
                Width = 72
                Height = 13
                Caption = 'Formato Alerta'
              end
              object Label30: TLabel
                Left = 8
                Top = 126
                Width = 120
                Height = 13
                Caption = 'Modelo Documento Fiscal'
              end
              object Label32: TLabel
                Left = 8
                Top = 165
                Width = 119
                Height = 13
                Caption = 'Vers'#227'o Documento Fiscal'
              end
              object Label33: TLabel
                Left = 8
                Top = 203
                Width = 73
                Height = 13
                Caption = 'IdToken/IdCSC'
              end
              object Label34: TLabel
                Left = 8
                Top = 241
                Width = 53
                Height = 13
                Caption = 'Token/CSC'
              end
              object Label42: TLabel
                Left = 8
                Top = 336
                Width = 198
                Height = 13
                Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
              end
              object spPathSchemas: TSpeedButton
                Left = 235
                Top = 351
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = spPathSchemasClick
              end
              object edtPathLogs: TEdit
                Left = 8
                Top = 315
                Width = 228
                Height = 21
                TabOrder = 0
              end
              object ckSalvar: TCheckBox
                Left = 8
                Top = 299
                Width = 209
                Height = 15
                Caption = 'Salvar Arquivos de Envio e Resposta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object cbFormaEmissao: TComboBox
                Left = 8
                Top = 104
                Width = 248
                Height = 21
                TabOrder = 2
              end
              object cbxAtualizarXML: TCheckBox
                Left = 8
                Top = 16
                Width = 97
                Height = 17
                Caption = 'Atualizar XML'
                TabOrder = 3
              end
              object cbxExibirErroSchema: TCheckBox
                Left = 8
                Top = 32
                Width = 129
                Height = 17
                Caption = 'Exibir Erro Schema'
                TabOrder = 4
              end
              object edtFormatoAlerta: TEdit
                Left = 8
                Top = 66
                Width = 248
                Height = 21
                TabOrder = 5
              end
              object cbModeloDF: TComboBox
                Left = 8
                Top = 142
                Width = 248
                Height = 21
                TabOrder = 6
              end
              object cbxRetirarAcentos: TCheckBox
                Left = 8
                Top = 281
                Width = 193
                Height = 17
                Caption = 'Retirar Acentos dos XMLs enviados'
                TabOrder = 7
              end
              object cbVersaoDF: TComboBox
                Left = 8
                Top = 181
                Width = 248
                Height = 21
                TabOrder = 8
              end
              object edtIdToken: TEdit
                Left = 8
                Top = 219
                Width = 248
                Height = 21
                TabOrder = 9
              end
              object edtToken: TEdit
                Left = 8
                Top = 257
                Width = 248
                Height = 21
                TabOrder = 10
              end
              object edtPathSchemas: TEdit
                Left = 8
                Top = 352
                Width = 228
                Height = 21
                TabOrder = 11
              end
            end
          end
          object TabSheet7: TTabSheet
            Caption = 'WebService'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox4: TGroupBox
              Left = 0
              Top = 4
              Width = 265
              Height = 157
              Caption = 'WebService'
              TabOrder = 0
              object Label6: TLabel
                Left = 8
                Top = 16
                Width = 121
                Height = 13
                Caption = 'Selecione UF de Destino:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object cbxVisualizar: TCheckBox
                Left = 8
                Top = 118
                Width = 153
                Height = 17
                Caption = 'Visualizar Mensagem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object cbUF: TComboBox
                Left = 8
                Top = 32
                Width = 249
                Height = 24
                Style = csDropDownList
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ItemIndex = 24
                ParentFont = False
                TabOrder = 1
                Text = 'SP'
                Items.Strings = (
                  'AC'
                  'AL'
                  'AP'
                  'AM'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MT'
                  'MS'
                  'MG'
                  'PA'
                  'PB'
                  'PR'
                  'PE'
                  'PI'
                  'RJ'
                  'RN'
                  'RS'
                  'RO'
                  'RR'
                  'SC'
                  'SP'
                  'SE'
                  'TO')
              end
              object rgTipoAmb: TRadioGroup
                Left = 8
                Top = 61
                Width = 249
                Height = 52
                Caption = 'Selecione o Ambiente de Destino'
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  'Produ'#231#227'o'
                  'Homologa'#231#227'o')
                TabOrder = 2
              end
              object cbxSalvarSOAP: TCheckBox
                Left = 8
                Top = 136
                Width = 241
                Height = 17
                Caption = 'Salvar envelope SOAP'
                TabOrder = 3
              end
            end
            object gbProxy: TGroupBox
              Left = 0
              Top = 283
              Width = 265
              Height = 104
              Caption = 'Proxy'
              TabOrder = 1
              object Label8: TLabel
                Left = 8
                Top = 16
                Width = 22
                Height = 13
                Caption = 'Host'
              end
              object Label9: TLabel
                Left = 208
                Top = 16
                Width = 26
                Height = 13
                Caption = 'Porta'
              end
              object Label10: TLabel
                Left = 8
                Top = 56
                Width = 36
                Height = 13
                Caption = 'Usu'#225'rio'
              end
              object Label11: TLabel
                Left = 138
                Top = 56
                Width = 30
                Height = 13
                Caption = 'Senha'
              end
              object edtProxyHost: TEdit
                Left = 8
                Top = 32
                Width = 193
                Height = 21
                TabOrder = 0
              end
              object edtProxyPorta: TEdit
                Left = 208
                Top = 32
                Width = 50
                Height = 21
                TabOrder = 1
              end
              object edtProxyUser: TEdit
                Left = 8
                Top = 72
                Width = 123
                Height = 21
                TabOrder = 2
              end
              object edtProxySenha: TEdit
                Left = 135
                Top = 72
                Width = 123
                Height = 21
                PasswordChar = '*'
                TabOrder = 3
              end
            end
            object gbxRetornoEnvio: TGroupBox
              Left = 1
              Top = 167
              Width = 291
              Height = 114
              Caption = 'Retorno de Envio de NFe'
              TabOrder = 2
              object Label36: TLabel
                Left = 102
                Top = 27
                Width = 51
                Height = 13
                Caption = 'Tentativas'
              end
              object Label37: TLabel
                Left = 7
                Top = 67
                Width = 44
                Height = 13
                Caption = 'Intervalo'
              end
              object Label38: TLabel
                Left = 8
                Top = 27
                Width = 45
                Height = 13
                Hint = 
                  'Aguardar quantos segundos para primeira consulta de retorno de e' +
                  'nvio'
                Caption = 'Aguardar'
              end
              object cbxAjustarAut: TCheckBox
                Left = 8
                Top = 12
                Width = 234
                Height = 17
                Caption = 'Ajustar Automaticamente prop. "Aguardar"'
                TabOrder = 0
              end
              object edtTentativas: TEdit
                Left = 102
                Top = 43
                Width = 85
                Height = 21
                TabOrder = 2
              end
              object edtIntervalo: TEdit
                Left = 7
                Top = 83
                Width = 85
                Height = 21
                TabOrder = 3
              end
              object edtAguardar: TEdit
                Left = 8
                Top = 43
                Width = 85
                Height = 21
                Hint = 
                  'Aguardar quantos segundos para primeira consulta de retorno de e' +
                  'nvio'
                TabOrder = 1
              end
            end
          end
          object TabSheet12: TTabSheet
            Caption = 'Emitente'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label12: TLabel
              Left = 8
              Top = 4
              Width = 25
              Height = 13
              Caption = 'CNPJ'
            end
            object Label13: TLabel
              Left = 136
              Top = 4
              Width = 43
              Height = 13
              Caption = 'Insc.Est.'
            end
            object Label14: TLabel
              Left = 8
              Top = 44
              Width = 60
              Height = 13
              Caption = 'Raz'#227'o Social'
            end
            object Label15: TLabel
              Left = 8
              Top = 84
              Width = 41
              Height = 13
              Caption = 'Fantasia'
            end
            object Label16: TLabel
              Left = 8
              Top = 164
              Width = 55
              Height = 13
              Caption = 'Logradouro'
            end
            object Label17: TLabel
              Left = 208
              Top = 164
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
            end
            object Label18: TLabel
              Left = 8
              Top = 204
              Width = 65
              Height = 13
              Caption = 'Complemento'
            end
            object Label19: TLabel
              Left = 136
              Top = 204
              Width = 28
              Height = 13
              Caption = 'Bairro'
            end
            object Label20: TLabel
              Left = 8
              Top = 244
              Width = 62
              Height = 13
              Caption = 'C'#243'd. Cidade '
            end
            object Label21: TLabel
              Left = 76
              Top = 244
              Width = 33
              Height = 13
              Caption = 'Cidade'
            end
            object Label22: TLabel
              Left = 225
              Top = 244
              Width = 13
              Height = 13
              Caption = 'UF'
            end
            object Label23: TLabel
              Left = 136
              Top = 124
              Width = 19
              Height = 13
              Caption = 'CEP'
            end
            object Label24: TLabel
              Left = 8
              Top = 124
              Width = 24
              Height = 13
              Caption = 'Fone'
            end
            object edtEmitCNPJ: TEdit
              Left = 8
              Top = 20
              Width = 123
              Height = 21
              TabOrder = 0
            end
            object edtEmitIE: TEdit
              Left = 137
              Top = 20
              Width = 123
              Height = 21
              TabOrder = 1
            end
            object edtEmitRazao: TEdit
              Left = 8
              Top = 60
              Width = 252
              Height = 21
              TabOrder = 2
            end
            object edtEmitFantasia: TEdit
              Left = 8
              Top = 100
              Width = 252
              Height = 21
              TabOrder = 3
            end
            object edtEmitFone: TEdit
              Left = 8
              Top = 140
              Width = 125
              Height = 21
              TabOrder = 4
            end
            object edtEmitCEP: TEdit
              Left = 137
              Top = 140
              Width = 123
              Height = 21
              TabOrder = 5
            end
            object edtEmitLogradouro: TEdit
              Left = 8
              Top = 180
              Width = 196
              Height = 21
              TabOrder = 6
            end
            object edtEmitNumero: TEdit
              Left = 210
              Top = 180
              Width = 50
              Height = 21
              TabOrder = 7
            end
            object edtEmitComp: TEdit
              Left = 8
              Top = 220
              Width = 123
              Height = 21
              TabOrder = 8
            end
            object edtEmitBairro: TEdit
              Left = 137
              Top = 220
              Width = 123
              Height = 21
              TabOrder = 9
            end
            object edtEmitCodCidade: TEdit
              Left = 8
              Top = 260
              Width = 61
              Height = 21
              TabOrder = 10
            end
            object edtEmitCidade: TEdit
              Left = 76
              Top = 260
              Width = 142
              Height = 21
              TabOrder = 11
            end
            object edtEmitUF: TEdit
              Left = 225
              Top = 260
              Width = 35
              Height = 21
              TabOrder = 12
            end
          end
          object TabSheet13: TTabSheet
            Caption = 'Arquivos'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object sbPathNFe: TSpeedButton
              Left = 240
              Top = 130
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathNFeClick
            end
            object Label35: TLabel
              Left = 6
              Top = 116
              Width = 94
              Height = 13
              Caption = 'Pasta Arquivos NFe'
            end
            object Label39: TLabel
              Left = 6
              Top = 154
              Width = 143
              Height = 13
              Caption = 'Pasta Arquivos Cancelamento'
            end
            object sbPathCan: TSpeedButton
              Left = 240
              Top = 168
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathCanClick
            end
            object Label46: TLabel
              Left = 6
              Top = 192
              Width = 198
              Height = 13
              Caption = 'Pasta Arquivos CC-e - Carta de Corre'#231#227'o'
            end
            object sbPathCCe: TSpeedButton
              Left = 240
              Top = 206
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathCCeClick
            end
            object Label40: TLabel
              Left = 6
              Top = 230
              Width = 129
              Height = 13
              Caption = 'Pasta Arquivos Inutiliza'#231#227'o'
            end
            object sbPathInu: TSpeedButton
              Left = 240
              Top = 244
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathInuClick
            end
            object Label41: TLabel
              Left = 6
              Top = 268
              Width = 101
              Height = 13
              Caption = 'Pasta Arquivos DPEC'
            end
            object sbPathDPEC: TSpeedButton
              Left = 240
              Top = 282
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathDPECClick
            end
            object Label47: TLabel
              Left = 6
              Top = 306
              Width = 109
              Height = 13
              Caption = 'Pasta Arquivos Evento'
            end
            object sbPathEvento: TSpeedButton
              Left = 240
              Top = 320
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathEventoClick
            end
            object cbxSalvarArqs: TCheckBox
              Left = 6
              Top = 0
              Width = 210
              Height = 17
              Caption = 'Salvar Arquivos em Pastas Separadas'
              TabOrder = 0
            end
            object cbxPastaMensal: TCheckBox
              Left = 6
              Top = 16
              Width = 210
              Height = 17
              Caption = 'Criar Pastas Mensalmente'
              TabOrder = 1
            end
            object cbxAdicionaLiteral: TCheckBox
              Left = 6
              Top = 32
              Width = 210
              Height = 17
              Caption = 'Adicionar Literal no nome das pastas'
              TabOrder = 2
            end
            object cbxEmissaoPathNFe: TCheckBox
              Left = 6
              Top = 48
              Width = 233
              Height = 17
              Caption = 'Salvar NFe pelo campo Data de Emiss'#227'o'
              TabOrder = 3
            end
            object cbxSalvaPathEvento: TCheckBox
              Left = 6
              Top = 64
              Width = 233
              Height = 17
              Caption = 'Salvar Arqs de Eventos'
              TabOrder = 4
            end
            object cbxSepararPorCNPJ: TCheckBox
              Left = 6
              Top = 80
              Width = 233
              Height = 17
              Caption = 'Separar Arqs pelo CNPJ do Certificado'
              TabOrder = 5
            end
            object edtPathCCe: TEdit
              Left = 6
              Top = 208
              Width = 235
              Height = 21
              TabOrder = 6
            end
            object edtPathNFe: TEdit
              Left = 6
              Top = 132
              Width = 235
              Height = 21
              TabOrder = 7
            end
            object edtPathCan: TEdit
              Left = 6
              Top = 170
              Width = 235
              Height = 21
              TabOrder = 8
            end
            object edtPathInu: TEdit
              Left = 6
              Top = 246
              Width = 235
              Height = 21
              TabOrder = 9
            end
            object edtPathDPEC: TEdit
              Left = 6
              Top = 284
              Width = 235
              Height = 21
              TabOrder = 10
            end
            object edtPathEvento: TEdit
              Left = 6
              Top = 322
              Width = 235
              Height = 21
              TabOrder = 11
            end
            object cbxSepararPorModelo: TCheckBox
              Left = 6
              Top = 96
              Width = 251
              Height = 17
              Caption = 'Separar Arqs pelo Modelo do Documento'
              TabOrder = 12
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'DANFe'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 55
          Height = 13
          Caption = 'Logo Marca'
        end
        object sbtnLogoMarca: TSpeedButton
          Left = 235
          Top = 20
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = sbtnLogoMarcaClick
        end
        object edtLogoMarca: TEdit
          Left = 8
          Top = 24
          Width = 228
          Height = 21
          TabOrder = 0
        end
        object rgTipoDanfe: TRadioGroup
          Left = 8
          Top = 56
          Width = 249
          Height = 49
          Caption = 'DANFE'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Retrato'
            'Paisagem')
          TabOrder = 1
        end
      end
      object TabSheet14: TTabSheet
        Caption = 'Email'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 69
          Height = 13
          Caption = 'Servidor SMTP'
        end
        object Label4: TLabel
          Left = 206
          Top = 8
          Width = 26
          Height = 13
          Caption = 'Porta'
        end
        object Label5: TLabel
          Left = 8
          Top = 48
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
        end
        object Label26: TLabel
          Left = 137
          Top = 48
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object Label27: TLabel
          Left = 8
          Top = 88
          Width = 122
          Height = 13
          Caption = 'Assunto do email enviado'
        end
        object Label28: TLabel
          Left = 8
          Top = 160
          Width = 93
          Height = 13
          Caption = 'Mensagem do Email'
        end
        object edtSmtpHost: TEdit
          Left = 8
          Top = 24
          Width = 193
          Height = 21
          TabOrder = 0
        end
        object edtSmtpPort: TEdit
          Left = 206
          Top = 24
          Width = 51
          Height = 21
          TabOrder = 1
        end
        object edtSmtpUser: TEdit
          Left = 8
          Top = 64
          Width = 120
          Height = 21
          TabOrder = 2
        end
        object edtSmtpPass: TEdit
          Left = 137
          Top = 64
          Width = 120
          Height = 21
          TabOrder = 3
        end
        object edtEmailAssunto: TEdit
          Left = 8
          Top = 104
          Width = 249
          Height = 21
          TabOrder = 4
        end
        object cbEmailSSL: TCheckBox
          Left = 10
          Top = 136
          Width = 167
          Height = 17
          Caption = 'SMTP exige conex'#227'o segura'
          TabOrder = 5
        end
        object mmEmailMsg: TMemo
          Left = 8
          Top = 176
          Width = 249
          Height = 130
          TabOrder = 6
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 297
    Top = 0
    Width = 654
    Height = 615
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 652
      Height = 392
      Align = alTop
      TabOrder = 0
      object PageControl3: TPageControl
        Left = 1
        Top = 1
        Width = 650
        Height = 390
        ActivePage = tsNFCe
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 348
        object tsNFe: TTabSheet
          Caption = 'NF-e'
          Enabled = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 320
          object btnImprimir: TButton
            Left = 192
            Top = 156
            Width = 177
            Height = 25
            Caption = 'Imprimir DANFE'
            TabOrder = 0
            OnClick = btnImprimirClick
          end
          object btnConsultar: TButton
            Left = 8
            Top = 66
            Width = 177
            Height = 25
            Caption = 'Consultar carregando XML'
            TabOrder = 1
            OnClick = btnConsultarClick
          end
          object btnValidarXML: TButton
            Left = 376
            Top = 126
            Width = 177
            Height = 25
            Caption = 'Validar XML'
            TabOrder = 2
            OnClick = btnValidarXMLClick
          end
          object btnStatusServ: TButton
            Left = 9
            Top = 6
            Width = 177
            Height = 25
            Caption = ' Status de Servi'#231'o'
            TabOrder = 3
            OnClick = btnStatusServClick
          end
          object btnCancNF: TButton
            Left = 9
            Top = 125
            Width = 177
            Height = 25
            Caption = 'Cancelamento NFe com XML'
            TabOrder = 4
            OnClick = btnCancNFClick
          end
          object btnCriarEnviar: TButton
            Left = 8
            Top = 36
            Width = 177
            Height = 25
            Caption = 'Criar e Enviar'
            TabOrder = 5
            OnClick = btnCriarEnviarClick
          end
          object btnInutilizar: TButton
            Left = 192
            Top = 6
            Width = 177
            Height = 25
            Caption = 'Inutilizar Numera'#231#227'o'
            TabOrder = 6
            OnClick = btnInutilizarClick
          end
          object btnGerarNFE: TButton
            Left = 192
            Top = 96
            Width = 177
            Height = 25
            Caption = 'Gerar NFe'
            TabOrder = 7
            OnClick = btnGerarNFEClick
          end
          object btnConsCad: TButton
            Left = 193
            Top = 66
            Width = 177
            Height = 25
            Caption = 'Consulta Cadastro'
            TabOrder = 8
            OnClick = btnConsCadClick
          end
          object btnGerarPDF: TButton
            Left = 192
            Top = 126
            Width = 177
            Height = 25
            Caption = 'Gerar PDF'
            TabOrder = 9
            OnClick = btnGerarPDFClick
          end
          object btnEnviarEmail: TButton
            Left = 376
            Top = 156
            Width = 177
            Height = 25
            Caption = 'Enviar NFe Email'
            TabOrder = 10
            OnClick = btnEnviarEmailClick
          end
          object btnConsultarRecibo: TButton
            Left = 192
            Top = 36
            Width = 177
            Height = 25
            Caption = 'Consultar Recibo Lote'
            TabOrder = 11
            OnClick = btnConsultarReciboClick
          end
          object btnImportarXML: TButton
            Left = 375
            Top = 95
            Width = 177
            Height = 25
            Caption = 'Importar TXT/XML'
            TabOrder = 12
            OnClick = btnImportarXMLClick
          end
          object btnConsultarChave: TButton
            Left = 8
            Top = 96
            Width = 177
            Height = 25
            Caption = 'Consultar pela Chave'
            TabOrder = 13
            OnClick = btnConsultarChaveClick
          end
          object btnCancelarChave: TButton
            Left = 9
            Top = 156
            Width = 177
            Height = 25
            Caption = 'Cancelamento NFe pela Chave'
            TabOrder = 14
            OnClick = btnCancelarChaveClick
          end
          object btnGerarTXT: TButton
            Left = 376
            Top = 66
            Width = 177
            Height = 25
            Caption = 'Gerar TXT'
            TabOrder = 15
            OnClick = btnGerarTXTClick
          end
          object btnAdicionarProtNFe: TButton
            Left = 9
            Top = 184
            Width = 177
            Height = 25
            Caption = 'Adicionar nfeProc ao XML'
            TabOrder = 16
            OnClick = btnAdicionarProtNFeClick
          end
          object btnCarregarXMLEnviar: TButton
            Left = 192
            Top = 184
            Width = 177
            Height = 25
            Caption = 'Carregar XML e Enviar'
            TabOrder = 17
            OnClick = btnCarregarXMLEnviarClick
          end
          object btnCartadeCorrecao: TButton
            Left = 376
            Top = 184
            Width = 177
            Height = 25
            Caption = 'Carta de Corre'#231#227'o'
            TabOrder = 18
            OnClick = btnCartadeCorrecaoClick
          end
          object btnValidarAssinatura: TButton
            Left = 9
            Top = 212
            Width = 177
            Height = 25
            Caption = 'Validar Assinatura'
            TabOrder = 19
            OnClick = btnValidarAssinaturaClick
          end
          object btnManifDestConfirmacao: TButton
            Left = 192
            Top = 212
            Width = 178
            Height = 25
            Caption = 'Manif. Dest. - Conf. Opera'#231#227'o'
            TabOrder = 20
            OnClick = btnManifDestConfirmacaoClick
          end
          object btnNfeDestinadas: TButton
            Left = 375
            Top = 211
            Width = 178
            Height = 25
            Caption = 'Consulta NFe Destinadas'
            TabOrder = 21
            OnClick = btnNfeDestinadasClick
          end
          object btnImprimirCCe: TButton
            Left = 8
            Top = 240
            Width = 177
            Height = 25
            Caption = 'Imprimir Evento'
            TabOrder = 22
            OnClick = btnImprimirCCeClick
          end
          object btnEnviarEvento: TButton
            Left = 193
            Top = 240
            Width = 177
            Height = 25
            Caption = 'Enviar Evento Email'
            TabOrder = 23
            OnClick = btnEnviarEventoClick
          end
          object btnDistribuicaoDFe: TButton
            Left = 375
            Top = 240
            Width = 178
            Height = 25
            Caption = 'Distribui'#231#227'o Documentos Fiscais'
            TabOrder = 24
            OnClick = btnDistribuicaoDFeClick
          end
        end
        object tsNFCe: TTabSheet
          Caption = 'NFC-e'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 23
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblChave: TLabel
            Left = 10
            Top = 234
            Width = 38
            Height = 13
            Caption = 'Chave :'
          end
          object lbCSOSN: TLabel
            Left = 611
            Top = 35
            Width = 20
            Height = 13
            Caption = '.....'
          end
          object Label184: TLabel
            Left = 125
            Top = 58
            Width = 79
            Height = 13
            Caption = 'Relat'#243'rio NFCe :'
          end
          object btnCriarEnviarNFCe: TButton
            Left = 12
            Top = 4
            Width = 112
            Height = 50
            Caption = 'Gerar NFC-e'
            TabOrder = 0
            OnClick = btnCriarEnviarNFCeClick
          end
          object dbGrid: TwwDBGrid
            AlignWithMargins = True
            Left = 9
            Top = 101
            Width = 608
            Height = 127
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
              'legenda'#9'2'#9#9'F'
              'id_fiscal'#9'10'#9'Controle'#9'F'
              'int_nomeemi'#9'10'#9'Cliente'#9'F'
              'numero'#9'10'#9'N'#250'mero'#9'F'
              'int_nometme'#9'11'#9'Tipo de Estoque'#9'F'
              'int_nomecpg'#9'15'#9'Condi'#231#227'o'#9'F'
              'dta_emissao'#9'10'#9'Emiss'#227'o'#9'F'
              'serie'#9'6'#9'S'#233'rie'#9'F'
              'modelo'#9'9'#9'Modelo'#9'F'
              'vlr_liquido'#9'16'#9'Vlr Total'#9'F')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
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
          object pgNfeDados: TPageControl
            Left = 9
            Top = 256
            Width = 608
            Height = 100
            ActivePage = tsItens
            TabOrder = 2
            TabPosition = tpBottom
            object tsItens: TTabSheet
              Caption = 'Itens'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object dgItens: TwwDBGrid
                AlignWithMargins = True
                Left = 2
                Top = 0
                Width = 598
                Height = 74
                Margins.Left = 2
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Selected.Strings = (
                  'id_item'#9'10'#9'Item'#9'F'
                  'int_desc_item'#9'35'#9'Descri'#231#227'o'#9'F'
                  'int_und_venda'#9'5'#9'Und'#9'F'
                  'int_nomecor'#9'8'#9'Cor'#9'F'
                  'int_nometam'#9'10'#9'Tamanho'#9'F'
                  'qtde'#9'7'#9'Qtde'#9'F'
                  'vlr_unitario'#9'11'#9'Vlr Unit'#225'rio'#9'F'
                  'vlr_desconto'#9'8'#9'Desc.'#9'F'
                  'vlr_liquido'#9'9'#9'Vlr Total'#9'F')
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
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object grdTitulos: TwwDBGrid
                AlignWithMargins = True
                Left = 2
                Top = 0
                Width = 598
                Height = 74
                Margins.Left = 2
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Selected.Strings = (
                  'id_forma_pag'#9'8'#9'C'#243'digo'#9'F'
                  'int_nomefpg'#9'22'#9'Forma de pagamento'#9'F'
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
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object txtNfeObs: TDBMemo
                Left = 0
                Top = 0
                Width = 557
                Height = 65
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
          object Panel4: TPanel
            Left = 9
            Top = 77
            Width = 608
            Height = 22
            BevelOuter = bvNone
            Caption = 'Nota consumidor final'
            Color = 16499874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 3
          end
          object Button1: TButton
            Left = 125
            Top = 4
            Width = 147
            Height = 25
            Caption = 'Cancelamento NFe com XML'
            TabOrder = 4
            OnClick = btnCancNFClick
          end
          object Button2: TButton
            Left = 275
            Top = 4
            Width = 145
            Height = 25
            Caption = 'Consultar carregando XML'
            TabOrder = 5
            OnClick = btnConsultarClick
          end
          object Button3: TButton
            Left = 423
            Top = 4
            Width = 194
            Height = 25
            Caption = 'Inutilizar Numera'#231#227'o'
            TabOrder = 6
            OnClick = btnInutilizarClick
          end
          object Button4: TButton
            Left = 125
            Top = 29
            Width = 147
            Height = 25
            Caption = 'Imprimir DANFE'
            TabOrder = 7
            OnClick = btnImprimirClick
          end
          object Button5: TButton
            Left = 275
            Top = 29
            Width = 145
            Height = 25
            Caption = 'Consultar pela Chave'
            TabOrder = 8
            OnClick = btnConsultarChaveClick
          end
          object Button6: TButton
            Left = 423
            Top = 29
            Width = 194
            Height = 25
            Caption = 'Cancelamento NFe pela Chave'
            TabOrder = 9
            OnClick = btnCancelarChaveClick
          end
          object txtChave: TDBEdit
            Left = 53
            Top = 231
            Width = 562
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'nfe_chave'
            DataSource = dso
            ReadOnly = True
            TabOrder = 10
          end
          object txtRelatorioNFCe: TwwDBEdit
            Left = 208
            Top = 55
            Width = 212
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'nfc_nome_arq_rel'
            DataSource = dsParNfe
            ReadOnly = True
            TabOrder = 11
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
      end
    end
    object pgRespostas: TPageControl
      Left = 1
      Top = 415
      Width = 652
      Height = 199
      ActivePage = TabSheet5
      Align = alBottom
      TabOrder = 1
      object TabSheet5: TTabSheet
        Caption = 'Respostas'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 229
        object MemoResp: TMemo
          Left = 0
          Top = 0
          Width = 644
          Height = 171
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
          ExplicitHeight = 229
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
          Width = 644
          Height = 171
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 229
          ControlData = {
            4C0000008F420000AC1100000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126200000000000000004C0000000114020000000000C000000000000046
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
          Width = 644
          Height = 171
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'NFe'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object trvwNFe: TTreeView
          Left = 0
          Top = 0
          Width = 644
          Height = 171
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
          Width = 644
          Height = 171
          Align = alClient
          ScrollBars = ssVertical
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
          Width = 644
          Height = 171
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet11: TTabSheet
        Caption = 'RetornoConsulta NFe 2.01'
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object TreeViewRetornoConsulta: TTreeView
          Left = 0
          Top = 0
          Width = 644
          Height = 171
          Align = alClient
          Indent = 19
          TabOrder = 0
        end
      end
    end
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    OnStatusChange = ACBrNFe1StatusChange
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoDF = ve200
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFCEFR1
    Left = 357
    Top = 401
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 421
    Top = 399
  end
  object ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS
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
    TipoDANFE = tiSemGeracao
    ImprimeQRCodeLateral = True
    Left = 526
    Top = 445
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 488
    Top = 400
  end
  object FAT_DS_M_NFE_TIT: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_TIT_CXA
    Left = 883
    Top = 374
  end
  object FAT_DS_M_NFE_ITE: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE_CXA
    Left = 883
    Top = 422
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_CXA
    Left = 883
    Top = 478
  end
  object dsParNfe: TDataSource
    DataSet = dmGeral.CAD_CD_C_PAR_NFE
    Left = 343
    Top = 82
  end
  object ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
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
    ACBrNFe = ACBrNFe1
    ImprimeQRCodeLateral = True
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 406
    Top = 501
  end
end
