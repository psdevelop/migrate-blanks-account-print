object AdmPanelForm: TAdmPanelForm
  Left = 0
  Top = 0
  Caption = #1055#1072#1085#1077#1083#1100' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1103
  ClientHeight = 518
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 768
    Height = 518
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      object Splitter1: TSplitter
        Left = 0
        Top = 193
        Width = 760
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Color = clMedGray
        ParentColor = False
        ExplicitWidth = 297
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 760
        Height = 193
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Panel15: TPanel
          Left = 0
          Top = 152
          Width = 760
          Height = 41
          Align = alBottom
          TabOrder = 0
          object DBNavigator15: TDBNavigator
            Left = 0
            Top = 6
            Width = 234
            Height = 25
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
            TabOrder = 0
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 760
          Height = 152
          Align = alClient
          DataSource = DataConnection.UsersDS
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'LOGIN'
              Title.Caption = #1051#1086#1075#1080#1085
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USER_NAME'
              Title.Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              Width = 300
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'IS_ACTIVE'
              ReadOnly = True
              Title.Caption = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100
              Visible = True
            end>
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 196
        Width = 760
        Height = 294
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 1
        object TabSheet3: TTabSheet
          Caption = #1056#1086#1083#1080' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          object Panel3: TPanel
            Left = 0
            Top = 225
            Width = 752
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator2: TDBNavigator
              Left = 0
              Top = 6
              Width = 234
              Height = 25
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
              TabOrder = 0
            end
          end
          object DBGrid3: TDBGrid
            Left = 0
            Top = 0
            Width = 752
            Height = 225
            Align = alClient
            DataSource = DataConnection.UserRolesDS
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
                FieldName = 'ROLE_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1086#1083#1080
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ROLE_INT_CODE'
                Title.Caption = #1050#1086#1076' '#1088#1086#1083#1080
                Visible = True
              end>
          end
        end
        object TabSheet4: TTabSheet
          Caption = #1046#1091#1088#1085#1072#1083' '#1089#1086#1073#1099#1090#1080#1081' ('#1087#1077#1095#1072#1090#1100', '#1087#1086#1089#1077#1097#1077#1085#1080#1077' '#1089#1080#1089#1090#1077#1084#1099')'
          ImageIndex = 1
          object DBGrid4: TDBGrid
            Left = 0
            Top = 0
            Width = 752
            Height = 266
            Align = alClient
            DataSource = DataConnection.UserActionsDS
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'A_TSTAMP'
                Title.Caption = #1052#1086#1084#1077#1085#1090' '#1089#1086#1073#1099#1090#1080#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AT_NAME'
                Title.Caption = #1058#1080#1087' '#1089#1086#1073#1099#1090#1080#1103
                Width = 450
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REPORT_NAME'
                Title.Caption = #1054#1090#1095#1077#1090
                Width = 130
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1056#1086#1083#1080
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 449
        Width = 760
        Height = 41
        Align = alBottom
        TabOrder = 0
        object DBNavigator1: TDBNavigator
          Left = 0
          Top = 6
          Width = 234
          Height = 25
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
          TabOrder = 0
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 760
        Height = 449
        Align = alClient
        DataSource = DataConnection.RolesDS
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Color = clMenu
            Expanded = False
            FieldName = 'ROLE_INT_CODE'
            Title.Caption = #1050#1086#1076' '#1088#1086#1083#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ROLE_NAME'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1086#1083#1080
            Width = 300
            Visible = True
          end>
      end
    end
  end
end
