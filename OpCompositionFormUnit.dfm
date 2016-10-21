object OpCompositionForm: TOpCompositionForm
  Left = 0
  Top = 0
  Caption = #1057#1086#1089#1090#1072#1074' '#1086#1087#1077#1088#1072#1094#1080#1080' (Esc-'#1074#1099#1093#1086#1076')'
  ClientHeight = 713
  ClientWidth = 1259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OpCompositPageControl: TPageControl
    Left = 0
    Top = 0
    Width = 1259
    Height = 713
    ActivePage = TablesTabSheet
    Align = alClient
    TabOrder = 0
    object TablesTabSheet: TTabSheet
      Caption = #1042' '#1074#1080#1076#1077' '#1090#1072#1073#1083#1080#1094
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 1251
        Height = 685
        Align = alClient
        Caption = #1042#1099#1076#1077#1083#1077#1085#1085#1072#1103' '#1086#1087#1077#1088#1072#1094#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Splitter5: TSplitter
          Left = 2
          Top = 185
          Width = 1247
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
          Top = 353
          Width = 1247
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
          Top = 521
          Width = 1247
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
          Top = 682
          Width = 1247
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
              Width = 1239
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
              Width = 1239
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
          Width = 1247
          Height = 165
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
            Width = 1219
            Height = 143
            Margins.Top = 6
            Align = alClient
            DataSource = DataConnection.OpPersonsDS
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
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
            OnGetCellParams = OpPersonsDBGridEhGetCellParams
            OnKeyDown = OpPersonsDBGridEhKeyDown
            Columns = <
              item
                Color = clActiveCaption
                EditButtons = <>
                FieldName = 'AEL_TYPE_LOOK'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindow
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                Footers = <>
                ReadOnly = True
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 450
              end
              item
                AlwaysShowEditButton = True
                AutoDropDown = True
                DropDownSpecRow.CellsText = #1085#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086'!'
                DropDownSpecRow.Visible = True
                EditButtons = <>
                FieldName = 'ELPERS_LOOK'
                Footers = <>
                Width = 730
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Panel19: TPanel
            Left = 1221
            Top = 20
            Width = 24
            Height = 143
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
          Top = 188
          Width = 1247
          Height = 165
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
            Top = 160
            Width = 1243
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
            Width = 1219
            Height = 140
            Margins.Top = 6
            Align = alClient
            DataSource = DataConnection.OpAdrLinksDS
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
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
            PopupMenu = InterfaceDM.OpAdresesPopupMenu
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
                Font.Height = -19
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
                Width = 450
              end
              item
                Checkboxes = True
                EditButtons = <>
                FieldName = 'ITS_CITY_BOOL'
                Footers = <>
                ReadOnly = True
                Width = 50
              end
              item
                AlwaysShowEditButton = True
                DropDownSpecRow.CellsText = #1085#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086'!'
                DropDownSpecRow.Visible = True
                EditButtons = <>
                FieldName = 'ELADR_LOOK'
                Footers = <>
                Title.Caption = #1040#1076#1088#1077#1089' '#1083#1080#1094#1072
                Width = 680
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Panel20: TPanel
            Left = 1221
            Top = 20
            Width = 24
            Height = 140
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
          Top = 356
          Width = 1247
          Height = 165
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
            Top = 162
            Width = 1243
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
            Width = 1219
            Height = 142
            Margins.Top = 6
            Align = alClient
            DataSource = DataConnection.OpDocLinksDS
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
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
                Font.Height = -19
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
                Width = 450
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
                Width = 730
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Panel21: TPanel
            Left = 1221
            Top = 20
            Width = 24
            Height = 142
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
          Top = 524
          Width = 1247
          Height = 158
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
            Top = 155
            Width = 1243
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
            Width = 1219
            Height = 135
            Margins.Top = 6
            Align = alClient
            DataSource = DataConnection.OpOtherDataDS
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
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
                Font.Height = -19
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
                Width = 450
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
                Width = 730
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Panel22: TPanel
            Left = 1221
            Top = 20
            Width = 24
            Height = 135
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
    end
    object FieldsTabSheet: TTabSheet
      Caption = #1042' '#1074#1080#1076#1077' '#1087#1086#1083#1077#1081
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1251
        Height = 685
        Align = alBottom
        Caption = #1042#1099#1076#1077#1083#1077#1085#1085#1072#1103' '#1086#1087#1077#1088#1072#1094#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object PageControl3: TPageControl
          Left = 2
          Top = 682
          Width = 1247
          Height = 1
          ActivePage = TabSheet3
          Align = alBottom
          TabOrder = 0
          Visible = False
          object TabSheet3: TTabSheet
            Caption = #1040#1076#1088#1077#1089#1072' '#1083#1080#1094#1072
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 1239
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
          object TabSheet4: TTabSheet
            Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1083#1080#1094#1072
            ImageIndex = 1
            object DBGrid2: TDBGrid
              Left = 0
              Top = 0
              Width = 1239
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
        object Panel1: TPanel
          Left = 2
          Top = 20
          Width = 1223
          Height = 662
          Align = alLeft
          Caption = 'Panel1'
          TabOrder = 1
          object OpAdrLinksDBCtrlGrid: TDBCtrlGrid
            Left = 1
            Top = 153
            Width = 1221
            Height = 152
            Align = alTop
            DataSource = DataConnection.OpAdrLinksDS
            PanelHeight = 38
            PanelWidth = 1204
            TabOrder = 1
            RowCount = 4
            OnKeyDown = OpAdrLinksDBCtrlGridKeyDown
            object DBText2: TDBText
              Left = 16
              Top = 16
              Width = 281
              Height = 17
              DataField = 'AEL_TYPE_LOOK'
              DataSource = DataConnection.OpAdrLinksDS
            end
            object DBEdit2: TDBEdit
              Left = 328
              Top = 8
              Width = 873
              Height = 26
              DataField = 'ELADR_LOOK'
              DataSource = DataConnection.OpAdrLinksDS
              TabOrder = 0
            end
          end
          object OpPersonsDBCtrlGrid: TDBCtrlGrid
            Left = 1
            Top = 1
            Width = 1221
            Height = 152
            Align = alTop
            DataSource = DataConnection.OpPersonsDS
            PanelHeight = 38
            PanelWidth = 1204
            TabOrder = 0
            RowCount = 4
            OnKeyDown = OpPersonsDBCtrlGridKeyDown
            object DBText1: TDBText
              Left = 16
              Top = 16
              Width = 281
              Height = 17
              DataField = 'AEL_TYPE_LOOK'
              DataSource = DataConnection.OpPersonsDS
            end
            object DBEdit1: TDBEdit
              Left = 328
              Top = 8
              Width = 873
              Height = 26
              DataField = 'ELPERS_LOOK'
              DataSource = DataConnection.OpPersonsDS
              TabOrder = 0
            end
          end
          object OpDocLinksDBCtrlGrid: TDBCtrlGrid
            Left = 1
            Top = 305
            Width = 1221
            Height = 152
            Align = alTop
            DataSource = DataConnection.OpDocLinksDS
            PanelHeight = 38
            PanelWidth = 1204
            TabOrder = 2
            RowCount = 4
            OnKeyDown = OpDocLinksDBCtrlGridKeyDown
            object DBText3: TDBText
              Left = 16
              Top = 16
              Width = 281
              Height = 17
              DataField = 'AEL_TYPE_LOOK'
              DataSource = DataConnection.OpDocLinksDS
            end
            object DBEdit3: TDBEdit
              Left = 328
              Top = 6
              Width = 873
              Height = 26
              DataField = 'ELDOC_LOOK'
              DataSource = DataConnection.OpDocLinksDS
              TabOrder = 0
            end
          end
          object OpOtherDataDBCtrlGrid: TDBCtrlGrid
            Left = 1
            Top = 457
            Width = 1221
            Height = 180
            Align = alTop
            DataSource = DataConnection.OpOtherDataDS
            PanelHeight = 36
            PanelWidth = 1204
            TabOrder = 3
            RowCount = 5
            OnKeyDown = OpOtherDataDBCtrlGridKeyDown
            object DBText4: TDBText
              Left = 16
              Top = 16
              Width = 281
              Height = 17
              DataField = 'AEL_TYPE_LOOK'
              DataSource = DataConnection.OpOtherDataDS
            end
            object DBEdit4: TDBEdit
              Left = 328
              Top = 6
              Width = 873
              Height = 26
              DataField = 'STATIC_DATA'
              DataSource = DataConnection.OpOtherDataDS
              TabOrder = 0
            end
          end
        end
        object Panel2: TPanel
          Left = 1225
          Top = 20
          Width = 24
          Height = 662
          Align = alClient
          TabOrder = 2
          object DBNavigator1: TDBNavigator
            Left = 1
            Top = 1
            Width = 22
            Height = 25
            DataSource = DataConnection.OpPersonsDS
            VisibleButtons = [nbPost]
            Align = alTop
            TabOrder = 0
          end
          object DBNavigator2: TDBNavigator
            Left = 1
            Top = 26
            Width = 22
            Height = 25
            DataSource = DataConnection.OpAdrLinksDS
            VisibleButtons = [nbPost]
            Align = alTop
            TabOrder = 1
          end
          object DBNavigator10: TDBNavigator
            Left = 1
            Top = 51
            Width = 22
            Height = 25
            DataSource = DataConnection.OpDocLinksDS
            VisibleButtons = [nbPost]
            Align = alTop
            TabOrder = 2
          end
          object DBNavigator11: TDBNavigator
            Left = 1
            Top = 76
            Width = 22
            Height = 25
            DataSource = DataConnection.OpOtherDataDS
            VisibleButtons = [nbPost]
            Align = alTop
            TabOrder = 3
          end
        end
      end
    end
  end
end
