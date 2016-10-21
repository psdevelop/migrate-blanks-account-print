object SystemDictsForm: TSystemDictsForm
  Left = 0
  Top = 0
  Caption = #1057#1080#1089#1090#1077#1084#1085#1099#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  ClientHeight = 423
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 758
    Height = 423
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = #1042#1080#1076#1099' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1086#1074
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 354
        Width = 750
        Height = 41
        Align = alBottom
        TabOrder = 0
        object DBNavigator1: TDBNavigator
          Left = 0
          Top = 6
          Width = 160
          Height = 25
          DataSource = DataConnection.ReportsDS
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          TabOrder = 0
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 750
        Height = 354
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1054#1090#1095#1077#1090#1099
      object Panel8: TPanel
        Left = 0
        Top = 354
        Width = 750
        Height = 41
        Align = alBottom
        TabOrder = 0
        object DBNavigator8: TDBNavigator
          Left = 0
          Top = 6
          Width = 160
          Height = 25
          DataSource = DataConnection.ReportsDS
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          TabOrder = 0
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 750
        Height = 354
        Align = alClient
        DataSource = DataConnection.ReportsDS
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'REPORT_INT_CODE'
            Title.Caption = #1050#1086#1076' '#1086#1090#1095#1077#1090#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REPORT_NAME'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1095#1077#1090#1072
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PREVIEW_COUNTER'
            Title.Caption = #1055#1088#1077#1076#1087#1088#1086#1089#1084#1086#1090#1088#1086#1074
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRINT_COUNTER'
            Title.Caption = #1053#1072' '#1087#1077#1095#1072#1090#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEFAULT_PRINTER'
            Title.Caption = #1055#1088#1080#1085#1090#1077#1088' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
            Width = 150
            Visible = True
          end>
      end
    end
  end
end
