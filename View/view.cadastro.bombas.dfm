inherited FormBombas: TFormBombas
  BorderStyle = bsDialog
  Caption = 'Controle de tanques e bombas'
  ClientWidth = 937
  Position = poDesktopCenter
  ExplicitWidth = 949
  ExplicitHeight = 471
  TextHeight = 15
  inherited pnlBotoes: TPanel
    Width = 937
    ExplicitWidth = 931
    DesignSize = (
      937
      73)
    inherited btnNovo: TButton
      Left = 272
      OnClick = btnNovoClick
      ExplicitLeft = 266
    end
    inherited btnEditar: TButton
      Left = 398
      OnClick = btnEditarClick
      ExplicitLeft = 392
    end
    inherited btnExcluir: TButton
      Left = 524
      ExplicitLeft = 518
    end
    inherited btnCancelar: TButton
      Left = 650
      OnClick = btnCancelarClick
      ExplicitLeft = 644
    end
    inherited btnSalvar: TButton
      Left = 776
      OnClick = btnSalvarClick
      ExplicitLeft = 770
    end
  end
  inherited PageControl1: TPageControl
    Width = 937
    OnChange = PageControl1Change
    ExplicitWidth = 931
    ExplicitHeight = 351
    inherited tsConsulta: TTabSheet
      ExplicitWidth = 929
      ExplicitHeight = 330
      inherited DBGrid1: TDBGrid
        Width = 929
        Height = 330
        Columns = <
          item
            Expanded = False
            FieldName = 'IdTanque'
            Title.Caption = 'Id tanque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoCombustivel'
            Title.Caption = 'Tipo de combustivel'
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BombaId'
            Title.Caption = 'Id bomba'
            Visible = True
          end>
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitWidth = 929
      ExplicitHeight = 330
      object Label5: TLabel
        Left = 10
        Top = 21
        Width = 50
        Height = 15
        Caption = 'Id tanque'
        FocusControl = dbIdTanque
      end
      object Label6: TLabel
        Left = 66
        Top = 21
        Width = 38
        Height = 15
        Caption = 'Tanque'
        FocusControl = dbIdTanque
      end
      object Label1: TLabel
        Left = 225
        Top = 21
        Width = 51
        Height = 15
        Caption = 'Id bomba'
        FocusControl = dbID
      end
      object Label3: TLabel
        Left = 296
        Top = 21
        Width = 38
        Height = 15
        Caption = 'Bomba'
        FocusControl = dbIdTanque
      end
      object dbIdTanque: TDBEdit
        Left = 11
        Top = 42
        Width = 49
        Height = 23
        DataField = 'IdTanque'
        DataSource = DataSource
        Enabled = False
        TabOrder = 0
      end
      object cmbTanque: TComboBox
        Left = 66
        Top = 42
        Width = 145
        Height = 23
        TabOrder = 1
        Text = 'cmbTanque'
        OnChange = cmbTanqueChange
      end
      object dbID: TDBEdit
        Left = 225
        Top = 42
        Width = 65
        Height = 23
        DataField = 'BombaId'
        DataSource = DataSource
        Enabled = False
        TabOrder = 2
      end
      object cmbBomba: TComboBox
        Left = 296
        Top = 42
        Width = 114
        Height = 23
        TabOrder = 3
        Text = 'cmbBomba'
        OnChange = cmbBombaChange
      end
    end
  end
  inherited DataSource: TDataSource
    Left = 40
    Top = 280
  end
end
