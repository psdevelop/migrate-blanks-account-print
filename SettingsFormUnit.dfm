object SYSSettingsForm: TSYSSettingsForm
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1089#1080#1089#1090#1077#1084#1099
  ClientHeight = 629
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 629
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 483
    object TabSheet1: TTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077
      ExplicitHeight = 455
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 627
        Height = 601
        Align = alClient
        Caption = #1059#1084#1086#1083#1095#1072#1085#1080#1103
        TabOrder = 0
        ExplicitHeight = 455
        object DBText1: TDBText
          Left = 16
          Top = 16
          Width = 353
          Height = 17
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.FMSBranchDefSettDS
        end
        object DBText2: TDBText
          Left = 16
          Top = 63
          Width = 353
          Height = 15
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.StateDefSettDS
        end
        object DBText3: TDBText
          Left = 16
          Top = 112
          Width = 353
          Height = 17
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.FMSBrStr2SettDS
        end
        object DBText5: TDBText
          Left = 16
          Top = 208
          Width = 353
          Height = 17
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.RDirFIOStr2SettDS
        end
        object DBText4: TDBText
          Left = 16
          Top = 160
          Width = 353
          Height = 17
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.RDirFIOStrSettDS
        end
        object DBText6: TDBText
          Left = 16
          Top = 256
          Width = 353
          Height = 17
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.RRankStrSettDS
        end
        object DBText7: TDBText
          Left = 16
          Top = 304
          Width = 353
          Height = 17
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.RRankStr2SettDS
        end
        object DBText15: TDBText
          Left = 16
          Top = 352
          Width = 353
          Height = 17
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.AdrLinkDefDS
        end
        object DBText16: TDBText
          Left = 16
          Top = 400
          Width = 353
          Height = 17
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.DocLinkDefDS
        end
        object DBText17: TDBText
          Left = 16
          Top = 448
          Width = 353
          Height = 17
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.DocTypeDefDS
        end
        object DBText18: TDBText
          Left = 16
          Top = 496
          Width = 353
          Height = 17
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.DocStatusDefDS
        end
        object DBText19: TDBText
          Left = 16
          Top = 544
          Width = 353
          Height = 17
          DataField = 'SYS_SETTING_NAME'
          DataSource = DataConnection.PersStatusDefDS
        end
        object DBNavigator1: TDBNavigator
          Left = 375
          Top = 32
          Width = 50
          Height = 21
          DataSource = DataConnection.FMSBranchDefSettDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 0
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 16
          Top = 32
          Width = 353
          Height = 21
          DataField = 'INT_VALUE'
          DataSource = DataConnection.FMSBranchDefSettDS
          KeyField = 'BRANCHE_ID'
          ListField = 'BRANCHE_NAME'
          ListSource = DataConnection.FMSBranchesDS
          TabOrder = 1
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 16
          Top = 80
          Width = 353
          Height = 21
          DataField = 'INT_VALUE'
          DataSource = DataConnection.StateDefSettDS
          KeyField = 'STATE_ID'
          ListField = 'STATE_NAME'
          ListSource = DataConnection.StatesDS
          TabOrder = 2
        end
        object DBNavigator2: TDBNavigator
          Left = 375
          Top = 80
          Width = 50
          Height = 21
          DataSource = DataConnection.StateDefSettDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 3
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 128
          Width = 353
          Height = 19
          Ctl3D = False
          DataField = 'STR_VALUE'
          DataSource = DataConnection.FMSBrStr2SettDS
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBNavigator3: TDBNavigator
          Left = 375
          Top = 126
          Width = 50
          Height = 21
          DataSource = DataConnection.FMSBrStr2SettDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 5
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 224
          Width = 353
          Height = 19
          Ctl3D = False
          DataField = 'STR_VALUE'
          DataSource = DataConnection.RDirFIOStr2SettDS
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBNavigator5: TDBNavigator
          Left = 375
          Top = 222
          Width = 50
          Height = 21
          DataSource = DataConnection.RDirFIOStr2SettDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 7
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 176
          Width = 353
          Height = 19
          Ctl3D = False
          DataField = 'STR_VALUE'
          DataSource = DataConnection.RDirFIOStrSettDS
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 272
          Width = 353
          Height = 19
          Ctl3D = False
          DataField = 'STR_VALUE'
          DataSource = DataConnection.RRankStrSettDS
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 320
          Width = 353
          Height = 19
          Ctl3D = False
          DataField = 'STR_VALUE'
          DataSource = DataConnection.RRankStr2SettDS
          ParentCtl3D = False
          TabOrder = 10
        end
        object DBNavigator6: TDBNavigator
          Left = 375
          Top = 318
          Width = 50
          Height = 21
          DataSource = DataConnection.RRankStr2SettDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 11
        end
        object DBNavigator7: TDBNavigator
          Left = 375
          Top = 174
          Width = 50
          Height = 21
          DataSource = DataConnection.RDirFIOStrSettDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 12
        end
        object DBNavigator4: TDBNavigator
          Left = 375
          Top = 270
          Width = 50
          Height = 21
          DataSource = DataConnection.RRankStrSettDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 13
        end
        object DBNavigator15: TDBNavigator
          Left = 375
          Top = 368
          Width = 50
          Height = 21
          DataSource = DataConnection.AdrLinkDefDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 14
        end
        object DBLookupComboBox10: TDBLookupComboBox
          Left = 16
          Top = 368
          Width = 353
          Height = 21
          DataField = 'INT_VALUE'
          DataSource = DataConnection.AdrLinkDefDS
          KeyField = 'ELINK_ID'
          ListField = 'ELINK_NAME'
          ListSource = DataConnection.AdrLinksDS
          TabOrder = 15
        end
        object DBNavigator16: TDBNavigator
          Left = 375
          Top = 416
          Width = 50
          Height = 21
          DataSource = DataConnection.DocLinkDefDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 16
        end
        object DBLookupComboBox11: TDBLookupComboBox
          Left = 16
          Top = 416
          Width = 353
          Height = 21
          DataField = 'INT_VALUE'
          DataSource = DataConnection.DocLinkDefDS
          KeyField = 'ELINK_ID'
          ListField = 'ELINK_NAME'
          ListSource = DataConnection.DocLinksDS
          TabOrder = 17
        end
        object DBLookupComboBox12: TDBLookupComboBox
          Left = 16
          Top = 464
          Width = 353
          Height = 21
          DataField = 'INT_VALUE'
          DataSource = DataConnection.DocTypeDefDS
          KeyField = 'DOC_TYPE_ID'
          ListField = 'DOC_TYPE_NAME'
          ListSource = DataConnection.DocTypesDS
          TabOrder = 18
        end
        object DBNavigator17: TDBNavigator
          Left = 375
          Top = 464
          Width = 50
          Height = 21
          DataSource = DataConnection.DocTypeDefDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 19
        end
        object DBLookupComboBox13: TDBLookupComboBox
          Left = 16
          Top = 512
          Width = 353
          Height = 21
          DataField = 'INT_VALUE'
          DataSource = DataConnection.DocStatusDefDS
          KeyField = 'PLACE_STATUS_ID'
          ListField = 'PLSTATUS_NAME'
          ListSource = DataConnection.DocStatusesDS
          TabOrder = 20
        end
        object DBNavigator18: TDBNavigator
          Left = 375
          Top = 512
          Width = 50
          Height = 21
          DataSource = DataConnection.DocStatusDefDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 21
        end
        object DBLookupComboBox14: TDBLookupComboBox
          Left = 16
          Top = 560
          Width = 353
          Height = 21
          DataField = 'INT_VALUE'
          DataSource = DataConnection.PersStatusDefDS
          KeyField = 'PLACE_STATUS_ID'
          ListField = 'PLSTATUS_NAME'
          ListSource = DataConnection.PlaceStatusesDS
          TabOrder = 22
        end
        object DBNavigator19: TDBNavigator
          Left = 375
          Top = 560
          Width = 50
          Height = 21
          DataSource = DataConnection.PersStatusDefDS
          VisibleButtons = [nbPost, nbRefresh]
          TabOrder = 23
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1043#1077#1086#1075#1088#1072#1092#1080#1103
      ImageIndex = 1
      ExplicitHeight = 563
      object DBText8: TDBText
        Left = 16
        Top = 17
        Width = 353
        Height = 17
        DataField = 'SYS_SETTING_NAME'
        DataSource = DataConnection.AdrCountryDefDS
      end
      object DBText9: TDBText
        Left = 16
        Top = 65
        Width = 353
        Height = 17
        DataField = 'SYS_SETTING_NAME'
        DataSource = DataConnection.AdrStateDefDS
      end
      object DBText10: TDBText
        Left = 16
        Top = 113
        Width = 353
        Height = 17
        DataField = 'SYS_SETTING_NAME'
        DataSource = DataConnection.AdrDistrictDefDS
      end
      object DBText11: TDBText
        Left = 16
        Top = 161
        Width = 353
        Height = 17
        DataField = 'SYS_SETTING_NAME'
        DataSource = DataConnection.AdrSettlDefDS
      end
      object DBText12: TDBText
        Left = 16
        Top = 209
        Width = 353
        Height = 17
        DataField = 'SYS_SETTING_NAME'
        DataSource = DataConnection.CivilCountryDefDS
      end
      object DBText13: TDBText
        Left = 16
        Top = 257
        Width = 353
        Height = 17
        DataField = 'SYS_SETTING_NAME'
        DataSource = DataConnection.NationDefDS
      end
      object DBText14: TDBText
        Left = 16
        Top = 305
        Width = 353
        Height = 17
        DataField = 'SYS_SETTING_NAME'
        DataSource = DataConnection.RegionDefDS
      end
      object DBNavigator8: TDBNavigator
        Left = 383
        Top = 32
        Width = 50
        Height = 21
        DataSource = DataConnection.AdrCountryDefDS
        VisibleButtons = [nbPost, nbRefresh]
        TabOrder = 0
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 16
        Top = 32
        Width = 353
        Height = 21
        DataField = 'INT_VALUE'
        DataSource = DataConnection.AdrCountryDefDS
        KeyField = 'COUNTRY_ID'
        ListField = 'COUNTRY_NAME'
        ListSource = DataConnection.CountriesDS
        TabOrder = 1
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 16
        Top = 80
        Width = 353
        Height = 21
        DataField = 'INT_VALUE'
        DataSource = DataConnection.AdrStateDefDS
        KeyField = 'STATE_ID'
        ListField = 'STATE_FULL_NAME'
        ListSource = DataConnection.StatesViewDS
        TabOrder = 2
      end
      object DBNavigator9: TDBNavigator
        Left = 383
        Top = 80
        Width = 50
        Height = 21
        DataSource = DataConnection.AdrStateDefDS
        VisibleButtons = [nbPost, nbRefresh]
        TabOrder = 3
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 16
        Top = 128
        Width = 353
        Height = 21
        DataField = 'INT_VALUE'
        DataSource = DataConnection.AdrDistrictDefDS
        KeyField = 'DISTRICTS_ID'
        ListField = 'DISTRICT_FULL_NAME'
        ListSource = DataConnection.DistrictsViewDS
        TabOrder = 4
      end
      object DBNavigator10: TDBNavigator
        Left = 383
        Top = 128
        Width = 50
        Height = 21
        DataSource = DataConnection.AdrDistrictDefDS
        VisibleButtons = [nbPost, nbRefresh]
        TabOrder = 5
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 16
        Top = 176
        Width = 353
        Height = 21
        DataField = 'INT_VALUE'
        DataSource = DataConnection.AdrSettlDefDS
        KeyField = 'SETTLEMENT_ID'
        ListField = 'SETTLEM_FULL_NAME'
        ListSource = DataConnection.SettlemsViewDS
        TabOrder = 6
      end
      object DBNavigator11: TDBNavigator
        Left = 383
        Top = 176
        Width = 50
        Height = 21
        DataSource = DataConnection.AdrSettlDefDS
        VisibleButtons = [nbPost, nbRefresh]
        TabOrder = 7
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 16
        Top = 224
        Width = 353
        Height = 21
        DataField = 'INT_VALUE'
        DataSource = DataConnection.CivilCountryDefDS
        KeyField = 'COUNTRY_ID'
        ListField = 'COUNTRY_NAME'
        ListSource = DataConnection.CountriesDS
        TabOrder = 8
      end
      object DBNavigator12: TDBNavigator
        Left = 383
        Top = 224
        Width = 50
        Height = 21
        DataSource = DataConnection.CivilCountryDefDS
        VisibleButtons = [nbPost, nbRefresh]
        TabOrder = 9
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 16
        Top = 272
        Width = 353
        Height = 21
        DataField = 'INT_VALUE'
        DataSource = DataConnection.NationDefDS
        KeyField = 'NATION_ID'
        ListField = 'NATION_NAME'
        ListSource = DataConnection.NationsDS
        TabOrder = 10
      end
      object DBNavigator13: TDBNavigator
        Left = 383
        Top = 272
        Width = 50
        Height = 21
        DataSource = DataConnection.NationDefDS
        VisibleButtons = [nbPost, nbRefresh]
        TabOrder = 11
      end
      object DBNavigator14: TDBNavigator
        Left = 383
        Top = 320
        Width = 50
        Height = 21
        DataSource = DataConnection.RegionDefDS
        VisibleButtons = [nbPost, nbRefresh]
        TabOrder = 12
      end
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 16
        Top = 320
        Width = 353
        Height = 21
        DataField = 'INT_VALUE'
        DataSource = DataConnection.RegionDefDS
        KeyField = 'REGION_ID'
        ListField = 'REGION_NAME'
        ListSource = DataConnection.BTHRegionsDS
        TabOrder = 13
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 528
    Top = 64
    object N1: TMenuItem
      Caption = #1057#1080#1089#1090#1077#1084#1085#1099#1077' '#1092#1091#1085#1082#1094#1080#1080
      object N2: TMenuItem
        Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1087#1072#1076#1077#1078#1085#1099#1077' '#1089#1082#1083#1086#1085#1077#1085#1080#1103'...'
        OnClick = N2Click
      end
    end
  end
end
