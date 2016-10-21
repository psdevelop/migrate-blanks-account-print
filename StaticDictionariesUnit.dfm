object StaticDictsForm: TStaticDictsForm
  Tag = 1
  Left = 0
  Top = 0
  Caption = #1057#1090#1072#1090#1080#1095#1077#1089#1082#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  ClientHeight = 690
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 994
    Height = 690
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1043#1077#1086#1075#1088#1072#1092#1080#1103
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 986
        Height = 662
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = #1043#1086#1089#1091#1076#1072#1088#1089#1090#1074#1072
          object Panel1: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator1: TDBNavigator
              Left = 0
              Top = 6
              Width = 240
              Height = 25
              TabOrder = 0
            end
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.CountriesDS
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
                FieldName = 'COUNTRY_INT_CODE'
                Title.Caption = #1050#1086#1076' '#1089#1090#1088#1072#1085#1099
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COUNTRY_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 400
                Visible = True
              end>
          end
        end
        object StatesTabSheet: TTabSheet
          Caption = #1054#1073#1083#1072#1089#1090#1080' ('#1089#1091#1073#1098#1077#1082#1090#1099')'
          ImageIndex = 1
          object Panel13: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator13: TDBNavigator
              Left = 0
              Top = 6
              Width = 240
              Height = 25
              TabOrder = 0
            end
          end
          object DBGrid13: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.StatesDS
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
                FieldName = 'STATE_INT_CODE'
                Title.Caption = #1050#1086#1076' '#1089#1091#1073#1098#1077#1082#1090#1072
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATE_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1083#1072#1089#1090#1080' ('#1089#1091#1073#1098#1077#1082#1090#1072')'
                Width = 400
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'COUNTRY_LOOK'
                Title.Caption = #1043#1086#1089#1091#1076#1072#1088#1089#1090#1074#1086
                Width = 150
                Visible = True
              end>
          end
        end
        object TabSheet13: TTabSheet
          Caption = #1056#1077#1075#1080#1086#1085#1099' '#1088#1086#1078#1076#1077#1085#1080#1103
          ImageIndex = 6
          object Panel7: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator7: TDBNavigator
              Left = 0
              Top = 6
              Width = 240
              Height = 25
              TabOrder = 0
            end
          end
          object DBGrid7: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.BTHRegionsDS
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
                FieldName = 'REGION_INT_CODE'
                Title.Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REGION_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1077#1075#1080#1086#1085#1072
                Width = 350
                Visible = True
              end
              item
                Color = clMoneyGreen
                Expanded = False
                FieldName = 'IS_RCENTER'
                Title.Caption = #1054#1073#1083'. '#1094#1077#1085#1090#1088
                Width = 80
                Visible = True
              end>
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1054#1082#1088#1091#1075#1072', '#1088#1072#1081#1086#1085#1099' ('#1087#1091#1085#1082#1090#1099' '#1074' '#1075#1086#1088#1086#1076#1077')'
          ImageIndex = 4
          object Panel16: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator16: TDBNavigator
              Left = 0
              Top = 6
              Width = 240
              Height = 25
              TabOrder = 0
            end
          end
          object DBGrid16: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.DistrictsDS
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DISTRICT_CODE'
                Title.Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DISTRICT_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1081#1086#1085#1072
                Width = 300
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'STATE_LOOK'
                Title.Caption = #1054#1073#1083#1072#1089#1090#1100' ('#1089#1091#1073#1098#1077#1082#1090')'
                Width = 200
                Visible = True
              end>
          end
        end
        object TabSheet5: TTabSheet
          Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1077' '#1087#1091#1085#1082#1090#1099
          ImageIndex = 3
          object Panel11: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator11: TDBNavigator
              Left = 0
              Top = 6
              Width = 234
              Height = 25
              DataSource = DataConnection.SettlementsDS
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
              TabOrder = 0
            end
          end
          object DBGrid11: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.SettlementsDS
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'SETTLEM_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072#1089#1077#1083#1077#1085#1085#1086#1075#1086' '#1087#1091#1085#1082#1090#1072
                Width = 450
                Visible = True
              end
              item
                Color = clMoneyGreen
                Expanded = False
                FieldName = 'ITS_CITY'
                ReadOnly = True
                Title.Caption = #1071#1074#1083'. '#1075#1086#1088#1086#1076#1086#1084
                Visible = True
              end>
          end
        end
        object TabSheet12: TTabSheet
          Caption = #1040#1076#1084'. '#1091#1095#1072#1089#1090#1082#1080
          ImageIndex = 5
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1086#1086#1073#1086#1088#1086#1090
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 986
        Height = 662
        ActivePage = TabSheet8
        Align = alClient
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = #1058#1080#1087#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
          object Panel2: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator2: TDBNavigator
              Left = 0
              Top = 6
              Width = 240
              Height = 25
              TabOrder = 0
            end
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.DocTypesDS
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
                FieldName = 'DOC_TYPE_NAME'
                Title.Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' ('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077')'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_TYPE_BRANCH_CODE'
                Title.Caption = #1050#1086#1076' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
                Width = 150
                Visible = True
              end>
          end
        end
        object TabSheet8: TTabSheet
          Caption = #1055#1088#1077#1081#1089#1082#1091#1088#1072#1085#1090' '#1091#1089#1083#1091#1075
          ImageIndex = 1
          object PageControl5: TPageControl
            Left = 0
            Top = 0
            Width = 978
            Height = 634
            ActivePage = TabSheet4
            Align = alClient
            TabOrder = 0
            object TabSheet4: TTabSheet
              Caption = #1054#1087#1077#1088#1072#1094#1080#1080
              object Panel3: TPanel
                Left = 0
                Top = 565
                Width = 970
                Height = 41
                Align = alBottom
                TabOrder = 0
                object DBNavigator3: TDBNavigator
                  Left = 480
                  Top = 6
                  Width = 200
                  Height = 25
                  DataSource = DataConnection.ServicesDS
                  TabOrder = 0
                  Visible = False
                end
                object BitBtn5: TBitBtn
                  Left = 16
                  Top = 6
                  Width = 162
                  Height = 25
                  Hint = 'Insert'
                  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102
                  DoubleBuffered = True
                  ParentDoubleBuffered = False
                  TabOrder = 1
                  OnClick = BitBtn5Click
                end
                object BitBtn8: TBitBtn
                  Left = 184
                  Top = 6
                  Width = 161
                  Height = 25
                  Caption = #1055#1086#1084#1077#1090#1080#1090#1100' '#1082#1072#1082' '#1075#1088#1091#1087#1087#1091
                  DoubleBuffered = True
                  ParentDoubleBuffered = False
                  TabOrder = 2
                  OnClick = BitBtn8Click
                end
              end
              object DBGrid3: TDBGrid
                Left = 0
                Top = 0
                Width = 970
                Height = 565
                Align = alClient
                DataSource = DataConnection.ServicesDS
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'SERVICE_CODE'
                    ReadOnly = True
                    Title.Caption = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SERVICE_NAME'
                    Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
                    Width = 550
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SERVICE_PRICE'
                    Title.Caption = #1058#1072#1088#1080#1092' ('#1094#1077#1085#1072')'
                    Width = 80
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SECTION_NUM'
                    Title.Caption = #1057#1077#1082#1094#1080#1103' '#1074' '#1076#1077#1088#1077#1074#1077' (0 - '#1073#1077#1079' '#1089#1077#1082#1094#1080#1080')'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HAS_CUSTOM_FORM'
                    Title.Caption = #1048#1084#1077#1077#1090' '#1082#1072#1089#1090#1086#1084#1085#1091#1102' '#1092#1086#1088#1084#1091
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUSTOM_SHEET_INDEX'
                    Title.Caption = #1048#1085#1076#1077#1082#1089' '#1082#1072#1089#1090#1086#1084#1085#1086#1081' '#1092#1086#1088#1084#1099
                    Visible = True
                  end>
              end
            end
            object TabSheet20: TTabSheet
              Caption = #1043#1088#1091#1087#1087#1099' '#1086#1087#1077#1088#1072#1094#1080#1081
              ImageIndex = 1
              OnShow = TabSheet20Show
              object Panel17: TPanel
                Left = 0
                Top = 0
                Width = 970
                Height = 233
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object DBGrid17: TDBGrid
                  Left = 0
                  Top = 0
                  Width = 970
                  Height = 192
                  Align = alClient
                  DataSource = DataConnection.ServiceGroupsDS
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'SERVICE_CODE'
                      Title.Caption = #1050#1086#1076' '#1075#1088#1091#1087#1087#1099
                      Width = 90
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'SERVICE_NAME'
                      Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1099
                      Width = 350
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'SERVICE_PRICE'
                      Title.Caption = #1058#1072#1088#1080#1092' ('#1094#1077#1085#1072')'
                      Width = 80
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'SECTION_NUM'
                      Title.Caption = #1057#1077#1082#1094#1080#1103' '#1074' '#1076#1077#1088#1077#1074#1077' (0 - '#1073#1077#1079' '#1089#1077#1082#1094#1080#1080')'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'HAS_CUSTOM_FORM'
                      Title.Caption = #1048#1084#1077#1077#1090' '#1082#1072#1089#1090#1086#1084#1085#1091#1102' '#1092#1086#1088#1084#1091
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CUSTOM_SHEET_INDEX'
                      Title.Caption = #1048#1085#1076#1077#1082#1089' '#1082#1072#1089#1090#1086#1084#1085#1086#1081' '#1092#1086#1088#1084#1099
                      Visible = True
                    end>
                end
                object Panel18: TPanel
                  Left = 0
                  Top = 192
                  Width = 970
                  Height = 41
                  Align = alBottom
                  TabOrder = 1
                  object DBNavigator17: TDBNavigator
                    Left = 0
                    Top = 6
                    Width = 228
                    Height = 25
                    DataSource = DataConnection.ServiceGroupsDS
                    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost]
                    TabOrder = 0
                  end
                end
              end
              object GroupBox1: TGroupBox
                Left = 0
                Top = 233
                Width = 970
                Height = 373
                Align = alClient
                Caption = #1057#1086#1089#1090#1072#1074' '#1075#1088#1091#1087#1087#1099' '#1086#1087#1077#1088#1072#1094#1080#1081
                TabOrder = 1
                object Panel19: TPanel
                  Left = 2
                  Top = 330
                  Width = 966
                  Height = 41
                  Align = alBottom
                  BevelOuter = bvNone
                  TabOrder = 0
                  object BitBtn1: TBitBtn
                    Left = 16
                    Top = 8
                    Width = 161
                    Height = 25
                    Caption = #1053#1086#1074#1072#1103' '#1086#1087#1077#1088#1072#1094#1080#1103' '#1075#1088#1091#1087#1087#1099
                    DoubleBuffered = True
                    ParentDoubleBuffered = False
                    TabOrder = 0
                    OnClick = BitBtn1Click
                  end
                  object DBNavigator19: TDBNavigator
                    Left = 200
                    Top = 6
                    Width = 232
                    Height = 25
                    DataSource = DataConnection.ServGroupListDS
                    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel, nbRefresh]
                    TabOrder = 1
                  end
                end
                object DBGrid18: TDBGrid
                  Left = 2
                  Top = 15
                  Width = 966
                  Height = 315
                  Align = alClient
                  DataSource = DataConnection.ServGroupListDS
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  Columns = <
                    item
                      Color = clInfoBk
                      Expanded = False
                      FieldName = 'ELINK_LOOK'
                      Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1103' '#1075#1088#1091#1087#1087#1099
                      Width = 600
                      Visible = True
                    end>
                end
              end
            end
            object TabSheet21: TTabSheet
              Caption = 'C'#1086#1089#1090#1072#1074' '#1076#1072#1085#1085#1099#1093' '#1086#1087#1077#1088#1072#1094#1080#1081
              ImageIndex = 2
              OnShow = TabSheet21Show
              object Splitter1: TSplitter
                Left = 0
                Top = 225
                Width = 970
                Height = 3
                Cursor = crVSplit
                Align = alTop
                Color = clMedGray
                ParentColor = False
                ExplicitTop = 281
                ExplicitWidth = 277
              end
              object Panel20: TPanel
                Left = 0
                Top = 0
                Width = 970
                Height = 225
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object DBGrid19: TDBGrid
                  Left = 0
                  Top = 0
                  Width = 970
                  Height = 224
                  Align = alClient
                  DataSource = DataConnection.ServicesDS
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
                      FieldName = 'SERVICE_CODE'
                      Title.Caption = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
                      Width = 90
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'SERVICE_NAME'
                      Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
                      Width = 600
                      Visible = True
                    end>
                end
                object Panel21: TPanel
                  Left = 0
                  Top = 224
                  Width = 970
                  Height = 1
                  Align = alBottom
                  TabOrder = 1
                end
              end
              object GroupBox2: TGroupBox
                Left = 0
                Top = 228
                Width = 970
                Height = 378
                Align = alClient
                Caption = #1057#1086#1089#1090#1072#1074' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1080
                TabOrder = 1
                object PageControl6: TPageControl
                  Left = 2
                  Top = 15
                  Width = 966
                  Height = 361
                  ActivePage = ServActItemsTabSheet
                  Align = alClient
                  TabOrder = 0
                  object ServActItemsTabSheet: TTabSheet
                    Caption = 'ServActItemsTabSheet'
                    TabVisible = False
                    object Panel22: TPanel
                      Left = 0
                      Top = 310
                      Width = 958
                      Height = 41
                      Align = alBottom
                      BevelOuter = bvNone
                      TabOrder = 0
                      object BitBtn2: TBitBtn
                        Left = 16
                        Top = 6
                        Width = 193
                        Height = 25
                        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1101#1083#1077#1084#1077#1085#1090' '#1086#1087#1077#1088#1072#1094#1080#1080
                        DoubleBuffered = True
                        ParentDoubleBuffered = False
                        TabOrder = 0
                        OnClick = BitBtn2Click
                      end
                      object DBNavigator18: TDBNavigator
                        Left = 224
                        Top = 6
                        Width = 232
                        Height = 25
                        DataSource = DataConnection.ServActItemsDS
                        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel, nbRefresh]
                        TabOrder = 1
                      end
                    end
                    object DBGridEh2: TDBGridEh
                      Left = 0
                      Top = 0
                      Width = 958
                      Height = 310
                      Align = alClient
                      DataSource = DataConnection.ServActItemsDS
                      Flat = False
                      FooterColor = clWindow
                      FooterFont.Charset = DEFAULT_CHARSET
                      FooterFont.Color = clWindowText
                      FooterFont.Height = -11
                      FooterFont.Name = 'Tahoma'
                      FooterFont.Style = []
                      RowDetailPanel.Color = clBtnFace
                      TabOrder = 1
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'Tahoma'
                      TitleFont.Style = []
                      Columns = <
                        item
                          AlwaysShowEditButton = True
                          EditButtons = <>
                          FieldName = 'AEL_TYPE_LOOK'
                          Footers = <>
                          Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
                          Width = 600
                        end
                        item
                          EditButtons = <>
                          FieldName = 'STATIC_DATA'
                          Footers = <>
                          Title.Caption = #1055#1072#1088'-'#1088' '#1088#1091#1095#1085'. '#1074#1074#1086#1076#1072' ('#1079#1085#1072#1095'. '#1087#1086' '#1091#1084#1086#1083#1095'.)'
                          Width = 200
                        end>
                      object RowDetailData: TRowDetailPanelControlEh
                      end
                    end
                  end
                  object AppServItemsWithNewTypeTabSheet: TTabSheet
                    Caption = 'AppServItemsWithNewTypeTabSheet'
                    ImageIndex = 1
                    TabVisible = False
                    object Label1: TLabel
                      Left = 16
                      Top = 16
                      Width = 272
                      Height = 18
                      Caption = #1058#1080#1087' '#1086#1090#1085#1086#1096#1077#1085#1080#1103' '#1082' '#1086#1087#1077#1088#1072#1094#1080#1080' ('#1074#1099#1073#1077#1088#1080#1090#1077')'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label2: TLabel
                      Left = 16
                      Top = 88
                      Width = 454
                      Height = 18
                      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1085#1086#1096#1077#1085#1080#1103' ('#1085#1072#1087#1088#1080#1084#1077#1088' "'#1055#1088#1077#1078#1085#1080#1081' '#1072#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080'")'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Panel23: TPanel
                      Left = 0
                      Top = 310
                      Width = 958
                      Height = 41
                      Align = alBottom
                      BevelOuter = bvNone
                      TabOrder = 0
                      object BitBtn3: TBitBtn
                        Left = 16
                        Top = 8
                        Width = 281
                        Height = 25
                        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1101#1083#1077#1084#1077#1085#1090' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1085#1086#1074#1086#1075#1086' '#1090#1080#1087#1072
                        DoubleBuffered = True
                        ParentDoubleBuffered = False
                        TabOrder = 0
                        OnClick = BitBtn3Click
                      end
                    end
                    object NewAELETypeIDComboBox: TComboBox
                      Left = 16
                      Top = 40
                      Width = 465
                      Height = 26
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ItemHeight = 18
                      ItemIndex = 0
                      ParentFont = False
                      TabOrder = 1
                      Text = #1058#1088#1077#1073#1091#1077#1084#1072#1103' '#1072#1076#1088#1077#1089#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
                      Items.Strings = (
                        #1058#1088#1077#1073#1091#1077#1084#1072#1103' '#1072#1076#1088#1077#1089#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
                        #1058#1088#1091#1073#1091#1077#1084#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
                        #1057#1086#1089#1090#1072#1074' '#1083#1080#1094' '#1086#1087#1077#1088#1072#1094#1080#1080
                        #1055#1088#1086#1095#1080#1077' '#1076#1072#1085#1085#1099#1077' '#1088#1091#1095#1085#1086#1075#1086' '#1074#1074#1086#1076#1072)
                    end
                    object NewAELTypeNameEdit: TEdit
                      Left = 16
                      Top = 112
                      Width = 465
                      Height = 26
                      CharCase = ecUpperCase
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 2
                    end
                  end
                end
              end
            end
            object TabSheet22: TTabSheet
              Caption = #1055#1088#1080#1074#1103#1079#1082#1072' '#1086#1087#1077#1088#1072#1094#1080#1081' '#1082' '#1086#1090#1095#1077#1090#1072#1084
              ImageIndex = 3
              OnShow = TabSheet22Show
              object Splitter2: TSplitter
                Left = 0
                Top = 225
                Width = 970
                Height = 3
                Cursor = crVSplit
                Align = alTop
                Color = clMedGray
                ParentColor = False
              end
              object GroupBox3: TGroupBox
                Left = 0
                Top = 228
                Width = 970
                Height = 378
                Align = alClient
                Caption = #1054#1090#1095#1077#1090#1099' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1080
                TabOrder = 0
                object PageControl7: TPageControl
                  Left = 2
                  Top = 15
                  Width = 966
                  Height = 361
                  ActivePage = TabSheet23
                  Align = alClient
                  TabOrder = 0
                  object TabSheet23: TTabSheet
                    Caption = 'ServActItemsTabSheet'
                    TabVisible = False
                    object DBGrid21: TDBGrid
                      Left = 0
                      Top = 0
                      Width = 958
                      Height = 310
                      Align = alClient
                      DataSource = DataConnection.ServiceReportsDS
                      TabOrder = 0
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'Tahoma'
                      TitleFont.Style = []
                      Columns = <
                        item
                          Expanded = False
                          FieldName = 'SERV_REPORT_LOOK'
                          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1095#1077#1090#1072
                          Width = 650
                          Visible = True
                        end>
                    end
                    object Panel24: TPanel
                      Left = 0
                      Top = 310
                      Width = 958
                      Height = 41
                      Align = alBottom
                      BevelOuter = bvNone
                      TabOrder = 1
                      object BitBtn4: TBitBtn
                        Left = 16
                        Top = 6
                        Width = 193
                        Height = 25
                        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1090#1095#1077#1090' '#1086#1087#1077#1088#1072#1094#1080#1080
                        DoubleBuffered = True
                        ParentDoubleBuffered = False
                        TabOrder = 0
                        OnClick = BitBtn4Click
                      end
                      object DBNavigator20: TDBNavigator
                        Left = 224
                        Top = 6
                        Width = 232
                        Height = 25
                        DataSource = DataConnection.ServiceReportsDS
                        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel, nbRefresh]
                        TabOrder = 1
                      end
                    end
                  end
                end
              end
              object Panel26: TPanel
                Left = 0
                Top = 0
                Width = 970
                Height = 225
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                object DBGrid22: TDBGrid
                  Left = 0
                  Top = 0
                  Width = 970
                  Height = 224
                  Align = alClient
                  DataSource = DataConnection.ServicesDS
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
                      FieldName = 'SERVICE_CODE'
                      Title.Caption = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
                      Width = 90
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'SERVICE_NAME'
                      Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
                      Width = 600
                      Visible = True
                    end>
                end
                object Panel27: TPanel
                  Left = 0
                  Top = 224
                  Width = 970
                  Height = 1
                  Align = alBottom
                  TabOrder = 1
                end
              end
            end
            object TabSheet24: TTabSheet
              Caption = #1057#1086#1089#1090#1072#1074' '#1076#1072#1085#1085#1099#1093' '#1075#1088#1091#1087#1087' '#1086#1087#1077#1088#1072#1094#1080#1081
              ImageIndex = 4
              OnShow = TabSheet24Show
              object Panel25: TPanel
                Left = 0
                Top = 0
                Width = 970
                Height = 161
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object DBGrid23: TDBGrid
                  Left = 0
                  Top = 0
                  Width = 970
                  Height = 160
                  Align = alClient
                  DataSource = DataConnection.ServiceGroupsDS
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
                      FieldName = 'SERVICE_CODE'
                      Title.Caption = #1050#1086#1076' '#1075#1088#1091#1087#1087#1099
                      Width = 90
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'SERVICE_NAME'
                      Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1099
                      Width = 350
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'SERVICE_PRICE'
                      Title.Caption = #1058#1072#1088#1080#1092' ('#1094#1077#1085#1072')'
                      Width = 80
                      Visible = True
                    end>
                end
                object Panel28: TPanel
                  Left = 0
                  Top = 160
                  Width = 970
                  Height = 1
                  Align = alBottom
                  TabOrder = 1
                  Visible = False
                  object DBNavigator21: TDBNavigator
                    Left = 0
                    Top = 6
                    Width = 240
                    Height = 25
                    TabOrder = 0
                  end
                end
              end
              object GroupBox6: TGroupBox
                Left = 0
                Top = 161
                Width = 970
                Height = 445
                Align = alClient
                Caption = #1057#1086#1089#1090#1072#1074' '#1076#1072#1085#1085#1099#1093' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1081' '#1075#1088#1091#1087#1087#1099' ('#1087#1072#1082#1077#1090#1072')'
                TabOrder = 1
                object PageControl8: TPageControl
                  Left = 2
                  Top = 15
                  Width = 966
                  Height = 428
                  ActivePage = ServGroupActItemsTabSheet
                  Align = alClient
                  TabOrder = 0
                  object ServGroupActItemsTabSheet: TTabSheet
                    Caption = 'ServActItemsTabSheet'
                    TabVisible = False
                    object Splitter3: TSplitter
                      Left = 0
                      Top = 161
                      Width = 958
                      Height = 3
                      Cursor = crVSplit
                      Align = alTop
                      Color = clMedGray
                      ParentColor = False
                      ExplicitTop = 65
                      ExplicitWidth = 240
                    end
                    object Panel31: TPanel
                      Left = 0
                      Top = 120
                      Width = 958
                      Height = 41
                      Align = alTop
                      BevelOuter = bvNone
                      TabOrder = 0
                      object BitBtn6: TBitBtn
                        Left = 16
                        Top = 6
                        Width = 193
                        Height = 25
                        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1101#1083#1077#1084#1077#1085#1090' '#1075#1088#1091#1087#1087#1099' ('#1087#1072#1082#1077#1090#1072')'
                        DoubleBuffered = True
                        ParentDoubleBuffered = False
                        TabOrder = 0
                        OnClick = BitBtn6Click
                      end
                      object DBNavigator23: TDBNavigator
                        Left = 400
                        Top = 6
                        Width = 120
                        Height = 25
                        DataSource = DataConnection.ServGroupsActItemsDS
                        VisibleButtons = [nbFirst, nbLast, nbDelete]
                        TabOrder = 1
                      end
                      object BitBtn9: TBitBtn
                        Left = 224
                        Top = 6
                        Width = 161
                        Height = 25
                        Action = DataConnection.ServGroupActItemsDSP
                        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
                        DoubleBuffered = True
                        ParentDoubleBuffered = False
                        TabOrder = 2
                      end
                    end
                    object Panel30: TPanel
                      Left = 0
                      Top = 164
                      Width = 958
                      Height = 254
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 1
                      object Splitter4: TSplitter
                        Left = 496
                        Top = 0
                        Height = 254
                        Color = clMedGray
                        ParentColor = False
                        ExplicitLeft = 360
                        ExplicitTop = 160
                        ExplicitHeight = 100
                      end
                      object GroupBox5: TGroupBox
                        Left = 0
                        Top = 0
                        Width = 456
                        Height = 254
                        Align = alLeft
                        Caption = 
                          #1042' '#1082#1072#1082#1080#1077' '#1076#1072#1085#1085#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1081' '#1087#1072#1082#1077#1090#1072' '#1088#1072#1089#1082#1080#1076#1099#1074#1072#1077#1090#1089#1103' ('#1079#1072#1074#1080#1089#1080#1084#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1087 +
                          #1086#1076#1095'. '#1086#1087#1077#1088#1072#1094#1080#1081')'
                        TabOrder = 0
                        object DBGrid24: TDBGrid
                          Left = 2
                          Top = 15
                          Width = 452
                          Height = 232
                          Align = alClient
                          DataSource = DataConnection.PacketSubOperationLinkItemsDS
                          Options = [dgEditing, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
                              FieldName = 'SUB_OP_LNK_DATA_NAME'
                              Title.Caption = #1047#1072#1074#1080#1089#1080#1084#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1087#1086#1076#1095'. '#1086#1087#1077#1088#1072#1094#1080#1081
                              Width = 450
                              Visible = True
                            end>
                        end
                        object Panel34: TPanel
                          Left = 2
                          Top = 247
                          Width = 452
                          Height = 5
                          Align = alBottom
                          BevelOuter = bvNone
                          TabOrder = 1
                          Visible = False
                        end
                      end
                      object Panel29: TPanel
                        Left = 456
                        Top = 0
                        Width = 40
                        Height = 254
                        Align = alLeft
                        BevelOuter = bvNone
                        TabOrder = 1
                        object SpeedButton1: TSpeedButton
                          Left = 8
                          Top = 112
                          Width = 23
                          Height = 22
                          Caption = '<<'
                          OnClick = SpeedButton1Click
                        end
                        object SpeedButton2: TSpeedButton
                          Left = 8
                          Top = 144
                          Width = 23
                          Height = 22
                          Caption = '>>'
                          OnClick = SpeedButton2Click
                        end
                      end
                      object GroupBox4: TGroupBox
                        Left = 499
                        Top = 0
                        Width = 459
                        Height = 254
                        Align = alClient
                        Caption = #1053#1077#1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1087#1086#1076#1095#1080#1085#1077#1085#1085#1099#1093' '#1086#1087#1077#1088#1072#1094#1080#1081' '#1087#1072#1082#1077#1090#1072' '#1087#1086#1076#1093#1086#1076#1103#1097#1077#1075#1086' '#1090#1080#1087#1072
                        TabOrder = 2
                        object DBGrid26: TDBGrid
                          Left = 2
                          Top = 15
                          Width = 455
                          Height = 234
                          Align = alClient
                          DataSource = DataConnection.PacketOperationsFreeLnkItemsDS
                          Options = [dgEditing, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
                              FieldName = 'SUB_OP_LNK_DATA_NAME'
                              Title.Caption = #1053#1077#1087#1088#1080#1074#1103#1079#1072#1085#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1087#1086#1076#1095'. '#1086#1087#1077#1088#1072#1094#1080#1081
                              Width = 450
                              Visible = True
                            end>
                        end
                        object Panel33: TPanel
                          Left = 2
                          Top = 249
                          Width = 455
                          Height = 3
                          Align = alBottom
                          BevelOuter = bvNone
                          TabOrder = 1
                          Visible = False
                        end
                      end
                    end
                    object DBGridEh1: TDBGridEh
                      Left = 0
                      Top = 0
                      Width = 958
                      Height = 120
                      Align = alTop
                      DataSource = DataConnection.ServGroupsActItemsDS
                      Flat = False
                      FooterColor = clWindow
                      FooterFont.Charset = DEFAULT_CHARSET
                      FooterFont.Color = clWindowText
                      FooterFont.Height = -11
                      FooterFont.Name = 'Tahoma'
                      FooterFont.Style = []
                      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
                      RowDetailPanel.Color = clBtnFace
                      TabOrder = 2
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'Tahoma'
                      TitleFont.Style = []
                      Columns = <
                        item
                          AlwaysShowEditButton = True
                          EditButtons = <>
                          FieldName = 'AEL_TYPE_LOOK'
                          Footers = <>
                          Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1076#1072#1085#1085#1099#1093' '#1087#1072#1082#1077#1090#1072
                          Width = 650
                        end
                        item
                          EditButtons = <>
                          FieldName = 'STATIC_DATA'
                          Footers = <>
                          Title.Caption = #1055#1072#1088'-'#1088' '#1088#1091#1095#1085'. '#1074#1074#1086#1076#1072' ('#1079#1085#1072#1095'. '#1087#1086' '#1091#1084#1086#1083#1095'.)'
                          Width = 200
                        end>
                      object RowDetailData: TRowDetailPanelControlEh
                      end
                    end
                  end
                  object AppServGroupItemsWithNewTypeTabSheet: TTabSheet
                    Caption = 'AppServItemsWithNewTypeTabSheet'
                    ImageIndex = 1
                    TabVisible = False
                    object Label3: TLabel
                      Left = 16
                      Top = 16
                      Width = 272
                      Height = 18
                      Caption = #1058#1080#1087' '#1086#1090#1085#1086#1096#1077#1085#1080#1103' '#1082' '#1086#1087#1077#1088#1072#1094#1080#1080' ('#1074#1099#1073#1077#1088#1080#1090#1077')'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label4: TLabel
                      Left = 16
                      Top = 88
                      Width = 454
                      Height = 18
                      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1085#1086#1096#1077#1085#1080#1103' ('#1085#1072#1087#1088#1080#1084#1077#1088' "'#1055#1088#1077#1078#1085#1080#1081' '#1072#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080'")'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Panel32: TPanel
                      Left = 0
                      Top = 377
                      Width = 958
                      Height = 41
                      Align = alBottom
                      BevelOuter = bvNone
                      TabOrder = 0
                      object BitBtn7: TBitBtn
                        Left = 16
                        Top = 8
                        Width = 281
                        Height = 25
                        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1101#1083#1077#1084#1077#1085#1090' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1085#1086#1074#1086#1075#1086' '#1090#1080#1087#1072
                        DoubleBuffered = True
                        ParentDoubleBuffered = False
                        TabOrder = 0
                        OnClick = BitBtn7Click
                      end
                    end
                    object NewGroupAELETypeIDComboBox: TComboBox
                      Left = 16
                      Top = 40
                      Width = 465
                      Height = 26
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ItemHeight = 18
                      ItemIndex = 0
                      ParentFont = False
                      TabOrder = 1
                      Text = #1058#1088#1077#1073#1091#1077#1084#1072#1103' '#1072#1076#1088#1077#1089#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
                      Items.Strings = (
                        #1058#1088#1077#1073#1091#1077#1084#1072#1103' '#1072#1076#1088#1077#1089#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
                        #1058#1088#1091#1073#1091#1077#1084#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
                        #1057#1086#1089#1090#1072#1074' '#1083#1080#1094' '#1086#1087#1077#1088#1072#1094#1080#1080
                        #1055#1088#1086#1095#1080#1077' '#1076#1072#1085#1085#1099#1077' '#1088#1091#1095#1085#1086#1075#1086' '#1074#1074#1086#1076#1072)
                    end
                    object NewGroupAELTypeNameEdit: TEdit
                      Left = 16
                      Top = 112
                      Width = 465
                      Height = 26
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 2
                    end
                  end
                end
              end
            end
            object TabSheet25: TTabSheet
              Caption = #1054#1090#1085#1086#1096#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093
              ImageIndex = 5
              object DBGrid20: TDBGrid
                Left = 0
                Top = 0
                Width = 970
                Height = 565
                Align = alClient
                DataSource = DataConnection.ElinksAssocsDS
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'MASTER_LOOK'
                    Title.Caption = #1055#1086#1083#1077' '#1086#1090#1082#1091#1076#1072' '#1073#1077#1088#1077#1090#1089#1103
                    Width = 400
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SLAVE_LOOK'
                    Title.Caption = #1055#1086#1083#1077' '#1082#1091#1076#1072' '#1087#1086#1087#1072#1076#1072#1077#1090
                    Width = 400
                    Visible = True
                  end>
              end
              object Panel35: TPanel
                Left = 0
                Top = 565
                Width = 970
                Height = 41
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 1
                object BitBtn10: TBitBtn
                  Left = 8
                  Top = 6
                  Width = 153
                  Height = 25
                  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1090#1085#1086#1096#1077#1085#1080#1077
                  DoubleBuffered = True
                  ParentDoubleBuffered = False
                  TabOrder = 0
                  OnClick = BitBtn10Click
                end
                object BitBtn11: TBitBtn
                  Left = 184
                  Top = 6
                  Width = 153
                  Height = 25
                  Action = DataConnection.ElinksAssocDSP
                  Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
                  DoubleBuffered = True
                  ParentDoubleBuffered = False
                  TabOrder = 1
                end
              end
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = #1054#1050#1042#1069#1044
          ImageIndex = 2
          object Panel4: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator4: TDBNavigator
              Left = 0
              Top = 6
              Width = 240
              Height = 25
              TabOrder = 0
            end
          end
          object DBGrid4: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.OKVDDS
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
                FieldName = 'OKVD_INT_CODE'
                Title.Caption = #1050#1086#1076' '#1042#1044
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OKVD_CODE'
                Title.Caption = #1054#1050#1042#1069#1044
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OKVD_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1080#1076#1072' '#1069#1044
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OKVD_SECTION_NAME'
                Title.Caption = #1056#1072#1079#1076#1077#1083' '#1054#1050#1042#1069#1044
                Width = 151
                Visible = True
              end>
          end
        end
        object TabSheet10: TTabSheet
          Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1103' '#1076#1083#1103' '#1086#1087#1077#1088#1072#1094#1080#1081
          ImageIndex = 3
          object Panel6: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator6: TDBNavigator
              Left = 0
              Top = 6
              Width = 240
              Height = 25
              TabOrder = 0
            end
          end
          object DBGrid5: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.AReasonsDS
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
                FieldName = 'A_REASON_CODE'
                Title.Caption = #1050#1086#1076' '#1086#1089#1085#1086#1074#1072#1085#1080#1103
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'A_REASON_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1089#1085#1086#1074#1072#1085#1080#1103' '#1086#1087#1077#1088#1072#1094#1080#1080
                Width = 350
                Visible = True
              end>
          end
        end
        object TabSheet11: TTabSheet
          Caption = #1055#1088#1080#1095#1080#1085#1099' '#1074#1099#1076#1072#1095#1080
          ImageIndex = 4
          object Panel5: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator5: TDBNavigator
              Left = 0
              Top = 6
              Width = 240
              Height = 25
              TabOrder = 0
            end
          end
          object DBGrid6: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.TReasonsDS
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
                FieldName = 'A_REASON_CODE'
                Title.Caption = #1050#1086#1076' '#1087#1088#1080#1095#1080#1085#1099
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'A_REASON_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1080#1095#1080#1085#1099' '#1074#1099#1076#1072#1095#1080
                Width = 350
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet14: TTabSheet
      Caption = #1059#1095#1077#1090#1085#1099#1077' '#1060#1052#1057
      ImageIndex = 2
      object PageControl4: TPageControl
        Left = 0
        Top = 0
        Width = 986
        Height = 662
        ActivePage = TabSheet26
        Align = alClient
        TabOrder = 0
        object TabSheet15: TTabSheet
          Caption = #1052#1077#1089#1090#1086#1087#1088#1077#1073#1099#1074#1072#1085#1080#1103
          object Panel8: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator8: TDBNavigator
              Left = 0
              Top = 6
              Width = 240
              Height = 25
              TabOrder = 0
            end
          end
          object DBGrid8: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.PlaceStatusesDS
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
                FieldName = 'PLSTATUS_INT_CODE'
                Title.Caption = #1050#1086#1076' '#1084#1077#1089#1090#1086#1087#1088#1077#1073#1099#1074#1072#1085#1080#1103
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PLSTATUS_NAME'
                Title.Caption = #1057#1090#1072#1090#1091#1089' '#1087#1088#1077#1073#1099#1074#1072#1085#1080#1103
                Width = 400
                Visible = True
              end>
          end
        end
        object TabSheet16: TTabSheet
          Caption = #1057#1074#1103#1079#1080
          ImageIndex = 1
          object Panel9: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator9: TDBNavigator
              Left = 0
              Top = 6
              Width = 232
              Height = 25
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel, nbRefresh]
              TabOrder = 0
            end
          end
          object DBGrid9: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.LinksDS
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ELINK_NAME'
                ReadOnly = True
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1080#1087#1072' '#1089#1074#1103#1079#1080
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ELINK_TYPE'
                ReadOnly = True
                Title.Caption = #1043#1088#1091#1087#1087#1072' '#1089#1074#1103#1079#1077#1081
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ELINK_LEVEL'
                ReadOnly = True
                Title.Caption = #1059#1088#1086#1074#1077#1085#1100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORDER_VAL'
                Title.Caption = #1055#1086#1088#1103#1076#1086#1082
                Visible = True
              end>
          end
        end
        object TabSheet17: TTabSheet
          Caption = #1057#1090#1072#1090#1091#1089' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          ImageIndex = 2
          object Panel10: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator10: TDBNavigator
              Left = 0
              Top = 6
              Width = 240
              Height = 25
              TabOrder = 0
            end
          end
          object DBGrid10: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.DocStatusesDS
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
                FieldName = 'PLSTATUS_INT_CODE'
                Title.Caption = #1050#1086#1076' '#1089#1090#1072#1090#1091#1089#1072
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PLSTATUS_NAME'
                Title.Caption = #1057#1090#1072#1090#1091#1089' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
                Width = 400
                Visible = True
              end>
          end
        end
        object TabSheet18: TTabSheet
          Caption = #1054#1088#1075#1072#1085#1099' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072
          ImageIndex = 3
          object Panel12: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator12: TDBNavigator
              Left = 0
              Top = 6
              Width = 234
              Height = 25
              DataSource = DataConnection.FMSBranchesDS
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
              TabOrder = 0
            end
          end
          object DBGrid12: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.FMSBranchesDS
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'BRANCHE_CODE'
                Title.Caption = #1050#1086#1076' '#1086#1088#1075#1072#1085#1072' '#1088#1077#1075#1080#1089#1090#1088'.'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BRANCHE_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OM_CODE'
                Title.Caption = #1050#1086#1076' '#1054#1052
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PVS_CODE'
                Title.Caption = #1050#1086#1076' '#1087#1086#1076#1088#1072#1079#1076'. '#1055#1042#1057
                Width = 120
                Visible = True
              end>
          end
        end
        object Национальности: TTabSheet
          Caption = #1053#1072#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1090#1080
          ImageIndex = 4
          object Panel14: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator14: TDBNavigator
              Left = 0
              Top = 6
              Width = 234
              Height = 25
              DataSource = DataConnection.NationsDS
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
              TabOrder = 0
            end
          end
          object DBGrid14: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.NationsDS
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'NATION_INT_CODE'
                Title.Caption = #1050#1086#1076' '#1085#1072#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1090#1080
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NATION_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NATION_TYPE'
                Title.Caption = #1058#1080#1087
                Width = 80
                Visible = True
              end>
          end
        end
        object TabSheet19: TTabSheet
          Caption = #1059#1088#1086#1074#1085#1080' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103
          ImageIndex = 5
          object Panel15: TPanel
            Left = 0
            Top = 593
            Width = 978
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator15: TDBNavigator
              Left = 0
              Top = 6
              Width = 234
              Height = 25
              DataSource = DataConnection.BuildTypesDS
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
              TabOrder = 0
            end
          end
          object DBGrid15: TDBGrid
            Left = 0
            Top = 0
            Width = 978
            Height = 593
            Align = alClient
            DataSource = DataConnection.BuildTypesDS
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'BUILDING_TYPE_INT_CODE'
                Title.Caption = #1050#1086#1076' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BULDING_TYPE_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103
                Width = 450
                Visible = True
              end>
          end
        end
        object TabSheet26: TTabSheet
          Caption = #1057#1077#1082#1094#1080#1080' '#1090#1080#1087#1086#1074' '#1086#1087#1077#1088#1072#1094#1080#1081
          ImageIndex = 6
          object ListBox1: TListBox
            Left = 0
            Top = 0
            Width = 978
            Height = 634
            Align = alClient
            ItemHeight = 13
            Items.Strings = (
              'I. '#1054#1041#1052#1045#1053' '#1055#1040#1057#1055#1054#1056#1058#1040
              'II. '#1056#1045#1043#1048#1057#1058#1056#1040#1062#1048#1071)
            TabOrder = 0
          end
        end
      end
    end
  end
end
