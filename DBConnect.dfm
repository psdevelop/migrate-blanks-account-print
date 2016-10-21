object DataConnection: TDataConnection
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 1403
  Width = 1380
  object FMSStorageADOC: TADOConnection
    ConnectionString = 'FILE NAME=C:\DEVELOP(1)\Sources\FMS\FMSMainChannel.udl'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    AfterConnect = FMSStorageADOCAfterConnect
    AfterDisconnect = FMSStorageADOCAfterDisconnect
    BeforeDisconnect = FMSStorageADOCBeforeDisconnect
    Left = 40
    Top = 16
  end
  object PersonsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = PersonsADODSBeforeInsert
    OnCalcFields = PersonsADODSCalcFields
    OnEditError = PersonsADODSEditError
    OnFilterRecord = PersonsADODSFilterRecord
    OnPostError = PersonsADODSPostError
    CommandText = 'select * from PERSONS where CLOSED=0 order by PERSON_ID DESC'
    Parameters = <>
    Left = 40
    Top = 64
    object PersonsADODSPERSON_ID: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object PersonsADODSFIRST_NAME: TWideStringField
      FieldName = 'FIRST_NAME'
      Size = 255
    end
    object PersonsADODSLAST_NAME: TWideStringField
      FieldName = 'LAST_NAME'
      Size = 255
    end
    object PersonsADODSSURNAME: TWideStringField
      FieldName = 'SURNAME'
      Size = 255
    end
    object PersonsADODSBIRTHDATE: TDateField
      FieldName = 'BIRTHDATE'
      EditMask = '!99/99/00;1;_'
    end
    object PersonsADODSPERSON_BUILDING_ID: TIntegerField
      FieldName = 'PERSON_BUILDING_ID'
    end
    object PersonsADODSPERSON_COUNTRY_ID: TIntegerField
      FieldName = 'PERSON_COUNTRY_ID'
    end
    object PersonsADODSPERSONS_NATION_ID: TIntegerField
      FieldName = 'PERSONS_NATION_ID'
    end
    object PersonsADODSPERSON_SEX_ID: TIntegerField
      FieldName = 'PERSON_SEX_ID'
    end
    object PersonsADODSREG_PSTATION_ID: TIntegerField
      FieldName = 'REG_PSTATION_ID'
    end
    object PersonsADODSBIRTH_REGION_ID: TIntegerField
      FieldName = 'BIRTH_REGION_ID'
    end
    object PersonsADODSBIRTH_SETTLEM_ID: TIntegerField
      FieldName = 'BIRTH_SETTLEM_ID'
    end
    object PersonsADODSBIRTHPLACE: TWideStringField
      FieldName = 'BIRTHPLACE'
      Size = 255
    end
    object PersonsADODSIDENTITY_DOC_ID: TIntegerField
      FieldName = 'IDENTITY_DOC_ID'
    end
    object PersonsADODSPERSON_INN: TWideStringField
      FieldName = 'PERSON_INN'
      FixedChar = True
      Size = 12
    end
    object PersonsADODSTAKE_PDATA_CONSENT: TSmallintField
      FieldName = 'TAKE_PDATA_CONSENT'
      OnGetText = PersonsADODSTAKE_PDATA_CONSENTGetText
    end
    object PersonsADODSPERSON_SEX_ID_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'PERSON_SEX_ID_LOOK'
      LookupDataSet = SexADOT
      LookupKeyFields = 'SEX_ID'
      LookupResultField = 'SEX_NAME'
      KeyFields = 'PERSON_SEX_ID'
      Size = 255
      Lookup = True
    end
    object PersonsADODSBTH_REGION_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'BTH_REGION_LOOK'
      LookupDataSet = BTHRegionsADOT
      LookupKeyFields = 'REGION_ID'
      LookupResultField = 'REGION_NAME'
      KeyFields = 'BIRTH_REGION_ID'
      Size = 255
      Lookup = True
    end
    object PersonsADODSPERS_PLSTATUS_ID: TIntegerField
      FieldName = 'PERS_PLSTATUS_ID'
    end
    object PersonsADODSPERS_PLSTAT_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'PERS_PLSTAT_LOOK'
      LookupDataSet = PlaceStatusesADOT
      LookupKeyFields = 'PLACE_STATUS_ID'
      LookupResultField = 'PLSTATUS_NAME'
      KeyFields = 'PERS_PLSTATUS_ID'
      Size = 255
      Lookup = True
    end
    object PersonsADODSBUILD_TYPE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'BUILD_TYPE_LOOK'
      LookupDataSet = BuildTypesADOT
      LookupKeyFields = 'BUILDING_TYPE_ID'
      LookupResultField = 'BULDING_TYPE_NAME'
      KeyFields = 'PERSON_BUILDING_ID'
      Size = 255
      Lookup = True
    end
    object PersonsADODSNATION_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'NATION_LOOK'
      LookupDataSet = NationsADOT
      LookupKeyFields = 'NATION_ID'
      LookupResultField = 'NATION_NAME'
      KeyFields = 'PERSONS_NATION_ID'
      Size = 255
      Lookup = True
    end
    object PersonsADODSCOUNTRY_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'COUNTRY_LOOK'
      LookupDataSet = CountriesADOT
      LookupKeyFields = 'COUNTRY_ID'
      LookupResultField = 'COUNTRY_NAME'
      KeyFields = 'PERSON_COUNTRY_ID'
      Size = 255
      Lookup = True
    end
    object PersonsADODSSETTL_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'SETTL_LOOK'
      LookupDataSet = SettlementsADOT
      LookupKeyFields = 'SETTLEMENT_ID'
      LookupResultField = 'SETTLEM_NAME'
      KeyFields = 'BIRTH_SETTLEM_ID'
      Size = 255
      Lookup = True
    end
    object PersonsADODSBIRTH_DISTRICT_ID: TIntegerField
      FieldName = 'BIRTH_DISTRICT_ID'
    end
    object PersonsADODSBIRTH_COUNTRY_ID: TIntegerField
      FieldName = 'BIRTH_COUNTRY_ID'
    end
    object PersonsADODSSEC_COUNTRY_ID: TIntegerField
      FieldName = 'SEC_COUNTRY_ID'
    end
    object PersonsADODSBIRTH_COUNTRY_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'BIRTH_COUNTRY_LOOK'
      LookupDataSet = CountriesADOT
      LookupKeyFields = 'COUNTRY_ID'
      LookupResultField = 'COUNTRY_NAME'
      KeyFields = 'BIRTH_COUNTRY_ID'
      Size = 255
      Lookup = True
    end
    object PersonsADODSSEC_COUNTRY_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'SEC_COUNTRY_LOOK'
      LookupDataSet = CountriesADOT
      LookupKeyFields = 'COUNTRY_ID'
      LookupResultField = 'COUNTRY_NAME'
      KeyFields = 'SEC_COUNTRY_ID'
      Size = 255
      Lookup = True
    end
    object PersonsADODSTAKE_CONSENT_BOOL: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'TAKE_CONSENT_BOOL'
      Calculated = True
    end
    object PersonsADODSIS_OLD: TSmallintField
      FieldName = 'IS_OLD'
    end
    object PersonsADODSDEATHDATE: TDateField
      FieldName = 'DEATHDATE'
    end
    object PersonsADODSPERSON_FATHER_STR: TWideStringField
      FieldName = 'PERSON_FATHER_STR'
      Size = 255
    end
    object PersonsADODSPERSON_MOTHER_STR: TWideStringField
      FieldName = 'PERSON_MOTHER_STR'
      Size = 255
    end
    object PersonsADODSLOCATION_ADRES_ID: TIntegerField
      FieldName = 'LOCATION_ADRES_ID'
    end
  end
  object PersonsDS: TDataSource
    DataSet = PersonsADODS
    Left = 40
    Top = 112
  end
  object PersonViewADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from PERSON_VIEW'
    Parameters = <>
    Left = 40
    Top = 744
  end
  object CheckUpdatesTimer: TTimer
    Enabled = False
    Left = 40
    Top = 160
  end
  object DictsADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    TableName = 'DICTS'
    Left = 416
    Top = 208
  end
  object DictsDS: TDataSource
    DataSet = DictsADOT
    Left = 416
    Top = 256
  end
  object CountriesDS: TDataSource
    DataSet = CountriesADOT
    Left = 40
    Top = 256
  end
  object AddUpdCountryADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPDATE_COUNTRY'
    Parameters = <
      item
        Name = 'IN_COUNTRY_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_COUNTRY_NAME'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1020
        Value = Null
      end
      item
        Name = 'IN_COUNTRY_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end>
    Left = 400
    Top = 792
  end
  object AddUpdDocTypeADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPDATE_DOC_TYPE'
    Parameters = <
      item
        Name = 'IN_DOC_TYPE_NAME'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'IN_DOC_TYPE_BRANCH_CODE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'IN_DOC_TYPE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_DOC_TYPE_INT_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'OUT_DOC_TYPE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end>
    Left = 400
    Top = 696
  end
  object DocTypesDS: TDataSource
    DataSet = DocTypesADOT
    Left = 608
    Top = 64
  end
  object AddUpdDTypeADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPDATE_DOC_TYPE'
    Parameters = <
      item
        Name = 'IN_DOC_TYPE_NAME'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'IN_DOC_TYPE_BRANCH_CODE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'IN_DOC_TYPE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_DOC_TYPE_INT_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end>
    Left = 400
    Top = 888
  end
  object ServicesDS: TDataSource
    DataSet = ServicesADOT
    Left = 240
    Top = 256
  end
  object AddUpdServiceADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPDATE_SERVICE'
    Parameters = <
      item
        Name = 'IN_SERVICE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_SERVICE_NAME'
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = 'IN_SERVICE_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_SERVICE_PRICE'
        Attributes = [paNullable]
        DataType = ftFloat
        Value = Null
      end>
    Left = 488
    Top = 696
  end
  object OKVDADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    TableName = 'OKVD'
    Left = 328
    Top = 112
  end
  object AddUpdOKVDADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPDATE_OKVD'
    Parameters = <
      item
        Name = 'IN_OKVD_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_OKVD_CODE'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'IN_OKVD_NAME'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'IN_OKVD_SECTION_NAME'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'IN_OKVD_INT_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'OUT_OKVD_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end>
    Left = 584
    Top = 696
  end
  object OKVDDS: TDataSource
    DataSet = OKVDADOT
    Left = 328
    Top = 160
  end
  object AReasonsADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Filter = 'REASON_TYPE=1'
    Filtered = True
    TableName = 'A_REASONS'
    Left = 416
    Top = 112
  end
  object AReasonsDS: TDataSource
    DataSet = AReasonsADOT
    Left = 416
    Top = 160
  end
  object AddUpdAReasonsADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPDATE_AREASON'
    Parameters = <
      item
        Name = 'IN_A_REASON_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_A_REASON_NAME'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'IN_A_REASON_CODE'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_REASON_TYPE'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'OUT_A_REASON_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end>
    Left = 680
    Top = 696
  end
  object TReasonsDS: TDataSource
    DataSet = TReasonsADOT
    Left = 512
    Top = 160
  end
  object TReasonsADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Filter = 'REASON_TYPE=2'
    Filtered = True
    TableName = 'A_REASONS'
    Left = 512
    Top = 112
  end
  object AddUpdRegionADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPDATE_REGION'
    Parameters = <
      item
        Name = 'IN_REGION_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_REGION_NAME'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'IN_IS_RCENTER'
        DataType = ftSmallint
        Value = 0
      end
      item
        Name = 'IN_IS_BTHREGION'
        DataType = ftSmallint
        Value = 0
      end
      item
        Name = 'IN_REGION_INT_CODE'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'OUT_REGION_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end>
    Left = 784
    Top = 696
  end
  object BTHRegionsADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Filter = 'IS_BTHREGION=1'
    Filtered = True
    TableName = 'REGIONS'
    Left = 136
    Top = 304
    object BTHRegionsADOTREGION_ID: TIntegerField
      FieldName = 'REGION_ID'
    end
    object BTHRegionsADOTREGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 1020
    end
    object BTHRegionsADOTIS_RCENTER: TSmallintField
      FieldName = 'IS_RCENTER'
      OnGetText = BTHRegionsADOTIS_RCENTERGetText
    end
    object BTHRegionsADOTREGION_INT_CODE: TIntegerField
      FieldName = 'REGION_INT_CODE'
    end
    object BTHRegionsADOTREGION_COUNTRY_ID: TIntegerField
      FieldName = 'REGION_COUNTRY_ID'
    end
    object BTHRegionsADOTREGION_STATE_ID: TIntegerField
      FieldName = 'REGION_STATE_ID'
    end
    object BTHRegionsADOTIS_BTHREGION: TSmallintField
      FieldName = 'IS_BTHREGION'
    end
  end
  object BTHRegionsDS: TDataSource
    DataSet = BTHRegionsADOT
    Left = 136
    Top = 352
  end
  object PlaceStatusesADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Filter = 'PSTATUS_TYPE=1'
    Filtered = True
    TableName = 'PLACE_STATUSES'
    Left = 240
    Top = 112
  end
  object PlaceStatusesDS: TDataSource
    DataSet = PlaceStatusesADOT
    Left = 240
    Top = 160
  end
  object LinksADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    TableName = 'ENTLINKS'
    Left = 512
    Top = 16
  end
  object LinksDS: TDataSource
    DataSet = LinksADOT
    Left = 512
    Top = 64
  end
  object DocStatusesADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Filter = 'PSTATUS_TYPE=2'
    Filtered = True
    TableName = 'PLACE_STATUSES'
    Left = 328
    Top = 16
  end
  object DocStatusesDS: TDataSource
    DataSet = DocStatusesADOT
    Left = 328
    Top = 64
  end
  object SettlementsDS: TDataSource
    DataSet = SettlementsADOT
    Left = 40
    Top = 568
  end
  object FMSBranchesDS: TDataSource
    DataSet = FMSBranchesADOT
    Left = 136
    Top = 160
  end
  object StatesDS: TDataSource
    DataSet = StatesADOT
    Left = 40
    Top = 352
  end
  object FMSBranchDefSettDS: TDataSource
    DataSet = FMSBrDefSettADODS
    Left = 1168
    Top = 568
  end
  object FMSBrDefSettADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=1'
    Parameters = <>
    Left = 1168
    Top = 520
    object FMSBrDefSettADODSSYS_SETTING_ID: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object FMSBrDefSettADODSSYS_SETTING_NAME: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object FMSBrDefSettADODSSTR_VALUE: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object FMSBrDefSettADODSINT_VALUE: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object FMSBrDefSettADODSSETTING_INT_CODE: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object FMSBrDefSettADODSIVAL: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object StateDefSettADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=2'
    Parameters = <>
    Left = 1032
    Top = 616
    object StateDefSettADODSSYS_SETTING_ID: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object StateDefSettADODSSYS_SETTING_NAME: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object StateDefSettADODSSTR_VALUE: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object StateDefSettADODSINT_VALUE: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object StateDefSettADODSSETTING_INT_CODE: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
  end
  object StateDefSettDS: TDataSource
    DataSet = StateDefSettADODS
    Left = 1032
    Top = 664
  end
  object FMSBrStr2SettADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=3'
    Parameters = <>
    Left = 1168
    Top = 328
    object IntegerField1: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField1: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField2: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField2: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField3: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
  end
  object FMSBrStr2SettDS: TDataSource
    DataSet = FMSBrStr2SettADODS
    Left = 1168
    Top = 376
  end
  object RDirFIOStrSettADODS: TADODataSet
    Connection = FMSStorageADOC
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=4'
    Parameters = <>
    Left = 1168
    Top = 616
  end
  object RDirFIOStrSettDS: TDataSource
    DataSet = RDirFIOStrSettADODS
    Left = 1168
    Top = 664
  end
  object RDirFIOStr2SettDS: TDataSource
    DataSet = RDirFIOStr2SettADODS
    Left = 1032
    Top = 568
  end
  object RDirFIOStr2SettADODS: TADODataSet
    Connection = FMSStorageADOC
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=5'
    Parameters = <>
    Left = 1032
    Top = 520
  end
  object RRankStrSettADODS: TADODataSet
    Connection = FMSStorageADOC
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=6'
    Parameters = <>
    Left = 1032
    Top = 712
  end
  object RRankStrSettDS: TDataSource
    DataSet = RRankStrSettADODS
    Left = 1032
    Top = 760
  end
  object RRankStr2SettADODS: TADODataSet
    Connection = FMSStorageADOC
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=7'
    Parameters = <>
    Left = 1168
    Top = 424
  end
  object RRankStr2SettDS: TDataSource
    DataSet = RRankStr2SettADODS
    Left = 1168
    Top = 472
  end
  object FMSBrNameDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select fbr.BRANCHE_NAME as FMS_BRANCH_NAME_DEFAULT,'#13#10'fbr.BRANCHE' +
      '_CODE as FMS_BRANCH_CODE_DEFAULT  from '#13#10'SYS_SETTINGS ss LEFT JO' +
      'IN FMS_BRANCHES fbr '#13#10'on (ss.INT_VALUE=fbr.BRANCHE_ID)'#13#10'WHERE ss' +
      '.SETTING_INT_CODE=1'#13#10
    Parameters = <>
    Left = 1168
    Top = 712
  end
  object StateNameDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select st.STATE_NAME as STATE_NAME_DEFAULT from '#13#10'SYS_SETTINGS s' +
      's LEFT JOIN  STATES st  '#13#10'on (ss.INT_VALUE=st.STATE_ID)'#13#10'WHERE s' +
      's.SETTING_INT_CODE=2'
    Parameters = <>
    Left = 1168
    Top = 760
  end
  object SexADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    TableName = 'SEXS'
    Left = 240
    Top = 16
  end
  object NationsADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    TableName = 'NATIONS'
    Left = 136
    Top = 208
  end
  object NationsDS: TDataSource
    DataSet = NationsADOT
    Left = 136
    Top = 256
  end
  object BuildTypesDS: TDataSource
    DataSet = BuildTypesADOT
    Left = 136
    Top = 64
  end
  object BuildTypesADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    TableName = 'BUILDING_TYPES'
    Left = 136
    Top = 16
  end
  object InsBlankPersADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'INSERT_BLANK_PERSON'
    Parameters = <
      item
        Name = 'OUT_PERSON_ID'
        DataType = ftInteger
        Direction = pdOutput
        Size = 4
        Value = 0
      end>
    Left = 400
    Top = 840
  end
  object GetPersonByLoginADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'login'
        DataType = ftWideString
        Precision = 100
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM USERS WHERE LOGIN=:login;')
    Left = 400
    Top = 936
  end
  object CurrentUserRolesADODS: TADODataSet
    Connection = FMSStorageADOC
    CommandText = 
      'select rl.ROLE_INT_CODE '#13#10'from USR_ROLES ur, ROLES rl '#13#10'WHERE ur' +
      '.USER_ID=:user_id AND ur.ROLE_ID=rl.ROLE_ID '#13#10'AND ur.IS_ACTIVE=1' +
      ';'
    Parameters = <
      item
        Name = 'user_id'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 608
    Top = 112
  end
  object UsersADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    TableName = 'USERS'
    Left = 136
    Top = 512
  end
  object RolesADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    TableName = 'ROLES'
    Left = 136
    Top = 400
  end
  object UserRolesADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select rl.ROLE_INT_CODE, ur.IS_ACTIVE, rl.ROLE_NAME,'#13#10'ur.USER_ID' +
      ' from USR_ROLES ur, ROLES rl '#13#10'WHERE ur.ROLE_ID=rl.ROLE_ID;'
    DataSource = UsersDS
    IndexFieldNames = 'USER_ID'
    MasterFields = 'USER_ID'
    Parameters = <>
    Left = 240
    Top = 400
  end
  object UsersDS: TDataSource
    DataSet = UsersADOT
    Left = 136
    Top = 568
  end
  object RolesDS: TDataSource
    DataSet = RolesADOT
    Left = 136
    Top = 448
  end
  object UserRolesDS: TDataSource
    DataSet = UserRolesADODS
    Left = 240
    Top = 456
  end
  object AddUpdActionADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPD_ACTION_REG'
    Parameters = <
      item
        Name = 'IN_ACTION_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_USER_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_ATYPE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_ATSTAMP'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'IN_SERVICE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_REPORT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_DOC_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_ATYPE_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_SERVICE_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_REPORT_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_USER_LOGIN'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_PERSON_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_SERVICE_GROUP_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end>
    Left = 488
    Top = 792
  end
  object PersonOperationsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Filtered = True
    BeforeInsert = PersonOperationsADODSBeforeInsert
    AfterPost = PersonOperationsADODSAfterPost
    AfterScroll = PersonOperationsADODSAfterScroll
    OnCalcFields = PersonOperationsADODSCalcFields
    OnFilterRecord = PersonOperationsADODSFilterRecord
    OnWillMove = PersonOperationsADODSWillMove
    OnMoveComplete = PersonOperationsADODSMoveComplete
    CommandText = 
      'select arg.*, srv.SERVICE_NAME, srv.ITS_GROUP  from ACTIONS_REG ' +
      'arg '#13#10'LEFT JOIN ACTION_TYPES atp '#13#10'ON (arg.ATYPE_ID=atp.ACTION_T' +
      'YPE_ID) '#13#10'LEFT JOIN  SERVICES srv '#13#10'ON (arg.SERVICE_ID=srv.SERVI' +
      'CE_ID)'#13#10'WHERE ((atp.ACTION_TYPE_INT_CODE=3) OR '#13#10'(atp.ACTION_TYP' +
      'E_INT_CODE=6)) '#13#10'ORDER BY arg.A_TSTAMP ASC, srv.ITS_GROUP  DESC'
    DataSource = PersonsDS
    IndexFieldNames = 'PERSON_ID'
    MasterFields = 'PERSON_ID'
    Parameters = <>
    Left = 720
    Top = 16
    object PersonOperationsADODSACTIONS_ID: TIntegerField
      FieldName = 'ACTIONS_ID'
    end
    object PersonOperationsADODSACTOR_ID: TIntegerField
      FieldName = 'ACTOR_ID'
    end
    object PersonOperationsADODSSERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object PersonOperationsADODSREPORT_ID: TIntegerField
      FieldName = 'REPORT_ID'
    end
    object PersonOperationsADODSA_TSTAMP: TDateTimeField
      FieldName = 'A_TSTAMP'
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy hh.mm'
    end
    object PersonOperationsADODSDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object PersonOperationsADODSATYPE_ID: TSmallintField
      FieldName = 'ATYPE_ID'
    end
    object PersonOperationsADODSPERSON_ID: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object PersonOperationsADODSATYPE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'ATYPE_LOOK'
      LookupDataSet = ActionTypesADOT
      LookupKeyFields = 'ACTION_TYPE_ID'
      LookupResultField = 'ACTION_TYPE_NAME'
      KeyFields = 'ATYPE_ID'
      Size = 255
      Lookup = True
    end
    object PersonOperationsADODSSERVICE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'SERVICE_LOOK'
      LookupDataSet = ServicesADOT
      LookupKeyFields = 'SERVICE_ID'
      LookupResultField = 'SERVICE_NAME'
      KeyFields = 'SERVICE_ID'
      Size = 255
      Lookup = True
    end
    object PersonOperationsADODSSERVICE_GROUP_ID: TIntegerField
      FieldName = 'SERVICE_GROUP_ID'
    end
    object PersonOperationsADODSSERV_GROUP_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'SERV_GROUP_LOOK'
      LookupDataSet = ServiceGroupsADODS
      LookupKeyFields = 'SERVICE_ID'
      LookupResultField = 'SERVICE_NAME'
      KeyFields = 'SERVICE_GROUP_ID'
      Size = 255
      Lookup = True
    end
    object PersonOperationsADODSSERVICE_NAME: TWideStringField
      FieldName = 'SERVICE_NAME'
      Size = 255
    end
    object PersonOperationsADODSITS_GROUP: TSmallintField
      FieldName = 'ITS_GROUP'
    end
    object PersonOperationsADODSTO_PRINT: TSmallintField
      FieldName = 'TO_PRINT'
    end
    object PersonOperationsADODSTO_PRINT_BOOL: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'TO_PRINT_BOOL'
      Calculated = True
    end
    object PersonOperationsADODSACTION_GROUP_ID: TIntegerField
      FieldName = 'ACTION_GROUP_ID'
    end
    object PersonOperationsADODSACTION_DESCRIPTION: TWideStringField
      FieldName = 'ACTION_DESCRIPTION'
      Size = 1000
    end
    object PersonOperationsADODSCIVIL_STATUS: TWideStringField
      FieldName = 'CIVIL_STATUS'
      Size = 255
    end
    object PersonOperationsADODSACTION_LOC_TYPE: TWideStringField
      FieldName = 'ACTION_LOC_TYPE'
      Size = 255
    end
  end
  object PersonOperationsDS: TDataSource
    DataSet = PersonOperationsADODS
    Left = 720
    Top = 64
  end
  object ActionTypesADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    TableName = 'ACTION_TYPES'
    Left = 608
    Top = 160
  end
  object CivilStatusesADOTable: TADOTable
    Connection = FMSStorageADOC
    Filter = 'PSTATUS_TYPE=3'
    Filtered = True
    TableName = 'PLACE_STATUSES'
    Left = 416
    Top = 16
  end
  object CivilStatusesDS: TDataSource
    DataSet = CivilStatusesADOTable
    Left = 416
    Top = 64
  end
  object PersonAdrLinksDS: TDataSource
    DataSet = PersonAdrLinksADODS
    Left = 720
    Top = 352
  end
  object PersonAdrLinksADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select elr.EL_REG_ID, elr.EVENT_DATE, elr.TERMINATE_DATE, '#13#10'elr.' +
      'PERSON_ID, elr.ADRES_ID, elr.DOC_ID, eln.ELINK_TYPE,'#13#10'elr.ENTLNK' +
      '_TYPE_ID, elr.ESTATUS_ID, adr.ADR_FULL_NAME '#13#10'from ENTLNK_REG el' +
      'r LEFT JOIN  ENTLINKS eln '#13#10'ON (elr.ENTLNK_TYPE_ID=eln.ELINK_ID)' +
      ' '#13#10'LEFT JOIN ADRESES_VIEW adr '#13#10'ON (elr.ADRES_ID=adr.ADRES_ID) '#13 +
      #10'WHERE  eln.ELINK_TYPE=1 OR '#13#10'(NOT (elr.ADRES_ID IS NULL) AND (e' +
      'lr.DOC_ID IS NULL))'
    DataSource = PersonsDS
    IndexFieldNames = 'PERSON_ID'
    MasterFields = 'PERSON_ID'
    Parameters = <>
    Left = 720
    Top = 304
    object PersonAdrLinksADODSEVENT_DATE: TDateField
      FieldName = 'EVENT_DATE'
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!99/99/00;1;_'
    end
    object PersonAdrLinksADODSTERMINATE_DATE: TDateField
      FieldName = 'TERMINATE_DATE'
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!99/99/00;1;_'
    end
    object PersonAdrLinksADODSPERSON_ID: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object PersonAdrLinksADODSADRES_ID: TIntegerField
      FieldName = 'ADRES_ID'
    end
    object PersonAdrLinksADODSDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object PersonAdrLinksADODSELINK_TYPE: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object PersonAdrLinksADODSENTLNK_TYPE_ID: TIntegerField
      FieldName = 'ENTLNK_TYPE_ID'
    end
    object PersonAdrLinksADODSESTATUS_ID: TIntegerField
      FieldName = 'ESTATUS_ID'
    end
    object PersonAdrLinksADODSELINK_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'ELINK_LOOK'
      LookupDataSet = AdrLinksADOT
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_NAME'
      KeyFields = 'ENTLNK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object PersonAdrLinksADODSEL_REG_ID: TIntegerField
      FieldName = 'EL_REG_ID'
    end
    object PersonAdrLinksADODSADR_FULL_NAME: TWideStringField
      FieldName = 'ADR_FULL_NAME'
      Size = 2553
    end
  end
  object LinkAdrADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    AfterPost = LinkAdrADOTAfterPost
    IndexFieldNames = 'ADRES_ID'
    MasterFields = 'ADRES_ID'
    MasterSource = PersonAdrLinksDS
    TableName = 'ADRESES'
    Left = 720
    Top = 400
    object LinkAdrADOTADRES_ID: TIntegerField
      FieldName = 'ADRES_ID'
    end
    object LinkAdrADOTHOUSE_NUM: TIntegerField
      FieldName = 'HOUSE_NUM'
    end
    object LinkAdrADOTCORPUS: TWideStringField
      FieldName = 'CORPUS'
      Size = 10
    end
    object LinkAdrADOTAPARTMENT_NUM: TIntegerField
      FieldName = 'APARTMENT_NUM'
    end
    object LinkAdrADOTLITER: TWideStringField
      FieldName = 'LITER'
      Size = 3
    end
    object LinkAdrADOTLEAVE_SQUARE: TBCDField
      FieldName = 'LEAVE_SQUARE'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object LinkAdrADOTFULL_SQUARE: TBCDField
      FieldName = 'FULL_SQUARE'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object LinkAdrADOTADR_COUNTRY_ID: TIntegerField
      FieldName = 'ADR_COUNTRY_ID'
    end
    object LinkAdrADOTADR_STATE_ID: TIntegerField
      FieldName = 'ADR_STATE_ID'
    end
    object LinkAdrADOTADR_REGION_ID: TIntegerField
      FieldName = 'ADR_REGION_ID'
    end
    object LinkAdrADOTADR_SETTLEM_ID: TIntegerField
      FieldName = 'ADR_SETTLEM_ID'
    end
    object LinkAdrADOTSTREET_NAME: TWideStringField
      FieldName = 'STREET_NAME'
      Size = 255
    end
    object LinkAdrADOTCOUNTRY_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'COUNTRY_LOOK'
      LookupDataSet = CountriesADOT
      LookupKeyFields = 'COUNTRY_ID'
      LookupResultField = 'COUNTRY_NAME'
      KeyFields = 'ADR_COUNTRY_ID'
      Size = 255
      Lookup = True
    end
    object LinkAdrADOTSTATE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'STATE_LOOK'
      LookupDataSet = StatesViewADODS
      LookupKeyFields = 'STATE_ID'
      LookupResultField = 'STATE_NAME'
      KeyFields = 'ADR_STATE_ID'
      Size = 255
      Lookup = True
    end
    object LinkAdrADOTDISTRICT_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'DISTRICT_LOOK'
      LookupDataSet = DistrictsViewADODS
      LookupKeyFields = 'DISTRICTS_ID'
      LookupResultField = 'DISTRICT_NAME'
      KeyFields = 'ADR_REGION_ID'
      Size = 255
      Lookup = True
    end
    object LinkAdrADOTSETTL_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'SETTL_LOOK'
      LookupDataSet = SettlemsViewADODS
      LookupKeyFields = 'SETTLEMENT_ID'
      LookupResultField = 'SETTLEM_NAME'
      KeyFields = 'ADR_SETTLEM_ID'
      Size = 255
      Lookup = True
    end
  end
  object LinkAdrDS: TDataSource
    DataSet = LinkAdrADOT
    Left = 720
    Top = 456
  end
  object PersonDocLinksADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select elr.EL_REG_ID, elr.EVENT_DATE, elr.TERMINATE_DATE, '#13#10'elr.' +
      'PERSON_ID, elr.ADRES_ID, elr.DOC_ID, eln.ELINK_TYPE,'#13#10'elr.ENTLNK' +
      '_TYPE_ID, elr.ESTATUS_ID, dcv.DOC_FULL_NAME '#13#10'from ENTLNK_REG el' +
      'r LEFT JOIN  ENTLINKS eln '#13#10'ON (elr.ENTLNK_TYPE_ID=eln.ELINK_ID)' +
      ' '#13#10'LEFT JOIN DOCS_VIEW dcv'#13#10'ON (elr.DOC_ID=dcv.DOC_ID)'#13#10'WHERE  e' +
      'ln.ELINK_TYPE=2 OR '#13#10'(NOT (elr.DOC_ID IS NULL) AND (elr.ADRES_ID' +
      ' IS NULL))'
    DataSource = PersonsDS
    IndexFieldNames = 'PERSON_ID'
    MasterFields = 'PERSON_ID'
    Parameters = <>
    Left = 824
    Top = 304
    object DateField1: TDateField
      FieldName = 'EVENT_DATE'
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!99/99/00;1;_'
    end
    object DateField2: TDateField
      FieldName = 'TERMINATE_DATE'
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!99/99/00;1;_'
    end
    object IntegerField4: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ADRES_ID'
    end
    object IntegerField6: TIntegerField
      FieldName = 'DOC_ID'
    end
    object IntegerField7: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object IntegerField8: TIntegerField
      FieldName = 'ENTLNK_TYPE_ID'
    end
    object IntegerField9: TIntegerField
      FieldName = 'ESTATUS_ID'
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'ELINK_LOOK'
      LookupDataSet = DocLinksADOT
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_NAME'
      KeyFields = 'ENTLNK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object PersonDocLinksADODSESTATUS_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTATUS_LOOK'
      LookupDataSet = DocStatusesADOT
      LookupKeyFields = 'PLACE_STATUS_ID'
      LookupResultField = 'PLSTATUS_NAME'
      KeyFields = 'ESTATUS_ID'
      Size = 255
      Lookup = True
    end
    object PersonDocLinksADODSEL_REG_ID: TIntegerField
      FieldName = 'EL_REG_ID'
    end
    object PersonDocLinksADODSDOC_FULL_NAME: TWideStringField
      FieldName = 'DOC_FULL_NAME'
      Size = 1078
    end
  end
  object PersonDocLinksDS: TDataSource
    DataSet = PersonDocLinksADODS
    Left = 824
    Top = 352
  end
  object LinkDocADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    AfterPost = LinkDocADOTAfterPost
    IndexFieldNames = 'DOC_ID'
    MasterFields = 'DOC_ID'
    MasterSource = PersonDocLinksDS
    TableName = 'DOCS'
    Left = 824
    Top = 400
    object LinkDocADOTDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object LinkDocADOTDOC_NAME: TWideStringField
      FieldName = 'DOC_NAME'
      Size = 255
    end
    object LinkDocADOTIS_IDENTITY: TSmallintField
      FieldName = 'IS_IDENTITY'
    end
    object LinkDocADOTDOC_TYPE_ID: TIntegerField
      FieldName = 'DOC_TYPE_ID'
    end
    object LinkDocADOTDOC_TYPE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'DOC_TYPE_LOOK'
      LookupDataSet = DocTypesADOT
      LookupKeyFields = 'DOC_TYPE_ID'
      LookupResultField = 'DOC_TYPE_NAME'
      KeyFields = 'DOC_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object LinkDocADOTDOC_SERIE: TWideStringField
      FieldName = 'DOC_SERIE'
      Size = 10
    end
    object LinkDocADOTDOC_NUM: TWideStringField
      FieldName = 'DOC_NUM'
      Size = 30
    end
    object LinkDocADOTDOC_CREATE_DATE: TDateField
      FieldName = 'DOC_CREATE_DATE'
    end
    object LinkDocADOTDOC_TREASON_ID: TIntegerField
      FieldName = 'DOC_TREASON_ID'
    end
    object LinkDocADOTDOC_EXPIRATION_DATE: TDateField
      FieldName = 'DOC_EXPIRATION_DATE'
    end
    object LinkDocADOTDOC_BRANCH_NAME: TWideStringField
      FieldName = 'DOC_BRANCH_NAME'
      Size = 255
    end
    object LinkDocADOTDOC_BRANCH_ID: TIntegerField
      FieldName = 'DOC_BRANCH_ID'
    end
    object LinkDocADOTDOC_POLICY_STATION_ID: TIntegerField
      FieldName = 'DOC_POLICY_STATION_ID'
    end
    object LinkDocADOTDOC_BRANCHE_CODE: TWideStringField
      FieldName = 'DOC_BRANCHE_CODE'
      EditMask = '000\-000;1;_'
    end
    object LinkDocADOTCLOSED: TSmallintField
      FieldName = 'CLOSED'
    end
    object LinkDocADOTDOC_STATUS_ID: TIntegerField
      FieldName = 'DOC_STATUS_ID'
    end
    object LinkDocADOTDOC_BRANCHE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'DOC_BRANCHE_LOOK'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_CODE'
      KeyFields = 'DOC_BRANCH_ID'
      Size = 255
      Lookup = True
    end
    object LinkDocADOTDOC_STATUS_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'DOC_STATUS_LOOK'
      LookupDataSet = DocStatusesADOT
      LookupKeyFields = 'PLACE_STATUS_ID'
      LookupResultField = 'PLSTATUS_NAME'
      KeyFields = 'DOC_STATUS_ID'
      Size = 255
      Lookup = True
    end
  end
  object LinkDocDS: TDataSource
    DataSet = LinkDocADOT
    Left = 824
    Top = 456
  end
  object AddPersLinkEntityADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPD_PERS_ELINK_REG'
    Parameters = <
      item
        Name = 'IN_ELINK_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_PERSON_ID'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_ELTYPE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_ELSTATUS_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_ADRES_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_DOC_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_LINK_PERSON_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'OUT_ELINK_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end>
    Left = 680
    Top = 888
  end
  object DistrictsDS: TDataSource
    DataSet = DistrictsADOT
    Left = 40
    Top = 448
  end
  object AddUpdDistrictADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPDATE_DISTRICT'
    Parameters = <
      item
        Name = 'IN_DISTRICT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_DISTRICT_CODE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'IN_DISTRICT_NAME'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'IN_DISTRICT_SETTLEM_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_DISTRICT_STATE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'OUT_DISTRICT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end>
    Left = 680
    Top = 792
  end
  object DBActionList: TActionList
    Left = 784
    Top = 744
    object LinkAdrDSPost: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = 'Post'
      ImageIndex = 7
      DataSource = LinkAdrDS
    end
    object LinkDocDSPost: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = 'Post'
      ImageIndex = 7
      DataSource = LinkDocDS
    end
    object InsertBlankPersDSP: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = 'Post'
      ImageIndex = 7
    end
    object PersOperationDSD: TDataSetDelete
      Category = 'Dataset'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102'...'
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102'...'
      ImageIndex = 5
      DataSource = PersonOperationsDS
    end
    object PersonDSD: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = PersonsDS
    end
    object LinkAllianceDSPost: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = 'Post'
      ImageIndex = 7
      DataSource = LinkAllianceDS
    end
    object PersAdrDSPost: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088'. '#1089#1074#1103#1079#1100' '#1089' '#1072#1076#1088#1077#1089#1086#1084
      Hint = 'Post'
      ImageIndex = 7
      DataSource = PersonAdrLinksDS
    end
    object PersDocDSPost: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088'. '#1089#1074#1103#1079#1100' '#1089' '#1076#1086#1082'-'#1086#1084
      Hint = 'Post'
      ImageIndex = 7
      DataSource = PersonDocLinksDS
    end
    object PersZAGSDSPost: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088'. '#1079#1072#1087#1080#1089#1100' '#1047#1040#1043#1057
      Hint = 'Post'
      ImageIndex = 7
      DataSource = PersZAGSRecsDS
    end
    object PersAllianceDSPost: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088'. '#1089#1074#1103#1079#1100' '#1089' '#1088#1086#1076#1089#1090#1074'.'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = PersAllianLinksDS
    end
    object PersonDSPost: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1083#1080#1094#1072
      Hint = 'Post'
      ImageIndex = 7
      DataSource = PersonsDS
    end
    object PersonJobsDSPost: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088'. '#1079#1072#1087#1080#1089#1100' '#1090#1088#1091#1076'. '#1082#1085#1080#1075#1080
      Hint = 'Post'
      ImageIndex = 7
      DataSource = PersonJobRecsDS
    end
    object InsActionTypeDSI: TDataSetInsert
      Category = 'Dataset'
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = ServicesDS
    end
    object ServGroupActItemsDSP: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = 'Post'
      ImageIndex = 7
      DataSource = ServGroupsActItemsDS
    end
    object ElinksAssocDSP: TDataSetPost
      Category = 'Dataset'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = 'Post'
      ImageIndex = 7
      DataSource = ElinksAssocsDS
    end
  end
  object AddUpdShortedADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPD_SHORTED'
    Parameters = <
      item
        Name = 'IN_SHORT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_SHORT_TEXT'
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = 'IN_SHORT_INT_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_SHORT_TYPE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'OUT_SHORT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end>
    Left = 584
    Top = 792
  end
  object ReportsADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    TableName = 'REPORTS'
    Left = 416
    Top = 304
  end
  object ReportsDS: TDataSource
    DataSet = ReportsADOT
    Left = 416
    Top = 352
  end
  object ShortedDS: TDataSource
    DataSet = ShortedADOT
    Left = 512
    Top = 400
  end
  object ShortedADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    TableName = 'SHORTED'
    Left = 512
    Top = 352
  end
  object ServiceCodeByIDADODS: TADODataSet
    Connection = FMSStorageADOC
    CommandText = 'select SERVICE_CODE from SERVICES WHERE SERVICE_ID=:SERVICE_ID'
    Parameters = <
      item
        Name = 'SERVICE_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 608
    Top = 208
  end
  object ActAdrLADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Filter = 'ELINK_TYPE=3'
    Filtered = True
    TableName = 'ENTLINKS'
    Left = 512
    Top = 208
  end
  object ActDocLADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Filter = 'ELINK_TYPE=4'
    Filtered = True
    TableName = 'ENTLINKS'
    Left = 512
    Top = 256
  end
  object OpAdrLinksADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = OpAdrLinksADODSBeforeInsert
    AfterEdit = OpPersonsADODSAfterEdit
    OnCalcFields = OpAdrLinksADODSCalcFields
    CommandText = 
      'select ael.AEL_AS_ID, ael.ACT_REG_ID,'#13#10'ael.ELINK_ID, ael.AEL_LIN' +
      'K_TYPE_ID, enl.ELINK_TYPE,'#13#10'erg.ADRES_ID, adr.ADR_SETTLEM_ID, st' +
      'l.ITS_CITY'#13#10'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '#13#10'ON (ael.' +
      'AEL_LINK_TYPE_ID=enl.ELINK_ID) '#13#10'LEFT JOIN ENTLNK_REG erg '#13#10'ON (' +
      'ael.ELINK_ID=erg.EL_REG_ID)'#13#10'LEFT JOIN  ADRESES adr ON'#13#10'(erg.ADR' +
      'ES_ID=adr.ADRES_ID) '#13#10'LEFT JOIN  SETTLEMENTS stl ON '#13#10'(adr.ADR_S' +
      'ETTLEM_ID=stl.SETTLEMENT_ID)'#13#10'WHERE enl.ELINK_TYPE=3'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 608
    Top = 352
    object OpAdrLinksADODSAEL_AS_ID: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object OpAdrLinksADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object OpAdrLinksADODSELINK_ID: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object OpAdrLinksADODSAEL_LINK_TYPE_ID: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object OpAdrLinksADODSELADR_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'ELADR_LOOK'
      LookupDataSet = OpPersAdrLinksADODS
      LookupKeyFields = 'EL_REG_ID'
      LookupResultField = 'ADR_FULL_NAME'
      KeyFields = 'ELINK_ID'
      Size = 255
      Lookup = True
    end
    object OpAdrLinksADODSAEL_TYPE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'AEL_TYPE_LOOK'
      LookupDataSet = ActAdrLADOT
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_NAME'
      KeyFields = 'AEL_LINK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object OpAdrLinksADODSELINK_TYPE: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object OpAdrLinksADODSADRES_ID: TIntegerField
      FieldName = 'ADRES_ID'
    end
    object OpAdrLinksADODSADR_SETTLEM_ID: TIntegerField
      FieldName = 'ADR_SETTLEM_ID'
    end
    object OpAdrLinksADODSITS_CITY: TSmallintField
      FieldName = 'ITS_CITY'
    end
    object OpAdrLinksADODSITS_CITY_BOOL: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ITS_CITY_BOOL'
      Calculated = True
    end
  end
  object AddUpdAELASSOCADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPD_AEL_ASSOC'
    Parameters = <
      item
        Name = 'IN_AEL_AS_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_ACT_REG_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_ELINK_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_AEL_TYPE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'TYPE_STR'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'IN_ELINK_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_SERVICE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'OUT_AEL_AS_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end>
    Left = 680
    Top = 840
  end
  object OpDocLinksADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = OpDocLinksADODSBeforeInsert
    AfterEdit = OpPersonsADODSAfterEdit
    CommandText = 
      'select ael.AEL_AS_ID, ael.ACT_REG_ID,'#13#10'ael.ELINK_ID, ael.AEL_LIN' +
      'K_TYPE_ID,'#13#10'erg.DOC_ID '#13#10'from AEL_ASSOC ael LEFT JOIN ENTLINKS e' +
      'nl '#13#10'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID)'#13#10'LEFT JOIN ENTLNK_RE' +
      'G erg '#13#10'ON (ael.ELINK_ID=erg.EL_REG_ID)'#13#10'WHERE enl.ELINK_TYPE=4'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 720
    Top = 512
    object OpDocLinksADODSAEL_AS_ID: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object OpDocLinksADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object OpDocLinksADODSELINK_ID: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object OpDocLinksADODSAEL_LINK_TYPE_ID: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object OpDocLinksADODSELDOC_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'ELDOC_LOOK'
      LookupDataSet = OpPersDocLinksADODS
      LookupKeyFields = 'EL_REG_ID'
      LookupResultField = 'DOC_FULL_NAME'
      KeyFields = 'ELINK_ID'
      Size = 255
      Lookup = True
    end
    object OpDocLinksADODSAEL_TYPE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'AEL_TYPE_LOOK'
      LookupDataSet = ActDocLADOT
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_NAME'
      KeyFields = 'AEL_LINK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object OpDocLinksADODSDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
  end
  object OpAdrLinksDS: TDataSource
    DataSet = OpAdrLinksADODS
    Left = 608
    Top = 400
  end
  object OpDocLinksDS: TDataSource
    DataSet = OpDocLinksADODS
    Left = 720
    Top = 568
  end
  object CurrOpPrevResideAdrADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select ael.AEL_AS_ID, ael.ACT_REG_ID,'#13#10'ael.ELINK_ID, ael.AEL_LIN' +
      'K_TYPE_ID, enl.ELINK_TYPE,'#13#10'adv.ADR_FULL_PART1, adv.ADR_FULL_PAR' +
      'T2,'#13#10'adv.ADR_FULL_NAME, enl.ELINK_NAME AS PARAM_NAME'#13#10'from AEL_A' +
      'SSOC ael LEFT JOIN ENTLINKS enl '#13#10'ON (ael.AEL_LINK_TYPE_ID=enl.E' +
      'LINK_ID)'#13#10'LEFT JOIN  ENTLNK_REG elr '#13#10'ON (ael.ELINK_ID=elr.EL_RE' +
      'G_ID)'#13#10'LEFT JOIN  ADRESES_VIEW adv'#13#10'ON (elr.ADRES_ID=adv.ADRES_I' +
      'D)'#13#10'WHERE enl.ELINK_CODE=3'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 1032
    Top = 816
    object IntegerField10: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object IntegerField11: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object IntegerField12: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object IntegerField13: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'ELADR_LOOK'
      LookupDataSet = PersonAdrLinksADODS
      LookupKeyFields = 'EL_REG_ID'
      LookupResultField = 'ADR_FULL_NAME'
      KeyFields = 'ELINK_ID'
      Size = 255
      Lookup = True
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'AEL_TYPE_LOOK'
      LookupDataSet = ActAdrLADOT
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_NAME'
      KeyFields = 'AEL_LINK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object IntegerField14: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object CurrOpPrevResideAdrADODSADR_FULL_PART1: TWideStringField
      FieldName = 'ADR_FULL_PART1'
      Size = 511
    end
    object CurrOpPrevResideAdrADODSADR_FULL_PART2: TWideStringField
      FieldName = 'ADR_FULL_PART2'
      Size = 827
    end
    object CurrOpPrevResideAdrADODSADR_FULL_NAME: TWideStringField
      FieldName = 'ADR_FULL_NAME'
      Size = 1339
    end
    object CurrOpPrevResideAdrADODSPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Size = 255
    end
  end
  object UsrActionsADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    IndexFieldNames = 'ACTOR_ID'
    MasterFields = 'USER_ID'
    MasterSource = UsersDS
    TableName = 'ACTION_REG_VIEW'
    Left = 240
    Top = 512
    object UsrActionsADOTATYPE_ID: TSmallintField
      FieldName = 'ATYPE_ID'
    end
    object UsrActionsADOTACTOR_ID: TIntegerField
      FieldName = 'ACTOR_ID'
    end
    object UsrActionsADOTPERSON_ID: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object UsrActionsADOTAT_NAME: TWideStringField
      FieldName = 'AT_NAME'
      Size = 255
    end
    object UsrActionsADOTA_TSTAMP: TDateTimeField
      FieldName = 'A_TSTAMP'
    end
    object UsrActionsADOTREPORT_NAME: TWideStringField
      FieldName = 'REPORT_NAME'
      Size = 255
    end
  end
  object UserActionsDS: TDataSource
    DataSet = UsrActionsADOT
    Left = 240
    Top = 568
  end
  object OpPersAdrLinksADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select elr.EL_REG_ID, elr.EVENT_DATE, elr.TERMINATE_DATE, '#13#10'elr.' +
      'PERSON_ID, elr.ADRES_ID, elr.DOC_ID, eln.ELINK_TYPE,'#13#10'elr.ENTLNK' +
      '_TYPE_ID, elr.ESTATUS_ID, adr.ADR_FULL_NAME,'#13#10'aelv.ACT_REG_ID '#13#10 +
      'from ENTLNK_REG elr LEFT JOIN  ENTLINKS eln '#13#10'ON (elr.ENTLNK_TYP' +
      'E_ID=eln.ELINK_ID) '#13#10'LEFT JOIN ADRESES_VIEW_DETAIL adr '#13#10'ON (elr' +
      '.ADRES_ID=adr.ADRES_ID), '#13#10' AEL_ASSOC_VIEW aelv '#13#10'WHERE  (eln.EL' +
      'INK_TYPE=1 OR '#13#10'(NOT (elr.ADRES_ID IS NULL) AND (elr.DOC_ID IS N' +
      'ULL)))'#13#10'AND (aelv.ELINK_TYPE=5) AND (elr.PERSON_ID=aelv.ELINK_ID' +
      ')'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 608
    Top = 256
    object DateField3: TDateField
      FieldName = 'EVENT_DATE'
      EditMask = '!99/99/00;1;_'
    end
    object DateField4: TDateField
      FieldName = 'TERMINATE_DATE'
      EditMask = '!99/99/00;1;_'
    end
    object IntegerField15: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object IntegerField16: TIntegerField
      FieldName = 'ADRES_ID'
    end
    object IntegerField17: TIntegerField
      FieldName = 'DOC_ID'
    end
    object IntegerField18: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object IntegerField19: TIntegerField
      FieldName = 'ENTLNK_TYPE_ID'
    end
    object IntegerField20: TIntegerField
      FieldName = 'ESTATUS_ID'
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'ELINK_LOOK'
      LookupDataSet = AdrLinksADOT
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_NAME'
      KeyFields = 'ENTLNK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object IntegerField21: TIntegerField
      FieldName = 'EL_REG_ID'
    end
    object WideStringField3: TWideStringField
      FieldName = 'ADR_FULL_NAME'
      Size = 2553
    end
    object OpPersAdrLinksADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
  end
  object OpPersDocLinksADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select elr.EL_REG_ID, elr.EVENT_DATE, elr.TERMINATE_DATE, '#13#10'elr.' +
      'PERSON_ID, elr.ADRES_ID, elr.DOC_ID, eln.ELINK_TYPE,'#13#10'elr.ENTLNK' +
      '_TYPE_ID, elr.ESTATUS_ID, dcv.DOC_FULL_NAME,'#13#10'aelv.ACT_REG_ID '#13#10 +
      'from ENTLNK_REG elr LEFT JOIN  ENTLINKS eln '#13#10'ON (elr.ENTLNK_TYP' +
      'E_ID=eln.ELINK_ID) '#13#10'LEFT JOIN DOCS_VIEW dcv'#13#10'ON (elr.DOC_ID=dcv' +
      '.DOC_ID), '#13#10' AEL_ASSOC_VIEW aelv'#13#10'WHERE  (eln.ELINK_TYPE=2 OR '#13#10 +
      '(NOT (elr.DOC_ID IS NULL) AND (elr.ADRES_ID IS NULL))) '#13#10'AND (ae' +
      'lv.ELINK_TYPE=5) AND (elr.PERSON_ID=aelv.ELINK_ID)'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 608
    Top = 304
    object DateField5: TDateField
      FieldName = 'EVENT_DATE'
    end
    object DateField6: TDateField
      FieldName = 'TERMINATE_DATE'
    end
    object IntegerField22: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object IntegerField23: TIntegerField
      FieldName = 'ADRES_ID'
    end
    object IntegerField24: TIntegerField
      FieldName = 'DOC_ID'
    end
    object IntegerField25: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object IntegerField26: TIntegerField
      FieldName = 'ENTLNK_TYPE_ID'
    end
    object IntegerField27: TIntegerField
      FieldName = 'ESTATUS_ID'
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'ELINK_LOOK'
      LookupDataSet = DocLinksADOT
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_NAME'
      KeyFields = 'ENTLNK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object StringField6: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTATUS_LOOK'
      LookupDataSet = DocStatusesADOT
      LookupKeyFields = 'PLACE_STATUS_ID'
      LookupResultField = 'PLSTATUS_NAME'
      KeyFields = 'ESTATUS_ID'
      Size = 255
      Lookup = True
    end
    object IntegerField28: TIntegerField
      FieldName = 'EL_REG_ID'
    end
    object WideStringField4: TWideStringField
      FieldName = 'DOC_FULL_NAME'
      Size = 1078
    end
    object OpPersDocLinksADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
  end
  object OpPersonsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = OpPersonsADODSBeforeInsert
    AfterEdit = OpPersonsADODSAfterEdit
    AfterPost = OpPersonsADODSAfterPost
    CommandText = 
      'select ael.ELINK_ID, ael.AEL_LINK_TYPE_ID,'#13#10'ael.AEL_AS_ID, ael.A' +
      'CT_REG_ID, prs.IS_OLD  '#13#10'from AEL_ASSOC ael LEFT JOIN ENTLINKS e' +
      'ln '#13#10'ON (ael.AEL_LINK_TYPE_ID=eln.ELINK_ID) '#13#10'LEFT JOIN  PERSONS' +
      ' prs '#13#10'ON (prs.PERSON_ID=ael.ELINK_ID)'#13#10'WHERE eln.ELINK_TYPE=5'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 824
    Top = 512
    object OpPersonsADODSELINK_ID: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object OpPersonsADODSAEL_LINK_TYPE_ID: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object OpPersonsADODSAEL_AS_ID: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object OpPersonsADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object OpPersonsADODSELPERS_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'ELPERS_LOOK'
      LookupDataSet = PersonViewADODS
      LookupKeyFields = 'PERSON_ID'
      LookupResultField = 'PERSON_NAME'
      KeyFields = 'ELINK_ID'
      Size = 255
      Lookup = True
    end
    object OpPersonsADODSAEL_TYPE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'AEL_TYPE_LOOK'
      LookupDataSet = ActPersLADOT
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_NAME'
      KeyFields = 'AEL_LINK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object OpPersonsADODSIS_OLD: TSmallintField
      FieldName = 'IS_OLD'
    end
  end
  object OpPersonsDS: TDataSource
    DataSet = OpPersonsADODS
    Left = 824
    Top = 568
  end
  object ActPersLADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Filter = 'ELINK_TYPE=5'
    Filtered = True
    TableName = 'ENTLINKS'
    Left = 512
    Top = 304
  end
  object ClearOpAssocADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'CLEAR_OPERATION_ASSOCS'
    Parameters = <
      item
        Name = 'IN_OPERATION_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end>
    Left = 488
    Top = 840
  end
  object DocTypesADOT: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from DOC_TYPES order by DOC_TYPE_NAME asc'
    Parameters = <>
    Left = 608
    Top = 16
  end
  object CountriesADOT: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from COUNTRIES order by COUNTRY_NAME asc'
    Parameters = <>
    Left = 40
    Top = 208
  end
  object StatesADOT: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from STATES order by STATE_NAME asc'
    Parameters = <>
    Left = 40
    Top = 304
    object StatesADOTSTATE_ID: TIntegerField
      FieldName = 'STATE_ID'
    end
    object StatesADOTSTATE_NAME: TWideStringField
      FieldName = 'STATE_NAME'
      Size = 255
    end
    object StatesADOTSTATE_COUNTRY_ID: TIntegerField
      FieldName = 'STATE_COUNTRY_ID'
    end
    object StatesADOTSTATE_INT_CODE: TIntegerField
      FieldName = 'STATE_INT_CODE'
    end
    object StatesADOTCOUNTRY_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'COUNTRY_LOOK'
      LookupDataSet = CountriesADOT
      LookupKeyFields = 'COUNTRY_ID'
      LookupResultField = 'COUNTRY_NAME'
      KeyFields = 'STATE_COUNTRY_ID'
      Size = 255
      Lookup = True
    end
  end
  object DistrictsADOT: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from DISTRICTS order by DISTRICT_NAME asc'
    Parameters = <>
    Left = 40
    Top = 400
    object DistrictsADOTDISTRICTS_ID: TIntegerField
      FieldName = 'DISTRICTS_ID'
    end
    object DistrictsADOTDISTRICT_NAME: TWideStringField
      FieldName = 'DISTRICT_NAME'
      Size = 255
    end
    object DistrictsADOTDISTRICT_SETTLEM_ID: TIntegerField
      FieldName = 'DISTRICT_SETTLEM_ID'
    end
    object DistrictsADOTDISTRICT_CODE: TWideStringField
      FieldName = 'DISTRICT_CODE'
    end
    object DistrictsADOTITS_CITY_DISTRICT: TSmallintField
      FieldName = 'ITS_CITY_DISTRICT'
    end
    object DistrictsADOTDISTRICT_STATE_ID: TIntegerField
      FieldName = 'DISTRICT_STATE_ID'
    end
    object DistrictsADOTSTATE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'STATE_LOOK'
      LookupDataSet = StatesADOT
      LookupKeyFields = 'STATE_ID'
      LookupResultField = 'STATE_NAME'
      KeyFields = 'DISTRICT_STATE_ID'
      Size = 255
      Lookup = True
    end
  end
  object SettlementsADOT: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from SETTLEMENTS order by SETTLEM_NAME asc'
    Parameters = <>
    Left = 40
    Top = 512
    object SettlementsADOTSETTLEMENT_ID: TIntegerField
      FieldName = 'SETTLEMENT_ID'
    end
    object SettlementsADOTSETTLEM_NAME: TWideStringField
      FieldName = 'SETTLEM_NAME'
      Size = 255
    end
    object SettlementsADOTDISTRICT_NAME: TWideStringField
      FieldName = 'DISTRICT_NAME'
      Size = 255
    end
    object SettlementsADOTSHORT_NAME: TWideStringField
      FieldName = 'SHORT_NAME'
      Size = 100
    end
    object SettlementsADOTITS_CITY: TSmallintField
      FieldName = 'ITS_CITY'
      OnGetText = SettlementsADOTITS_CITYGetText
    end
  end
  object InsertBlankPersonADOQ: TADOQuery
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE INSERT_BLANK_PERSON;')
    Left = 488
    Top = 744
  end
  object SetOpObjAssocADOC: TADOCommand
    CommandText = 
      'UPDATE AEL_ASSOC SET ELINK_ID=:OBJECT_ID '#13#10'WHERE AEL_AS_ID=:AEL_' +
      'AS_ID'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'OBJECT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AEL_AS_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 488
    Top = 888
  end
  object CurrOpIncomeRegGroundADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select ael.AEL_AS_ID, ael.ACT_REG_ID,'#13#10'ael.ELINK_ID, ael.AEL_LIN' +
      'K_TYPE_ID, enl.ELINK_TYPE,'#13#10'docv.DOC_FULL_NAME, enl.ELINK_NAME A' +
      'S PARAM_NAME'#13#10'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '#13#10'ON (ae' +
      'l.AEL_LINK_TYPE_ID=enl.ELINK_ID)'#13#10'LEFT JOIN  ENTLNK_REG elr '#13#10'ON' +
      ' (ael.ELINK_ID=elr.EL_REG_ID)'#13#10'LEFT JOIN  DOCS_VIEW docv'#13#10'ON (el' +
      'r.DOC_ID=docv.DOC_ID)'#13#10'WHERE enl.ELINK_CODE=2'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 1168
    Top = 816
    object CurrOpIncomeRegGroundADODSELINK_TYPE: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object CurrOpIncomeRegGroundADODSDOC_FULL_NAME: TWideStringField
      FieldName = 'DOC_FULL_NAME'
      Size = 1078
    end
    object CurrOpIncomeRegGroundADODSPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Size = 255
    end
    object CurrOpIncomeRegGroundADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
  end
  object DataSource1: TDataSource
    DataSet = CurrOpIncomeRegGroundADODS
    Left = 1032
    Top = 464
  end
  object CurrOpIncomeRegOwnerPersADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    AfterPost = OpPersonsADODSAfterPost
    CommandText = 
      'select ael.ELINK_ID, ael.AEL_LINK_TYPE_ID,'#13#10'ael.AEL_AS_ID, ael.A' +
      'CT_REG_ID, prsv.PERSON_NAME  '#13#10'from AEL_ASSOC ael LEFT JOIN ENTL' +
      'INKS eln '#13#10'ON (ael.AEL_LINK_TYPE_ID=eln.ELINK_ID) '#13#10'LEFT JOIN PE' +
      'RSON_VIEW prsv '#13#10'ON (ael.ELINK_ID=prsv.PERSON_ID)'#13#10'WHERE eln.ELI' +
      'NK_TYPE=5 AND eln.ELINK_CODE=4'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 1032
    Top = 872
    object CurrOpIncomeRegOwnerPersADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object CurrOpIncomeRegOwnerPersADODSPERSON_NAME: TWideStringField
      FieldName = 'PERSON_NAME'
      Size = 1040
    end
  end
  object CurrOpLocationRegAdrADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select ael.AEL_AS_ID, ael.ACT_REG_ID,'#13#10'ael.ELINK_ID, ael.AEL_LIN' +
      'K_TYPE_ID, enl.ELINK_TYPE,'#13#10'adv.ADR_FULL_PART1, adv.ADR_FULL_PAR' +
      'T2,'#13#10'adv.ADR_FULL_NAME, enl.ELINK_NAME AS PARAM_NAME,'#13#10'adv.COUNT' +
      'RY_NAME, adv.STATE_NAME, adv.DISTRICT_NAME,'#13#10'adv.SETTLEM_NAME, a' +
      'dv.STREET_NAME, '#13#10'adv.HOUSE_NUM, adv.CORPUS, adv.LITER, '#13#10'adv.AP' +
      'ARTMENT_NUM'#13#10'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '#13#10'ON (ael' +
      '.AEL_LINK_TYPE_ID=enl.ELINK_ID)'#13#10'LEFT JOIN  ENTLNK_REG elr '#13#10'ON ' +
      '(ael.ELINK_ID=elr.EL_REG_ID)'#13#10'LEFT JOIN  ADRESES_VIEW adv'#13#10'ON (e' +
      'lr.ADRES_ID=adv.ADRES_ID)'#13#10'WHERE enl.ELINK_CODE=6'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 1032
    Top = 920
    object IntegerField30: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object WideStringField5: TWideStringField
      FieldName = 'ADR_FULL_PART1'
      Size = 511
    end
    object WideStringField6: TWideStringField
      FieldName = 'ADR_FULL_PART2'
      Size = 827
    end
    object WideStringField7: TWideStringField
      FieldName = 'ADR_FULL_NAME'
      Size = 1339
    end
    object CurrOpLocationRegAdrADODSSTATE_NAME: TWideStringField
      FieldName = 'STATE_NAME'
      Size = 255
    end
    object CurrOpLocationRegAdrADODSDISTRICT_NAME: TWideStringField
      FieldName = 'DISTRICT_NAME'
      Size = 255
    end
    object CurrOpLocationRegAdrADODSSETTLEM_NAME: TWideStringField
      FieldName = 'SETTLEM_NAME'
      Size = 255
    end
    object CurrOpLocationRegAdrADODSSTREET_NAME: TWideStringField
      FieldName = 'STREET_NAME'
      Size = 255
    end
    object CurrOpLocationRegAdrADODSHOUSE_NUM: TIntegerField
      FieldName = 'HOUSE_NUM'
    end
    object CurrOpLocationRegAdrADODSCORPUS: TWideStringField
      FieldName = 'CORPUS'
      Size = 10
    end
    object CurrOpLocationRegAdrADODSLITER: TWideStringField
      FieldName = 'LITER'
      Size = 3
    end
    object CurrOpLocationRegAdrADODSAPARTMENT_NUM: TIntegerField
      FieldName = 'APARTMENT_NUM'
    end
  end
  object CurrOpIncomeRegIdentDocADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select ael.AEL_AS_ID, ael.ACT_REG_ID,'#13#10'ael.ELINK_ID, ael.AEL_LIN' +
      'K_TYPE_ID, enl.ELINK_TYPE,'#13#10'docv.DOC_FULL_NAME, enl.ELINK_NAME A' +
      'S PARAM_NAME,'#13#10'docv.DOC_CREATE_DATE, docv.DOC_BRANCH_NAME,'#13#10'docv' +
      '.DOC_NUM, docv.DOC_SERIE, docv.DOC_BRANCHE_CODE,'#13#10'docv.DOC_TYPE_' +
      'NAME, docv.POLICY_STATION_NAME '#13#10'from AEL_ASSOC ael LEFT JOIN EN' +
      'TLINKS enl '#13#10'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID)'#13#10'LEFT JOIN  ' +
      'ENTLNK_REG elr '#13#10'ON (ael.ELINK_ID=elr.EL_REG_ID)'#13#10'LEFT JOIN  DOC' +
      'S_VIEW docv'#13#10'ON (elr.DOC_ID=docv.DOC_ID)'#13#10'WHERE enl.ELINK_CODE=1'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 1168
    Top = 872
    object IntegerField29: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object WideStringField8: TWideStringField
      FieldName = 'DOC_FULL_NAME'
      Size = 1078
    end
    object WideStringField9: TWideStringField
      FieldName = 'PARAM_NAME'
      Size = 255
    end
    object IntegerField31: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object CurrOpIncomeRegIdentDocADODSDOC_CREATE_DATE: TDateField
      FieldName = 'DOC_CREATE_DATE'
    end
    object CurrOpIncomeRegIdentDocADODSDOC_BRANCH_NAME: TWideStringField
      FieldName = 'DOC_BRANCH_NAME'
      Size = 255
    end
    object CurrOpIncomeRegIdentDocADODSDOC_NUM: TWideStringField
      FieldName = 'DOC_NUM'
      Size = 30
    end
    object CurrOpIncomeRegIdentDocADODSDOC_SERIE: TWideStringField
      FieldName = 'DOC_SERIE'
      Size = 10
    end
    object CurrOpIncomeRegIdentDocADODSDOC_TYPE_NAME: TWideStringField
      FieldName = 'DOC_TYPE_NAME'
      Size = 255
    end
    object CurrOpIncomeRegIdentDocADODSPOLICY_STATION_NAME: TWideStringField
      FieldName = 'POLICY_STATION_NAME'
      Size = 255
    end
    object CurrOpIncomeRegIdentDocADODSDOC_BRANCHE_CODE: TWideStringField
      FieldName = 'DOC_BRANCHE_CODE'
      Size = 50
    end
  end
  object CurrOpIncomeOwnerIdentDocADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select ael.AEL_AS_ID, ael.ACT_REG_ID,'#13#10'ael.ELINK_ID, ael.AEL_LIN' +
      'K_TYPE_ID, enl.ELINK_TYPE,'#13#10'docv.DOC_FULL_NAME, enl.ELINK_NAME A' +
      'S PARAM_NAME,'#13#10'docv.DOC_CREATE_DATE, docv.DOC_BRANCH_NAME,'#13#10'docv' +
      '.DOC_NUM, docv.DOC_SERIE,  docv.DOC_BRANCHE_CODE,'#13#10'docv.DOC_TYPE' +
      '_NAME, docv.POLICY_STATION_NAME '#13#10'from AEL_ASSOC ael LEFT JOIN E' +
      'NTLINKS enl '#13#10'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID)'#13#10'LEFT JOIN ' +
      ' ENTLNK_REG elr '#13#10'ON (ael.ELINK_ID=elr.EL_REG_ID)'#13#10'LEFT JOIN  DO' +
      'CS_VIEW docv'#13#10'ON (elr.DOC_ID=docv.DOC_ID)'#13#10'WHERE enl.ELINK_CODE=' +
      '7'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 1168
    Top = 920
    object IntegerField32: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object WideStringField10: TWideStringField
      FieldName = 'DOC_FULL_NAME'
      Size = 1078
    end
    object WideStringField11: TWideStringField
      FieldName = 'PARAM_NAME'
      Size = 255
    end
    object IntegerField33: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object DateField7: TDateField
      FieldName = 'DOC_CREATE_DATE'
    end
    object WideStringField12: TWideStringField
      FieldName = 'DOC_BRANCH_NAME'
      Size = 255
    end
    object WideStringField13: TWideStringField
      FieldName = 'DOC_NUM'
      Size = 30
    end
    object WideStringField14: TWideStringField
      FieldName = 'DOC_SERIE'
      Size = 10
    end
    object WideStringField15: TWideStringField
      FieldName = 'DOC_TYPE_NAME'
      Size = 255
    end
    object WideStringField16: TWideStringField
      FieldName = 'POLICY_STATION_NAME'
      Size = 255
    end
    object CurrOpIncomeOwnerIdentDocADODSDOC_BRANCHE_CODE: TWideStringField
      FieldName = 'DOC_BRANCHE_CODE'
      Size = 50
    end
  end
  object InsertBlankDocADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE INSERT_BLANK_DOC;')
    Left = 680
    Top = 744
  end
  object InsertBlankAdresADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <>
    SQL.Strings = (
      'EXECUTE PROCEDURE INSERT_BLANK_ADRES;')
    Left = 584
    Top = 744
  end
  object AdrLinksDS: TDataSource
    DataSet = AdrLinksADOT
    Left = 720
    Top = 208
  end
  object DocLinksDS: TDataSource
    DataSet = DocLinksADOT
    Left = 720
    Top = 256
  end
  object ServicesADOT: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = ServicesADOTBeforeInsert
    CommandText = 
      'select * from SERVICES where ITS_GROUP=0 '#13#10'order by SERVICE_NAME' +
      ' asc '
    Parameters = <>
    Left = 240
    Top = 208
    object ServicesADOTSERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object ServicesADOTSERVICE_NAME: TWideStringField
      FieldName = 'SERVICE_NAME'
      Size = 255
    end
    object ServicesADOTSERVICE_CODE: TIntegerField
      FieldName = 'SERVICE_CODE'
    end
    object ServicesADOTSERVICE_PRICE: TBCDField
      FieldName = 'SERVICE_PRICE'
      Precision = 18
      Size = 2
    end
    object ServicesADOTITS_GROUP: TSmallintField
      FieldName = 'ITS_GROUP'
    end
    object ServicesADOTSERVICE_PARENT_ID: TIntegerField
      FieldName = 'SERVICE_PARENT_ID'
    end
    object ServicesADOTPARENT_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'PARENT_LOOK'
      LookupDataSet = ServiceGroupsADODS
      LookupKeyFields = 'SERVICE_ID'
      LookupResultField = 'SERVICE_NAME'
      KeyFields = 'SERVICE_PARENT_ID'
      Size = 255
      Lookup = True
    end
    object ServicesADOTSERVICE_TYPE_CODE: TIntegerField
      FieldName = 'SERVICE_TYPE_CODE'
    end
    object ServicesADOTHAS_CUSTOM_FORM: TSmallintField
      FieldName = 'HAS_CUSTOM_FORM'
    end
    object ServicesADOTCUSTOM_SHEET_INDEX: TSmallintField
      FieldName = 'CUSTOM_SHEET_INDEX'
    end
    object ServicesADOTSECTION_NUM: TIntegerField
      FieldName = 'SECTION_NUM'
    end
  end
  object ServiceGroupsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = ServiceGroupsADODSBeforeInsert
    CommandText = 
      'select * from SERVICES where ITS_GROUP>0 '#13#10'order by SERVICE_NAME' +
      ' asc'
    Parameters = <>
    Left = 328
    Top = 208
    object ServiceGroupsADODSSERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object ServiceGroupsADODSSERVICE_NAME: TWideStringField
      FieldName = 'SERVICE_NAME'
      Size = 255
    end
    object ServiceGroupsADODSSERVICE_CODE: TIntegerField
      FieldName = 'SERVICE_CODE'
    end
    object ServiceGroupsADODSSERVICE_PRICE: TBCDField
      FieldName = 'SERVICE_PRICE'
      Precision = 18
      Size = 2
    end
    object ServiceGroupsADODSITS_GROUP: TSmallintField
      FieldName = 'ITS_GROUP'
    end
    object ServiceGroupsADODSSERVICE_PARENT_ID: TIntegerField
      FieldName = 'SERVICE_PARENT_ID'
    end
    object ServiceGroupsADODSSERVICE_TYPE_CODE: TIntegerField
      FieldName = 'SERVICE_TYPE_CODE'
    end
    object ServiceGroupsADODSHAS_CUSTOM_FORM: TSmallintField
      FieldName = 'HAS_CUSTOM_FORM'
    end
    object ServiceGroupsADODSCUSTOM_SHEET_INDEX: TSmallintField
      FieldName = 'CUSTOM_SHEET_INDEX'
    end
    object ServiceGroupsADODSSECTION_NUM: TIntegerField
      FieldName = 'SECTION_NUM'
    end
  end
  object ServiceGroupsDS: TDataSource
    DataSet = ServiceGroupsADODS
    Left = 328
    Top = 256
  end
  object ServViewADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SERVICES_HIERARHY_VIEW'
    Parameters = <>
    Left = 240
    Top = 744
    object ServViewADODSSERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object ServViewADODSSERVICE_NAME: TWideStringField
      FieldName = 'SERVICE_NAME'
      Size = 255
    end
    object ServViewADODSSERVICE_CODE: TIntegerField
      FieldName = 'SERVICE_CODE'
    end
    object ServViewADODSITS_GROUP: TSmallintField
      FieldName = 'ITS_GROUP'
    end
    object ServViewADODSSERVICE_PRICE: TBCDField
      FieldName = 'SERVICE_PRICE'
      Precision = 18
      Size = 2
    end
    object ServViewADODSPARENT_SERVICE_ID: TIntegerField
      FieldName = 'PARENT_SERVICE_ID'
    end
    object ServViewADODSPARENT_SERVICE_NAME: TWideStringField
      FieldName = 'PARENT_SERVICE_NAME'
      Size = 255
    end
    object ServViewADODSPARENT_SERVICE_CODE: TIntegerField
      FieldName = 'PARENT_SERVICE_CODE'
    end
    object ServViewADODSCUSTOM_SHEET_INDEX: TSmallintField
      FieldName = 'CUSTOM_SHEET_INDEX'
    end
    object ServViewADODSHAS_CUSTOM_FORM: TSmallintField
      FieldName = 'HAS_CUSTOM_FORM'
    end
    object ServViewADODSSECTION_NUM: TIntegerField
      FieldName = 'SECTION_NUM'
    end
  end
  object ServViewDS: TDataSource
    DataSet = ServViewADODS
    Left = 240
    Top = 800
  end
  object ServGroupListADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = ServGroupListADODSBeforeInsert
    CommandText = 
      'select * from AEL_ASSOC where NOT (SERVICE_ID IS NULL) '#13#10'AND (AE' +
      'L_LINK_TYPE_ID IS NULL) AND (ACT_REG_ID IS NULL)'
    DataSource = ServiceGroupsDS
    IndexFieldNames = 'SERVICE_ID'
    MasterFields = 'SERVICE_ID'
    Parameters = <>
    Left = 328
    Top = 304
    object ServGroupListADODSAEL_AS_ID: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object ServGroupListADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object ServGroupListADODSELINK_ID: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object ServGroupListADODSAEL_LINK_TYPE_ID: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object ServGroupListADODSITS_ADR_ASSOC: TSmallintField
      FieldName = 'ITS_ADR_ASSOC'
    end
    object ServGroupListADODSITS_DOC_ASSOC: TSmallintField
      FieldName = 'ITS_DOC_ASSOC'
    end
    object ServGroupListADODSITS_PRS_ASSOC: TSmallintField
      FieldName = 'ITS_PRS_ASSOC'
    end
    object ServGroupListADODSSERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object ServGroupListADODSELINK_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'ELINK_LOOK'
      LookupDataSet = ServicesADOT
      LookupKeyFields = 'SERVICE_ID'
      LookupResultField = 'SERVICE_NAME'
      KeyFields = 'ELINK_ID'
      Size = 255
      Lookup = True
    end
  end
  object ServGroupListDS: TDataSource
    DataSet = ServGroupListADODS
    Left = 328
    Top = 352
  end
  object ServActItemsDS: TDataSource
    DataSet = ServiceActItemsADODS
    Left = 328
    Top = 456
  end
  object ServiceActItemsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = ServiceActItemsADODSBeforeInsert
    CommandText = 
      'select * from AEL_ASSOC where NOT (SERVICE_ID IS NULL) '#13#10'AND (AC' +
      'T_REG_ID IS NULL) AND (ELINK_ID IS NULL)'
    DataSource = ServicesDS
    IndexFieldNames = 'SERVICE_ID'
    MasterFields = 'SERVICE_ID'
    Parameters = <>
    Left = 328
    Top = 400
    object IntegerField34: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object IntegerField35: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object IntegerField36: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object IntegerField37: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object SmallintField1: TSmallintField
      FieldName = 'ITS_ADR_ASSOC'
    end
    object SmallintField2: TSmallintField
      FieldName = 'ITS_DOC_ASSOC'
    end
    object SmallintField3: TSmallintField
      FieldName = 'ITS_PRS_ASSOC'
    end
    object IntegerField38: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object ServiceActItemsADODSAEL_TYPE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'AEL_TYPE_LOOK'
      LookupDataSet = ServActLinksADODS
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_EXT_NAME'
      KeyFields = 'AEL_LINK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object ServiceActItemsADODSSTATIC_DATA: TWideStringField
      FieldName = 'STATIC_DATA'
      Size = 255
    end
  end
  object ServActLinksADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = ServActLinksADODSBeforeInsert
    CommandText = 
      'select * from ELINKS_VIEW where ELINK_TYPE=3 OR '#13#10'ELINK_TYPE=4 O' +
      'R ELINK_TYPE=5 OR ELINK_TYPE=7'
    Parameters = <>
    Left = 328
    Top = 512
  end
  object ServActLinksDS: TDataSource
    DataSet = ServActLinksADODS
    Left = 328
    Top = 568
  end
  object AddAELAssocWithAELTypeADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_AEL_ASSOC_WITH_AEL_TYPE'
    Parameters = <
      item
        Name = 'IN_ACT_REG_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_ELINK_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_AEL_TYPE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_SERVICE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_AEL_TYPE_NAME'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = 'IN_AEL_TYPE_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'IN_AEL_ELINK_TYPE'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end>
    Left = 400
    Top = 744
  end
  object PersonViewDS: TDataSource
    DataSet = PersonViewADODS
    Left = 40
    Top = 800
  end
  object AllianceLinksADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from ENTLINKS where ELINK_TYPE=6'
    Parameters = <>
    Left = 824
    Top = 112
  end
  object AllianceLinksDS: TDataSource
    DataSet = AllianceLinksADODS
    Left = 824
    Top = 160
  end
  object PersAllianLinksADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select elr.EL_REG_ID, elr.EVENT_DATE, elr.TERMINATE_DATE, '#13#10'elr.' +
      'PERSON_ID, elr.LINK_PERSON_ID, eln.ELINK_TYPE,'#13#10'elr.ENTLNK_TYPE_' +
      'ID, elr.ESTATUS_ID, prv.PERSON_NAME '#13#10'from ENTLNK_REG elr LEFT J' +
      'OIN  ENTLINKS eln '#13#10'ON (elr.ENTLNK_TYPE_ID=eln.ELINK_ID) '#13#10'LEFT ' +
      'JOIN PERSON_VIEW prv'#13#10'ON (elr.LINK_PERSON_ID=prv.PERSON_ID)'#13#10'WHE' +
      'RE  eln.ELINK_TYPE=6 OR '#13#10'(NOT (elr.LINK_PERSON_ID IS NULL))'
    DataSource = PersonsDS
    IndexFieldNames = 'PERSON_ID'
    MasterFields = 'PERSON_ID'
    Parameters = <>
    Left = 824
    Top = 208
    object PersAllianLinksADODSPERS_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'PERS_LOOK'
      LookupDataSet = PersonViewADODS
      LookupKeyFields = 'PERSON_ID'
      LookupResultField = 'PERSON_NAME'
      KeyFields = 'LINK_PERSON_ID'
      Size = 255
      Lookup = True
    end
    object PersAllianLinksADODSALLIAN_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'ALLIAN_LOOK'
      LookupDataSet = AllianceLinksADODS
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_NAME'
      KeyFields = 'ENTLNK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object PersAllianLinksADODSEL_REG_ID: TIntegerField
      FieldName = 'EL_REG_ID'
    end
    object PersAllianLinksADODSEVENT_DATE: TDateField
      FieldName = 'EVENT_DATE'
    end
    object PersAllianLinksADODSTERMINATE_DATE: TDateField
      FieldName = 'TERMINATE_DATE'
    end
    object PersAllianLinksADODSPERSON_ID: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object PersAllianLinksADODSLINK_PERSON_ID: TIntegerField
      FieldName = 'LINK_PERSON_ID'
    end
    object PersAllianLinksADODSELINK_TYPE: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object PersAllianLinksADODSENTLNK_TYPE_ID: TIntegerField
      FieldName = 'ENTLNK_TYPE_ID'
    end
    object PersAllianLinksADODSESTATUS_ID: TIntegerField
      FieldName = 'ESTATUS_ID'
    end
    object PersAllianLinksADODSPERSON_NAME: TWideStringField
      FieldName = 'PERSON_NAME'
      Size = 1040
    end
  end
  object PersAllianLinksDS: TDataSource
    DataSet = PersAllianLinksADODS
    Left = 824
    Top = 256
  end
  object LinkAllianceADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    AfterPost = LinkAllianceADOTAfterPost
    IndexFieldNames = 'PERSON_ID'
    MasterFields = 'LINK_PERSON_ID'
    MasterSource = PersAllianLinksDS
    TableName = 'PERSONS'
    Left = 920
    Top = 208
  end
  object LinkAllianceDS: TDataSource
    DataSet = LinkAllianceADOT
    Left = 920
    Top = 256
  end
  object PersZAGSRecsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = PersonOperationsADODSBeforeInsert
    CommandText = 
      'select arg.*  from ACTIONS_REG arg LEFT JOIN ACTION_TYPES atp '#13#10 +
      'ON (arg.ATYPE_ID=atp.ACTION_TYPE_ID) '#13#10'WHERE atp.ACTION_TYPE_INT' +
      '_CODE=6'
    DataSource = PersonsDS
    IndexFieldNames = 'PERSON_ID'
    MasterFields = 'PERSON_ID'
    Parameters = <>
    Left = 824
    Top = 16
    object IntegerField39: TIntegerField
      FieldName = 'ACTIONS_ID'
    end
    object IntegerField40: TIntegerField
      FieldName = 'ACTOR_ID'
    end
    object IntegerField41: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object IntegerField42: TIntegerField
      FieldName = 'REPORT_ID'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'A_TSTAMP'
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy hh.mm'
    end
    object IntegerField43: TIntegerField
      FieldName = 'DOC_ID'
    end
    object SmallintField4: TSmallintField
      FieldName = 'ATYPE_ID'
    end
    object IntegerField44: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object StringField7: TStringField
      FieldKind = fkLookup
      FieldName = 'ATYPE_LOOK'
      LookupDataSet = ActionTypesADOT
      LookupKeyFields = 'ACTION_TYPE_ID'
      LookupResultField = 'ACTION_TYPE_NAME'
      KeyFields = 'ATYPE_ID'
      Size = 255
      Lookup = True
    end
    object StringField8: TStringField
      FieldKind = fkLookup
      FieldName = 'SERVICE_LOOK'
      LookupDataSet = ZAGSServTypesADODS
      LookupKeyFields = 'SERVICE_ID'
      LookupResultField = 'SERVICE_NAME'
      KeyFields = 'SERVICE_ID'
      Size = 255
      Lookup = True
    end
    object IntegerField45: TIntegerField
      FieldName = 'SERVICE_GROUP_ID'
    end
    object StringField9: TStringField
      FieldKind = fkLookup
      FieldName = 'SERV_GROUP_LOOK'
      LookupDataSet = ServiceGroupsADODS
      LookupKeyFields = 'SERVICE_ID'
      LookupResultField = 'SERVICE_NAME'
      KeyFields = 'SERVICE_GROUP_ID'
      Size = 255
      Lookup = True
    end
  end
  object PersZAGSRecsDS: TDataSource
    DataSet = PersZAGSRecsADODS
    Left = 824
    Top = 64
  end
  object ZAGSServTypesDS: TDataSource
    DataSet = ZAGSServTypesADODS
    Left = 920
    Top = 64
  end
  object ZAGSServTypesADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select * from SERVICES where ITS_GROUP=0 and '#13#10'SERVICE_TYPE_CODE' +
      '=2'#13#10'order by SERVICE_NAME asc '
    Parameters = <>
    Left = 920
    Top = 16
    object IntegerField46: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object WideStringField17: TWideStringField
      FieldName = 'SERVICE_NAME'
      Size = 255
    end
    object IntegerField47: TIntegerField
      FieldName = 'SERVICE_CODE'
    end
    object BCDField1: TBCDField
      FieldName = 'SERVICE_PRICE'
      Precision = 18
      Size = 2
    end
    object SmallintField5: TSmallintField
      FieldName = 'ITS_GROUP'
    end
    object IntegerField48: TIntegerField
      FieldName = 'SERVICE_PARENT_ID'
    end
    object StringField10: TStringField
      FieldKind = fkLookup
      FieldName = 'PARENT_LOOK'
      LookupDataSet = ServiceGroupsADODS
      LookupKeyFields = 'SERVICE_ID'
      LookupResultField = 'SERVICE_NAME'
      KeyFields = 'SERVICE_PARENT_ID'
      Size = 255
      Lookup = True
    end
  end
  object OpOtherDataDS: TDataSource
    DataSet = OpOtherDataADODS
    Left = 608
    Top = 512
  end
  object OpOtherDataADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = OpAdrLinksADODSBeforeInsert
    AfterEdit = OpOtherDataADODSAfterEdit
    CommandText = 
      'select ael.AEL_AS_ID, ael.ACT_REG_ID,'#13#10' ael.AEL_LINK_TYPE_ID, en' +
      'l.ELINK_TYPE,'#13#10'ael.STATIC_DATA'#13#10'from AEL_ASSOC ael LEFT JOIN ENT' +
      'LINKS enl '#13#10'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '#13#10'WHERE enl.E' +
      'LINK_TYPE=7'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'ACT_REG_ID'
    MasterFields = 'ACTIONS_ID'
    Parameters = <>
    Left = 608
    Top = 456
    object IntegerField49: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object IntegerField50: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object IntegerField52: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object StringField12: TStringField
      FieldKind = fkLookup
      FieldName = 'AEL_TYPE_LOOK'
      LookupDataSet = ActOthDataLADOT
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_NAME'
      KeyFields = 'AEL_LINK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object IntegerField53: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object OpOtherDataADODSSTATIC_DATA: TWideStringField
      FieldName = 'STATIC_DATA'
      Size = 255
    end
  end
  object ActOthDataLADOT: TADOTable
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Filter = 'ELINK_TYPE=7'
    Filtered = True
    TableName = 'ENTLINKS'
    Left = 608
    Top = 568
  end
  object GenerateOpAssocADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'GENERATE_DEFAULT_OP_ASSOCS'
    Parameters = <
      item
        Name = 'IN_ACT_REG_ID'
        DataType = ftInteger
        Value = Null
      end>
    Left = 584
    Top = 840
  end
  object ServiceReportsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = ServiceActItemsADODSBeforeInsert
    CommandText = 
      'select ael.* from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '#13#10'ON (ael' +
      '.AEL_LINK_TYPE_ID=enl.ELINK_ID)'#13#10'where NOT (SERVICE_ID IS NULL) ' +
      'AND (ACT_REG_ID IS NULL) '#13#10'AND (ELINK_CODE=16)'
    DataSource = ServicesDS
    IndexFieldNames = 'SERVICE_ID'
    MasterFields = 'SERVICE_ID'
    Parameters = <>
    Left = 240
    Top = 304
    object ServiceReportsADODSAEL_AS_ID: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object ServiceReportsADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object ServiceReportsADODSELINK_ID: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object ServiceReportsADODSAEL_LINK_TYPE_ID: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object ServiceReportsADODSITS_ADR_ASSOC: TSmallintField
      FieldName = 'ITS_ADR_ASSOC'
    end
    object ServiceReportsADODSITS_DOC_ASSOC: TSmallintField
      FieldName = 'ITS_DOC_ASSOC'
    end
    object ServiceReportsADODSITS_PRS_ASSOC: TSmallintField
      FieldName = 'ITS_PRS_ASSOC'
    end
    object ServiceReportsADODSSERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object ServiceReportsADODSSTATIC_DATA: TWideStringField
      FieldName = 'STATIC_DATA'
      Size = 255
    end
    object ServiceReportsADODSSERV_REPORT_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'SERV_REPORT_LOOK'
      LookupDataSet = ReportsADOT
      LookupKeyFields = 'REPORT_ID'
      LookupResultField = 'REPORT_NAME'
      KeyFields = 'ELINK_ID'
      Size = 255
      Lookup = True
    end
  end
  object ServiceReportsDS: TDataSource
    DataSet = ServiceReportsADODS
    Left = 240
    Top = 352
  end
  object CurrOpReportsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = ServiceActItemsADODSBeforeInsert
    CommandText = 
      'select ael.*, rpt.* from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '#13#10 +
      'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '#13#10'LEFT JOIN  REPORTS rpt ' +
      #13#10'ON (ael.ELINK_ID=rpt.REPORT_ID)'#13#10'where NOT (SERVICE_ID IS NULL' +
      ') '#13#10'AND (ELINK_CODE=16)'
    DataSource = PersonOperationsDS
    IndexFieldNames = 'SERVICE_ID'
    MasterFields = 'SERVICE_ID'
    Parameters = <>
    Left = 920
    Top = 112
    object IntegerField51: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object IntegerField54: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object IntegerField55: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object IntegerField56: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object SmallintField6: TSmallintField
      FieldName = 'ITS_ADR_ASSOC'
    end
    object SmallintField7: TSmallintField
      FieldName = 'ITS_DOC_ASSOC'
    end
    object SmallintField8: TSmallintField
      FieldName = 'ITS_PRS_ASSOC'
    end
    object IntegerField57: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object WideStringField18: TWideStringField
      FieldName = 'STATIC_DATA'
      Size = 255
    end
    object StringField11: TStringField
      FieldKind = fkLookup
      FieldName = 'SERV_REPORT_LOOK'
      LookupDataSet = ReportsADOT
      LookupKeyFields = 'REPORT_ID'
      LookupResultField = 'REPORT_NAME'
      KeyFields = 'ELINK_ID'
      Size = 255
      Lookup = True
    end
    object CurrOpReportsADODSREPORT_ID: TIntegerField
      FieldName = 'REPORT_ID'
    end
    object CurrOpReportsADODSREPORT_NAME: TWideStringField
      FieldName = 'REPORT_NAME'
      Size = 255
    end
    object CurrOpReportsADODSREPORT_INT_CODE: TIntegerField
      FieldName = 'REPORT_INT_CODE'
    end
    object CurrOpReportsADODSPREVIEW_COUNTER: TIntegerField
      FieldName = 'PREVIEW_COUNTER'
    end
    object CurrOpReportsADODSPRINT_COUNTER: TIntegerField
      FieldName = 'PRINT_COUNTER'
    end
    object CurrOpReportsADODSDEFAULT_PRINTER: TWideStringField
      FieldName = 'DEFAULT_PRINTER'
      Size = 255
    end
  end
  object CurrOpReportsDS: TDataSource
    DataSet = CurrOpReportsADODS
    Left = 920
    Top = 160
  end
  object SexDS: TDataSource
    DataSet = SexADOT
    Left = 240
    Top = 64
  end
  object SetPersonIdentDocADOC: TADOCommand
    CommandText = 
      'UPDATE PERSONS SET IDENTITY_DOC_ID=:IDENT_DOC_ID '#13#10'WHERE PERSON_' +
      'ID=:PERSON_ID;'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IDENT_DOC_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PERSON_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 584
    Top = 888
  end
  object StatesViewADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from  STATES_VIEW order by STATE_NAME asc'
    Parameters = <>
    Left = 136
    Top = 744
  end
  object StatesViewDS: TDataSource
    DataSet = StatesViewADODS
    Left = 136
    Top = 800
  end
  object InsertFastCountryADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_COUNTRY_NAME'
        DataType = ftWideString
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ADD_UPDATE_COUNTRY_EXT( NULL, :IN_COUNTRY_NAME' +
        ', '
      'NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);')
    Left = 784
    Top = 792
  end
  object InsertFastBirthRegionADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_REGION_NAME'
        DataType = ftWideString
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ADD_UPDATE_REGION( NULL, :IN_REGION_NAME, 0, 1' +
        ', NULL);')
    Left = 784
    Top = 840
  end
  object InsertFastPersonBirthRegionADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_PERSON_ID'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_REGION_NAME'
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = 'IN_IS_RCENTER'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_PERSON_BIRTH_REGION( :IN_PERSON_ID, '
      ':IN_REGION_NAME, :IN_IS_RCENTER);')
    Left = 784
    Top = 888
  end
  object DistrictsViewDS: TDataSource
    DataSet = DistrictsViewADODS
    Left = 40
    Top = 912
  end
  object DistrictsViewADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from DISTRICTS_VIEW order by DISTRICT_NAME asc'
    Parameters = <>
    Left = 40
    Top = 856
  end
  object InsertFastPersonCountryADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_PERSON_ID'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_COUNTRY_NAME'
        DataType = ftWideString
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_PERSON_CIVIL_COUNTRY( :IN_PERSON_ID, '
      ':IN_COUNTRY_NAME);')
    Left = 584
    Top = 936
  end
  object InsertFastPersonBirthSettlemADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_PERSON_ID'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_SETTLEMENT_NAME'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_ITS_CITY'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_PERSON_BIRTH_SETTLEMENT( :IN_PERSON_ID, '
      ':IN_SETTLEMENT_NAME, :IN_ITS_CITY);')
    Left = 784
    Top = 936
  end
  object SettlemsViewADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from SETTLEMENT_VIEW_EXT order by SETTLEM_NAME asc'
    Parameters = <>
    Left = 136
    Top = 856
    object SettlemsViewADODSSETTLEMENT_ID: TIntegerField
      FieldName = 'SETTLEMENT_ID'
    end
    object SettlemsViewADODSSETTLEM_NAME: TWideStringField
      FieldName = 'SETTLEM_NAME'
      Size = 255
    end
    object SettlemsViewADODSITS_CITY: TSmallintField
      FieldName = 'ITS_CITY'
    end
    object SettlemsViewADODSSETTL_SHORTY_ID: TIntegerField
      FieldName = 'SETTL_SHORTY_ID'
    end
    object SettlemsViewADODSSETTL_STATE_ID: TIntegerField
      FieldName = 'SETTL_STATE_ID'
    end
    object SettlemsViewADODSSETTL_DISTRICT_ID: TIntegerField
      FieldName = 'SETTL_DISTRICT_ID'
    end
    object SettlemsViewADODSKLADR_CODE: TWideStringField
      FieldName = 'KLADR_CODE'
    end
    object SettlemsViewADODSKLADR_INDEX: TWideStringField
      FieldName = 'KLADR_INDEX'
      Size = 10
    end
    object SettlemsViewADODSKLADR_SHORTY: TWideStringField
      FieldName = 'KLADR_SHORTY'
      Size = 50
    end
    object SettlemsViewADODSSHORT_LEVEL: TIntegerField
      FieldName = 'SHORT_LEVEL'
    end
    object SettlemsViewADODSSHORT_TEXT: TWideStringField
      FieldName = 'SHORT_TEXT'
      Size = 50
    end
    object SettlemsViewADODSSHORT_FULL: TWideStringField
      FieldName = 'SHORT_FULL'
      Size = 255
    end
    object SettlemsViewADODSDISTRICT_FULL_NAME: TWideStringField
      FieldName = 'DISTRICT_FULL_NAME'
      Size = 1277
    end
    object SettlemsViewADODSSETTLEM_WITH_SHORT: TWideStringField
      FieldName = 'SETTLEM_WITH_SHORT'
      Size = 510
    end
    object SettlemsViewADODSSETTLEM_FULL_NAME: TWideStringField
      FieldName = 'SETTLEM_FULL_NAME'
      Size = 1787
    end
    object SettlemsViewADODSSETTL_NAME_SMALL_SHR: TWideStringField
      FieldName = 'SETTL_NAME_SMALL_SHR'
      Size = 1791
    end
    object SettlemsViewADODSSETTLEM_SHORT: TWideStringField
      FieldName = 'SETTLEM_SHORT'
      Size = 50
    end
  end
  object SettlemsViewDS: TDataSource
    DataSet = SettlemsViewADODS
    Left = 136
    Top = 912
  end
  object InsertFastPersonBirthCountryADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_PERSON_ID'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_COUNTRY_NAME'
        DataType = ftWideString
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_PERSON_BIRTH_COUNTRY( :IN_PERSON_ID, '
      ':IN_COUNTRY_NAME);')
    Left = 680
    Top = 936
  end
  object InsertFastAdrCountryADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_ADRES_ID'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_COUNTRY_NAME'
        DataType = ftWideString
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_ADRES_COUNTRY( :IN_ADRES_ID, '
      ':IN_COUNTRY_NAME);')
    Left = 400
    Top = 984
  end
  object InsertFastAdrStateADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_ADRES_ID'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_STATE_NAME'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_ADRES_STATE( :IN_ADRES_ID, '
      ':IN_STATE_NAME);')
    Left = 488
    Top = 984
  end
  object InsertFastAdrDistrictADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_ADRES_ID'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_DISTRICT_NAME'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_ADRES_DISTRICT( :IN_ADRES_ID, '
      ':IN_DISTRICT_NAME);')
    Left = 680
    Top = 984
  end
  object InsertFastAdrSettlemADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_ADRES_ID'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_SETTLEM_NAME'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_ITS_CITY'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_ADRES_SETTLEMENT( :IN_ADRES_ID, '
      ':IN_SETTLEM_NAME, :IN_ITS_CITY);')
    Left = 784
    Top = 984
  end
  object StreetsDS: TDataSource
    DataSet = StreetsADODS
    Left = 40
    Top = 680
  end
  object StreetsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select STREET_ID, STREET_NAME  from STREETS'
    Parameters = <>
    Left = 40
    Top = 624
  end
  object AddUpdFMSBrancheADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPD_FMS_BRANCHE'
    Parameters = <
      item
        Name = 'IN_BRANCHE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_BRANCHE_NAME'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1020
        Value = Null
      end
      item
        Name = 'IN_BRANCHE_CODE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = 'IN_OKATO_CODE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 80
        Value = Null
      end
      item
        Name = 'IN_STATE_CODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_BRANCHE_STATUS'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end>
    Left = 400
    Top = 1040
  end
  object LinkKLADRItemsADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'LINK_IMPORT_KLADR_ITEMS'
    Parameters = <>
    Left = 488
    Top = 1040
  end
  object FMSBranchesADOT: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from FMS_BRANCHES ORDER BY BRANCHE_CODE ASC'
    Parameters = <>
    Left = 136
    Top = 112
    object FMSBranchesADOTBRANCHE_ID: TIntegerField
      FieldName = 'BRANCHE_ID'
    end
    object FMSBranchesADOTBRANCHE_NAME: TWideStringField
      FieldName = 'BRANCHE_NAME'
      Size = 255
    end
    object FMSBranchesADOTBRANCHE_CODE: TWideStringField
      FieldName = 'BRANCHE_CODE'
      Size = 50
    end
    object FMSBranchesADOTOM_CODE: TWideStringField
      FieldName = 'OM_CODE'
    end
    object FMSBranchesADOTPVS_CODE: TWideStringField
      FieldName = 'PVS_CODE'
      Size = 50
    end
    object FMSBranchesADOTBRANCHE_STATE_ID: TIntegerField
      FieldName = 'BRANCHE_STATE_ID'
    end
    object FMSBranchesADOTBRANCHE_DISTRICT_ID: TIntegerField
      FieldName = 'BRANCHE_DISTRICT_ID'
    end
    object FMSBranchesADOTBRANCHE_SETTLEM_ID: TIntegerField
      FieldName = 'BRANCHE_SETTLEM_ID'
    end
    object FMSBranchesADOTBRANCHE_STATE_CODE: TIntegerField
      FieldName = 'BRANCHE_STATE_CODE'
    end
    object FMSBranchesADOTBRANCHE_OKATO_CODE: TWideStringField
      FieldName = 'BRANCHE_OKATO_CODE'
    end
    object FMSBranchesADOTBRANCHE_STATUS: TIntegerField
      FieldName = 'BRANCHE_STATUS'
    end
  end
  object InsertFastDocBrancheADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_DOC_ID'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_BRANCHE_NAME'
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_BRANCHE_CODE'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_DOC_FMS_BRANCHE( :IN_DOC_ID, '
      ':IN_BRANCHE_NAME, :IN_BRANCHE_CODE);')
    Left = 680
    Top = 1040
  end
  object FMSBrancheByIDADODS: TADODataSet
    Connection = FMSStorageADOC
    CommandText = 'select * from FMS_BRANCHES where BRANCHE_ID=:BRANCHE_ID'
    Parameters = <
      item
        Name = 'BRANCHE_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 488
    Top = 936
  end
  object SetBrancheNameADOC: TADOCommand
    CommandText = 
      'UPDATE FMS_BRANCHES '#13#10'SET BRANCHE_NAME=:BRANCHE_NAME '#13#10'where BRA' +
      'NCHE_ID=:BRANCHE_ID'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'BRANCHE_NAME'
        DataType = ftWideString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'BRANCHE_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 784
    Top = 1040
  end
  object SetPersonLocationAdrADOC: TADOCommand
    CommandText = 
      'UPDATE PERSONS SET LOCATION_ADRES_ID=:LOCATION_ADRES_ID'#13#10'WHERE P' +
      'ERSON_ID=:PERSON_ID;'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'LOCATION_ADRES_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PERSON_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 400
    Top = 1088
  end
  object SetPersonBirthSettlemADOC: TADOCommand
    CommandText = 
      'UPDATE PERSONS '#13#10'SET BIRTH_SETTLEM_ID=:BIRTH_SETTLEM_ID'#13#10'WHERE P' +
      'ERSON_ID=:PERSON_ID;'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'BIRTH_SETTLEM_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PERSON_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 488
    Top = 1088
  end
  object GenLangCASESADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'GEN_LANGUAGE_CASES'
    Parameters = <>
    Left = 584
    Top = 1088
  end
  object PersonJobRecsDS: TDataSource
    DataSet = PersonJobRecsADODS
    Left = 1016
    Top = 64
  end
  object PersonJobRecsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = PersonOperationsADODSBeforeInsert
    CommandText = 
      'select arg.*  from ACTIONS_REG arg LEFT JOIN ACTION_TYPES atp '#13#10 +
      'ON (arg.ATYPE_ID=atp.ACTION_TYPE_ID) '#13#10'WHERE atp.ACTION_TYPE_INT' +
      '_CODE=7'
    DataSource = PersonsDS
    IndexFieldNames = 'PERSON_ID'
    MasterFields = 'PERSON_ID'
    Parameters = <>
    Left = 1016
    Top = 16
    object IntegerField58: TIntegerField
      FieldName = 'ACTIONS_ID'
    end
    object IntegerField59: TIntegerField
      FieldName = 'ACTOR_ID'
    end
    object IntegerField60: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object IntegerField61: TIntegerField
      FieldName = 'REPORT_ID'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'A_TSTAMP'
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy hh.mm'
    end
    object IntegerField62: TIntegerField
      FieldName = 'DOC_ID'
    end
    object SmallintField9: TSmallintField
      FieldName = 'ATYPE_ID'
    end
    object IntegerField63: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object StringField13: TStringField
      FieldKind = fkLookup
      FieldName = 'ATYPE_LOOK'
      LookupDataSet = ActionTypesADOT
      LookupKeyFields = 'ACTION_TYPE_ID'
      LookupResultField = 'ACTION_TYPE_NAME'
      KeyFields = 'ATYPE_ID'
      Size = 255
      Lookup = True
    end
    object StringField14: TStringField
      FieldKind = fkLookup
      FieldName = 'SERVICE_LOOK'
      LookupDataSet = ZAGSServTypesADODS
      LookupKeyFields = 'SERVICE_ID'
      LookupResultField = 'SERVICE_NAME'
      KeyFields = 'SERVICE_ID'
      Size = 255
      Lookup = True
    end
    object IntegerField64: TIntegerField
      FieldName = 'SERVICE_GROUP_ID'
    end
    object StringField15: TStringField
      FieldKind = fkLookup
      FieldName = 'SERV_GROUP_LOOK'
      LookupDataSet = ServiceGroupsADODS
      LookupKeyFields = 'SERVICE_ID'
      LookupResultField = 'SERVICE_NAME'
      KeyFields = 'SERVICE_GROUP_ID'
      Size = 255
      Lookup = True
    end
    object PersonJobRecsADODSACTION_DESCRIPTION: TWideStringField
      FieldName = 'ACTION_DESCRIPTION'
      Size = 1000
    end
    object PersonJobRecsADODSACTION_ROLE_NAME: TWideStringField
      FieldName = 'ACTION_ROLE_NAME'
      Size = 255
    end
    object PersonJobRecsADODSCONTRAGENT_ID: TIntegerField
      FieldName = 'CONTRAGENT_ID'
    end
    object PersonJobRecsADODSCLOSED: TSmallintField
      FieldName = 'CLOSED'
    end
    object PersonJobRecsADODSACTION_ADRES_ID: TIntegerField
      FieldName = 'ACTION_ADRES_ID'
    end
    object PersonJobRecsADODSINTERVAL_START: TDateField
      FieldName = 'INTERVAL_START'
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!99/99/00;1;_'
    end
    object PersonJobRecsADODSINTERVAL_END: TDateField
      FieldName = 'INTERVAL_END'
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!99/99/00;1;_'
    end
  end
  object ServGroupsActItemsDS: TDataSource
    DataSet = ServGroupsActItemsADODS
    Left = 416
    Top = 456
  end
  object ServGroupsActItemsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = ServiceActItemsADODSBeforeInsert
    BeforeEdit = ServGroupsActItemsADODSBeforeEdit
    AfterPost = ServGroupsActItemsADODSAfterPost
    CommandText = 
      'select ael.*, enl.ELINK_CODE, enl.ELINK_TYPE '#13#10'from AEL_ASSOC ae' +
      'l LEFT JOIN  ENTLINKS enl '#13#10'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_I' +
      'D) '#13#10'where NOT (SERVICE_ID IS NULL) AND '#13#10'NOT (ael.AEL_LINK_TYPE' +
      '_ID IS NULL) AND'#13#10'((enl.ELINK_TYPE=3) OR (enl.ELINK_TYPE=4) OR '#13 +
      #10'(enl.ELINK_TYPE=5) OR (enl.ELINK_TYPE=7) '#13#10'OR (enl.ELINK_TYPE I' +
      'S NULL)) AND (ael.ACT_REG_ID IS NULL) '#13#10'AND (ael.ELINK_ID IS NUL' +
      'L)'
    DataSource = ServiceGroupsDS
    IndexFieldNames = 'SERVICE_ID'
    MasterFields = 'SERVICE_ID'
    Parameters = <>
    Left = 416
    Top = 400
    object IntegerField65: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object IntegerField66: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object IntegerField67: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object IntegerField68: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object SmallintField10: TSmallintField
      FieldName = 'ITS_ADR_ASSOC'
    end
    object SmallintField11: TSmallintField
      FieldName = 'ITS_DOC_ASSOC'
    end
    object SmallintField12: TSmallintField
      FieldName = 'ITS_PRS_ASSOC'
    end
    object IntegerField69: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object StringField16: TStringField
      FieldKind = fkLookup
      FieldName = 'AEL_TYPE_LOOK'
      LookupDataSet = ServActLinksADODS
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_EXT_NAME'
      KeyFields = 'AEL_LINK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object ServGroupsActItemsADODSSTATIC_DATA: TWideStringField
      FieldName = 'STATIC_DATA'
      Size = 255
    end
    object ServGroupsActItemsADODSCLOSED: TSmallintField
      FieldName = 'CLOSED'
    end
    object ServGroupsActItemsADODSELINK_CODE: TIntegerField
      FieldName = 'ELINK_CODE'
    end
    object ServGroupsActItemsADODSELINK_TYPE: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
  end
  object PacketSubOperationLinkItemsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = PacketSubOperationLinkItemsADODSBeforeInsert
    CommandText = 'select * from SERVICES_ACT_ITEMS'
    DataSource = ServGroupsActItemsDS
    IndexFieldNames = 'ELINK_ID'
    MasterFields = 'AEL_AS_ID'
    Parameters = <>
    Left = 416
    Top = 512
    object PacketSubOperationLinkItemsADODSAEL_AS_ID: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object PacketSubOperationLinkItemsADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object PacketSubOperationLinkItemsADODSELINK_ID: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object PacketSubOperationLinkItemsADODSAEL_LINK_TYPE_ID: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object PacketSubOperationLinkItemsADODSITS_ADR_ASSOC: TSmallintField
      FieldName = 'ITS_ADR_ASSOC'
    end
    object PacketSubOperationLinkItemsADODSITS_DOC_ASSOC: TSmallintField
      FieldName = 'ITS_DOC_ASSOC'
    end
    object PacketSubOperationLinkItemsADODSITS_PRS_ASSOC: TSmallintField
      FieldName = 'ITS_PRS_ASSOC'
    end
    object PacketSubOperationLinkItemsADODSSERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object PacketSubOperationLinkItemsADODSSTATIC_DATA: TWideStringField
      FieldName = 'STATIC_DATA'
      Size = 255
    end
    object PacketSubOperationLinkItemsADODSCLOSED: TSmallintField
      FieldName = 'CLOSED'
    end
    object PacketSubOperationLinkItemsADODSSUB_OP_LNK_DATA_NAME: TWideStringField
      FieldName = 'SUB_OP_LNK_DATA_NAME'
      Size = 561
    end
    object PacketSubOperationLinkItemsADODSELINK_CODE: TIntegerField
      FieldName = 'ELINK_CODE'
    end
    object PacketSubOperationLinkItemsADODSELINK_TYPE: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object PacketSubOperationLinkItemsADODSSERVICE_NAME: TWideStringField
      FieldName = 'SERVICE_NAME'
      Size = 255
    end
    object PacketSubOperationLinkItemsADODSSERVICE_CODE: TIntegerField
      FieldName = 'SERVICE_CODE'
    end
  end
  object PacketSubOperationLinkItemsDS: TDataSource
    DataSet = PacketSubOperationLinkItemsADODS
    Left = 416
    Top = 568
  end
  object PacketOperationsFreeLnkItemsDS: TDataSource
    DataSet = PacketOperationsFreeLnkItemsADODS
    Left = 512
    Top = 512
  end
  object PacketOperationsFreeLnkItemsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    BeforeInsert = PacketOperationsFreeLnkItemsADODSBeforeInsert
    CommandText = 
      'select * from SERVICES_ACT_ITEMS_WITH_GROUP '#13#10'WHERE (ELINK_ID IS' +
      ' NULL)'
    DataSource = ServGroupsActItemsDS
    IndexFieldNames = 'ELINK_TYPE;PARENT_SERVICE_ID'
    MasterFields = 'ELINK_TYPE;SERVICE_ID'
    Parameters = <>
    Left = 512
    Top = 456
    object PacketOperationsFreeLnkItemsADODSAEL_AS_ID: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object PacketOperationsFreeLnkItemsADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object PacketOperationsFreeLnkItemsADODSELINK_ID: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object PacketOperationsFreeLnkItemsADODSAEL_LINK_TYPE_ID: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object PacketOperationsFreeLnkItemsADODSITS_ADR_ASSOC: TSmallintField
      FieldName = 'ITS_ADR_ASSOC'
    end
    object PacketOperationsFreeLnkItemsADODSITS_DOC_ASSOC: TSmallintField
      FieldName = 'ITS_DOC_ASSOC'
    end
    object PacketOperationsFreeLnkItemsADODSITS_PRS_ASSOC: TSmallintField
      FieldName = 'ITS_PRS_ASSOC'
    end
    object PacketOperationsFreeLnkItemsADODSSERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object PacketOperationsFreeLnkItemsADODSSTATIC_DATA: TWideStringField
      FieldName = 'STATIC_DATA'
      Size = 255
    end
    object PacketOperationsFreeLnkItemsADODSCLOSED: TSmallintField
      FieldName = 'CLOSED'
    end
    object PacketOperationsFreeLnkItemsADODSELINK_CODE: TIntegerField
      FieldName = 'ELINK_CODE'
    end
    object PacketOperationsFreeLnkItemsADODSELINK_TYPE: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object PacketOperationsFreeLnkItemsADODSSERVICE_NAME: TWideStringField
      FieldName = 'SERVICE_NAME'
      Size = 255
    end
    object PacketOperationsFreeLnkItemsADODSSERVICE_CODE: TIntegerField
      FieldName = 'SERVICE_CODE'
    end
    object PacketOperationsFreeLnkItemsADODSSUB_OP_LNK_DATA_NAME: TWideStringField
      FieldName = 'SUB_OP_LNK_DATA_NAME'
      Size = 561
    end
    object PacketOperationsFreeLnkItemsADODSPARENT_SERVICE_ID: TIntegerField
      FieldName = 'PARENT_SERVICE_ID'
    end
  end
  object LinkToPacketDataADOС: TADOCommand
    CommandText = 
      'UPDATE AEL_ASSOC___ SET ELINK_ID=:ELINK_ID WHERE AEL_AS_ID=:AEL_' +
      'AS_ID'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'ELINK_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AEL_AS_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 680
    Top = 1088
  end
  object DetachFromPacketDataADOC: TADOCommand
    CommandText = 'DELETE FROM AEL_ASSOC WHERE AEL_AS_ID=:AEL_AS_ID'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'AEL_AS_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 784
    Top = 1088
  end
  object UserParamsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from USERS where USER_ID=:USER_ID'
    Parameters = <
      item
        Name = 'USER_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 136
    Top = 624
    object UserParamsADODSUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      ReadOnly = True
    end
    object UserParamsADODSUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      ReadOnly = True
      Size = 255
    end
    object UserParamsADODSLOGIN: TWideStringField
      FieldName = 'LOGIN'
      ReadOnly = True
      Size = 100
    end
    object UserParamsADODSUSER_ROLE_ID: TIntegerField
      FieldName = 'USER_ROLE_ID'
      ReadOnly = True
    end
    object UserParamsADODSENABLE_ADMIN: TSmallintField
      FieldName = 'ENABLE_ADMIN'
      ReadOnly = True
    end
    object UserParamsADODSENABLE_DELETE: TSmallintField
      FieldName = 'ENABLE_DELETE'
      ReadOnly = True
    end
    object UserParamsADODSUSER_HAS_CHANGES: TSmallintField
      FieldName = 'USER_HAS_CHANGES'
      ReadOnly = True
    end
    object UserParamsADODSIS_ACTIVE: TSmallintField
      FieldName = 'IS_ACTIVE'
      ReadOnly = True
    end
  end
  object DBVersionDS: TDataSource
    DataSet = DBVersionADODS
    Left = 1032
    Top = 424
  end
  object DBVersionADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=8'
    Parameters = <>
    Left = 1032
    Top = 376
    object DBVersionADODSIntegerField70: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object DBVersionADODSWideStringField19: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object DBVersionADODSWideStringField20: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object DBVersionADODSIntegerField71: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object DBVersionADODSIntegerField72: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
  end
  object SetDBVersionADOC: TADOCommand
    CommandText = 
      'UPDATE SYS_SETTINGS SET INT_VALUE=:DB_VERSION WHERE SETTING_INT_' +
      'CODE=8'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'DB_VERSION'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 584
    Top = 1040
  end
  object RememberPrevDBVersionADOC: TADOCommand
    CommandText = 
      'UPDATE SYS_SETTINGS SET STR_VALUE=CAST(INT_VALUE AS VARCHAR(255)' +
      ') WHERE SETTING_INT_CODE=8'
    Connection = FMSStorageADOC
    Parameters = <>
    Left = 584
    Top = 984
  end
  object InsertPersonADOQ: TADOQuery
    Connection = FMSStorageADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_UPD_PERSON;')
    Left = 400
    Top = 1136
  end
  object DBUpdateADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <>
    Left = 488
    Top = 1136
  end
  object DBUpdateADOC: TADOCommand
    Connection = FMSStorageADOC
    Parameters = <>
    Left = 584
    Top = 1136
  end
  object LinkCloneAELToPacketADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'LINK_CLONE_AEL_TO_PACKET'
    Parameters = <
      item
        Name = 'IN_AEL_AS_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_ELINK_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end>
    Left = 680
    Top = 1136
  end
  object AddUpdPersonADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'ADD_UPD_PERSON'
    Parameters = <
      item
        Name = 'IN_PERSON_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_FIRST_NAME'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1020
        Value = Null
      end
      item
        Name = 'IN_LAST_NAME'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1020
        Value = Null
      end
      item
        Name = 'IN_SURNAME'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1020
        Value = Null
      end
      item
        Name = 'IN_PERSON_BUILDING_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_PERSON_COUNTRY_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_PERSON_NATION_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_PERSON_SEX_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_BIRTHDATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'IN_REG_PSTATION_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_BIRTH_REGION_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_BIRTH_SETTLEM_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_BIRTHPLACE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1020
        Value = Null
      end
      item
        Name = 'IN_PERS_PLSTATUS_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_PERSON_INN'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 48
        Value = Null
      end
      item
        Name = 'IN_PERSON_BIRTH_DISTRICT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_PERSON_BIRTH_COUNTRY_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'IN_PERSON_SEC_COUNTRY_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end>
    Left = 784
    Top = 1136
  end
  object GenPotenServGrDatasADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'GEN_POTENTIAL_SERV_GROUP_DATAS'
    Parameters = <
      item
        Name = 'IN_SERVICE_GROUP_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end>
    Left = 400
    Top = 1184
  end
  object AddPersonADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_PERSON_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_FIRST_NAME'
        DataType = ftWideString
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_LAST_NAME'
        DataType = ftWideString
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_SURNAME'
        DataType = ftWideString
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_PERSON_BUILDING_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_PERSON_COUNTRY_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_PERSON_NATION_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_PERSON_SEX_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_BIRTHDATE'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_REG_PSTATION_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_BIRTH_REGION_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_BIRTH_SETTLEM_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_BIRTHPLACE'
        DataType = ftWideString
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_PERS_PLSTATUS_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_PERSON_INN'
        DataType = ftWideString
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_PERSON_BIRTH_DISTRICT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_PERSON_BIRTH_COUNTRY_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IN_PERSON_SEC_COUNTRY_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_UPD_PERSON(:IN_PERSON_ID, '
      
        ':IN_FIRST_NAME, :IN_LAST_NAME, :IN_SURNAME, :IN_PERSON_BUILDING_' +
        'ID, '
      ':IN_PERSON_COUNTRY_ID, :IN_PERSON_NATION_ID, :IN_PERSON_SEX_ID, '
      ':IN_BIRTHDATE, :IN_REG_PSTATION_ID, :IN_BIRTH_REGION_ID, '
      ':IN_BIRTH_SETTLEM_ID, :IN_BIRTHPLACE, :IN_PERS_PLSTATUS_ID, '
      ':IN_PERSON_INN, :IN_PERSON_BIRTH_DISTRICT_ID, '
      ':IN_PERSON_BIRTH_COUNTRY_ID, :IN_PERSON_SEC_COUNTRY_ID);')
    Left = 584
    Top = 1184
  end
  object AdrElinksADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select *  from ENTLNK_REG '#13#10'WHERE PERSON_ID=:PERSON_ID AND '#13#10'ADR' +
      'ES_ID=:ADRES_ID '#13#10'ORDER BY EL_REG_ID ASC'
    Parameters = <
      item
        Name = 'PERSON_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ADRES_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 680
    Top = 1184
    object AdrElinksADODSEL_REG_ID: TIntegerField
      FieldName = 'EL_REG_ID'
    end
    object AdrElinksADODSEVENT_DATE: TDateField
      FieldName = 'EVENT_DATE'
    end
    object AdrElinksADODSTERMINATE_DATE: TDateField
      FieldName = 'TERMINATE_DATE'
    end
    object AdrElinksADODSENTLNK_TYPE_ID: TIntegerField
      FieldName = 'ENTLNK_TYPE_ID'
    end
    object AdrElinksADODSESTATUS_ID: TIntegerField
      FieldName = 'ESTATUS_ID'
    end
    object AdrElinksADODSPERSON_ID: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object AdrElinksADODSADRES_ID: TIntegerField
      FieldName = 'ADRES_ID'
    end
    object AdrElinksADODSDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object AdrElinksADODSLINK_PERSON_ID: TIntegerField
      FieldName = 'LINK_PERSON_ID'
    end
    object AdrElinksADODSCLOSED: TSmallintField
      FieldName = 'CLOSED'
    end
  end
  object DocElinksADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select *  from ENTLNK_REG '#13#10'WHERE PERSON_ID=:PERSON_ID AND '#13#10'DOC' +
      '_ID=:DOC_ID'#13#10'ORDER BY EL_REG_ID ASC'
    Parameters = <
      item
        Name = 'PERSON_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'DOC_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 784
    Top = 1184
    object IntegerField70: TIntegerField
      FieldName = 'EL_REG_ID'
    end
    object DateField8: TDateField
      FieldName = 'EVENT_DATE'
    end
    object DateField9: TDateField
      FieldName = 'TERMINATE_DATE'
    end
    object IntegerField71: TIntegerField
      FieldName = 'ENTLNK_TYPE_ID'
    end
    object IntegerField72: TIntegerField
      FieldName = 'ESTATUS_ID'
    end
    object IntegerField73: TIntegerField
      FieldName = 'PERSON_ID'
    end
    object IntegerField74: TIntegerField
      FieldName = 'ADRES_ID'
    end
    object IntegerField75: TIntegerField
      FieldName = 'DOC_ID'
    end
    object IntegerField76: TIntegerField
      FieldName = 'LINK_PERSON_ID'
    end
    object SmallintField13: TSmallintField
      FieldName = 'CLOSED'
    end
  end
  object SetRegionGenCaseADOC: TADOCommand
    CommandText = 
      'update REGIONS '#13#10'set REGION_GENITIVE_CASE=:GENITIVE_CASE '#13#10'where' +
      ' REGION_ID=:REGION_ID'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'GENITIVE_CASE'
        Attributes = [paNullable]
        DataType = ftWideString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'REGION_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 488
    Top = 1232
  end
  object RegionByIDADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from REGIONS where REGION_ID=:REGION_ID'
    Parameters = <
      item
        Name = 'REGION_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 488
    Top = 1184
    object RegionByIDADODSREGION_ID: TIntegerField
      FieldName = 'REGION_ID'
    end
    object RegionByIDADODSREGION_NAME: TWideStringField
      FieldName = 'REGION_NAME'
      Size = 255
    end
    object RegionByIDADODSIS_RCENTER: TSmallintField
      FieldName = 'IS_RCENTER'
    end
    object RegionByIDADODSREGION_INT_CODE: TIntegerField
      FieldName = 'REGION_INT_CODE'
    end
    object RegionByIDADODSREGION_COUNTRY_ID: TIntegerField
      FieldName = 'REGION_COUNTRY_ID'
    end
    object RegionByIDADODSREGION_STATE_ID: TIntegerField
      FieldName = 'REGION_STATE_ID'
    end
    object RegionByIDADODSIS_BTHREGION: TSmallintField
      FieldName = 'IS_BTHREGION'
    end
    object RegionByIDADODSKLADR_SHORTY: TWideStringField
      FieldName = 'KLADR_SHORTY'
      Size = 50
    end
    object RegionByIDADODSKLADR_CODE: TWideStringField
      FieldName = 'KLADR_CODE'
    end
    object RegionByIDADODSKLADR_INDEX: TWideStringField
      FieldName = 'KLADR_INDEX'
      Size = 10
    end
    object RegionByIDADODSKLADR_GNIMB: TWideStringField
      FieldName = 'KLADR_GNIMB'
      Size = 5
    end
    object RegionByIDADODSKLADR_UNO: TWideStringField
      FieldName = 'KLADR_UNO'
    end
    object RegionByIDADODSKLADR_OCATD: TWideStringField
      FieldName = 'KLADR_OCATD'
      Size = 15
    end
    object RegionByIDADODSKLADR_STATUS: TWideStringField
      FieldName = 'KLADR_STATUS'
    end
    object RegionByIDADODSREGION_GENITIVE_CASE: TWideStringField
      FieldName = 'REGION_GENITIVE_CASE'
      Size = 255
    end
  end
  object AddUpdActionADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'IN_ACTION_ID'
        DataType = ftInteger
        Precision = 2
        Size = 4
        Value = Null
      end
      item
        Name = 'IN_USER_ID'
        DataType = ftInteger
        Precision = 2
        Size = 4
        Value = Null
      end
      item
        Name = 'IN_ATYPE_ID'
        DataType = ftInteger
        Precision = 2
        Size = 4
        Value = Null
      end
      item
        Name = 'IN_ATSTAMP'
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'IN_SERVICE_ID'
        DataType = ftInteger
        Precision = 2
        Size = 4
        Value = Null
      end
      item
        Name = 'IN_REPORT_ID'
        DataType = ftInteger
        Precision = 2
        Size = 4
        Value = Null
      end
      item
        Name = 'IN_DOC_ID'
        DataType = ftInteger
        Precision = 2
        Size = 4
        Value = Null
      end
      item
        Name = 'IN_ATYPE_CODE'
        DataType = ftInteger
        Precision = 2
        Size = 4
        Value = Null
      end
      item
        Name = 'IN_SERVICE_CODE'
        DataType = ftInteger
        Precision = 2
        Size = 4
        Value = Null
      end
      item
        Name = 'IN_REPORT_CODE'
        DataType = ftInteger
        Precision = 2
        Size = 4
        Value = Null
      end
      item
        Name = 'IN_USER_LOGIN'
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = 'IN_PERSON_ID'
        DataType = ftInteger
        Precision = 2
        Size = 4
        Value = Null
      end
      item
        Name = 'IN_SERVICE_GROUP_ID'
        DataType = ftInteger
        Precision = 2
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_UPD_ACTION_REG(:IN_ACTION_ID,:IN_USER_ID,'
      ' :IN_ATYPE_ID, :IN_ATSTAMP, :IN_SERVICE_ID, :IN_REPORT_ID, '
      ':IN_DOC_ID, :IN_ATYPE_CODE, :IN_SERVICE_CODE, :IN_REPORT_CODE,'
      ':IN_USER_LOGIN, :IN_PERSON_ID, :IN_SERVICE_GROUP_ID);')
    Left = 584
    Top = 1232
  end
  object ElinksViewADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select * from ELINKS_VIEW'
    Parameters = <>
    Left = 240
    Top = 624
    object ElinksViewADODSELINK_ID: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object ElinksViewADODSACT_GROUP_CODE: TIntegerField
      FieldName = 'ACT_GROUP_CODE'
    end
    object ElinksViewADODSELINK_CODE: TIntegerField
      FieldName = 'ELINK_CODE'
    end
    object ElinksViewADODSELINK_LEVEL: TSmallintField
      FieldName = 'ELINK_LEVEL'
    end
    object ElinksViewADODSELINK_NAME: TWideStringField
      FieldName = 'ELINK_NAME'
      Size = 255
    end
    object ElinksViewADODSELINK_TYPE: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object ElinksViewADODSELINK_EXT_NAME: TWideStringField
      FieldName = 'ELINK_EXT_NAME'
      Size = 289
    end
  end
  object ElinksViewDS: TDataSource
    DataSet = ElinksViewADODS
    Left = 240
    Top = 680
  end
  object ElinksAssocsADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select *  from AEL_ASSOC where (ACT_REG_ID IS NULL) AND '#13#10'(SERVI' +
      'CE_ID IS NULL)'
    Parameters = <>
    Left = 328
    Top = 624
    object ElinksAssocsADODSAEL_AS_ID: TIntegerField
      FieldName = 'AEL_AS_ID'
    end
    object ElinksAssocsADODSACT_REG_ID: TIntegerField
      FieldName = 'ACT_REG_ID'
    end
    object ElinksAssocsADODSELINK_ID: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object ElinksAssocsADODSAEL_LINK_TYPE_ID: TIntegerField
      FieldName = 'AEL_LINK_TYPE_ID'
    end
    object ElinksAssocsADODSITS_ADR_ASSOC: TSmallintField
      FieldName = 'ITS_ADR_ASSOC'
    end
    object ElinksAssocsADODSITS_DOC_ASSOC: TSmallintField
      FieldName = 'ITS_DOC_ASSOC'
    end
    object ElinksAssocsADODSITS_PRS_ASSOC: TSmallintField
      FieldName = 'ITS_PRS_ASSOC'
    end
    object ElinksAssocsADODSSERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object ElinksAssocsADODSSTATIC_DATA: TWideStringField
      FieldName = 'STATIC_DATA'
      Size = 255
    end
    object ElinksAssocsADODSCLOSED: TSmallintField
      FieldName = 'CLOSED'
    end
    object ElinksAssocsADODSMASTER_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'MASTER_LOOK'
      LookupDataSet = ElinksViewADODS
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_EXT_NAME'
      KeyFields = 'AEL_LINK_TYPE_ID'
      Size = 255
      Lookup = True
    end
    object ElinksAssocsADODSSLAVE_LOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'SLAVE_LOOK'
      LookupDataSet = ElinksViewADODS
      LookupKeyFields = 'ELINK_ID'
      LookupResultField = 'ELINK_EXT_NAME'
      KeyFields = 'ELINK_ID'
      Size = 255
      Lookup = True
    end
  end
  object ElinksAssocsDS: TDataSource
    DataSet = ElinksAssocsADODS
    Left = 328
    Top = 680
  end
  object AdrCountryDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=9'
    Parameters = <>
    Left = 1288
    Top = 328
    object IntegerField77: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField19: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField20: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField78: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField79: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField17: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object AdrCountryDefDS: TDataSource
    DataSet = AdrCountryDefADODS
    Left = 1288
    Top = 376
  end
  object AdrStateDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=10'
    Parameters = <>
    Left = 1288
    Top = 424
    object IntegerField80: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField21: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField22: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField81: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField82: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField18: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object AdrStateDefDS: TDataSource
    DataSet = AdrStateDefADODS
    Left = 1288
    Top = 472
  end
  object AdrDistrictDefDS: TDataSource
    DataSet = AdrDistrictDefADODS
    Left = 1288
    Top = 568
  end
  object AdrDistrictDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=11'
    Parameters = <>
    Left = 1288
    Top = 520
    object IntegerField83: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField23: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField24: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField84: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField85: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField19: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object AdrSettlDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=12'
    Parameters = <>
    Left = 1288
    Top = 616
    object IntegerField86: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField25: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField26: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField87: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField88: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField20: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object AdrSettlDefDS: TDataSource
    DataSet = AdrSettlDefADODS
    Left = 1288
    Top = 664
  end
  object CivilCountryDefDS: TDataSource
    DataSet = CivilCountryDefADODS
    Left = 1288
    Top = 760
  end
  object CivilCountryDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=13'
    Parameters = <>
    Left = 1288
    Top = 712
    object IntegerField89: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField27: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField28: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField90: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField91: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField21: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object NationDefDS: TDataSource
    DataSet = NationDefADODS
    Left = 1288
    Top = 864
  end
  object NationDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=14'
    Parameters = <>
    Left = 1288
    Top = 816
    object IntegerField92: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField29: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField30: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField93: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField94: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField22: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object RegionDefDS: TDataSource
    DataSet = RegionDefADODS
    Left = 1288
    Top = 968
  end
  object RegionDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=15'
    Parameters = <>
    Left = 1288
    Top = 920
    object IntegerField95: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField31: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField32: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField96: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField97: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField23: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object InsertBlankSettlADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <>
    SQL.Strings = (
      'EXECUTE PROCEDURE INSERT_BLANK_SETTLEMENT;')
    Left = 680
    Top = 1232
  end
  object InsertFastShortADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'SHORT_LEVEL'
        Size = -1
        Value = Null
      end
      item
        Name = 'SHORT_TEXT'
        Size = -1
        Value = Null
      end
      item
        Name = 'SHORT_FULL_TEXT'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_UPD_SHORTED( NULL, :SHORT_LEVEL,'
      '  :SHORT_TEXT, :SHORT_FULL_TEXT, NULL);')
    Left = 784
    Top = 1232
  end
  object AdrLinksADOT: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select * from ENTLINKS where ELINK_TYPE=1 '#13#10'order by ORDER_VAL d' +
      'esc'
    Parameters = <>
    Left = 720
    Top = 112
    object AdrLinksADOTELINK_ID: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object AdrLinksADOTELINK_NAME: TWideStringField
      FieldName = 'ELINK_NAME'
      Size = 255
    end
    object AdrLinksADOTELINK_CODE: TIntegerField
      FieldName = 'ELINK_CODE'
    end
    object AdrLinksADOTELINK_LEVEL: TSmallintField
      FieldName = 'ELINK_LEVEL'
    end
    object AdrLinksADOTELINK_TYPE: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object AdrLinksADOTACT_GROUP_CODE: TIntegerField
      FieldName = 'ACT_GROUP_CODE'
    end
    object AdrLinksADOTORDER_VAL: TSmallintField
      FieldName = 'ORDER_VAL'
    end
  end
  object DocLinksADOT: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 
      'select * from ENTLINKS where ELINK_TYPE=2 '#13#10'order by ORDER_VAL d' +
      'esc'
    Parameters = <>
    Left = 720
    Top = 160
    object DocLinksADOTELINK_ID: TIntegerField
      FieldName = 'ELINK_ID'
    end
    object DocLinksADOTELINK_NAME: TWideStringField
      FieldName = 'ELINK_NAME'
      Size = 255
    end
    object DocLinksADOTELINK_CODE: TIntegerField
      FieldName = 'ELINK_CODE'
    end
    object DocLinksADOTELINK_LEVEL: TSmallintField
      FieldName = 'ELINK_LEVEL'
    end
    object DocLinksADOTELINK_TYPE: TIntegerField
      FieldName = 'ELINK_TYPE'
    end
    object DocLinksADOTACT_GROUP_CODE: TIntegerField
      FieldName = 'ACT_GROUP_CODE'
    end
    object DocLinksADOTORDER_VAL: TSmallintField
      FieldName = 'ORDER_VAL'
    end
  end
  object DocLinkDefDS: TDataSource
    DataSet = DocLinkDefADODS
    Left = 1168
    Top = 1016
  end
  object DocLinkDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=17'
    Parameters = <>
    Left = 1168
    Top = 968
    object IntegerField98: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField33: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField34: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField99: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField100: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField24: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object AdrLinkDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=16'
    Parameters = <>
    Left = 1032
    Top = 968
    object IntegerField101: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField35: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField36: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField102: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField103: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField25: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object AdrLinkDefDS: TDataSource
    DataSet = AdrLinkDefADODS
    Left = 1032
    Top = 1016
  end
  object DelOpWithChildADOSP: TADOStoredProc
    Connection = FMSStorageADOC
    ProcedureName = 'DELETE_OPERATION_WITH_CHILDS'
    Parameters = <
      item
        Name = 'IN_ACTION_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end>
    Left = 400
    Top = 1232
  end
  object DocTypeDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=18'
    Parameters = <>
    Left = 1032
    Top = 1064
    object IntegerField104: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField37: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField38: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField105: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField106: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField26: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object DocTypeDefDS: TDataSource
    DataSet = DocTypeDefADODS
    Left = 1032
    Top = 1112
  end
  object DocStatusDefDS: TDataSource
    DataSet = DocStatusDefADODS
    Left = 1168
    Top = 1112
  end
  object DocStatusDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=19'
    Parameters = <>
    Left = 1168
    Top = 1064
    object IntegerField107: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField39: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField40: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField108: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField109: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField27: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object PersStatusDefADODS: TADODataSet
    Connection = FMSStorageADOC
    CursorType = ctStatic
    CommandText = 'select *  from SYS_SETTINGS '#13#10'WHERE SETTING_INT_CODE=20'
    Parameters = <>
    Left = 1288
    Top = 1064
    object IntegerField110: TIntegerField
      FieldName = 'SYS_SETTING_ID'
    end
    object WideStringField41: TWideStringField
      FieldName = 'SYS_SETTING_NAME'
      Size = 255
    end
    object WideStringField42: TWideStringField
      FieldName = 'STR_VALUE'
      Size = 255
    end
    object IntegerField111: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object IntegerField112: TIntegerField
      FieldName = 'SETTING_INT_CODE'
    end
    object StringField28: TStringField
      FieldKind = fkLookup
      FieldName = 'IVAL'
      LookupDataSet = FMSBranchesADOT
      LookupKeyFields = 'BRANCHE_ID'
      LookupResultField = 'BRANCHE_NAME'
      KeyFields = 'INT_VALUE'
      Size = 255
      Lookup = True
    end
  end
  object PersStatusDefDS: TDataSource
    DataSet = PersStatusDefADODS
    Left = 1288
    Top = 1112
  end
  object InsertBlankDistrictADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'DISTRICT_NAME'
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = 'STATE_ID'
        Size = -1
        Value = Null
      end
      item
        Name = 'DISTR_SHORT'
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_UPDATE_DISTRICT_EXT('
      '  NULL, :DISTRICT_NAME,'
      '  NULL, NULL, :STATE_ID, 0, NULL,'
      '  :DISTR_SHORT, NULL, NULL, NULL, NULL, NULL, NULL);')
    Left = 400
    Top = 1280
  end
  object InsertStateIfNotExistADOQ: TADOQuery
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'STATE_NAME'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE ADD_STATE_NOT_EXIST_NAME(:STATE_NAME);')
    Left = 488
    Top = 1280
  end
  object SetDistrToSettlADOC: TADOCommand
    CommandText = 
      'UPDATE SETTLEMENTS SET SETTL_DISTRICT_ID=:DISTRICT_ID '#13#10'WHERE SE' +
      'TTLEMENT_ID=:SETTLEMENT_ID'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'DISTRICT_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SETTLEMENT_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 584
    Top = 1280
  end
  object SetPersonBirthStateADOC: TADOCommand
    CommandText = 
      'UPDATE PERSONS SET BIRTH_STATE_ID=:STATE_ID'#13#10'WHERE PERSON_ID=:PE' +
      'RSON_ID'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'STATE_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PERSON_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 680
    Top = 1280
  end
  object SetITSCityADOC: TADOCommand
    CommandText = 
      'UPDATE SETTLEMENTS SET ITS_CITY=:ITS_CITY '#13#10'WHERE SETTLEMENT_ID=' +
      ':SETTLEMENT_ID'
    Connection = FMSStorageADOC
    Parameters = <
      item
        Name = 'ITS_CITY'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'SETTLEMENT_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 784
    Top = 1280
  end
  object ServiceParamsADODS: TADODataSet
    Connection = FMSStorageADOC
    CommandText = 'select *  from SERVICES where SERVICE_ID=:SERVICE_ID'
    Parameters = <
      item
        Name = 'SERVICE_ID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 968
  end
end
