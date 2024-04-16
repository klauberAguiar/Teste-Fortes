object FormCadastro: TFormCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 442
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 656
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 650
    DesignSize = (
      656
      73)
    object btnNovo: TButton
      Left = -1
      Top = 16
      Width = 120
      Height = 33
      Anchors = [akTop, akRight, akBottom]
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      StyleElements = [seClient, seBorder]
      ExplicitLeft = -7
    end
    object btnEditar: TButton
      Left = 125
      Top = 16
      Width = 120
      Height = 33
      Anchors = [akTop, akRight, akBottom]
      Caption = '&Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      StyleElements = [seClient, seBorder]
      ExplicitLeft = 119
    end
    object btnExcluir: TButton
      Left = 251
      Top = 16
      Width = 120
      Height = 33
      Anchors = [akTop, akRight, akBottom]
      Caption = 'E&xcluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      StyleElements = [seClient, seBorder]
      OnClick = btnExcluirClick
      ExplicitLeft = 245
    end
    object btnCancelar: TButton
      Left = 377
      Top = 16
      Width = 120
      Height = 33
      Anchors = [akTop, akRight, akBottom]
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      StyleElements = [seClient, seBorder]
      ExplicitLeft = 371
    end
    object btnSalvar: TButton
      Left = 503
      Top = 16
      Width = 120
      Height = 33
      Anchors = [akTop, akRight, akBottom]
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      StyleElements = [seClient, seBorder]
      ExplicitLeft = 497
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 73
    Width = 656
    Height = 369
    ActivePage = tsConsulta
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 650
    ExplicitHeight = 360
    object tsConsulta: TTabSheet
      Caption = 'Consulta'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 648
        Height = 339
        Align = alClient
        DataSource = DataSource
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tsCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
    end
  end
  object DataSource: TDataSource
    OnDataChange = DataSourceDataChange
    Left = 216
    Top = 144
  end
end
