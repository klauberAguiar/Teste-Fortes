inherited FormAbastecimentos: TFormAbastecimentos
  Caption = 'Registro de abastecimentos'
  ClientHeight = 495
  ClientWidth = 1116
  Position = poDesktopCenter
  ExplicitWidth = 1128
  ExplicitHeight = 533
  TextHeight = 15
  inherited pnlBotoes: TPanel
    Width = 1116
    ExplicitWidth = 1110
    inherited btnNovo: TButton
      Left = 447
      OnClick = btnNovoClick
      ExplicitLeft = 441
    end
    inherited btnEditar: TButton
      Left = 573
      OnClick = btnEditarClick
      ExplicitLeft = 567
    end
    inherited btnExcluir: TButton
      Left = 699
      ExplicitLeft = 693
    end
    inherited btnCancelar: TButton
      Left = 825
      OnClick = btnCancelarClick
      ExplicitLeft = 819
    end
    inherited btnSalvar: TButton
      Left = 951
      OnClick = btnSalvarClick
      ExplicitLeft = 945
    end
    object btnRelatorio: TButton
      Left = 9
      Top = 16
      Width = 120
      Height = 33
      Anchors = [akTop, akRight, akBottom]
      Caption = '&Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      StyleElements = [seClient, seBorder]
      OnClick = btnRelatorioClick
      ExplicitLeft = 3
    end
  end
  inherited PageControl1: TPageControl
    Width = 1116
    Height = 422
    OnChange = PageControl1Change
    ExplicitWidth = 1110
    ExplicitHeight = 413
    inherited tsConsulta: TTabSheet
      ExplicitWidth = 1108
      ExplicitHeight = 392
      inherited DBGrid1: TDBGrid
        Width = 1108
        Height = 392
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'Id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idbomba'
            Title.Caption = 'Id bomba'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'litros'
            Title.Caption = 'Litros'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Title.Caption = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorimposto'
            Title.Caption = 'Valor imposto'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idtanque'
            Title.Caption = 'Id tanque'
            Visible = True
          end>
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitWidth = 1108
      ExplicitHeight = 392
      object Label1: TLabel
        Left = 40
        Top = 16
        Width = 91
        Height = 15
        Caption = 'Id abastecimento'
        FocusControl = dbIdAbastecimento
      end
      object Label3: TLabel
        Left = 327
        Top = 16
        Width = 24
        Height = 15
        Caption = 'Data'
      end
      object Label4: TLabel
        Left = 42
        Top = 152
        Width = 29
        Height = 15
        Caption = 'Litros'
        FocusControl = dbLitros
      end
      object Label5: TLabel
        Left = 199
        Top = 152
        Width = 26
        Height = 15
        Caption = 'Valor'
        FocusControl = dbValor
      end
      object Label6: TLabel
        Left = 339
        Top = 152
        Width = 73
        Height = 15
        Caption = 'Valor imposto'
        FocusControl = dbValorImposto
      end
      object Label8: TLabel
        Left = 42
        Top = 77
        Width = 50
        Height = 15
        Caption = 'Id tanque'
        FocusControl = dbIdTanque
      end
      object Label9: TLabel
        Left = 98
        Top = 77
        Width = 38
        Height = 15
        Caption = 'Tanque'
        FocusControl = dbIdTanque
      end
      object Label10: TLabel
        Left = 257
        Top = 77
        Width = 51
        Height = 15
        Caption = 'Id bomba'
        FocusControl = dbID
      end
      object Label11: TLabel
        Left = 328
        Top = 77
        Width = 38
        Height = 15
        Caption = 'Bomba'
        FocusControl = dbIdTanque
      end
      object dbIdAbastecimento: TDBEdit
        Left = 40
        Top = 37
        Width = 96
        Height = 23
        DataField = 'ID'
        DataSource = DataSource
        Enabled = False
        TabOrder = 5
      end
      object dbLitros: TDBEdit
        Left = 51
        Top = 173
        Width = 134
        Height = 23
        DataField = 'LITROS'
        DataSource = DataSource
        TabOrder = 2
        OnChange = dbLitrosChange
      end
      object dbValor: TDBEdit
        Left = 196
        Top = 173
        Width = 134
        Height = 23
        DataField = 'VALOR'
        DataSource = DataSource
        TabOrder = 3
        OnChange = dbValorChange
      end
      object dbValorImposto: TDBEdit
        Left = 339
        Top = 173
        Width = 134
        Height = 23
        DataField = 'VALORIMPOSTO'
        DataSource = DataSource
        Enabled = False
        TabOrder = 4
      end
      object dbIdTanque: TDBEdit
        Left = 43
        Top = 98
        Width = 49
        Height = 23
        DataField = 'IDTANQUE'
        DataSource = DataSource
        Enabled = False
        TabOrder = 6
      end
      object cmbTanque: TComboBox
        Left = 98
        Top = 98
        Width = 145
        Height = 23
        TabOrder = 0
        Text = 'cmbTanque'
        OnChange = cmbTanqueChange
      end
      object dbID: TDBEdit
        Left = 257
        Top = 98
        Width = 65
        Height = 23
        DataField = 'IDBOMBA'
        DataSource = DataSource
        Enabled = False
        TabOrder = 7
      end
      object cmbBomba: TComboBox
        Left = 328
        Top = 98
        Width = 145
        Height = 23
        TabOrder = 1
        Text = 'cmbBomba'
        OnChange = cmbBombaChange
      end
      object Data: TDateTimePicker
        Left = 327
        Top = 37
        Width = 146
        Height = 23
        Date = 45398.000000000000000000
        Time = 45398.000000000000000000
        Checked = False
        MaxDate = 401769.999988425900000000
        TabOrder = 8
        OnChange = DataChange
      end
    end
  end
  inherited DataSource: TDataSource
    Left = 664
    Top = 120
  end
end
