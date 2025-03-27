object EST_FM_M_APR: TEST_FM_M_APR
  Left = 0
  Top = 0
  ClientHeight = 440
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 700
    Height = 41
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 698
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Reajuste de Pre'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExplicitWidth = 179
      ExplicitHeight = 30
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 41
    Width = 700
    Height = 399
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    OnResize = pnlPrincipalResize
    object pnlDados: TPanel
      Left = 40
      Top = 7
      Width = 617
      Height = 383
      BevelOuter = bvNone
      TabOrder = 0
      object lblOpcao: TLabel
        Left = 80
        Top = 37
        Width = 38
        Height = 13
        Caption = 'Op'#231#227'o :'
      end
      object lblReajuste: TLabel
        Left = 54
        Top = 66
        Width = 64
        Height = 13
        Caption = 'Reajuste % :'
      end
      object Label1: TLabel
        Left = 175
        Top = 94
        Width = 311
        Height = 13
        Caption = 'obs: Ao reajustar, os itens INATIVOS ser'#227'o atualizados tamb'#233'm.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbbOpcao: TComboBox
        Left = 124
        Top = 34
        Width = 145
        Height = 21
        ItemIndex = 0
        TabOrder = 0
        Text = 'Geral'
        OnClick = cbbOpcaoClick
        Items.Strings = (
          'Geral'
          'Por Grupo'
          'Por Familia')
      end
      object txtReajuste: TEdit
        Left = 124
        Top = 63
        Width = 85
        Height = 21
        TabOrder = 1
        OnKeyPress = txtReajusteKeyPress
      end
      object pcFiltro: TPageControl
        Left = 31
        Top = 109
        Width = 559
        Height = 236
        ActivePage = tsGrupo
        TabOrder = 2
        object tsGrupo: TTabSheet
          Caption = 'Grupo'
          object lblDispGrupo: TLabel
            Left = 90
            Top = 19
            Width = 90
            Height = 13
            Caption = 'Grupos Dispon'#237'veis'
          end
          object lblGrupoSel: TLabel
            Left = 368
            Top = 19
            Width = 99
            Height = 13
            Caption = 'Grupos Selecionados'
          end
          object lboxGrupoSel: TListBox
            Left = 279
            Top = 34
            Width = 270
            Height = 171
            ItemHeight = 13
            PopupMenu = pmExcluirGrupo
            TabOrder = 0
            OnDblClick = lboxGrupoSelDblClick
          end
          object lboxGrupoDisp: TListBox
            Left = 0
            Top = 34
            Width = 270
            Height = 171
            ItemHeight = 13
            PopupMenu = pmSelGrupo
            TabOrder = 1
            OnDblClick = lboxGrupoDispDblClick
          end
        end
        object tsFamilia: TTabSheet
          Caption = 'Familia'
          ImageIndex = 1
          object lblFamiliaDisp: TLabel
            Left = 91
            Top = 21
            Width = 93
            Height = 13
            Caption = 'Familias Dispon'#237'veis'
          end
          object lblFamiliaSel: TLabel
            Left = 362
            Top = 21
            Width = 102
            Height = 13
            Caption = 'Familias Selecionados'
          end
          object lboxFamiliaDisp: TListBox
            Left = 3
            Top = 35
            Width = 270
            Height = 171
            ItemHeight = 13
            PopupMenu = pmSelFamilia
            TabOrder = 0
            OnDblClick = lboxFamiliaDispDblClick
          end
          object lboxFamiliaSel: TListBox
            Left = 279
            Top = 35
            Width = 270
            Height = 171
            ItemHeight = 13
            PopupMenu = pmExcluirFamilia
            TabOrder = 1
            OnDblClick = lboxFamiliaSelDblClick
          end
        end
      end
      object btnSair: TcxButton
        Left = 488
        Top = 351
        Width = 99
        Height = 25
        Caption = 'Sair'
        OptionsImage.Glyph.Data = {
          46030000424D460300000000000036000000280000000E0000000E0000000100
          2000000000001003000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208252525BC17171774060606210000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E981313135F2F2F2FEF323232FF2F2F2FF2222222AE101010530000
          0000000000000000000000000000000000000000000000000000323232FF1E1E
          1E9B2B2B2BDD323232FF323232FF323232FF303030F700000000000000000000
          000000000000000000000000000000000000323232FD1D1D1D932C2C2CDE3232
          32FF323232FF323232FF2F2F2FF1000000000000000000000000000000000000
          00000000000000000000323232FD1D1D1D932C2C2CDE323232FF323232FF3232
          32FF2F2F2FF00000000000000000000000000000000000000000000000000000
          0000323232FD1D1D1D922D2D2DE7323232FF323232FF323232FF2F2F2FF00000
          0000000000000000000000000000000000000000000000000000323232FD1F1F
          1F9C1D1D1D94242424B8323232FF323232FF2F2F2FF000000000000000000000
          000000000000000000000000000000000000323232FD1F1F1F9C1D1D1D942424
          24B8323232FF323232FF2F2F2FF0000000000000000000000000000000000000
          00000000000000000000323232FD1D1D1D922D2D2DE7323232FF323232FF3232
          32FF2F2F2FF00000000000000000000000000000000000000000000000000000
          0000323232FD1D1D1D932C2C2CDE323232FF323232FF323232FF2F2F2FF00000
          0000000000000000000000000000000000000000000000000000323232FD1D1D
          1D932C2C2CDE323232FF323232FF323232FF2F2F2FF000000000000000000000
          000000000000000000000000000000000000323232FF1E1E1E9B2B2B2BDD3232
          32FF323232FF323232FF313131FB000000000000000000000000000000000000
          000000000000000000001E1E1E981212125E2F2F2FEE323232FF323232FF2E2E
          2EED222222AC0000000000000000000000000000000000000000000000000000
          00000000000001010107272727C51D1D1D961010105105050517000000000000
          00000000000000000000}
        TabOrder = 4
        OnClick = btnSairClick
      end
      object btnReajustar: TcxButton
        Left = 384
        Top = 351
        Width = 98
        Height = 25
        Caption = 'Reajustar'
        TabOrder = 3
        OnClick = btnReajustarClick
      end
    end
  end
  object pmSelGrupo: TPopupMenu
    Left = 560
    Top = 56
    object btnSelGrupo: TMenuItem
      Caption = 'Todos Grupos'
      OnClick = btnSelGrupoClick
    end
  end
  object pmExcluirGrupo: TPopupMenu
    Left = 456
    Top = 56
    object btnRemoverGrupo: TMenuItem
      Caption = 'Remover Todos Grupos'
      OnClick = btnRemoverGrupoClick
    end
  end
  object pmSelFamilia: TPopupMenu
    Left = 568
    Top = 112
    object btnSelFamilia: TMenuItem
      Caption = 'Todas Familias'
      OnClick = btnSelFamiliaClick
    end
  end
  object pmExcluirFamilia: TPopupMenu
    Left = 456
    Top = 104
    object btnExcluirFamilia: TMenuItem
      Caption = 'Remover Todas Familias'
      OnClick = btnExcluirFamiliaClick
    end
  end
end
