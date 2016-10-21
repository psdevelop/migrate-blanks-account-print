object CSVImportForm: TCSVImportForm
  Left = 0
  Top = 0
  Caption = #1052#1086#1076#1091#1083#1100' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1076#1072#1085#1085#1099#1093' '#1080#1079' CSV-'#1092#1086#1088#1084#1072#1090#1072
  ClientHeight = 340
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = CSVImportMainMenu
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 659
    Height = 161
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 341
      Top = 0
      Height = 161
      Align = alRight
      Color = clMedGray
      ParentColor = False
      ExplicitLeft = 352
      ExplicitTop = 48
      ExplicitHeight = 100
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 341
      Height = 161
      Align = alClient
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 337
        Height = 119
        Align = alClient
        DataSource = DataConnection.DictsDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DICT_NAME'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
            Width = 250
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 2
        Top = 134
        Width = 337
        Height = 25
        DataSource = DataConnection.DictsDS
        Align = alBottom
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 344
      Top = 0
      Width = 315
      Height = 161
      Align = alRight
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072
      TabOrder = 1
      object DelimeterLabEdit: TLabeledEdit
        Left = 6
        Top = 32
        Width = 131
        Height = 21
        Ctl3D = True
        EditLabel.Width = 107
        EditLabel.Height = 13
        EditLabel.Caption = #1057#1080#1084#1074#1086#1083'-'#1088#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100
        ParentCtl3D = False
        TabOrder = 0
      end
      object StartRowLabEdit: TLabeledEdit
        Left = 6
        Top = 72
        Width = 121
        Height = 21
        EditLabel.Width = 93
        EditLabel.Height = 13
        EditLabel.Caption = #1057#1090#1072#1088#1090#1086#1074#1072#1103' '#1089#1090#1088#1086#1082#1072
        TabOrder = 1
        Text = '2'
      end
      object EndRowLabEdit: TLabeledEdit
        Left = 168
        Top = 72
        Width = 121
        Height = 21
        EditLabel.Width = 87
        EditLabel.Height = 13
        EditLabel.Caption = #1050#1086#1085#1077#1095#1085#1072#1103' '#1089#1090#1088#1086#1082#1072
        TabOrder = 2
        Text = '252'
      end
      object StartRowUpDown: TUpDown
        Left = 127
        Top = 72
        Width = 16
        Height = 21
        Associate = StartRowLabEdit
        Max = 10000
        Position = 2
        TabOrder = 3
      end
      object EndRowUpDown: TUpDown
        Left = 289
        Top = 72
        Width = 16
        Height = 21
        Associate = EndRowLabEdit
        Max = 10000
        Position = 252
        TabOrder = 4
      end
    end
  end
  object CSVImportStringGrid: TStringGrid
    Left = 0
    Top = 161
    Width = 659
    Height = 179
    Align = alClient
    Ctl3D = True
    FixedCols = 0
    FixedRows = 0
    ParentCtl3D = False
    PopupMenu = ImportSGPopupMenu
    TabOrder = 1
  end
  object CSVImportMainMenu: TMainMenu
    Left = 560
    object CSV1: TMenuItem
      Caption = #1048#1084#1087#1086#1088#1090' '#1080#1079' CSV '#1092#1072#1081#1083#1072'...'
      OnClick = CSV1Click
    end
    object N1: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
      OnClick = N1Click
    end
  end
  object CSVOpenDialog: TOpenDialog
    DefaultExt = '*.csv'
    Filter = #1060#1072#1081#1083#1099' '#1076#1072#1085#1085#1099#1093' *.csv|*.csv'
    Left = 560
    Top = 240
  end
  object ImportSGPopupMenu: TPopupMenu
    Left = 560
    Top = 168
    object N2: TMenuItem
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1082#1072#1082' '#1085#1072#1095#1072#1083#1100#1085#1091#1102
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1082#1072#1082' '#1082#1086#1085#1077#1095#1085#1091#1102
      OnClick = N3Click
    end
  end
end
