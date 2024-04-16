object FormRelatorioAbastecimentos: TFormRelatorioAbastecimentos
  Left = 0
  Top = 0
  Caption = 'frmRelatorioAbastecimentos'
  ClientHeight = 777
  ClientWidth = 958
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Relatorio: TRLReport
    AlignWithMargins = True
    Left = 24
    Top = -16
    Width = 794
    Height = 1123
    AdjustableMargins = True
    DataSource = dsAbastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 55
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 12
        Width = 294
        Height = 24
        Caption = 'Relat'#243'rio de abastecimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 42
        Width = 712
        Height = 7
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 253
      Width = 718
      Height = 68
      AutoSize = True
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 3
        Top = 49
        Width = 179
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 3
        Top = 39
        Width = 712
        Height = 8
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object BandaDoGrupo: TRLGroup
      Left = 38
      Top = 93
      Width = 718
      Height = 124
      DataFields = 'DATA'
      Degrade.OppositeColor = clSilver
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        BandType = btHeader
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLDBText5: TRLDBText
          Left = 72
          Top = 6
          Width = 39
          Height = 16
          Alignment = taRightJustify
          DataField = 'data'
          DataSource = dsAbastecimento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 3
          Top = 5
          Width = 37
          Height = 16
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RegistrosDB: TRLBand
        Left = 0
        Top = 41
        Width = 718
        Height = 17
        AutoSize = True
        object RLDBText1: TRLDBText
          Left = 9
          Top = 1
          Width = 38
          Height = 16
          DataField = 'data'
          DataSource = dsAbastecimento
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 105
          Top = 1
          Width = 125
          Height = 16
          DataField = 'tipocombustivel'
          DataSource = dsAbastecimento
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 427
          Top = 0
          Width = 95
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR_TOTAL'
          DataSource = dsAbastecimento
          DisplayMask = '0.00'
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 305
          Top = 0
          Width = 64
          Height = 16
          Alignment = taRightJustify
          DataField = 'idbomba'
          DataSource = dsAbastecimento
          Text = ''
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 58
        Width = 718
        Height = 28
        AutoSize = True
        BandType = btSummary
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLDBResult1: TRLDBResult
          Left = 386
          Top = 12
          Width = 134
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR_TOTAL'
          DataSource = dsAbastecimento
          DisplayMask = '0.00'
          Info = riSum
          Text = ''
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 312
          Top = 12
          Width = 36
          Height = 16
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDraw3: TRLDraw
          Left = 305
          Top = 6
          Width = 213
          Height = 7
          DrawKind = dkLine
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 16
        AutoSize = True
        BandType = btColumnHeader
        Color = clInfoBk
        ParentColor = False
        Transparent = False
        object RLLabel4: TRLLabel
          Left = 9
          Top = 0
          Width = 33
          Height = 16
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 105
          Top = 0
          Width = 112
          Height = 16
          Caption = 'Tipo combust'#237'vel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 302
          Top = -1
          Width = 64
          Height = 16
          Caption = 'Id bomba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 458
          Top = -1
          Width = 70
          Height = 16
          Caption = 'Valor total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 217
      Width = 718
      Height = 36
      AutoSize = True
      BandType = btSummary
      object RLDBResult2: TRLDBResult
        Left = 380
        Top = 20
        Width = 134
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_TOTAL'
        DataSource = dsAbastecimento
        DisplayMask = '0.00'
        Info = riSum
        Text = ''
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 303
        Top = 20
        Width = 73
        Height = 16
        Caption = 'Total geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw4: TRLDraw
        Left = 0
        Top = 14
        Width = 716
        Height = 7
        DrawKind = dkLine
      end
    end
  end
  object dsAbastecimento: TDataSource
    Left = 112
    Top = 344
  end
end
