object frmNFSe: TfrmNFSe
  Left = 209
  Top = 130
  ClientHeight = 602
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 602
    Align = alLeft
    TabOrder = 0
    object gbConfiguracoes: TGroupBox
      Left = 8
      Top = 8
      Width = 281
      Height = 385
      Caption = 'Configura'#231#245'es'
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 2
        Top = 15
        Width = 277
        Height = 368
        ActivePage = TabSheet4
        Align = alClient
        MultiLine = True
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'Emitente'
          Enabled = False
          ImageIndex = 3
          object Label12: TLabel
            Left = 8
            Top = 8
            Width = 27
            Height = 13
            Caption = 'CNPJ'
          end
          object Label13: TLabel
            Left = 136
            Top = 8
            Width = 71
            Height = 13
            Caption = 'Insc. Municipal'
          end
          object Label14: TLabel
            Left = 8
            Top = 48
            Width = 63
            Height = 13
            Caption = 'Raz'#227'o Social'
          end
          object Label15: TLabel
            Left = 8
            Top = 88
            Width = 40
            Height = 13
            Caption = 'Fantasia'
          end
          object Label16: TLabel
            Left = 8
            Top = 168
            Width = 54
            Height = 13
            Caption = 'Logradouro'
          end
          object Label17: TLabel
            Left = 208
            Top = 168
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
          end
          object Label18: TLabel
            Left = 8
            Top = 208
            Width = 64
            Height = 13
            Caption = 'Complemento'
          end
          object Label19: TLabel
            Left = 136
            Top = 208
            Width = 27
            Height = 13
            Caption = 'Bairro'
          end
          object Label21: TLabel
            Left = 8
            Top = 248
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label22: TLabel
            Left = 8
            Top = 288
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label23: TLabel
            Left = 136
            Top = 128
            Width = 21
            Height = 13
            Caption = 'CEP'
          end
          object Label24: TLabel
            Left = 8
            Top = 128
            Width = 24
            Height = 13
            Caption = 'Fone'
          end
          object Label29: TLabel
            Left = 128
            Top = 288
            Width = 58
            Height = 13
            Caption = 'C'#243'd. Cidade'
          end
          object edtEmitCNPJ: TEdit
            Left = 8
            Top = 24
            Width = 123
            Height = 21
            TabOrder = 0
          end
          object edtEmitIM: TEdit
            Left = 136
            Top = 24
            Width = 123
            Height = 21
            TabOrder = 1
          end
          object edtEmitRazao: TEdit
            Left = 8
            Top = 64
            Width = 252
            Height = 21
            TabOrder = 2
          end
          object edtEmitFantasia: TEdit
            Left = 8
            Top = 104
            Width = 252
            Height = 21
            TabOrder = 3
          end
          object edtEmitFone: TEdit
            Left = 8
            Top = 144
            Width = 125
            Height = 21
            TabOrder = 4
          end
          object edtEmitCEP: TEdit
            Left = 136
            Top = 144
            Width = 123
            Height = 21
            TabOrder = 5
          end
          object edtEmitLogradouro: TEdit
            Left = 8
            Top = 184
            Width = 196
            Height = 21
            TabOrder = 6
          end
          object edtEmitNumero: TEdit
            Left = 208
            Top = 184
            Width = 50
            Height = 21
            TabOrder = 7
          end
          object edtEmitComp: TEdit
            Left = 8
            Top = 224
            Width = 123
            Height = 21
            TabOrder = 8
          end
          object edtEmitBairro: TEdit
            Left = 136
            Top = 224
            Width = 123
            Height = 21
            TabOrder = 9
          end
          object edtEmitCidade: TEdit
            Left = 72
            Top = 264
            Width = 142
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 10
            Visible = False
          end
          object edtEmitUF: TEdit
            Left = 8
            Top = 304
            Width = 35
            Height = 21
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
          object cbCidades: TComboBox
            Left = 8
            Top = 264
            Width = 257
            Height = 21
            TabOrder = 12
            Text = 'Selecione uma Cidade'
            OnChange = cbCidadesChange
            Items.Strings = (
              'Alfenas/3101607/MG'
              'Americana/3501608/SP'
              'Ananindeua/1500800/PA'
              'Anapolis/5201108/GO'
              'Aparecida de Goiania/5201405/GO'
              'Apucarana/4101408/PR'
              'Aquiraz/2301000/CE'
              'Aragua'#237'na/1702109/TO'
              'Araraquara/3503208/SP'
              'Araras/3503307/SP'
              'Araucaria/4101804/PR'
              'Araxa/3104007/MG'
              'Arcos/3104205/MG'
              'Assis Chateaubriand/4102000/PR'
              'Bage/4301602/RS'
              'Bambui/3105103/MG'
              'Barbacena/3105608/MG'
              'Bariri/3505203/SP'
              'Barra do Garcas/5101803/MT'
              'Barroso/3105905/MG'
              'Barreiras/2903201/BA'
              'Belford Roxo/3300456/RJ'
              'Belo Horizonte/3106200/MG'
              'Bento Gon'#231'alves/4302105/RS'
              'Bertioga/3506359/SP'
              'Betim/3106705/MG'
              'Boa Vista/1400100/RR'
              'Brusque/4202909/SC'
              'Cachoeiro do Itapemirim/3201209/ES'
              'Campinas/3509502/SP'
              'Campo Grande/5002704/MS'
              'Campos dos Goytacazes/3301009/RJ'
              'Canoas/4304606/RS'
              'Capao Bonito/3510203/SP'
              'Carazinho/4304705/RS'
              'Caruaru/2604106/PE'
              'Cataguases/3115300/MG'
              'Catanduva/3511102/SP'
              'Caxias/2103000/MA'
              'Cedral/3511300/SP'
              'Chapeco/4204202/SC'
              'Colina/3512001/SP'
              'Contagem/3118601/MG'
              'Cotia/3513009/SP'
              'Cornelio Procopio/4106407/PR'
              'Corumba/5003207/MS'
              'Criciuma/4204608/SC'
              'Cruzeiro/3513405/SP'
              'Cuiaba/5103403/MT'
              'Curitiba/4106902/PR'
              'Diadema/3513801/SP'
              'Duque de Caxias/3301702/RJ'
              'Erechim/4307005/RS'
              'Estancia Velha/4307609/RS'
              'Eunapolis/2910727/BA'
              'Fazenda Rio Grande/4107652/PR'
              'Feira de Santana/2910800/BA'
              'Feliz/4308102/RS'
              'Formiga/3126109/MG'
              'Fortaleza/2304400/CE'
              'Foz Do Iguacu/4108304/PR'
              'Franca/3516200/SP'
              'Francisco Beltrao/4108403/PR'
              'Frederico Westphalen/4308508/RS'
              'Frutal/3127107/MG'
              'Gaspar/4205902/SC'
              'Goiania/5208707/GO'
              'Guaiba/4309308/RS'
              'Guanambi/2911709/BA'
              'Guapore/4309407/RS'
              'Guarapari/3202405/ES'
              'Guaratingueta/3518404/SP'
              'Guarulhos/3518800/SP'
              'Hortolandia/3519071/SP'
              'Ibate/3519303/SP'
              'Ijui/4310207/RS'
              'Indaial/4207502/SC'
              'Ipatinga/3131307/MG'
              'Itajai/4208203/SC'
              'Itanhaem/3522109/SP'
              'Itapema/4208302/SC'
              'Itatinga/3523503/SP'
              'Itu/3523909/SP'
              'Ituporanga/4208500/SC'
              'Ivoti/4310801/RS'
              'Jaguariuna/3524709/SP'
              'Jau/3525300/SP'
              'Joacaba/4209003/SC'
              'Joao Pessoa/2507507/PB'
              'Juina/5105150/MT'
              'Juiz de Fora/3136702/MG'
              'Jundiai/3525904/SP'
              'Lages/4209300/SC'
              'Lagoa Santa/3137601/MG'
              'Lavras/3138203/MG'
              'Maceio/2704302/AL'
              'Manaus/1302603/AM'
              'Marechal Deodoro/3704708/AL'
              'Marica/3302700/RJ'
              'Maringa/4115200/PR'
              'Maua/3529401/SP'
              'Mirassol/3530300/SP'
              'Mococa/3530508/SP'
              'Mogi das Cruzes/3530607/SP'
              'Montes Claros/3143302/MG'
              'Muriae/3143906/MG'
              'Natal/2408102/RN'
              'Nova Friburgo/3303401/RJ'
              'Nova Mutum/5106224/MT'
              'Novo Hamburgo/4313409/RS'
              'Niteroi/3303302/RJ'
              'Olimpia/3533908/SP'
              'Palhoca/4211900/SC'
              'Palmas/1721000/TO'
              'Para de Minas/3147105/MG'
              'Paracatu/3147006/MG'
              'Paranagua/4118204/PR'
              'Paranavai/4118402/PR'
              'Parauapebas/15055306/PA'
              'Patrocinio/3148103/MG'
              'Paulinia/3536505/SP'
              'Pelotas/4314407/RS'
              'Pindamonhangaba/3538006/SP'
              'Pinhalzinho/4212908/SC'
              'Ponta Grossa/4119905/PR'
              'Ponte Serrada/4213401/SC'
              'Porto Alegre/4314902/RS'
              'Porto Seguro/2925303/BA'
              'Porto Velho/1100205/RO'
              'Presidente Prudente/3541406/SP'
              'Presidente Venceslau/3541505/SP'
              'Recife/2611606/PE'
              'Registro/3542602/SP'
              'Ribeirao das Neves/3154606/MG'
              'Ribeirao Preto/3543402/SP'
              'Rio Claro/3543907/SP'
              'Rio de Janeiro/3304557/RJ'
              'Rio do Sul/4214805/SC'
              'Rondonopolis/5107602/MT'
              'Salto/3545209/SP'
              'Salvador/2927408/BA'
              'Santa Clara do Sul/4316758/RS'
              'Santa Luzia/3157807/MG'
              'Santo Andre/3547809/SP'
              'Santos/3548500/SP'
              'Sao Bento do Sul/4215802/SC'
              'Sao Bernardo do Campos/3548708/SP'
              'Sao Borja/4318002/RS'
              'Sao Caetano do Sul/3548807/SP'
              'Sao Carlos/3548906/SP'
              'Sao Joao da Boa Vista/3549102/SP'
              'Sao Jose/4216602/SC'
              'Sao Jose do Rio Pardo/3549706/SP'
              'Sao Jose do Rio Preto/3549805/SP'
              'Sao Jose dos Campos/3549904/SP'
              'Sao Jose dos Pinhais/4125506/PR'
              'Sao Leopoldo/4318705/RS'
              'Sao Lourenco do Oeste/4216909/SC'
              'Sao Miguel do Oeste/4217204/SC'
              'Sao Paulo/3550308/SP'
              'Saquarema/3305505/RJ'
              'Schroeder/4217402/SC'
              'Sinop/5107909/MT'
              'Soledade/4320800/RS'
              'Tangara da Serra/5107958/MT'
              'Tatui/3554003/SP'
              'Telemaco Borba/4127106/PR'
              'Tijucas/4218004/SC'
              'Uba/3169901/MG'
              'Uberaba/3170107/MG'
              'Umuarama/4128104/PR'
              'Uniao da Vitoria/4128203/PR'
              'Urussanga/ 4219002/SC'
              'Vargem Grande do Sul/3556404/SP'
              'Varginha/3170701/MG'
              'Varzea Grande/5108402/MT'
              'Vilhena/1100304/RO'
              'Vitoria/3205309/ES'
              'Votuporanga/3557105/SP')
          end
          object edtCodCidade: TEdit
            Left = 128
            Top = 304
            Width = 89
            Height = 21
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Certificado'
          Enabled = False
          object gbCertificado: TGroupBox
            Left = 0
            Top = 4
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
              Width = 31
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
        end
        object TabSheet2: TTabSheet
          Caption = 'Geral'
          Enabled = False
          ImageIndex = 1
          object gbGeral: TGroupBox
            Left = 0
            Top = 4
            Width = 265
            Height = 269
            Caption = 'Geral'
            TabOrder = 0
            object Label7: TLabel
              Left = 8
              Top = 56
              Width = 120
              Height = 13
              Caption = 'Logo Marca da Prefeitura'
            end
            object sbtnLogoMarca: TSpeedButton
              Left = 235
              Top = 68
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
            object sbtnPathSalvar: TSpeedButton
              Left = 235
              Top = 148
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
            object lblSchemas: TLabel
              Left = 120
              Top = 16
              Width = 65
              Height = 13
              Caption = 'lblSchemas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object sbtSchemas: TSpeedButton
              Left = 234
              Top = 28
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
              OnClick = sbtSchemasClick
            end
            object Label32: TLabel
              Left = 8
              Top = 96
              Width = 179
              Height = 13
              Caption = 'Logo Marca do Prestador de Servi'#231'os'
            end
            object sbtnPrestLogo: TSpeedButton
              Left = 234
              Top = 108
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
              OnClick = sbtnPrestLogoClick
            end
            object Label33: TLabel
              Left = 8
              Top = 176
              Width = 45
              Height = 13
              Caption = 'Prefeitura'
            end
            object Label30: TLabel
              Left = 8
              Top = 16
              Width = 108
              Height = 13
              Caption = 'Schemas do Provedor:'
            end
            object Label34: TLabel
              Left = 8
              Top = 216
              Width = 61
              Height = 13
              Caption = 'Arquivos INI:'
            end
            object sbtArqINI: TSpeedButton
              Left = 234
              Top = 228
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
              OnClick = sbtArqINIClick
            end
            object edtLogoMarca: TEdit
              Left = 8
              Top = 72
              Width = 228
              Height = 21
              TabOrder = 1
            end
            object edtPathLogs: TEdit
              Left = 8
              Top = 152
              Width = 228
              Height = 21
              TabOrder = 3
            end
            object ckSalvar: TCheckBox
              Left = 8
              Top = 136
              Width = 209
              Height = 15
              Caption = 'Salvar Arquivos de Envio e Resposta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object edtSchemas: TEdit
              Left = 8
              Top = 32
              Width = 228
              Height = 21
              TabOrder = 0
            end
            object edtPrestLogo: TEdit
              Left = 8
              Top = 112
              Width = 228
              Height = 21
              TabOrder = 2
            end
            object edtPrefeitura: TEdit
              Left = 8
              Top = 192
              Width = 249
              Height = 21
              TabOrder = 5
            end
            object edtArqINI: TEdit
              Left = 8
              Top = 232
              Width = 228
              Height = 21
              TabOrder = 6
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'WebService'
          Enabled = False
          ImageIndex = 2
          object Label6: TLabel
            Left = 0
            Top = 248
            Width = 31
            Height = 13
            Caption = 'Senha'
          end
          object Label20: TLabel
            Left = 0
            Top = 288
            Width = 36
            Height = 13
            Caption = 'Usu'#225'rio'
          end
          object gbWebService: TGroupBox
            Left = 0
            Top = 4
            Width = 265
            Height = 109
            Caption = 'WebService'
            TabOrder = 0
            object ckVisualizar: TCheckBox
              Left = 8
              Top = 78
              Width = 129
              Height = 17
              Caption = 'Visualizar Mensagem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object rgTipoAmb: TRadioGroup
              Left = 8
              Top = 21
              Width = 249
              Height = 44
              Caption = 'Selecione o Ambiente de Destino'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Produ'#231#227'o'
                'Homologa'#231#227'o')
              TabOrder = 0
            end
            object ckSalvarSoap: TCheckBox
              Left = 152
              Top = 78
              Width = 81
              Height = 17
              Caption = 'Salvar Soap'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
          end
          object gbProxy: TGroupBox
            Left = 0
            Top = 128
            Width = 265
            Height = 105
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
              Width = 25
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
              Width = 31
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
          object edtSenhaWeb: TEdit
            Left = 0
            Top = 264
            Width = 249
            Height = 21
            PasswordChar = '*'
            TabOrder = 2
          end
          object edtUserWeb: TEdit
            Left = 0
            Top = 304
            Width = 249
            Height = 21
            TabOrder = 3
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Email'
          ImageIndex = 4
          object gbEmail: TGroupBox
            Left = 1
            Top = 4
            Width = 264
            Height = 324
            Caption = 'Email'
            Enabled = False
            TabOrder = 0
            object Label3: TLabel
              Left = 8
              Top = 16
              Width = 72
              Height = 13
              Caption = 'Servidor SMTP'
            end
            object Label4: TLabel
              Left = 206
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label5: TLabel
              Left = 8
              Top = 56
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label26: TLabel
              Left = 137
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object Label27: TLabel
              Left = 8
              Top = 96
              Width = 121
              Height = 13
              Caption = 'Assunto do email enviado'
            end
            object Label28: TLabel
              Left = 8
              Top = 192
              Width = 95
              Height = 13
              Caption = 'Mensagem do Email'
            end
            object Label31: TLabel
              Left = 8
              Top = 280
              Width = 97
              Height = 13
              Caption = 'e-mail do Remetente'
            end
            object edtSmtpHost: TEdit
              Left = 8
              Top = 32
              Width = 193
              Height = 21
              TabOrder = 0
            end
            object edtSmtpPort: TEdit
              Left = 206
              Top = 32
              Width = 51
              Height = 21
              TabOrder = 1
            end
            object edtSmtpUser: TEdit
              Left = 8
              Top = 72
              Width = 120
              Height = 21
              TabOrder = 2
            end
            object edtSmtpPass: TEdit
              Left = 137
              Top = 72
              Width = 120
              Height = 21
              TabOrder = 3
            end
            object edtEmailAssunto: TEdit
              Left = 8
              Top = 112
              Width = 249
              Height = 21
              TabOrder = 4
            end
            object cbEmailSSL: TCheckBox
              Left = 10
              Top = 144
              Width = 199
              Height = 17
              Caption = 'SMTP exige conex'#227'o segura - SSL'
              TabOrder = 5
            end
            object mmEmailMsg: TMemo
              Left = 8
              Top = 208
              Width = 249
              Height = 65
              TabOrder = 6
            end
            object edtEmailRemetente: TEdit
              Left = 7
              Top = 296
              Width = 249
              Height = 21
              TabOrder = 7
            end
            object cbEmailTLS: TCheckBox
              Left = 10
              Top = 168
              Width = 199
              Height = 17
              Caption = 'SMTP exige conex'#227'o - TLS'
              TabOrder = 8
            end
          end
        end
      end
    end
    object btnSalvarConfig: TBitBtn
      Left = 14
      Top = 400
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
      TabOrder = 1
      Visible = False
      OnClick = btnSalvarConfigClick
    end
  end
  object Panel2: TPanel
    Left = 297
    Top = 0
    Width = 660
    Height = 602
    Align = alClient
    TabOrder = 1
    object PageControl2: TPageControl
      Left = 1
      Top = 384
      Width = 658
      Height = 217
      ActivePage = TabSheet5
      Align = alBottom
      TabOrder = 0
      object TabSheet5: TTabSheet
        Caption = 'Respostas'
        object MemoResp: TMemo
          Left = 0
          Top = 0
          Width = 650
          Height = 189
          Align = alClient
          TabOrder = 0
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'XML Resposta'
        ImageIndex = 1
        object WBResposta: TWebBrowser
          Left = 0
          Top = 0
          Width = 650
          Height = 189
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 553
          ExplicitHeight = 364
          ControlData = {
            4C0000002E430000891300000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Log'
        ImageIndex = 2
        object memoLog: TMemo
          Left = 0
          Top = 0
          Width = 650
          Height = 189
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'NFSe'
        ImageIndex = 3
        object trvwNFSe: TTreeView
          Left = 0
          Top = 0
          Width = 650
          Height = 189
          Align = alClient
          Indent = 19
          TabOrder = 0
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Retorno Completo WS'
        ImageIndex = 4
        object memoRespWS: TMemo
          Left = 0
          Top = 0
          Width = 650
          Height = 189
          Align = alClient
          TabOrder = 0
        end
      end
      object Dados: TTabSheet
        Caption = 'Dados'
        ImageIndex = 5
        object MemoDados: TMemo
          Left = 0
          Top = 0
          Width = 650
          Height = 189
          Align = alClient
          TabOrder = 0
        end
      end
    end
    object PageControl3: TPageControl
      Left = 1
      Top = 1
      Width = 658
      Height = 383
      ActivePage = tsNFSe
      Align = alClient
      TabOrder = 1
      object tsDados: TTabSheet
        Caption = 'Dados'
        object DBGrid1: TDBGrid
          Left = 3
          Top = 3
          Width = 547
          Height = 222
          DataSource = ds_notafiscal
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object tsConfiguracao: TTabSheet
        Caption = 'Configura'#231#227'o'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 650
          Height = 208
          Align = alTop
          TabOrder = 0
          object btnImprimir: TButton
            Left = 376
            Top = 72
            Width = 177
            Height = 25
            Caption = 'Imprimir DANFSe'
            TabOrder = 7
            OnClick = btnImprimirClick
          end
          object btnConsultarLote: TButton
            Left = 192
            Top = 40
            Width = 177
            Height = 25
            Caption = 'Consultar Lote'
            TabOrder = 3
            OnClick = btnConsultarLoteClick
          end
          object btnCancNFSe: TButton
            Left = 192
            Top = 72
            Width = 177
            Height = 25
            Caption = 'Cancelar NFSe'
            TabOrder = 6
            OnClick = btnCancNFSeClick
          end
          object btnGerarEnviarLote: TButton
            Left = 193
            Top = 9
            Width = 177
            Height = 25
            Caption = 'Gerar e Enviar Lote RPS'
            TabOrder = 1
            OnClick = btnGerarEnviarLoteClick
          end
          object btnGerarRPS: TButton
            Left = 8
            Top = 8
            Width = 177
            Height = 25
            Caption = 'Gerar RPS'
            TabOrder = 0
            OnClick = btnGerarRPSClick
          end
          object btnConsultarSitLote: TButton
            Left = 8
            Top = 40
            Width = 177
            Height = 25
            Caption = 'Consultar Situa'#231#227'o do Lote'
            TabOrder = 2
            OnClick = btnConsultarSitLoteClick
          end
          object btnConsultarNFSeRPS: TButton
            Left = 376
            Top = 40
            Width = 177
            Height = 25
            Caption = 'Consultar NFSe por RPS'
            TabOrder = 4
            OnClick = btnConsultarNFSeRPSClick
          end
          object btnConsultarNFSePeriodo: TButton
            Left = 8
            Top = 72
            Width = 177
            Height = 25
            Caption = 'Consultar NFSe por Per'#237'odo'
            TabOrder = 5
            OnClick = btnConsultarNFSePeriodoClick
          end
          object btnGerarEnviarNFSe: TButton
            Left = 376
            Top = 8
            Width = 177
            Height = 25
            Caption = 'Gerar e Enviar um RPS'
            TabOrder = 8
            OnClick = btnGerarEnviarNFSeClick
          end
          object btnEnviaremail: TButton
            Left = 8
            Top = 104
            Width = 177
            Height = 25
            Caption = 'Enviar e-mail'
            TabOrder = 9
            OnClick = btnEnviaremailClick
          end
          object btnLinkNFSe: TButton
            Left = 192
            Top = 104
            Width = 177
            Height = 25
            Caption = 'Link NFSe'
            TabOrder = 10
            OnClick = btnLinkNFSeClick
          end
          object btnGerarLoteRPS: TButton
            Left = 376
            Top = 104
            Width = 177
            Height = 25
            Caption = 'Gerar Lote RPS'
            TabOrder = 11
            OnClick = btnGerarLoteRPSClick
          end
          object btnGerarEnviarSincrono: TButton
            Left = 8
            Top = 136
            Width = 177
            Height = 25
            Caption = 'Gerar e Enviar Lote - Sincrono'
            TabOrder = 12
            OnClick = btnGerarEnviarSincronoClick
          end
          object btnVerificarCidade: TButton
            Left = 8
            Top = 175
            Width = 545
            Height = 25
            Caption = 'Verifica se uma cidade '#233' atendida pelo componente ou n'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
            OnClick = btnVerificarCidadeClick
          end
          object btnSubsNFSe: TButton
            Left = 192
            Top = 136
            Width = 177
            Height = 25
            Caption = 'Substituir NFSe'
            TabOrder = 14
            OnClick = btnSubsNFSeClick
          end
          object Button1: TButton
            Left = 375
            Top = 135
            Width = 75
            Height = 25
            Caption = 'Button1'
            TabOrder = 15
            OnClick = Button1Click
          end
        end
      end
      object tsNFSe: TTabSheet
        Caption = 'NFSe'
        ImageIndex = 2
        object pgNfeDados: TPageControl
          Left = 1
          Top = 227
          Width = 649
          Height = 121
          ActivePage = tsTitulos
          TabOrder = 0
          TabPosition = tpBottom
          object tsItens: TTabSheet
            Caption = 'Itens'
            object dgItens: TwwDBGrid
              AlignWithMargins = True
              Left = 2
              Top = 0
              Width = 639
              Height = 95
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
            object grdTitulos: TwwDBGrid
              AlignWithMargins = True
              Left = 2
              Top = 0
              Width = 639
              Height = 95
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
        end
        object dbGrid: TwwDBGrid
          AlignWithMargins = True
          Left = 1
          Top = 99
          Width = 648
          Height = 125
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
            'num_rps'#9'10'#9'N'#186' RPS'#9'F'
            'numero'#9'10'#9'N'#250'mero'#9'F'
            'int_nomeemi'#9'10'#9'Cliente'#9'F'
            'int_nometme'#9'11'#9'Tipo de Estoque'#9'F'
            'int_nomecpg'#9'15'#9'Condi'#231#227'o'#9'F'
            'dta_emissao'#9'10'#9'Emiss'#227'o'#9'F'
            'serie'#9'6'#9'S'#233'rie'#9'F'
            'modelo'#9'9'#9'Modelo'#9'F'
            'vlr_liquido'#9'13'#9'Vlr Total'#9'F')
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
        object Button3: TButton
          Left = 9
          Top = 3
          Width = 177
          Height = 65
          Caption = 'Gerar e Enviar Lote RPS'
          TabOrder = 2
          OnClick = btnGerarEnviarLoteClick
        end
        object Button4: TButton
          Left = 188
          Top = 3
          Width = 177
          Height = 32
          Caption = 'Consultar Situa'#231#227'o do Lote'
          TabOrder = 3
          OnClick = btnConsultarSitLoteClick
        end
        object Panel4: TPanel
          Left = 1
          Top = 74
          Width = 648
          Height = 22
          BevelOuter = bvNone
          Caption = 'Nota de Servi'#231'o'
          Color = 16499874
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
        end
        object GroupBox1: TGroupBox
          Left = 368
          Top = -2
          Width = 279
          Height = 72
          Caption = 'Cancelamento'
          TabOrder = 5
          object Label35: TLabel
            Left = 3
            Top = 20
            Width = 99
            Height = 13
            Caption = 'Cod. Cancelamento :'
          end
          object Button2: TButton
            Left = 3
            Top = 39
            Width = 272
            Height = 25
            Caption = 'Cancelar NFSe'
            TabOrder = 0
            OnClick = btnCancNFSeClick
          end
          object cbbCodCanc: TComboBox
            Left = 105
            Top = 15
            Width = 170
            Height = 21
            Style = csDropDownList
            TabOrder = 1
            Items.Strings = (
              '1 - Erro na emiss'#227'o'
              '2 - Servi'#231'o n'#227'o prestado'
              '4 - Duplicidade da nota')
          end
        end
        object btnDanfeSe: TButton
          Left = 188
          Top = 36
          Width = 177
          Height = 31
          Caption = 'Imprimir DANFSe'
          TabOrder = 6
          OnClick = btnDanfeSeClick
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 32
    Top = 448
  end
  object ACBrNFSe1: TACBrNFSe
    MAIL = ACBrMail1
    OnStatusChange = ACBrNFSe1StatusChange
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.ConsultaLoteAposEnvio = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 2000
    Configuracoes.WebServices.Tentativas = 10
    Configuracoes.WebServices.IntervaloTentativas = 3000
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.Certificados.VerificarValidade = False
    DANFSE = Danfe
    Left = 32
    Top = 504
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 102
    Top = 449
  end
  object Danfe: TACBrNFSeDANFSeFR
    ACBrNFSe = ACBrNFSe1
    MostrarPreview = True
    MostrarStatus = True
    NumCopias = 1
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    NFSeCancelada = False
    Provedor = proNenhum
    TamanhoFonte = 6
    FormatarNumeroDocumentoNFSe = True
    EspessuraBorda = 1
    Left = 104
    Top = 504
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=postgres'
      'Password=ssq#0609'
      'Server=192.168.254.140'
      'Database=enSuporte'
      'DriverID=PG')
    LoginPrompt = False
    Left = 360
    Top = 424
  end
  object cds_notafiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_notafiscal'
    Left = 568
    Top = 480
    object cds_notafiscalnumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object cds_notafiscaldescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object cds_notafiscalobservacoes: TWideStringField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      Size = 30
    end
    object cds_notafiscalcod_cnae: TWideStringField
      FieldName = 'cod_cnae'
      Origin = 'cod_cnae'
    end
    object cds_notafiscalcod_municipio: TWideStringField
      FieldName = 'cod_municipio'
      Origin = 'cod_municipio'
      Size = 100
    end
    object cds_notafiscalvlr_servico: TBCDField
      FieldName = 'vlr_servico'
      Origin = 'vlr_servico'
      Precision = 10
      Size = 2
    end
    object cds_notafiscalcliente_id: TIntegerField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
    end
    object cds_notafiscalid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_notafiscaltom_doc: TWideStringField
      FieldName = 'tom_doc'
      Origin = 'tom_doc'
      ProviderFlags = []
    end
    object cds_notafiscaltom_ins_muni: TWideStringField
      FieldName = 'tom_ins_muni'
      Origin = 'tom_ins_muni'
      ProviderFlags = []
    end
    object cds_notafiscaltom_nome: TWideStringField
      FieldName = 'tom_nome'
      Origin = 'tom_nome'
      ProviderFlags = []
      Size = 50
    end
    object cds_notafiscaltom_endereco: TWideStringField
      FieldName = 'tom_endereco'
      Origin = 'tom_endereco'
      ProviderFlags = []
      Size = 60
    end
    object cds_notafiscaltom_numero: TWideStringField
      FieldName = 'tom_numero'
      Origin = 'tom_numero'
      ProviderFlags = []
      Size = 10
    end
    object cds_notafiscaltom_bairro: TWideStringField
      FieldName = 'tom_bairro'
      Origin = 'tom_bairro'
      ProviderFlags = []
      Size = 30
    end
    object cds_notafiscaltom_estado: TWideStringField
      FieldName = 'tom_estado'
      Origin = 'tom_estado'
      ProviderFlags = []
      Size = 2
    end
    object cds_notafiscaltom_cod_municipio: TWideStringField
      FieldName = 'tom_cod_municipio'
      Origin = 'tom_cod_municipio'
      ProviderFlags = []
      Size = 10
    end
    object cds_notafiscaltom_cep: TWideStringField
      FieldName = 'tom_cep'
      Origin = 'tom_cep'
      ProviderFlags = []
      Size = 10
    end
    object cds_notafiscaltom_ins_est: TWideStringField
      FieldName = 'tom_ins_est'
      Origin = 'tom_ins_est'
      ProviderFlags = []
    end
    object cds_notafiscalrecibo: TWideStringField
      FieldName = 'recibo'
      Origin = 'recibo'
      Size = 50
    end
  end
  object ds_notafiscal: TDataSource
    DataSet = cds_notafiscal
    Left = 656
    Top = 480
  end
  object dsp_notafiscal: TDataSetProvider
    DataSet = qry_notafiscal
    Left = 456
    Top = 480
  end
  object qry_notafiscal: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select nf.numero,'#10'       '
      '       nf.descricao,'#10'       '
      '       nf.observacoes,'#10'       '
      '       nf.cod_cnae,'#10'       '
      '       nf.cod_municipio,'#10'       '
      '       nf.vlr_servico,'#10'       '
      '       nf.cliente_id,'#10'       '
      '       nf.id,'#10#10'      '
      '       nf.recibo, '
      '       c.documento as tom_doc,'#10'       '
      '       c.insc_muni as tom_ins_muni,'#10'       '
      '       c.nome as tom_nome,'#10'       '
      '       c.endereco as tom_endereco,'#10'       '
      '       c.numero as tom_numero,'#10'       '
      '       c.bairro as tom_bairro,'#10'       '
      '       c.estado as tom_estado,'#10'       '
      '       c.cod_municipio as tom_cod_municipio,'#10'       '
      '       c.cep as tom_cep,'#10'       '
      '       c.insc_esta as tom_ins_est   '#13#10#10
      ''
      ''
      'from fin_tb_c_nfs nf'#10
      'left outer join cad_tb_c_cli c on c.id=nf.cliente_id')
    Left = 360
    Top = 480
  end
  object dso: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_CXA
    Left = 883
    Top = 518
  end
  object FAT_DS_M_NFE_ITE: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_ITE_CXA
    Left = 883
    Top = 470
  end
  object FAT_DS_M_NFE_TIT: TwwDataSource
    DataSet = dmGeral.BUS_CD_M_NFE_TIT_CXA
    Left = 883
    Top = 414
  end
end
