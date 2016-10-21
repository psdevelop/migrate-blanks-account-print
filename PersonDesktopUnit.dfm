object PersonDesktopForm: TPersonDesktopForm
  Left = 0
  Top = 0
  Caption = 
    #1059#1095#1077#1090' | F2-'#1085#1086#1074#1086#1077' '#1083#1080#1094#1086' | F3 - '#1085#1086#1074#1072#1103' '#1086#1087#1077#1088#1072#1094#1080#1103' '#1087#1086' '#1090#1077#1082'. '#1083#1080#1094#1091' | F12 - ' +
    #1087#1088#1072#1074#1082#1072' '#1079#1072#1087#1080#1089#1080' | Esc - '#1086#1090#1084#1077#1085#1072' | Ins - '#1074#1089#1090#1072#1074#1082#1072'  '#1085#1086#1074#1086#1075#1086'| F5 - '#1074#1089#1090#1072#1074 +
    #1082#1072' '#1080#1079' '#1089#1087#1080#1089#1082#1072
  ClientHeight = 740
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 412
    Width = 1028
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clMedGray
    ParentColor = False
    ExplicitLeft = -3
    ExplicitTop = 336
    ExplicitWidth = 896
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 412
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 0
      Top = 41
      Width = 2
      Height = 370
      Align = alLeft
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      Columns = <
        item
          Expanded = False
          FieldName = 'LAST_NAME'
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIRST_NAME'
          Title.Caption = #1048#1084#1103
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SURNAME'
          Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BIRTHDATE'
          Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERSON_SEX_ID_LOOK'
          Title.Caption = #1055#1086#1083
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNTRY_LOOK'
          Title.Caption = #1043#1086#1089#1091#1076#1072#1088#1089#1090#1074#1086
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERS_PLSTAT_LOOK'
          Title.Caption = #1058#1077#1082'.'#1087#1088#1077#1073#1099#1074'.'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BTH_REGION_LOOK'
          Title.Caption = #1056#1077#1075#1080#1086#1085#1056#1086#1078#1076'.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SETTL_LOOK'
          Title.Caption = #1053#1072#1089#1055#1091#1085#1082#1090#1056#1086#1078#1076'.'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NATION_LOOK'
          Title.Caption = #1053#1072#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1090#1100
          Width = 120
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 0
      Top = 411
      Width = 1028
      Height = 1
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object DBNavigator1: TDBNavigator
        Left = 386
        Top = 6
        Width = 261
        Height = 25
        DataSource = DataConnection.PersonsDS
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        TabOrder = 0
      end
    end
    object PersonsDBGridEh: TDBGridEh
      Left = 2
      Top = 41
      Width = 1026
      Height = 370
      Align = alClient
      ColumnDefValues.AutoDropDown = True
      DataSource = DataConnection.PersonsDS
      EvenRowColor = 16774388
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      HorzScrollBar.Visible = False
      OddRowColor = clWindow
      ParentFont = False
      PopupMenu = InterfaceDM.PersonsPopupMenu
      RowDetailPanel.Active = True
      RowDetailPanel.Color = clBtnFace
      EditButtonsShowOptions = [sebShowOnlyForCurRowEh]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDblClick = PersonsDBGridEhDblClick
      OnGetCellParams = PersonsDBGridEhGetCellParams
      OnKeyDown = PersonsDBGridEhKeyDown
      Columns = <
        item
          EditButtons = <>
          FieldName = 'TAKE_CONSENT_BOOL'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1057#1086#1075#1083'. '#1085#1072' '#1086#1073#1088'.'
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = 'LAST_NAME'
          Footer.FieldName = 'LAST_NAME'
          Footers = <>
          Title.Caption = #1055#1086#1083#1085#1086#1077' '#1080#1084#1103' ('#1060#1048#1054')|'#1060#1072#1084#1080#1083#1080#1103
          Width = 200
        end
        item
          EditButtons = <>
          FieldName = 'FIRST_NAME'
          Footers = <>
          Title.Caption = #1055#1086#1083#1085#1086#1077' '#1080#1084#1103' ('#1060#1048#1054')|'#1048#1084#1103
          Width = 150
        end
        item
          EditButtons = <>
          FieldName = 'SURNAME'
          Footers = <>
          Title.Caption = #1055#1086#1083#1085#1086#1077' '#1080#1084#1103' ('#1060#1048#1054')|'#1054#1090#1095#1077#1089#1090#1074#1086
          Width = 200
        end
        item
          EditButtons = <>
          FieldName = 'PERSON_SEX_ID_LOOK'
          Footers = <>
          Title.Caption = #1055#1086#1083#1085#1086#1077' '#1080#1084#1103' ('#1060#1048#1054')|'#1055#1086#1083
          Visible = False
          Width = 92
        end
        item
          EditButtons = <>
          FieldName = 'BIRTHDATE'
          Footers = <>
          Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'BTH_REGION_LOOK'
          Footers = <>
          Title.Caption = #1043#1077#1086#1075#1088#1072#1092#1080#1103'|'#1056#1077#1075#1080#1086#1085' '#1088#1086#1078#1076#1077#1085#1080#1103
          Width = 180
        end
        item
          EditButtons = <>
          FieldName = 'SETTL_LOOK'
          Footers = <>
          Title.Caption = #1043#1077#1086#1075#1088#1072#1092#1080#1103'|'#1053#1072#1089'. '#1087#1091#1085#1082#1090' '#1088#1086#1078#1076#1077#1085#1080#1103
          Width = 220
        end
        item
          DropDownRows = 20
          EditButtons = <>
          FieldName = 'COUNTRY_LOOK'
          Footer.FieldName = 'COUNTRY_LOOK'
          Footers = <>
          Title.Caption = #1043#1077#1086#1075#1088#1072#1092#1080#1103'|'#1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
          Width = 114
        end
        item
          EditButtons = <>
          FieldName = 'NATION_LOOK'
          Footers = <>
          Title.Caption = #1043#1077#1086#1075#1088#1072#1092#1080#1103'|'#1053#1072#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1090#1100
          Visible = False
          Width = 127
        end
        item
          EditButtons = <>
          FieldName = 'BIRTH_COUNTRY_LOOK'
          Footers = <>
          Title.Caption = #1043#1077#1086#1075#1088#1072#1092#1080#1103'|'#1057#1090#1088#1072#1085#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Visible = False
          Width = 117
        end
        item
          EditButtons = <>
          FieldName = 'PERS_PLSTAT_LOOK'
          Footers = <>
          Title.Caption = #1057#1090#1072#1090#1091#1089' '#1084#1077#1089#1090#1086#1087#1088#1077#1073#1099#1074'.'
          Width = 147
        end>
      object RowDetailData: TRowDetailPanelControlEh
        object DBDateTimeEditEh5: TDBDateTimeEditEh
          Left = 28
          Top = 39
          Width = 201
          Height = 26
          DataField = 'BIRTHDATE'
          DataSource = DataConnection.PersonsDS
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = dtkDateEh
          ParentFont = False
          TabOrder = 0
          Visible = True
        end
        object DBEdit12: TDBEdit
          Left = 280
          Top = 39
          Width = 383
          Height = 26
          DataField = 'BIRTHPLACE'
          DataSource = DataConnection.PersonsDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Memo1: TMemo
          Left = 28
          Top = 16
          Width = 201
          Height = 17
          BevelInner = bvNone
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3D = False
          Lines.Strings = (
            #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103)
          ParentCtl3D = False
          TabOrder = 2
        end
        object Memo2: TMemo
          Left = 280
          Top = 16
          Width = 383
          Height = 25
          BevelInner = bvNone
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3D = False
          Lines.Strings = (
            #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103)
          ParentCtl3D = False
          TabOrder = 3
        end
      end
    end
    object Panel16: TPanel
      Left = 0
      Top = 0
      Width = 1028
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object HeaderControl1: THeaderControl
        Left = 0
        Top = 0
        Width = 60
        Height = 41
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Sections = <
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = '[x] (F7)'
            Width = 60
          end>
        ParentFont = False
      end
      object GroupBox11: TGroupBox
        Left = 60
        Top = 0
        Width = 201
        Height = 41
        Align = alLeft
        Caption = #1060#1072#1084#1080#1083#1080#1103
        TabOrder = 1
        object PersonSearchLIKEEdit: TEdit
          Left = 2
          Top = 15
          Width = 197
          Height = 24
          Align = alClient
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = PersonSearchLIKEEditChange
          OnKeyDown = PersonSearchLIKEEditKeyDown
          ExplicitHeight = 26
        end
      end
      object GroupBox12: TGroupBox
        Left = 261
        Top = 0
        Width = 152
        Height = 41
        Align = alLeft
        Caption = #1048#1084#1103
        TabOrder = 2
        object PersonSearchNameEdit: TEdit
          Left = 2
          Top = 15
          Width = 148
          Height = 24
          Align = alClient
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = PersonSearchLIKEEditChange
          OnKeyDown = PersonSearchNameEditKeyDown
          ExplicitHeight = 26
        end
      end
      object GroupBox13: TGroupBox
        Left = 413
        Top = 0
        Width = 200
        Height = 41
        Align = alLeft
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        TabOrder = 3
        object PersonSearchSurnameEdit: TEdit
          Left = 2
          Top = 15
          Width = 196
          Height = 24
          Align = alClient
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = PersonSearchLIKEEditChange
          OnKeyDown = PersonSearchSurnameEditKeyDown
          ExplicitHeight = 26
        end
      end
      object GroupBox14: TGroupBox
        Left = 613
        Top = 0
        Width = 100
        Height = 41
        Align = alLeft
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        TabOrder = 4
        object PersonSearchBirthdateEdit: TEdit
          Left = 2
          Top = 15
          Width = 96
          Height = 24
          Align = alClient
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = PersonSearchLIKEEditChange
          OnKeyDown = PersonSearchSurnameEditKeyDown
          ExplicitHeight = 26
        end
      end
      object GroupBox15: TGroupBox
        Left = 1115
        Top = 0
        Width = 114
        Height = 41
        Align = alLeft
        Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
        TabOrder = 5
        object PersonSearchCivilEdit: TEdit
          Left = 2
          Top = 15
          Width = 110
          Height = 24
          Align = alClient
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = PersonSearchLIKEEditChange
          OnKeyDown = PersonSearchCivilEditKeyDown
          ExplicitHeight = 26
        end
      end
      object GroupBox16: TGroupBox
        Left = 895
        Top = 0
        Width = 220
        Height = 41
        Align = alLeft
        Caption = #1053'.'#1055'. '#1088#1086#1078#1076'.'
        TabOrder = 9
        object PersSearchBSettlemEdit: TEdit
          Left = 2
          Top = 15
          Width = 216
          Height = 24
          Align = alClient
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = PersonSearchLIKEEditChange
          OnKeyDown = PersSearchBSettlemEditKeyDown
          ExplicitHeight = 26
        end
      end
      object GroupBox17: TGroupBox
        Left = 1358
        Top = 0
        Width = 119
        Height = 41
        Align = alLeft
        Caption = #1057#1090#1088#1072#1085#1072' '#1088#1086#1078#1076'.'
        TabOrder = 7
        Visible = False
        object PersonSearchBCountEdit: TEdit
          Left = 2
          Top = 15
          Width = 115
          Height = 24
          Align = alClient
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = PersonSearchLIKEEditChange
          OnKeyDown = PersonSearchBCountEditKeyDown
          ExplicitHeight = 26
        end
      end
      object GroupBox18: TGroupBox
        Left = 1229
        Top = 0
        Width = 129
        Height = 41
        Align = alLeft
        Caption = #1053#1072#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1090#1100
        TabOrder = 6
        Visible = False
        object PersonSearchNationEdit: TEdit
          Left = 2
          Top = 15
          Width = 125
          Height = 24
          Align = alClient
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = PersonSearchLIKEEditChange
          OnKeyDown = PersonSearchNationEditKeyDown
          ExplicitHeight = 26
        end
      end
      object GroupBox19: TGroupBox
        Left = 713
        Top = 0
        Width = 182
        Height = 41
        Align = alLeft
        Caption = #1056#1077#1075#1080#1086#1085' '#1088#1086#1078#1076'.'
        TabOrder = 8
        object PersonSearchBRegionEdit: TEdit
          Left = 2
          Top = 15
          Width = 178
          Height = 24
          Align = alClient
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = PersonSearchLIKEEditChange
          OnKeyDown = PersonSearchBRegionEditKeyDown
          ExplicitHeight = 26
        end
      end
    end
  end
  object PersonDetailsPageControl: TPageControl
    Left = 0
    Top = 415
    Width = 1028
    Height = 325
    ActivePage = PersOperationsTabSheet
    Align = alClient
    TabOrder = 1
    TabPosition = tpBottom
    object TabSheet4: TTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 1
      object Label1: TLabel
        Left = 11
        Top = 13
        Width = 90
        Height = 18
        Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 296
        Top = 13
        Width = 30
        Height = 18
        Caption = #1048#1053#1053
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 11
        Top = 81
        Width = 188
        Height = 18
        Caption = #1044#1072#1083' '#1089#1086#1075#1083#1072#1089#1080#1077' '#1085#1072' '#1086#1073#1088#1072#1073#1086#1090#1082#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 237
        Top = 105
        Width = 23
        Height = 26
        Caption = '...'
      end
      object Label4: TLabel
        Left = 296
        Top = 81
        Width = 116
        Height = 18
        Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 11
        Top = 149
        Width = 143
        Height = 18
        Caption = #1042#1090#1086#1088#1086#1077' '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 584
        Top = 13
        Width = 107
        Height = 18
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 584
        Top = 81
        Width = 88
        Height = 18
        Caption = #1044#1072#1090#1072' '#1089#1084#1077#1088#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 296
        Top = 149
        Width = 122
        Height = 18
        Caption = #1057#1090#1088#1072#1085#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 584
        Top = 149
        Width = 114
        Height = 18
        Caption = #1053#1072#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label43: TLabel
        Left = 11
        Top = 216
        Width = 104
        Height = 18
        Caption = #1053#1072' '#1091#1095#1077#1090#1077' '#1074' '#1054#1052
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 11
        Top = 37
        Width = 249
        Height = 26
        DataField = 'PERSON_BUILDING_ID'
        DataSource = DataConnection.PersonsDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'BUILDING_TYPE_ID'
        ListField = 'BULDING_TYPE_NAME'
        ListSource = DataConnection.BuildTypesDS
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 296
        Top = 37
        Width = 249
        Height = 26
        DataField = 'PERSON_INN'
        DataSource = DataConnection.PersonsDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 296
        Top = 105
        Width = 249
        Height = 26
        DataField = 'BIRTHPLACE'
        DataSource = DataConnection.PersonsDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 11
        Top = 105
        Width = 225
        Height = 26
        Color = clMenu
        DataField = 'TAKE_PDATA_CONSENT'
        DataSource = DataConnection.PersonsDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 11
        Top = 173
        Width = 249
        Height = 26
        DataField = 'SEC_COUNTRY_ID'
        DataSource = DataConnection.PersonsDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'COUNTRY_ID'
        ListField = 'COUNTRY_NAME'
        ListSource = DataConnection.CountriesDS
        ParentFont = False
        TabOrder = 4
      end
      object DBDateTimeEditEh3: TDBDateTimeEditEh
        Left = 584
        Top = 37
        Width = 249
        Height = 26
        DataField = 'BIRTHDATE'
        DataSource = DataConnection.PersonsDS
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dtkDateEh
        ParentFont = False
        TabOrder = 5
        Visible = True
      end
      object BitBtn15: TBitBtn
        Left = 11
        Top = 294
        Width = 249
        Height = 33
        Action = DataConnection.PersonDSPost
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1083#1080#1094#1072
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 6
      end
      object DBDateTimeEditEh6: TDBDateTimeEditEh
        Left = 584
        Top = 105
        Width = 249
        Height = 26
        DataField = 'DEATHDATE'
        DataSource = DataConnection.PersonsDS
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dtkDateEh
        ParentFont = False
        TabOrder = 7
        Visible = True
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 296
        Top = 173
        Width = 249
        Height = 26
        DataField = 'BIRTH_COUNTRY_LOOK'
        DataSource = DataConnection.PersonsDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 584
        Top = 173
        Width = 249
        Height = 26
        DataField = 'NATION_LOOK'
        DataSource = DataConnection.PersonsDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBLookupComboboxEh9: TDBLookupComboboxEh
        Left = 11
        Top = 240
        Width = 249
        Height = 26
        DropDownBox.AutoDrop = True
        Enabled = False
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        Visible = True
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1040#1076#1088#1077#1089#1072
      OnShow = TabSheet3Show
      object Splitter2: TSplitter
        Left = 671
        Top = 0
        Height = 299
        Align = alRight
        Color = clMedGray
        ParentColor = False
        ExplicitLeft = 672
        ExplicitTop = 96
        ExplicitHeight = 100
      end
      object Panel5: TPanel
        Left = 674
        Top = 0
        Width = 346
        Height = 299
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 346
          Height = 299
          Align = alClient
          Caption = #1044#1072#1085#1085#1099#1077' '#1072#1076#1088#1077#1089#1072
          TabOrder = 0
          object Label5: TLabel
            Left = 16
            Top = 56
            Width = 83
            Height = 18
            Caption = #1053#1086#1084#1077#1088' '#1076#1086#1084#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 184
            Top = 56
            Width = 48
            Height = 18
            Caption = #1050#1086#1088#1087#1091#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 16
            Top = 104
            Width = 89
            Height = 18
            Caption = #8470' '#1050#1074#1072#1088#1090#1080#1088#1099
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 184
            Top = 104
            Width = 50
            Height = 18
            Caption = #1051#1080#1090#1077#1088#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 184
            Top = 155
            Width = 151
            Height = 18
            Caption = #1055#1086#1083#1085#1072#1103' '#1087#1083#1086#1097#1072#1076#1100' ('#1084'2)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 16
            Top = 155
            Width = 147
            Height = 18
            Caption = #1046#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100' ('#1084'2)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 16
            Top = 203
            Width = 49
            Height = 18
            Caption = #1057#1090#1088#1072#1085#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 184
            Top = 203
            Width = 130
            Height = 18
            Caption = #1054#1073#1083#1072#1089#1090#1100' ('#1089#1091#1073#1098#1077#1082#1090')'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 16
            Top = 252
            Width = 40
            Height = 18
            Caption = #1056#1072#1081#1086#1085
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 16
            Top = 300
            Width = 129
            Height = 18
            Caption = #1053#1072#1089'. '#1087#1091#1085#1082#1090' ('#1075#1086#1088#1086#1076')'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 16
            Top = 32
            Width = 42
            Height = 18
            Caption = #1059#1083#1080#1094#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit4: TDBEdit
            Left = 16
            Top = 72
            Width = 137
            Height = 26
            DataField = 'HOUSE_NUM'
            DataSource = DataConnection.LinkAdrDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit5: TDBEdit
            Left = 184
            Top = 72
            Width = 153
            Height = 26
            DataField = 'CORPUS'
            DataSource = DataConnection.LinkAdrDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit6: TDBEdit
            Left = 16
            Top = 123
            Width = 137
            Height = 26
            DataField = 'APARTMENT_NUM'
            DataSource = DataConnection.LinkAdrDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit7: TDBEdit
            Left = 184
            Top = 123
            Width = 153
            Height = 26
            DataField = 'LITER'
            DataSource = DataConnection.LinkAdrDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit8: TDBEdit
            Left = 184
            Top = 171
            Width = 153
            Height = 26
            DataField = 'FULL_SQUARE'
            DataSource = DataConnection.LinkAdrDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit9: TDBEdit
            Left = 16
            Top = 171
            Width = 137
            Height = 26
            DataField = 'LEAVE_SQUARE'
            DataSource = DataConnection.LinkAdrDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object BitBtn6: TBitBtn
            Left = 16
            Top = 348
            Width = 321
            Height = 33
            Action = DataConnection.LinkAdrDSPost
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 11
          end
          object DBEdit15: TDBEdit
            Left = 64
            Top = 24
            Width = 273
            Height = 26
            DataField = 'STREET_NAME'
            DataSource = DataConnection.LinkAdrDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object AdrCountryDBLookCEh: TDBLookupComboboxEh
            Left = 16
            Top = 220
            Width = 137
            Height = 26
            DataField = 'COUNTRY_LOOK'
            DataSource = DataConnection.LinkAdrDS
            DropDownBox.AutoDrop = True
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style = csDropDownEh
            TabOrder = 7
            Visible = True
            OnEnter = AdrCountryDBLookCEhEnter
            OnNotInList = AdrCountryDBLookCEhNotInList
          end
          object AdrStateDBLookCEh: TDBLookupComboboxEh
            Left = 184
            Top = 220
            Width = 153
            Height = 26
            DataField = 'STATE_LOOK'
            DataSource = DataConnection.LinkAdrDS
            DropDownBox.Columns = <
              item
                FieldName = 'STATE_NAME'
              end
              item
                FieldName = 'SHORT_TEXT'
              end
              item
                FieldName = 'SHORT_FULL'
              end>
            DropDownBox.ListSource = DataConnection.StatesViewDS
            DropDownBox.AutoDrop = True
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style = csDropDownEh
            TabOrder = 8
            Visible = True
            OnEnter = AdrStateDBLookCEhEnter
            OnNotInList = AdrStateDBLookCEhNotInList
          end
          object AdrDistrictDBLookCEh: TDBLookupComboboxEh
            Left = 16
            Top = 268
            Width = 321
            Height = 26
            DataField = 'DISTRICT_LOOK'
            DataSource = DataConnection.LinkAdrDS
            DropDownBox.Columns = <
              item
                FieldName = 'DISTRICT_NAME'
              end
              item
                FieldName = 'SHORT_TEXT'
              end
              item
                FieldName = 'SHORT_FULL'
              end
              item
                FieldName = 'STATE_WITH_FSHORT'
              end>
            DropDownBox.ListSource = DataConnection.DistrictsViewDS
            DropDownBox.AutoDrop = True
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style = csDropDownEh
            TabOrder = 9
            Visible = True
            OnEnter = AdrDistrictDBLookCEhEnter
            OnNotInList = AdrDistrictDBLookCEhNotInList
          end
          object AdrSettlemDBLookCEh: TDBLookupComboboxEh
            Left = 16
            Top = 316
            Width = 321
            Height = 26
            DataField = 'SETTL_LOOK'
            DataSource = DataConnection.LinkAdrDS
            DropDownBox.Columns = <
              item
                FieldName = 'SETTLEM_NAME'
              end
              item
                FieldName = 'SHORT_TEXT'
              end
              item
                FieldName = 'DISTRICT_FULL_NAME'
              end>
            DropDownBox.ListSource = DataConnection.SettlemsViewDS
            DropDownBox.AutoDrop = True
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style = csDropDownEh
            TabOrder = 10
            Visible = True
            OnEnter = AdrSettlemDBLookCEhEnter
            OnNotInList = AdrSettlemDBLookCEhNotInList
          end
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 671
        Height = 299
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel4: TPanel
          Left = 0
          Top = 242
          Width = 671
          Height = 57
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn3: TBitBtn
            Left = 14
            Top = 14
            Width = 213
            Height = 33
            Caption = #1053#1086#1074#1099#1081' '#1040#1044#1056#1045#1057
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn3Click
          end
          object BitBtn2: TBitBtn
            Left = 254
            Top = 14
            Width = 213
            Height = 33
            Action = DataConnection.PersAdrDSPost
            Caption = #1057#1086#1093#1088'. '#1089#1074#1103#1079#1100' '#1089' '#1072#1076#1088#1077#1089#1086#1084
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 671
          Height = 242
          Align = alClient
          DataSource = DataConnection.PersonAdrLinksDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'EVENT_DATE'
              Title.Caption = #1044#1072#1090#1072' '#1091#1089#1090'.'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TERMINATE_DATE'
              Title.Caption = #1044#1072#1090#1072' '#1087#1088'.'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ELINK_LOOK'
              Title.Caption = #1058#1080#1087' '#1089#1074#1103#1079#1080
              Width = 227
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'ADR_FULL_NAME'
              ReadOnly = True
              Title.Caption = #1040#1076#1088#1077#1089
              Width = 365
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      ImageIndex = 3
      OnShow = TabSheet2Show
      object Splitter3: TSplitter
        Left = 663
        Top = 0
        Height = 299
        Align = alRight
        Color = clMedGray
        ParentColor = False
        ExplicitLeft = 672
        ExplicitTop = 96
        ExplicitHeight = 100
      end
      object Panel7: TPanel
        Left = 666
        Top = 0
        Width = 354
        Height = 299
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 354
          Height = 299
          Align = alClient
          Caption = #1044#1072#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label15: TLabel
            Left = 16
            Top = 72
            Width = 119
            Height = 18
            Caption = #1057#1077#1088#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 184
            Top = 72
            Width = 122
            Height = 18
            Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 16
            Top = 120
            Width = 89
            Height = 18
            Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 16
            Top = 24
            Width = 104
            Height = 18
            Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 184
            Top = 120
            Width = 64
            Height = 18
            Caption = #1042#1099#1076#1072#1085' '#1076#1086
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 184
            Top = 168
            Width = 113
            Height = 18
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1074#1099#1076#1072#1095#1080
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 16
            Top = 264
            Width = 191
            Height = 18
            Caption = #1054#1088#1075#1072#1085', '#1074#1099#1076#1072#1074#1096#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 16
            Top = 368
            Width = 69
            Height = 18
            Caption = #1059#1095#1090#1077#1085' '#1054#1052
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label25: TLabel
            Left = 16
            Top = 216
            Width = 76
            Height = 18
            Caption = #1050#1086#1076' '#1086#1088#1075#1072#1085#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 16
            Top = 168
            Width = 126
            Height = 18
            Caption = #1057#1090#1072#1090#1091#1089' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit10: TDBEdit
            Left = 16
            Top = 88
            Width = 137
            Height = 26
            DataField = 'DOC_SERIE'
            DataSource = DataConnection.LinkDocDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit11: TDBEdit
            Left = 184
            Top = 88
            Width = 153
            Height = 26
            DataField = 'DOC_NUM'
            DataSource = DataConnection.LinkDocDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 16
            Top = 40
            Width = 321
            Height = 26
            DataField = 'DOC_TYPE_ID'
            DataSource = DataConnection.LinkDocDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'DOC_TYPE_ID'
            ListField = 'DOC_TYPE_NAME'
            ListSource = DataConnection.DocTypesDS
            ParentFont = False
            TabOrder = 0
          end
          object DocTakeReasonDBLookCB: TDBLookupComboBox
            Left = 184
            Top = 184
            Width = 153
            Height = 26
            DataField = 'DOC_TREASON_ID'
            DataSource = DataConnection.LinkDocDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'A_REASON_ID'
            ListField = 'A_REASON_NAME'
            ListSource = DataConnection.TReasonsDS
            ParentFont = False
            TabOrder = 6
          end
          object DocBrancheNameDBEdit: TDBEdit
            Left = 16
            Top = 280
            Width = 321
            Height = 26
            DataField = 'DOC_BRANCH_NAME'
            DataSource = DataConnection.LinkDocDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnEnter = DocBrancheNameDBEditEnter
            OnExit = DocBrancheNameDBEditExit
          end
          object DocOMDBLookCB: TDBLookupComboBox
            Left = 16
            Top = 384
            Width = 153
            Height = 26
            DataField = 'DOC_POLICY_STATION_ID'
            DataSource = DataConnection.LinkDocDS
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'A_REASON_ID'
            ListField = 'A_REASON_NAME'
            ListSource = DataConnection.TReasonsDS
            ParentFont = False
            TabOrder = 10
            Visible = False
          end
          object BitBtn5: TBitBtn
            Left = 16
            Top = 320
            Width = 321
            Height = 33
            Action = DataConnection.LinkDocDSPost
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 9
          end
          object DBDateTimeEditEh1: TDBDateTimeEditEh
            Left = 16
            Top = 139
            Width = 137
            Height = 26
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Kind = dtkDateEh
            ParentFont = False
            TabOrder = 3
            Visible = True
          end
          object DBDateTimeEditEh2: TDBDateTimeEditEh
            Left = 184
            Top = 139
            Width = 153
            Height = 26
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Kind = dtkDateEh
            ParentFont = False
            TabOrder = 4
            Visible = True
          end
          object DocStatusDBLookCEh: TDBLookupComboboxEh
            Left = 16
            Top = 184
            Width = 137
            Height = 26
            DataField = 'DOC_STATUS_LOOK'
            DataSource = DataConnection.LinkDocDS
            DropDownBox.AutoDrop = True
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style = csDropDownEh
            TabOrder = 5
            Visible = True
          end
          object DocBrancheCodeDBLookCEh: TDBLookupComboboxEh
            Left = 16
            Top = 232
            Width = 321
            Height = 26
            DataField = 'DOC_BRANCHE_LOOK'
            DataSource = DataConnection.LinkDocDS
            DropDownBox.Columns = <
              item
                FieldName = 'BRANCHE_CODE'
              end
              item
                FieldName = 'BRANCHE_NAME'
              end>
            DropDownBox.ListSource = DataConnection.FMSBranchesDS
            DropDownBox.AutoDrop = True
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style = csDropDownEh
            TabOrder = 7
            Visible = True
            OnEnter = DocBrancheCodeDBLookCEhEnter
            OnNotInList = DocBrancheCodeDBLookCEhNotInList
          end
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 663
        Height = 299
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel6: TPanel
          Left = 0
          Top = 242
          Width = 663
          Height = 57
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn4: TBitBtn
            Left = 12
            Top = 14
            Width = 213
            Height = 33
            Caption = #1053#1086#1074#1099#1081' '#1044#1086#1082#1091#1084#1077#1085#1090
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn4Click
          end
          object BitBtn12: TBitBtn
            Left = 254
            Top = 14
            Width = 213
            Height = 33
            Action = DataConnection.PersDocDSPost
            Caption = #1057#1086#1093#1088'. '#1089#1074#1103#1079#1100' '#1089' '#1076#1086#1082'-'#1086#1084
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object DBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 663
          Height = 242
          Align = alClient
          DataSource = DataConnection.PersonDocLinksDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'EVENT_DATE'
              Title.Caption = #1044#1072#1090#1072' '#1091#1089#1090'.'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TERMINATE_DATE'
              Title.Caption = #1044#1072#1090#1072' '#1087#1088'.'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ELINK_LOOK'
              Title.Caption = #1058#1080#1087' '#1089#1074#1103#1079#1080
              Width = 200
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'DOC_FULL_NAME'
              ReadOnly = True
              Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090
              Visible = True
            end>
        end
      end
    end
    object PersOperationsTabSheet: TTabSheet
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      ImageIndex = 2
      OnShow = PersOperationsTabSheetShow
      object Splitter4: TSplitter
        Left = 1015
        Top = 0
        Height = 294
        Align = alRight
        Color = clMedGray
        ParentColor = False
        ExplicitLeft = 792
        ExplicitTop = 72
        ExplicitHeight = 100
      end
      object Panel3: TPanel
        Left = 0
        Top = 294
        Width = 1020
        Height = 5
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object DBNavigator2: TDBNavigator
          Left = 8
          Top = 6
          Width = 248
          Height = 25
          DataSource = DataConnection.PersonOperationsDS
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel, nbRefresh]
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 1018
        Top = 0
        Width = 2
        Height = 294
        Align = alRight
        Caption = #1042#1099#1076#1077#1083#1077#1085#1085#1072#1103' '#1086#1087#1077#1088#1072#1094#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Splitter5: TSplitter
          Left = 2
          Top = 118
          Width = 618
          Height = 3
          Cursor = crVSplit
          Align = alTop
          Color = clMedGray
          ParentColor = False
          ExplicitLeft = 1
          ExplicitTop = 159
          ExplicitWidth = 478
        end
        object Splitter6: TSplitter
          Left = 2
          Top = 224
          Width = 618
          Height = 3
          Cursor = crVSplit
          Align = alTop
          Color = clMedGray
          ParentColor = False
          ExplicitTop = 261
          ExplicitWidth = 91
        end
        object Splitter7: TSplitter
          Left = 2
          Top = 328
          Width = 618
          Height = 3
          Cursor = crVSplit
          Align = alTop
          Color = clMedGray
          ParentColor = False
          ExplicitTop = 260
          ExplicitWidth = 30
        end
        object PageControl1: TPageControl
          Left = 2
          Top = 291
          Width = 618
          Height = 1
          ActivePage = TabSheet5
          Align = alBottom
          TabOrder = 0
          Visible = False
          object TabSheet5: TTabSheet
            Caption = #1040#1076#1088#1077#1089#1072' '#1083#1080#1094#1072
            object DBGrid5: TDBGrid
              Left = 0
              Top = 0
              Width = 610
              Height = 0
              Align = alClient
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'AEL_TYPE_LOOK'
                  Title.Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1086#1087#1077#1088#1072#1094#1080#1080
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ELADR_LOOK'
                  Title.Caption = #1040#1076#1088#1077#1089' '#1083#1080#1094#1072
                  Width = 200
                  Visible = True
                end>
            end
          end
          object TabSheet6: TTabSheet
            Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1083#1080#1094#1072
            ImageIndex = 1
            object DBGrid6: TDBGrid
              Left = 0
              Top = 0
              Width = 610
              Height = 0
              Align = alClient
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'AEL_TYPE_LOOK'
                  Title.Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ELDOC_LOOK'
                  Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1083#1080#1094#1072
                  Width = 250
                  Visible = True
                end>
            end
          end
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 20
          Width = 618
          Height = 98
          Align = alTop
          Caption = #1057#1086#1089#1090#1072#1074' '#1083#1080#1094' '#1086#1087#1077#1088#1072#1094#1080#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object OpPersonsDBGridEh: TDBGridEh
            Left = 2
            Top = 20
            Width = 590
            Height = 76
            Margins.Top = 6
            Align = alClient
            DataSource = DataConnection.OpPersonsDS
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            HorzScrollBar.Visible = False
            Options = [dgEditing, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            PopupMenu = InterfaceDM.OpPersonPopupMenu
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyDown = OpPersonsDBGridEhKeyDown
            Columns = <
              item
                Color = clActiveCaption
                EditButtons = <>
                FieldName = 'AEL_TYPE_LOOK'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindow
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                Footers = <>
                ReadOnly = True
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 300
              end
              item
                AlwaysShowEditButton = True
                AutoDropDown = True
                DropDownSpecRow.CellsText = #1085#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086'!'
                DropDownSpecRow.Visible = True
                EditButtons = <>
                FieldName = 'ELPERS_LOOK'
                Footers = <>
                Width = 400
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Panel19: TPanel
            Left = 592
            Top = 20
            Width = 24
            Height = 76
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object DBNavigator3: TDBNavigator
              Left = 0
              Top = 0
              Width = 24
              Height = 25
              DataSource = DataConnection.OpPersonsDS
              VisibleButtons = [nbPost]
              Align = alTop
              TabOrder = 0
            end
          end
        end
        object GroupBox5: TGroupBox
          Left = 2
          Top = 121
          Width = 618
          Height = 103
          Align = alTop
          Caption = #1058#1088#1077#1073#1091#1077#1084#1072#1103' '#1072#1076#1088#1077#1089#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' ('#1087#1088#1077#1076#1083#1072#1075#1072#1077#1090#1089#1103' '#1087#1086' '#1089#1086#1089#1090#1072#1074#1091' '#1083#1080#1094')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Panel8: TPanel
            Left = 2
            Top = 98
            Width = 614
            Height = 3
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            Visible = False
            object BitBtn7: TBitBtn
              Left = 2
              Top = 2
              Width = 117
              Height = 25
              Caption = '---'
              DoubleBuffered = True
              Enabled = False
              ParentDoubleBuffered = False
              TabOrder = 0
              OnClick = BitBtn1Click
            end
            object DBNavigator5: TDBNavigator
              Left = 152
              Top = 2
              Width = 203
              Height = 25
              DataSource = DataConnection.OpAdrLinksDS
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel]
              TabOrder = 1
            end
          end
          object OpAdresDBGridEh: TDBGridEh
            Left = 2
            Top = 20
            Width = 590
            Height = 78
            Margins.Top = 6
            Align = alClient
            DataSource = DataConnection.OpAdrLinksDS
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            HorzScrollBar.Visible = False
            Options = [dgEditing, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            RowDetailPanel.Color = clBtnFace
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyDown = OpAdresDBGridEhKeyDown
            Columns = <
              item
                Color = clActiveCaption
                EditButtons = <>
                FieldName = 'AEL_TYPE_LOOK'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindow
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                Footers = <>
                ReadOnly = True
                Title.Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1086#1087#1077#1088#1072#1094#1080#1080
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 300
              end
              item
                AlwaysShowEditButton = True
                DropDownSpecRow.CellsText = #1085#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086'!'
                DropDownSpecRow.Visible = True
                EditButtons = <>
                FieldName = 'ELADR_LOOK'
                Footers = <>
                Title.Caption = #1040#1076#1088#1077#1089' '#1083#1080#1094#1072
                Width = 400
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Panel20: TPanel
            Left = 592
            Top = 20
            Width = 24
            Height = 78
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object DBNavigator4: TDBNavigator
              Left = 0
              Top = 0
              Width = 24
              Height = 25
              DataSource = DataConnection.OpAdrLinksDS
              VisibleButtons = [nbPost]
              Align = alTop
              TabOrder = 0
            end
          end
        end
        object GroupBox6: TGroupBox
          Left = 2
          Top = 227
          Width = 618
          Height = 101
          Align = alTop
          Caption = #1058#1088#1077#1073#1091#1077#1084#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' ('#1087#1088#1077#1076#1083#1072#1075#1072#1102#1090#1089#1103' '#1087#1086' '#1089#1086#1089#1090#1072#1074#1091' '#1083#1080#1094')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Panel9: TPanel
            Left = 2
            Top = 98
            Width = 614
            Height = 1
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            Visible = False
            object BitBtn8: TBitBtn
              Left = 2
              Top = 1
              Width = 117
              Height = 25
              Caption = '---'
              DoubleBuffered = True
              Enabled = False
              ParentDoubleBuffered = False
              TabOrder = 0
              OnClick = BitBtn1Click
            end
            object DBNavigator6: TDBNavigator
              Left = 144
              Top = 1
              Width = 203
              Height = 25
              DataSource = DataConnection.OpDocLinksDS
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel]
              TabOrder = 1
            end
          end
          object OpDocsDBGridEh: TDBGridEh
            Left = 2
            Top = 20
            Width = 590
            Height = 78
            Margins.Top = 6
            Align = alClient
            DataSource = DataConnection.OpDocLinksDS
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            HorzScrollBar.Visible = False
            Options = [dgEditing, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            RowDetailPanel.Color = clBtnFace
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyDown = OpDocsDBGridEhKeyDown
            Columns = <
              item
                Color = clActiveCaption
                EditButtons = <>
                FieldName = 'AEL_TYPE_LOOK'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindow
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                Footers = <>
                ReadOnly = True
                Title.Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1086#1087#1077#1088#1072#1094#1080#1080
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 300
              end
              item
                AlwaysShowEditButton = True
                DropDownSpecRow.CellsText = #1085#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086'!'
                DropDownSpecRow.Color = clWindow
                DropDownSpecRow.Visible = True
                EditButtons = <>
                FieldName = 'ELDOC_LOOK'
                Footers = <>
                Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1083#1080#1094#1072
                Width = 400
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Panel21: TPanel
            Left = 592
            Top = 20
            Width = 24
            Height = 78
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object DBNavigator7: TDBNavigator
              Left = 0
              Top = 0
              Width = 24
              Height = 25
              DataSource = DataConnection.OpDocLinksDS
              VisibleButtons = [nbPost]
              Align = alTop
              TabOrder = 0
            end
          end
        end
        object GroupBox10: TGroupBox
          Left = 2
          Top = 331
          Width = 618
          Height = 59
          Align = alClient
          Caption = #1055#1088#1086#1095#1072#1103' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1088#1091#1095#1085#1086#1075#1086' '#1074#1074#1086#1076#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object Panel12: TPanel
            Left = 2
            Top = 56
            Width = 614
            Height = 1
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            Visible = False
            object BitBtn11: TBitBtn
              Left = 2
              Top = 1
              Width = 117
              Height = 25
              Caption = '---'
              DoubleBuffered = True
              Enabled = False
              ParentDoubleBuffered = False
              TabOrder = 0
              OnClick = BitBtn1Click
            end
            object DBNavigator9: TDBNavigator
              Left = 144
              Top = 1
              Width = 203
              Height = 25
              DataSource = DataConnection.OpDocLinksDS
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel]
              TabOrder = 1
            end
          end
          object OpOthDataDBGridEh: TDBGridEh
            Left = 2
            Top = 20
            Width = 590
            Height = 36
            Margins.Top = 6
            Align = alClient
            DataSource = DataConnection.OpOtherDataDS
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            HorzScrollBar.Visible = False
            Options = [dgEditing, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            RowDetailPanel.Color = clBtnFace
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyDown = OpOthDataDBGridEhKeyDown
            Columns = <
              item
                Color = clActiveCaption
                EditButtons = <>
                FieldName = 'AEL_TYPE_LOOK'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindow
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                Footers = <>
                ReadOnly = True
                Title.Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1086#1087#1077#1088#1072#1094#1080#1080
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 300
              end
              item
                AlwaysShowEditButton = True
                DropDownSpecRow.CellsText = #1085#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086'!'
                DropDownSpecRow.Color = clWindow
                DropDownSpecRow.Visible = True
                EditButtons = <>
                FieldName = 'STATIC_DATA'
                Footers = <>
                Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1083#1080#1094#1072
                Width = 400
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Panel22: TPanel
            Left = 592
            Top = 20
            Width = 24
            Height = 36
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object DBNavigator8: TDBNavigator
              Left = 0
              Top = 0
              Width = 24
              Height = 25
              DataSource = DataConnection.OpOtherDataDS
              VisibleButtons = [nbPost]
              Align = alTop
              TabOrder = 0
            end
          end
        end
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 1015
        Height = 294
        Align = alClient
        Caption = 
          #1054#1087#1077#1088#1072#1094#1080#1080' '#1087#1086' '#1090#1077#1082#1091#1097#1077#1084#1091' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1102' ('#1087#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1086#1074' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1081' '#1086#1087#1077 +
          #1088#1072#1094#1080#1080' - Ctrl+P)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object PersonOperationsDBGrid: TDBGridEh
          Left = 2
          Top = 49
          Width = 1011
          Height = 243
          Margins.Top = 6
          Align = alClient
          DataSource = DataConnection.PersonOperationsDS
          EvenRowColor = clWindow
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          HorzScrollBar.Visible = False
          Options = [dgEditing, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = InterfaceDM.PersonOperationsPopupMenu
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          VertScrollBar.VisibleMode = sbNeverShowEh
          OnDblClick = PersonOperationsDBGridDblClick
          OnGetCellParams = PersonOperationsDBGridGetCellParams
          OnKeyDown = DBGridEh1KeyDown
          Columns = <
            item
              Checkboxes = True
              EditButtons = <>
              FieldName = 'TO_PRINT_BOOL'
              Footers = <>
              Width = 40
            end
            item
              Color = clMenu
              EditButtons = <>
              FieldName = 'A_TSTAMP'
              Footers = <>
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'SERVICE_NAME'
              Footers = <>
              Width = 650
            end
            item
              EditButtons = <>
              FieldName = 'ATYPE_LOOK'
              Footers = <>
              Width = 350
            end
            item
              EditButtons = <>
              FieldName = 'SERV_GROUP_LOOK'
              Footers = <>
              Width = 550
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel18: TPanel
          Left = 2
          Top = 20
          Width = 1011
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object CheckBox1: TCheckBox
            Left = 6
            Top = 3
            Width = 331
            Height = 17
            Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1087#1072#1082#1077#1090#1099' '#1086#1087#1077#1088#1072#1094#1080#1081
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = CheckBox1Click
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1047#1072#1087#1080#1089#1080' '#1047#1040#1043#1057
      ImageIndex = 4
      OnShow = TabSheet1Show
      object Panel10: TPanel
        Left = 0
        Top = 242
        Width = 1020
        Height = 57
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn9: TBitBtn
          Left = 10
          Top = 14
          Width = 207
          Height = 33
          Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100' '#1047#1040#1043#1057
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn9Click
        end
        object BitBtn14: TBitBtn
          Left = 254
          Top = 14
          Width = 213
          Height = 33
          Action = DataConnection.PersZAGSDSPost
          Caption = #1057#1086#1093#1088'. '#1079#1072#1087#1080#1089#1100' '#1047#1040#1043#1057
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 1020
        Height = 242
        Align = alClient
        Caption = #1047#1072#1087#1080#1089#1080' '#1047#1040#1043#1057' '#1087#1086' '#1090#1077#1082#1091#1097#1077#1084#1091' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1102
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object PersZAGSRecsDBGridEh: TDBGridEh
          Left = 2
          Top = 20
          Width = 1016
          Height = 220
          Align = alClient
          DataSource = DataConnection.PersZAGSRecsDS
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnKeyDown = PersZAGSRecsDBGridEhKeyDown
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ATYPE_LOOK'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'A_TSTAMP'
              Footers = <>
              Title.Caption = #1044#1072#1090#1072' '#1079#1072#1087#1080#1089#1080' '#1047#1040#1043#1057
            end
            item
              EditButtons = <>
              FieldName = 'SERVICE_LOOK'
              Footers = <>
              Title.Caption = #1058#1080#1087' '#1079#1072#1087#1080#1089#1080' '#1047#1040#1043#1057
              Width = 450
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1056#1086#1076#1089#1090#1074#1077#1085#1085#1080#1082#1080
      ImageIndex = 5
      OnShow = TabSheet7Show
      object GroupBox9: TGroupBox
        Left = 709
        Top = 0
        Width = 311
        Height = 299
        Align = alRight
        Caption = #1044#1072#1085#1085#1099#1077' '#1088#1086#1076#1089#1090#1074#1077#1085#1085#1080#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label35: TLabel
          Left = 16
          Top = 200
          Width = 107
          Height = 18
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 13
          Top = 136
          Width = 66
          Height = 18
          Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 16
          Top = 80
          Width = 28
          Height = 18
          Caption = #1048#1084#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 16
          Top = 24
          Width = 60
          Height = 18
          Caption = #1060#1072#1084#1080#1083#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBDateTimeEditEh4: TDBDateTimeEditEh
          Left = 16
          Top = 224
          Width = 225
          Height = 26
          DataField = 'BIRTHDATE'
          DataSource = DataConnection.LinkAllianceDS
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = dtkDateEh
          ParentFont = False
          TabOrder = 0
          Visible = True
        end
        object DBEdit13: TDBEdit
          Left = 14
          Top = 160
          Width = 227
          Height = 26
          DataField = 'SURNAME'
          DataSource = DataConnection.LinkAllianceDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit16: TDBEdit
          Left = 14
          Top = 104
          Width = 227
          Height = 26
          DataField = 'FIRST_NAME'
          DataSource = DataConnection.LinkAllianceDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit17: TDBEdit
          Left = 14
          Top = 48
          Width = 227
          Height = 26
          DataField = 'LAST_NAME'
          DataSource = DataConnection.LinkAllianceDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object BitBtn1: TBitBtn
          Left = 14
          Top = 264
          Width = 283
          Height = 33
          Action = DataConnection.LinkAllianceDSPost
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 4
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 709
        Height = 299
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel11: TPanel
          Left = 0
          Top = 242
          Width = 709
          Height = 57
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn10: TBitBtn
            Left = 8
            Top = 14
            Width = 217
            Height = 33
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1086#1076#1089#1090#1074#1077#1085#1085#1080#1082#1072
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn10Click
          end
          object BitBtn13: TBitBtn
            Left = 254
            Top = 14
            Width = 213
            Height = 33
            Action = DataConnection.PersAllianceDSPost
            Caption = #1057#1086#1093#1088'. '#1089#1074#1103#1079#1100' '#1089' '#1088#1086#1076#1089#1090#1074'.'
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object DBGrid7: TDBGrid
          Left = 0
          Top = 0
          Width = 709
          Height = 242
          Align = alClient
          DataSource = DataConnection.PersAllianLinksDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ALLIAN_LOOK'
              Title.Caption = #1058#1080#1087' '#1088#1086#1076#1089#1090#1074#1072
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERS_LOOK'
              Title.Caption = #1051#1080#1094#1086
              Width = 400
              Visible = True
            end>
        end
      end
    end
    object PersonJobsTabSheet: TTabSheet
      Caption = #1058#1088#1091#1076#1086#1074#1072#1103' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100
      ImageIndex = 6
      OnShow = PersonJobsTabSheetShow
      object Panel17: TPanel
        Left = 0
        Top = 242
        Width = 1020
        Height = 57
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn16: TBitBtn
          Left = 8
          Top = 14
          Width = 217
          Height = 33
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1090#1088#1091#1076'. '#1082#1085#1080#1075#1080
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn16Click
        end
        object BitBtn17: TBitBtn
          Left = 254
          Top = 14
          Width = 213
          Height = 33
          Action = DataConnection.PersonJobsDSPost
          Caption = #1057#1086#1093#1088'. '#1079#1072#1087#1080#1089#1100' '#1090#1088#1091#1076'. '#1082#1085#1080#1075#1080
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1020
        Height = 242
        Align = alClient
        DataSource = DataConnection.PersonJobRecsDS
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = []
        ParentFont = False
        RowDetailPanel.Color = clBtnFace
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        UseMultiTitle = True
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'INTERVAL_START'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072'|'#1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
            Width = 125
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'INTERVAL_END'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072'|'#1059#1074#1086#1083#1100#1085#1077#1085#1080#1103
            Width = 124
          end
          item
            EditButtons = <>
            FieldName = 'ACTION_ROLE_NAME'
            Footers = <>
            Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'ACTION_DESCRIPTION'
            Footers = <>
            Title.Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099' '#1080' '#1087#1088#1086#1095#1077#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1090#1088#1091#1076'. '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
            Width = 300
          end
          item
            EditButtons = <>
            Footers = <>
            Title.Caption = #1040#1076#1088#1077#1089
            Width = 300
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
end
