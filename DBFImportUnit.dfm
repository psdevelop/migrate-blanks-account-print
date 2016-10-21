object DBFImportForm: TDBFImportForm
  Left = 0
  Top = 0
  Caption = #1048#1084#1087#1086#1088#1090' '#1080#1079' DBF'
  ClientHeight = 620
  ClientWidth = 1068
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1068
    Height = 620
    ActivePage = KLADRTabSheet
    Align = alClient
    TabOrder = 0
    object KLADRTabSheet: TTabSheet
      Caption = #1050#1051#1040#1044#1056
      object Panel8: TPanel
        Left = 0
        Top = 528
        Width = 1060
        Height = 64
        Align = alBottom
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 15
          Width = 119
          Height = 16
          Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1099#1081' '#1091#1088'-'#1085#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 45
          Width = 124
          Height = 16
          Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1081' '#1091#1088'-'#1085#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object MinLevelEdit: TEdit
          Left = 133
          Top = 6
          Width = 36
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '1'
        end
        object UpDown1: TUpDown
          Left = 169
          Top = 6
          Width = 16
          Height = 24
          Associate = MinLevelEdit
          Max = 20
          Position = 1
          TabOrder = 1
        end
        object MaxLevelEdit: TEdit
          Left = 133
          Top = 37
          Width = 36
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '4'
        end
        object UpDown2: TUpDown
          Left = 169
          Top = 37
          Width = 16
          Height = 24
          Associate = MaxLevelEdit
          Max = 20
          Position = 4
          TabOrder = 3
        end
        object BitBtn1: TBitBtn
          Left = 217
          Top = 22
          Width = 241
          Height = 33
          Caption = #1048#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1086#1089#1085#1086#1074#1085#1091#1102' '#1041#1044
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn1Click
        end
        object KLADRFilterCheckBox: TCheckBox
          Left = 672
          Top = 38
          Width = 121
          Height = 17
          Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object KLADRFilterMemo: TMemo
          Left = 792
          Top = 6
          Width = 257
          Height = 47
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            #1086#1073#1083
            #1082#1088#1072#1081
            #1086#1082#1088#1091#1075
            #1063#1091#1074#1072#1096#1080#1103
            #1056#1077#1089#1087
            #1075
            #1040#1086#1073#1083
            #1040#1054)
          ParentFont = False
          TabOrder = 6
        end
        object BitBtn3: TBitBtn
          Left = 472
          Top = 22
          Width = 169
          Height = 33
          Caption = #1057#1074#1103#1079#1082#1072' '#1050#1051#1040#1044#1056
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 7
          OnClick = BitBtn3Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1060
        Height = 528
        Align = alClient
        DataSource = KLADRDS
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
            FieldName = 'code'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'socr'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'index'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gninmb'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ocatd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'uno'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1080#1103
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1060
        Height = 552
        Align = alClient
        DataSource = ShortiesDS
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
            FieldName = 'level'
            Title.Caption = #1059#1088#1086#1074#1077#1085#1100' (level)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'scname'
            Title.Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1080#1077' ('#1084#1080#1085'. '#1089#1090#1088#1086#1082#1072') (scname)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'socrname'
            Title.Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1080#1077' ('#1087#1086#1083#1085#1086#1077') (socrname)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kod_t_st'
            Title.Caption = #1050#1086#1076' '#1089#1086#1082#1088#1072#1097#1077#1085#1080#1103' (kod_t_st)'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 552
        Width = 1060
        Height = 40
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn2: TBitBtn
          Left = 8
          Top = 6
          Width = 209
          Height = 25
          Caption = #1048#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1086#1089#1085#1086#1074#1085#1091#1102' '#1041#1044
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = BitBtn2Click
        end
      end
    end
  end
  object DBFImportADOC: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=KLADR' +
      ';'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 664
  end
  object HousesADOT: TADOTable
    Connection = DBFImportADOC
    CursorType = ctStatic
    TableName = 'doma'
    Left = 736
    Top = 56
  end
  object MainMenu: TMainMenu
    Left = 736
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
    end
    object N2: TMenuItem
      Caption = #1042#1099#1093#1086#1076
    end
  end
  object KLADRDS: TDataSource
    DataSet = KLADRADODS
    Left = 928
    Top = 56
  end
  object KLADRADODS: TADODataSet
    Connection = DBFImportADOC
    CursorType = ctStatic
    OnFilterRecord = KLADRADODSFilterRecord
    CommandText = 'select * from kladr order by socr asc'
    Parameters = <>
    Left = 928
    object KLADRADODSname: TStringField
      FieldName = 'name'
      OnGetText = KLADRADODSnameGetText
      FixedChar = True
      Size = 40
    end
    object KLADRADODSsocr: TStringField
      FieldName = 'socr'
      OnGetText = KLADRADODSsocrGetText
      FixedChar = True
      Size = 10
    end
    object KLADRADODScode: TStringField
      FieldName = 'code'
      FixedChar = True
      Size = 13
    end
    object KLADRADODSindex: TStringField
      FieldName = 'index'
      FixedChar = True
      Size = 6
    end
    object KLADRADODSgninmb: TStringField
      FieldName = 'gninmb'
      FixedChar = True
      Size = 4
    end
    object KLADRADODSuno: TStringField
      FieldName = 'uno'
      FixedChar = True
      Size = 4
    end
    object KLADRADODSocatd: TStringField
      FieldName = 'ocatd'
      FixedChar = True
      Size = 11
    end
    object KLADRADODSstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
  end
  object ShortiesDS: TDataSource
    DataSet = ShortedADODS
    Left = 1000
    Top = 56
  end
  object ShortedADODS: TADODataSet
    Connection = DBFImportADOC
    CursorType = ctStatic
    CommandText = 'select * from socrbase order by KOD_T_ST asc'
    Parameters = <>
    Left = 1000
    object ShortedADODSlevel: TStringField
      FieldName = 'level'
      FixedChar = True
      Size = 5
    end
    object ShortedADODSscname: TStringField
      FieldName = 'scname'
      OnGetText = ShortedADODSscnameGetText
      FixedChar = True
      Size = 10
    end
    object ShortedADODSsocrname: TStringField
      FieldName = 'socrname'
      OnGetText = ShortedADODSsocrnameGetText
      FixedChar = True
      Size = 29
    end
    object ShortedADODSkod_t_st: TStringField
      FieldName = 'kod_t_st'
      FixedChar = True
      Size = 3
    end
  end
  object ImportKLADRItemADOSP: TADOStoredProc
    Connection = DataConnection.FMSStorageADOC
    ProcedureName = 'IMPORT_KLADR_ITEM_EXT'
    Parameters = <
      item
        Name = 'IN_ITEM_NAME'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1020
        Value = Null
      end
      item
        Name = 'IN_SHORTY_NAME'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = 'IN_KLADR_CODE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 80
        Value = Null
      end
      item
        Name = 'IN_INDEX'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 40
        Value = Null
      end
      item
        Name = 'IN_GNIMB'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = 'IN_UNO'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 80
        Value = Null
      end
      item
        Name = 'IN_OCATD'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 60
        Value = Null
      end
      item
        Name = 'IN_STATUS'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'MIN_LEVEL'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'MAX_LEVEL'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end>
    Left = 832
  end
  object ImportShortedADOSP: TADOStoredProc
    Connection = DataConnection.FMSStorageADOC
    ProcedureName = 'IMPORT_SHORT_ITEM'
    Parameters = <
      item
        Name = 'IN_SHORT_LEVEL'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_SHORT_TEXT'
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = 'IN_SHORT_FULL_TEXT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = 'IN_SHORT_INT_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end>
    Left = 832
    Top = 56
  end
end
