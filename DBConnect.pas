unit DBConnect;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs, ExtCtrls, IniFiles, Variants, ADOInt,
  DateUtils, ActnList, DBActns, Controls, Menus, ReportDM;

type
  TRoleType = ( rltAdministrator, rltDirector, rltSpec, rltBeginner, rltGuest);
  TUserRoles = set of TRoleType;

  TDataConnection = class(TDataModule)
    FMSStorageADOC: TADOConnection;
    PersonsADODS: TADODataSet;
    PersonsDS: TDataSource;
    PersonViewADODS: TADODataSet;
    CheckUpdatesTimer: TTimer;
    DictsADOT: TADOTable;
    DictsDS: TDataSource;
    CountriesDS: TDataSource;
    AddUpdCountryADOSP: TADOStoredProc;
    AddUpdDocTypeADOSP: TADOStoredProc;
    DocTypesDS: TDataSource;
    AddUpdDTypeADOSP: TADOStoredProc;
    ServicesDS: TDataSource;
    AddUpdServiceADOSP: TADOStoredProc;
    OKVDADOT: TADOTable;
    AddUpdOKVDADOSP: TADOStoredProc;
    OKVDDS: TDataSource;
    AReasonsADOT: TADOTable;
    AReasonsDS: TDataSource;
    AddUpdAReasonsADOSP: TADOStoredProc;
    TReasonsDS: TDataSource;
    TReasonsADOT: TADOTable;
    AddUpdRegionADOSP: TADOStoredProc;
    BTHRegionsADOT: TADOTable;
    BTHRegionsDS: TDataSource;
    BTHRegionsADOTREGION_ID: TIntegerField;
    BTHRegionsADOTREGION_NAME: TStringField;
    BTHRegionsADOTIS_RCENTER: TSmallintField;
    BTHRegionsADOTREGION_INT_CODE: TIntegerField;
    BTHRegionsADOTREGION_COUNTRY_ID: TIntegerField;
    BTHRegionsADOTREGION_STATE_ID: TIntegerField;
    BTHRegionsADOTIS_BTHREGION: TSmallintField;
    PlaceStatusesADOT: TADOTable;
    PlaceStatusesDS: TDataSource;
    LinksADOT: TADOTable;
    LinksDS: TDataSource;
    DocStatusesADOT: TADOTable;
    DocStatusesDS: TDataSource;
    SettlementsDS: TDataSource;
    FMSBranchesDS: TDataSource;
    StatesDS: TDataSource;
    FMSBranchDefSettDS: TDataSource;
    FMSBrDefSettADODS: TADODataSet;
    FMSBrDefSettADODSSYS_SETTING_ID: TIntegerField;
    FMSBrDefSettADODSSYS_SETTING_NAME: TWideStringField;
    FMSBrDefSettADODSSTR_VALUE: TWideStringField;
    FMSBrDefSettADODSINT_VALUE: TIntegerField;
    FMSBrDefSettADODSSETTING_INT_CODE: TIntegerField;
    FMSBrDefSettADODSIVAL: TStringField;
    StateDefSettADODS: TADODataSet;
    StateDefSettDS: TDataSource;
    StateDefSettADODSSYS_SETTING_ID: TIntegerField;
    StateDefSettADODSSYS_SETTING_NAME: TWideStringField;
    StateDefSettADODSSTR_VALUE: TWideStringField;
    StateDefSettADODSINT_VALUE: TIntegerField;
    StateDefSettADODSSETTING_INT_CODE: TIntegerField;
    FMSBrStr2SettADODS: TADODataSet;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FMSBrStr2SettDS: TDataSource;
    RDirFIOStrSettADODS: TADODataSet;
    RDirFIOStrSettDS: TDataSource;
    RDirFIOStr2SettDS: TDataSource;
    RDirFIOStr2SettADODS: TADODataSet;
    RRankStrSettADODS: TADODataSet;
    RRankStrSettDS: TDataSource;
    RRankStr2SettADODS: TADODataSet;
    RRankStr2SettDS: TDataSource;
    FMSBrNameDefADODS: TADODataSet;
    StateNameDefADODS: TADODataSet;
    SexADOT: TADOTable;
    PersonsADODSPERSON_ID: TIntegerField;
    PersonsADODSFIRST_NAME: TWideStringField;
    PersonsADODSLAST_NAME: TWideStringField;
    PersonsADODSSURNAME: TWideStringField;
    PersonsADODSPERSON_BUILDING_ID: TIntegerField;
    PersonsADODSPERSON_COUNTRY_ID: TIntegerField;
    PersonsADODSPERSONS_NATION_ID: TIntegerField;
    PersonsADODSPERSON_SEX_ID: TIntegerField;
    PersonsADODSBIRTHDATE: TDateField;
    PersonsADODSREG_PSTATION_ID: TIntegerField;
    PersonsADODSBIRTH_REGION_ID: TIntegerField;
    PersonsADODSBIRTH_SETTLEM_ID: TIntegerField;
    PersonsADODSBIRTHPLACE: TWideStringField;
    PersonsADODSIDENTITY_DOC_ID: TIntegerField;
    PersonsADODSPERSON_INN: TWideStringField;
    PersonsADODSTAKE_PDATA_CONSENT: TSmallintField;
    PersonsADODSPERSON_SEX_ID_LOOK: TStringField;
    PersonsADODSBTH_REGION_LOOK: TStringField;
    NationsADOT: TADOTable;
    NationsDS: TDataSource;
    BuildTypesDS: TDataSource;
    BuildTypesADOT: TADOTable;
    PersonsADODSPERS_PLSTATUS_ID: TIntegerField;
    PersonsADODSPERS_PLSTAT_LOOK: TStringField;
    PersonsADODSNATION_LOOK: TStringField;
    PersonsADODSBUILD_TYPE_LOOK: TStringField;
    PersonsADODSSETTL_LOOK: TStringField;
    InsBlankPersADOSP: TADOStoredProc;
    PersonsADODSCOUNTRY_LOOK: TStringField;
    GetPersonByLoginADOQ: TADOQuery;
    CurrentUserRolesADODS: TADODataSet;
    UsersADOT: TADOTable;
    RolesADOT: TADOTable;
    UserRolesADODS: TADODataSet;
    UsersDS: TDataSource;
    RolesDS: TDataSource;
    UserRolesDS: TDataSource;
    AddUpdActionADOSP: TADOStoredProc;
    PersonOperationsADODS: TADODataSet;
    PersonOperationsDS: TDataSource;
    PersonOperationsADODSACTIONS_ID: TIntegerField;
    PersonOperationsADODSACTOR_ID: TIntegerField;
    PersonOperationsADODSSERVICE_ID: TIntegerField;
    PersonOperationsADODSREPORT_ID: TIntegerField;
    PersonOperationsADODSA_TSTAMP: TDateTimeField;
    PersonOperationsADODSDOC_ID: TIntegerField;
    PersonOperationsADODSATYPE_ID: TSmallintField;
    PersonOperationsADODSPERSON_ID: TIntegerField;
    ActionTypesADOT: TADOTable;
    PersonOperationsADODSATYPE_LOOK: TStringField;
    PersonOperationsADODSSERVICE_LOOK: TStringField;
    CivilStatusesADOTable: TADOTable;
    CivilStatusesDS: TDataSource;
    PersonAdrLinksDS: TDataSource;
    PersonAdrLinksADODS: TADODataSet;
    PersonAdrLinksADODSEVENT_DATE: TDateField;
    PersonAdrLinksADODSTERMINATE_DATE: TDateField;
    PersonAdrLinksADODSPERSON_ID: TIntegerField;
    PersonAdrLinksADODSADRES_ID: TIntegerField;
    PersonAdrLinksADODSDOC_ID: TIntegerField;
    PersonAdrLinksADODSELINK_TYPE: TIntegerField;
    PersonAdrLinksADODSENTLNK_TYPE_ID: TIntegerField;
    PersonAdrLinksADODSESTATUS_ID: TIntegerField;
    PersonAdrLinksADODSELINK_LOOK: TStringField;
    LinkAdrADOT: TADOTable;
    LinkAdrDS: TDataSource;
    PersonDocLinksADODS: TADODataSet;
    DateField1: TDateField;
    DateField2: TDateField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    StringField1: TStringField;
    PersonDocLinksDS: TDataSource;
    LinkDocADOT: TADOTable;
    LinkDocDS: TDataSource;
    AddPersLinkEntityADOSP: TADOStoredProc;
    PersonAdrLinksADODSEL_REG_ID: TIntegerField;
    LinkAdrADOTADRES_ID: TIntegerField;
    LinkAdrADOTHOUSE_NUM: TIntegerField;
    LinkAdrADOTCORPUS: TWideStringField;
    LinkAdrADOTAPARTMENT_NUM: TIntegerField;
    LinkAdrADOTLITER: TWideStringField;
    LinkAdrADOTLEAVE_SQUARE: TBCDField;
    LinkAdrADOTFULL_SQUARE: TBCDField;
    LinkAdrADOTADR_COUNTRY_ID: TIntegerField;
    LinkAdrADOTADR_STATE_ID: TIntegerField;
    LinkAdrADOTADR_REGION_ID: TIntegerField;
    LinkAdrADOTADR_SETTLEM_ID: TIntegerField;
    DistrictsDS: TDataSource;
    AddUpdDistrictADOSP: TADOStoredProc;
    PersonDocLinksADODSESTATUS_LOOK: TStringField;
    LinkDocADOTDOC_ID: TIntegerField;
    LinkDocADOTDOC_NAME: TWideStringField;
    LinkDocADOTIS_IDENTITY: TSmallintField;
    LinkDocADOTDOC_TYPE_ID: TIntegerField;
    LinkDocADOTDOC_TYPE_LOOK: TStringField;
    LinkDocADOTDOC_SERIE: TWideStringField;
    LinkDocADOTDOC_NUM: TWideStringField;
    LinkDocADOTDOC_CREATE_DATE: TDateField;
    LinkDocADOTDOC_TREASON_ID: TIntegerField;
    LinkDocADOTDOC_EXPIRATION_DATE: TDateField;
    LinkDocADOTDOC_BRANCH_NAME: TWideStringField;
    LinkDocADOTDOC_BRANCH_ID: TIntegerField;
    LinkDocADOTDOC_POLICY_STATION_ID: TIntegerField;
    DBActionList: TActionList;
    LinkAdrDSPost: TDataSetPost;
    LinkDocDSPost: TDataSetPost;
    AddUpdShortedADOSP: TADOStoredProc;
    ReportsADOT: TADOTable;
    ReportsDS: TDataSource;
    ShortedDS: TDataSource;
    ShortedADOT: TADOTable;
    ServiceCodeByIDADODS: TADODataSet;
    PersonAdrLinksADODSADR_FULL_NAME: TWideStringField;
    LinkAdrADOTSTREET_NAME: TWideStringField;
    ActAdrLADOT: TADOTable;
    ActDocLADOT: TADOTable;
    OpAdrLinksADODS: TADODataSet;
    AddUpdAELASSOCADOSP: TADOStoredProc;
    OpDocLinksADODS: TADODataSet;
    OpAdrLinksDS: TDataSource;
    OpDocLinksDS: TDataSource;
    PersonDocLinksADODSEL_REG_ID: TIntegerField;
    PersonDocLinksADODSDOC_FULL_NAME: TWideStringField;
    OpAdrLinksADODSAEL_AS_ID: TIntegerField;
    OpAdrLinksADODSACT_REG_ID: TIntegerField;
    OpAdrLinksADODSELINK_ID: TIntegerField;
    OpAdrLinksADODSAEL_LINK_TYPE_ID: TIntegerField;
    OpAdrLinksADODSELADR_LOOK: TStringField;
    OpAdrLinksADODSAEL_TYPE_LOOK: TStringField;
    OpAdrLinksADODSELINK_TYPE: TIntegerField;
    OpDocLinksADODSAEL_AS_ID: TIntegerField;
    OpDocLinksADODSACT_REG_ID: TIntegerField;
    OpDocLinksADODSELINK_ID: TIntegerField;
    OpDocLinksADODSAEL_LINK_TYPE_ID: TIntegerField;
    OpDocLinksADODSELDOC_LOOK: TStringField;
    OpDocLinksADODSAEL_TYPE_LOOK: TStringField;
    CurrOpPrevResideAdrADODS: TADODataSet;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField14: TIntegerField;
    CurrOpPrevResideAdrADODSADR_FULL_PART1: TWideStringField;
    CurrOpPrevResideAdrADODSADR_FULL_PART2: TWideStringField;
    CurrOpPrevResideAdrADODSADR_FULL_NAME: TWideStringField;
    CurrOpPrevResideAdrADODSPARAM_NAME: TWideStringField;
    UsrActionsADOT: TADOTable;
    UserActionsDS: TDataSource;
    UsrActionsADOTATYPE_ID: TSmallintField;
    UsrActionsADOTACTOR_ID: TIntegerField;
    UsrActionsADOTPERSON_ID: TIntegerField;
    UsrActionsADOTAT_NAME: TWideStringField;
    UsrActionsADOTA_TSTAMP: TDateTimeField;
    UsrActionsADOTREPORT_NAME: TWideStringField;
    OpPersAdrLinksADODS: TADODataSet;
    DateField3: TDateField;
    DateField4: TDateField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    StringField4: TStringField;
    IntegerField21: TIntegerField;
    WideStringField3: TWideStringField;
    OpPersDocLinksADODS: TADODataSet;
    DateField5: TDateField;
    DateField6: TDateField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField28: TIntegerField;
    WideStringField4: TWideStringField;
    OpPersonsADODS: TADODataSet;
    OpPersonsDS: TDataSource;
    OpPersAdrLinksADODSACT_REG_ID: TIntegerField;
    OpPersDocLinksADODSACT_REG_ID: TIntegerField;
    ActPersLADOT: TADOTable;
    OpPersonsADODSELINK_ID: TIntegerField;
    OpPersonsADODSAEL_LINK_TYPE_ID: TIntegerField;
    OpPersonsADODSAEL_AS_ID: TIntegerField;
    OpPersonsADODSACT_REG_ID: TIntegerField;
    OpPersonsADODSELPERS_LOOK: TStringField;
    OpPersonsADODSAEL_TYPE_LOOK: TStringField;
    ClearOpAssocADOSP: TADOStoredProc;
    DocTypesADOT: TADODataSet;
    CountriesADOT: TADODataSet;
    StatesADOT: TADODataSet;
    StatesADOTSTATE_ID: TIntegerField;
    StatesADOTSTATE_NAME: TWideStringField;
    StatesADOTSTATE_COUNTRY_ID: TIntegerField;
    StatesADOTSTATE_INT_CODE: TIntegerField;
    StatesADOTCOUNTRY_LOOK: TStringField;
    DistrictsADOT: TADODataSet;
    DistrictsADOTDISTRICTS_ID: TIntegerField;
    DistrictsADOTDISTRICT_NAME: TWideStringField;
    DistrictsADOTDISTRICT_SETTLEM_ID: TIntegerField;
    DistrictsADOTDISTRICT_CODE: TWideStringField;
    DistrictsADOTITS_CITY_DISTRICT: TSmallintField;
    DistrictsADOTDISTRICT_STATE_ID: TIntegerField;
    DistrictsADOTSTATE_LOOK: TStringField;
    SettlementsADOT: TADODataSet;
    SettlementsADOTSETTLEMENT_ID: TIntegerField;
    SettlementsADOTSETTLEM_NAME: TWideStringField;
    SettlementsADOTDISTRICT_NAME: TWideStringField;
    SettlementsADOTSHORT_NAME: TWideStringField;
    SettlementsADOTITS_CITY: TSmallintField;
    InsertBlankPersDSP: TDataSetPost;
    InsertBlankPersonADOQ: TADOQuery;
    SetOpObjAssocADOC: TADOCommand;
    CurrOpIncomeRegGroundADODS: TADODataSet;
    CurrOpIncomeRegGroundADODSELINK_TYPE: TIntegerField;
    CurrOpIncomeRegGroundADODSDOC_FULL_NAME: TWideStringField;
    CurrOpIncomeRegGroundADODSPARAM_NAME: TWideStringField;
    CurrOpIncomeRegGroundADODSACT_REG_ID: TIntegerField;
    DataSource1: TDataSource;
    CurrOpIncomeRegOwnerPersADODS: TADODataSet;
    CurrOpIncomeRegOwnerPersADODSACT_REG_ID: TIntegerField;
    CurrOpIncomeRegOwnerPersADODSPERSON_NAME: TWideStringField;
    CurrOpLocationRegAdrADODS: TADODataSet;
    IntegerField30: TIntegerField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    CurrOpLocationRegAdrADODSSTATE_NAME: TWideStringField;
    CurrOpLocationRegAdrADODSDISTRICT_NAME: TWideStringField;
    CurrOpLocationRegAdrADODSSETTLEM_NAME: TWideStringField;
    CurrOpLocationRegAdrADODSSTREET_NAME: TWideStringField;
    CurrOpLocationRegAdrADODSHOUSE_NUM: TIntegerField;
    CurrOpLocationRegAdrADODSCORPUS: TWideStringField;
    CurrOpLocationRegAdrADODSLITER: TWideStringField;
    CurrOpLocationRegAdrADODSAPARTMENT_NUM: TIntegerField;
    CurrOpIncomeRegIdentDocADODS: TADODataSet;
    IntegerField29: TIntegerField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    IntegerField31: TIntegerField;
    CurrOpIncomeRegIdentDocADODSDOC_CREATE_DATE: TDateField;
    CurrOpIncomeRegIdentDocADODSDOC_BRANCH_NAME: TWideStringField;
    CurrOpIncomeRegIdentDocADODSDOC_NUM: TWideStringField;
    CurrOpIncomeRegIdentDocADODSDOC_SERIE: TWideStringField;
    CurrOpIncomeRegIdentDocADODSDOC_TYPE_NAME: TWideStringField;
    CurrOpIncomeRegIdentDocADODSPOLICY_STATION_NAME: TWideStringField;
    CurrOpIncomeOwnerIdentDocADODS: TADODataSet;
    IntegerField32: TIntegerField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    IntegerField33: TIntegerField;
    DateField7: TDateField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    InsertBlankDocADOQ: TADOQuery;
    InsertBlankAdresADOQ: TADOQuery;
    AdrLinksDS: TDataSource;
    DocLinksDS: TDataSource;
    ServicesADOT: TADODataSet;
    ServiceGroupsADODS: TADODataSet;
    ServiceGroupsDS: TDataSource;
    ServViewADODS: TADODataSet;
    ServViewDS: TDataSource;
    ServicesADOTSERVICE_ID: TIntegerField;
    ServicesADOTSERVICE_NAME: TWideStringField;
    ServicesADOTSERVICE_CODE: TIntegerField;
    ServicesADOTSERVICE_PRICE: TBCDField;
    ServicesADOTITS_GROUP: TSmallintField;
    ServicesADOTSERVICE_PARENT_ID: TIntegerField;
    ServicesADOTPARENT_LOOK: TStringField;
    ServGroupListADODS: TADODataSet;
    ServGroupListDS: TDataSource;
    ServGroupListADODSAEL_AS_ID: TIntegerField;
    ServGroupListADODSACT_REG_ID: TIntegerField;
    ServGroupListADODSELINK_ID: TIntegerField;
    ServGroupListADODSAEL_LINK_TYPE_ID: TIntegerField;
    ServGroupListADODSITS_ADR_ASSOC: TSmallintField;
    ServGroupListADODSITS_DOC_ASSOC: TSmallintField;
    ServGroupListADODSITS_PRS_ASSOC: TSmallintField;
    ServGroupListADODSSERVICE_ID: TIntegerField;
    ServGroupListADODSELINK_LOOK: TStringField;
    ServViewADODSSERVICE_ID: TIntegerField;
    ServViewADODSSERVICE_NAME: TWideStringField;
    ServViewADODSSERVICE_CODE: TIntegerField;
    ServViewADODSITS_GROUP: TSmallintField;
    ServViewADODSSERVICE_PRICE: TBCDField;
    ServViewADODSPARENT_SERVICE_ID: TIntegerField;
    ServViewADODSPARENT_SERVICE_NAME: TWideStringField;
    ServViewADODSPARENT_SERVICE_CODE: TIntegerField;
    ServActItemsDS: TDataSource;
    ServiceActItemsADODS: TADODataSet;
    IntegerField34: TIntegerField;
    IntegerField35: TIntegerField;
    IntegerField36: TIntegerField;
    IntegerField37: TIntegerField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    IntegerField38: TIntegerField;
    ServActLinksADODS: TADODataSet;
    ServActLinksDS: TDataSource;
    ServiceActItemsADODSAEL_TYPE_LOOK: TStringField;
    AddAELAssocWithAELTypeADOSP: TADOStoredProc;
    PersonViewDS: TDataSource;
    PersOperationDSD: TDataSetDelete;
    LinkDocADOTDOC_BRANCHE_CODE: TWideStringField;
    OpAdrLinksADODSADRES_ID: TIntegerField;
    OpDocLinksADODSDOC_ID: TIntegerField;
    PersonOperationsADODSSERVICE_GROUP_ID: TIntegerField;
    PersonOperationsADODSSERV_GROUP_LOOK: TStringField;
    AllianceLinksADODS: TADODataSet;
    AllianceLinksDS: TDataSource;
    PersAllianLinksADODS: TADODataSet;
    PersAllianLinksDS: TDataSource;
    LinkAllianceADOT: TADOTable;
    LinkAllianceDS: TDataSource;
    PersZAGSRecsADODS: TADODataSet;
    IntegerField39: TIntegerField;
    IntegerField40: TIntegerField;
    IntegerField41: TIntegerField;
    IntegerField42: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField43: TIntegerField;
    SmallintField4: TSmallintField;
    IntegerField44: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField45: TIntegerField;
    StringField9: TStringField;
    PersZAGSRecsDS: TDataSource;
    ZAGSServTypesDS: TDataSource;
    ZAGSServTypesADODS: TADODataSet;
    IntegerField46: TIntegerField;
    WideStringField17: TWideStringField;
    IntegerField47: TIntegerField;
    BCDField1: TBCDField;
    SmallintField5: TSmallintField;
    IntegerField48: TIntegerField;
    StringField10: TStringField;
    PersAllianLinksADODSPERS_LOOK: TStringField;
    PersAllianLinksADODSALLIAN_LOOK: TStringField;
    OpOtherDataDS: TDataSource;
    OpOtherDataADODS: TADODataSet;
    IntegerField49: TIntegerField;
    IntegerField50: TIntegerField;
    IntegerField52: TIntegerField;
    StringField12: TStringField;
    IntegerField53: TIntegerField;
    ActOthDataLADOT: TADOTable;
    OpOtherDataADODSSTATIC_DATA: TWideStringField;
    GenerateOpAssocADOSP: TADOStoredProc;
    ServiceReportsADODS: TADODataSet;
    ServiceReportsDS: TDataSource;
    ServiceReportsADODSAEL_AS_ID: TIntegerField;
    ServiceReportsADODSACT_REG_ID: TIntegerField;
    ServiceReportsADODSELINK_ID: TIntegerField;
    ServiceReportsADODSAEL_LINK_TYPE_ID: TIntegerField;
    ServiceReportsADODSITS_ADR_ASSOC: TSmallintField;
    ServiceReportsADODSITS_DOC_ASSOC: TSmallintField;
    ServiceReportsADODSITS_PRS_ASSOC: TSmallintField;
    ServiceReportsADODSSERVICE_ID: TIntegerField;
    ServiceReportsADODSSTATIC_DATA: TWideStringField;
    ServiceReportsADODSSERV_REPORT_LOOK: TStringField;
    CurrOpReportsADODS: TADODataSet;
    IntegerField51: TIntegerField;
    IntegerField54: TIntegerField;
    IntegerField55: TIntegerField;
    IntegerField56: TIntegerField;
    SmallintField6: TSmallintField;
    SmallintField7: TSmallintField;
    SmallintField8: TSmallintField;
    IntegerField57: TIntegerField;
    WideStringField18: TWideStringField;
    StringField11: TStringField;
    CurrOpReportsDS: TDataSource;
    CurrOpReportsADODSREPORT_ID: TIntegerField;
    CurrOpReportsADODSREPORT_NAME: TWideStringField;
    CurrOpReportsADODSREPORT_INT_CODE: TIntegerField;
    CurrOpReportsADODSPREVIEW_COUNTER: TIntegerField;
    CurrOpReportsADODSPRINT_COUNTER: TIntegerField;
    CurrOpReportsADODSDEFAULT_PRINTER: TWideStringField;
    PersonsADODSBIRTH_DISTRICT_ID: TIntegerField;
    PersonsADODSBIRTH_COUNTRY_ID: TIntegerField;
    PersonsADODSSEC_COUNTRY_ID: TIntegerField;
    PersonsADODSBIRTH_COUNTRY_LOOK: TStringField;
    PersonsADODSSEC_COUNTRY_LOOK: TStringField;
    SexDS: TDataSource;
    PersonDSD: TDataSetDelete;
    SetPersonIdentDocADOC: TADOCommand;
    StatesViewADODS: TADODataSet;
    StatesViewDS: TDataSource;
    InsertFastCountryADOQ: TADOQuery;
    InsertFastBirthRegionADOQ: TADOQuery;
    InsertFastPersonBirthRegionADOQ: TADOQuery;
    DistrictsViewDS: TDataSource;
    DistrictsViewADODS: TADODataSet;
    InsertFastPersonCountryADOQ: TADOQuery;
    InsertFastPersonBirthSettlemADOQ: TADOQuery;
    SettlemsViewADODS: TADODataSet;
    SettlemsViewDS: TDataSource;
    InsertFastPersonBirthCountryADOQ: TADOQuery;
    SettlemsViewADODSSETTLEMENT_ID: TIntegerField;
    SettlemsViewADODSSETTLEM_NAME: TWideStringField;
    SettlemsViewADODSITS_CITY: TSmallintField;
    SettlemsViewADODSSETTL_SHORTY_ID: TIntegerField;
    SettlemsViewADODSSETTL_STATE_ID: TIntegerField;
    SettlemsViewADODSSETTL_DISTRICT_ID: TIntegerField;
    SettlemsViewADODSKLADR_CODE: TWideStringField;
    SettlemsViewADODSKLADR_INDEX: TWideStringField;
    SettlemsViewADODSKLADR_SHORTY: TWideStringField;
    SettlemsViewADODSSHORT_LEVEL: TIntegerField;
    SettlemsViewADODSSHORT_TEXT: TWideStringField;
    SettlemsViewADODSSHORT_FULL: TWideStringField;
    SettlemsViewADODSDISTRICT_FULL_NAME: TWideStringField;
    SettlemsViewADODSSETTLEM_WITH_SHORT: TWideStringField;
    SettlemsViewADODSSETTLEM_FULL_NAME: TWideStringField;
    InsertFastAdrCountryADOQ: TADOQuery;
    InsertFastAdrStateADOQ: TADOQuery;
    InsertFastAdrDistrictADOQ: TADOQuery;
    InsertFastAdrSettlemADOQ: TADOQuery;
    StreetsDS: TDataSource;
    StreetsADODS: TADODataSet;
    PersonsADODSTAKE_CONSENT_BOOL: TBooleanField;
    LinkDocADOTCLOSED: TSmallintField;
    LinkDocADOTDOC_STATUS_ID: TIntegerField;
    LinkDocADOTDOC_STATUS_LOOK: TStringField;
    LinkAllianceDSPost: TDataSetPost;
    PersAdrDSPost: TDataSetPost;
    PersDocDSPost: TDataSetPost;
    PersZAGSDSPost: TDataSetPost;
    PersAllianceDSPost: TDataSetPost;
    PersonDSPost: TDataSetPost;
    AddUpdFMSBrancheADOSP: TADOStoredProc;
    LinkKLADRItemsADOSP: TADOStoredProc;
    FMSBranchesADOT: TADODataSet;
    FMSBranchesADOTBRANCHE_ID: TIntegerField;
    FMSBranchesADOTBRANCHE_NAME: TWideStringField;
    FMSBranchesADOTBRANCHE_CODE: TWideStringField;
    FMSBranchesADOTOM_CODE: TWideStringField;
    FMSBranchesADOTPVS_CODE: TWideStringField;
    FMSBranchesADOTBRANCHE_STATE_ID: TIntegerField;
    FMSBranchesADOTBRANCHE_DISTRICT_ID: TIntegerField;
    FMSBranchesADOTBRANCHE_SETTLEM_ID: TIntegerField;
    FMSBranchesADOTBRANCHE_STATE_CODE: TIntegerField;
    FMSBranchesADOTBRANCHE_OKATO_CODE: TWideStringField;
    FMSBranchesADOTBRANCHE_STATUS: TIntegerField;
    InsertFastDocBrancheADOQ: TADOQuery;
    FMSBrancheByIDADODS: TADODataSet;
    SetBrancheNameADOC: TADOCommand;
    SetPersonLocationAdrADOC: TADOCommand;
    PersAllianLinksADODSEL_REG_ID: TIntegerField;
    PersAllianLinksADODSEVENT_DATE: TDateField;
    PersAllianLinksADODSTERMINATE_DATE: TDateField;
    PersAllianLinksADODSPERSON_ID: TIntegerField;
    PersAllianLinksADODSLINK_PERSON_ID: TIntegerField;
    PersAllianLinksADODSELINK_TYPE: TIntegerField;
    PersAllianLinksADODSENTLNK_TYPE_ID: TIntegerField;
    PersAllianLinksADODSESTATUS_ID: TIntegerField;
    PersAllianLinksADODSPERSON_NAME: TWideStringField;
    LinkDocADOTDOC_BRANCHE_LOOK: TStringField;
    LinkAdrADOTCOUNTRY_LOOK: TStringField;
    LinkAdrADOTSTATE_LOOK: TStringField;
    LinkAdrADOTDISTRICT_LOOK: TStringField;
    LinkAdrADOTSETTL_LOOK: TStringField;
    SetPersonBirthSettlemADOC: TADOCommand;
    GenLangCASESADOSP: TADOStoredProc;
    CurrOpIncomeRegIdentDocADODSDOC_BRANCHE_CODE: TWideStringField;
    CurrOpIncomeOwnerIdentDocADODSDOC_BRANCHE_CODE: TWideStringField;
    PersonJobRecsDS: TDataSource;
    PersonJobRecsADODS: TADODataSet;
    IntegerField58: TIntegerField;
    IntegerField59: TIntegerField;
    IntegerField60: TIntegerField;
    IntegerField61: TIntegerField;
    DateTimeField2: TDateTimeField;
    IntegerField62: TIntegerField;
    SmallintField9: TSmallintField;
    IntegerField63: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    IntegerField64: TIntegerField;
    StringField15: TStringField;
    PersonJobRecsADODSACTION_DESCRIPTION: TWideStringField;
    PersonJobRecsADODSACTION_ROLE_NAME: TWideStringField;
    PersonJobRecsADODSCONTRAGENT_ID: TIntegerField;
    PersonJobRecsADODSCLOSED: TSmallintField;
    PersonJobRecsADODSACTION_ADRES_ID: TIntegerField;
    PersonJobsDSPost: TDataSetPost;
    PersonJobRecsADODSINTERVAL_START: TDateField;
    PersonJobRecsADODSINTERVAL_END: TDateField;
    ServGroupsActItemsDS: TDataSource;
    ServGroupsActItemsADODS: TADODataSet;
    IntegerField65: TIntegerField;
    IntegerField66: TIntegerField;
    IntegerField67: TIntegerField;
    IntegerField68: TIntegerField;
    SmallintField10: TSmallintField;
    SmallintField11: TSmallintField;
    SmallintField12: TSmallintField;
    IntegerField69: TIntegerField;
    StringField16: TStringField;
    PacketSubOperationLinkItemsADODS: TADODataSet;
    PacketSubOperationLinkItemsDS: TDataSource;
    PacketSubOperationLinkItemsADODSAEL_AS_ID: TIntegerField;
    PacketSubOperationLinkItemsADODSACT_REG_ID: TIntegerField;
    PacketSubOperationLinkItemsADODSELINK_ID: TIntegerField;
    PacketSubOperationLinkItemsADODSAEL_LINK_TYPE_ID: TIntegerField;
    PacketSubOperationLinkItemsADODSITS_ADR_ASSOC: TSmallintField;
    PacketSubOperationLinkItemsADODSITS_DOC_ASSOC: TSmallintField;
    PacketSubOperationLinkItemsADODSITS_PRS_ASSOC: TSmallintField;
    PacketSubOperationLinkItemsADODSSERVICE_ID: TIntegerField;
    PacketSubOperationLinkItemsADODSSTATIC_DATA: TWideStringField;
    PacketSubOperationLinkItemsADODSCLOSED: TSmallintField;
    PacketSubOperationLinkItemsADODSSUB_OP_LNK_DATA_NAME: TWideStringField;
    PacketOperationsFreeLnkItemsDS: TDataSource;
    PacketOperationsFreeLnkItemsADODS: TADODataSet;
    PacketSubOperationLinkItemsADODSELINK_CODE: TIntegerField;
    PacketSubOperationLinkItemsADODSELINK_TYPE: TIntegerField;
    PacketSubOperationLinkItemsADODSSERVICE_NAME: TWideStringField;
    PacketSubOperationLinkItemsADODSSERVICE_CODE: TIntegerField;
    ServGroupsActItemsADODSSTATIC_DATA: TWideStringField;
    ServGroupsActItemsADODSCLOSED: TSmallintField;
    ServGroupsActItemsADODSELINK_CODE: TIntegerField;
    ServGroupsActItemsADODSELINK_TYPE: TIntegerField;
    PacketOperationsFreeLnkItemsADODSAEL_AS_ID: TIntegerField;
    PacketOperationsFreeLnkItemsADODSACT_REG_ID: TIntegerField;
    PacketOperationsFreeLnkItemsADODSELINK_ID: TIntegerField;
    PacketOperationsFreeLnkItemsADODSAEL_LINK_TYPE_ID: TIntegerField;
    PacketOperationsFreeLnkItemsADODSITS_ADR_ASSOC: TSmallintField;
    PacketOperationsFreeLnkItemsADODSITS_DOC_ASSOC: TSmallintField;
    PacketOperationsFreeLnkItemsADODSITS_PRS_ASSOC: TSmallintField;
    PacketOperationsFreeLnkItemsADODSSERVICE_ID: TIntegerField;
    PacketOperationsFreeLnkItemsADODSSTATIC_DATA: TWideStringField;
    PacketOperationsFreeLnkItemsADODSCLOSED: TSmallintField;
    PacketOperationsFreeLnkItemsADODSELINK_CODE: TIntegerField;
    PacketOperationsFreeLnkItemsADODSELINK_TYPE: TIntegerField;
    PacketOperationsFreeLnkItemsADODSSERVICE_NAME: TWideStringField;
    PacketOperationsFreeLnkItemsADODSSERVICE_CODE: TIntegerField;
    PacketOperationsFreeLnkItemsADODSSUB_OP_LNK_DATA_NAME: TWideStringField;
    PacketOperationsFreeLnkItemsADODSPARENT_SERVICE_ID: TIntegerField;
    LinkToPacketDataADOС: TADOCommand;
    DetachFromPacketDataADOC: TADOCommand;
    PersonOperationsADODSSERVICE_NAME: TWideStringField;
    PersonOperationsADODSITS_GROUP: TSmallintField;
    PersonOperationsADODSTO_PRINT: TSmallintField;
    PersonOperationsADODSTO_PRINT_BOOL: TBooleanField;
    PersonOperationsADODSACTION_GROUP_ID: TIntegerField;
    UserParamsADODS: TADODataSet;
    UserParamsADODSUSER_ID: TIntegerField;
    UserParamsADODSUSER_NAME: TWideStringField;
    UserParamsADODSLOGIN: TWideStringField;
    UserParamsADODSUSER_ROLE_ID: TIntegerField;
    UserParamsADODSENABLE_ADMIN: TSmallintField;
    UserParamsADODSENABLE_DELETE: TSmallintField;
    UserParamsADODSUSER_HAS_CHANGES: TSmallintField;
    UserParamsADODSIS_ACTIVE: TSmallintField;
    DBVersionDS: TDataSource;
    DBVersionADODSIntegerField70: TIntegerField;
    DBVersionADODSWideStringField19: TWideStringField;
    DBVersionADODSWideStringField20: TWideStringField;
    DBVersionADODSIntegerField71: TIntegerField;
    DBVersionADODSIntegerField72: TIntegerField;
    DBVersionADODS: TADODataSet;
    SetDBVersionADOC: TADOCommand;
    RememberPrevDBVersionADOC: TADOCommand;
    InsertPersonADOQ: TADOQuery;
    InsActionTypeDSI: TDataSetInsert;
    DBUpdateADOQ: TADOQuery;
    DBUpdateADOC: TADOCommand;
    LinkCloneAELToPacketADOSP: TADOStoredProc;
    ServGroupActItemsDSP: TDataSetPost;
    AddUpdPersonADOSP: TADOStoredProc;
    GenPotenServGrDatasADOSP: TADOStoredProc;
    AddPersonADOQ: TADOQuery;
    AdrElinksADODS: TADODataSet;
    AdrElinksADODSEL_REG_ID: TIntegerField;
    AdrElinksADODSEVENT_DATE: TDateField;
    AdrElinksADODSTERMINATE_DATE: TDateField;
    AdrElinksADODSENTLNK_TYPE_ID: TIntegerField;
    AdrElinksADODSESTATUS_ID: TIntegerField;
    AdrElinksADODSPERSON_ID: TIntegerField;
    AdrElinksADODSADRES_ID: TIntegerField;
    AdrElinksADODSDOC_ID: TIntegerField;
    AdrElinksADODSLINK_PERSON_ID: TIntegerField;
    AdrElinksADODSCLOSED: TSmallintField;
    DocElinksADODS: TADODataSet;
    IntegerField70: TIntegerField;
    DateField8: TDateField;
    DateField9: TDateField;
    IntegerField71: TIntegerField;
    IntegerField72: TIntegerField;
    IntegerField73: TIntegerField;
    IntegerField74: TIntegerField;
    IntegerField75: TIntegerField;
    IntegerField76: TIntegerField;
    SmallintField13: TSmallintField;
    SetRegionGenCaseADOC: TADOCommand;
    RegionByIDADODS: TADODataSet;
    RegionByIDADODSREGION_ID: TIntegerField;
    RegionByIDADODSREGION_NAME: TWideStringField;
    RegionByIDADODSIS_RCENTER: TSmallintField;
    RegionByIDADODSREGION_INT_CODE: TIntegerField;
    RegionByIDADODSREGION_COUNTRY_ID: TIntegerField;
    RegionByIDADODSREGION_STATE_ID: TIntegerField;
    RegionByIDADODSIS_BTHREGION: TSmallintField;
    RegionByIDADODSKLADR_SHORTY: TWideStringField;
    RegionByIDADODSKLADR_CODE: TWideStringField;
    RegionByIDADODSKLADR_INDEX: TWideStringField;
    RegionByIDADODSKLADR_GNIMB: TWideStringField;
    RegionByIDADODSKLADR_UNO: TWideStringField;
    RegionByIDADODSKLADR_OCATD: TWideStringField;
    RegionByIDADODSKLADR_STATUS: TWideStringField;
    RegionByIDADODSREGION_GENITIVE_CASE: TWideStringField;
    AddUpdActionADOQ: TADOQuery;
    ElinksViewADODS: TADODataSet;
    ElinksViewDS: TDataSource;
    ElinksViewADODSELINK_ID: TIntegerField;
    ElinksViewADODSACT_GROUP_CODE: TIntegerField;
    ElinksViewADODSELINK_CODE: TIntegerField;
    ElinksViewADODSELINK_LEVEL: TSmallintField;
    ElinksViewADODSELINK_NAME: TWideStringField;
    ElinksViewADODSELINK_TYPE: TIntegerField;
    ElinksViewADODSELINK_EXT_NAME: TWideStringField;
    ElinksAssocsADODS: TADODataSet;
    ElinksAssocsDS: TDataSource;
    ElinksAssocsADODSAEL_AS_ID: TIntegerField;
    ElinksAssocsADODSACT_REG_ID: TIntegerField;
    ElinksAssocsADODSELINK_ID: TIntegerField;
    ElinksAssocsADODSAEL_LINK_TYPE_ID: TIntegerField;
    ElinksAssocsADODSITS_ADR_ASSOC: TSmallintField;
    ElinksAssocsADODSITS_DOC_ASSOC: TSmallintField;
    ElinksAssocsADODSITS_PRS_ASSOC: TSmallintField;
    ElinksAssocsADODSSERVICE_ID: TIntegerField;
    ElinksAssocsADODSSTATIC_DATA: TWideStringField;
    ElinksAssocsADODSCLOSED: TSmallintField;
    ElinksAssocsADODSMASTER_LOOK: TStringField;
    ElinksAssocsADODSSLAVE_LOOK: TStringField;
    ElinksAssocDSP: TDataSetPost;
    AdrCountryDefADODS: TADODataSet;
    IntegerField77: TIntegerField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    IntegerField78: TIntegerField;
    IntegerField79: TIntegerField;
    StringField17: TStringField;
    AdrCountryDefDS: TDataSource;
    AdrStateDefADODS: TADODataSet;
    IntegerField80: TIntegerField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    IntegerField81: TIntegerField;
    IntegerField82: TIntegerField;
    StringField18: TStringField;
    AdrStateDefDS: TDataSource;
    AdrDistrictDefDS: TDataSource;
    AdrDistrictDefADODS: TADODataSet;
    IntegerField83: TIntegerField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    IntegerField84: TIntegerField;
    IntegerField85: TIntegerField;
    StringField19: TStringField;
    AdrSettlDefADODS: TADODataSet;
    IntegerField86: TIntegerField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    IntegerField87: TIntegerField;
    IntegerField88: TIntegerField;
    StringField20: TStringField;
    AdrSettlDefDS: TDataSource;
    CivilCountryDefDS: TDataSource;
    CivilCountryDefADODS: TADODataSet;
    IntegerField89: TIntegerField;
    WideStringField27: TWideStringField;
    WideStringField28: TWideStringField;
    IntegerField90: TIntegerField;
    IntegerField91: TIntegerField;
    StringField21: TStringField;
    NationDefDS: TDataSource;
    NationDefADODS: TADODataSet;
    IntegerField92: TIntegerField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    IntegerField93: TIntegerField;
    IntegerField94: TIntegerField;
    StringField22: TStringField;
    RegionDefDS: TDataSource;
    RegionDefADODS: TADODataSet;
    IntegerField95: TIntegerField;
    WideStringField31: TWideStringField;
    WideStringField32: TWideStringField;
    IntegerField96: TIntegerField;
    IntegerField97: TIntegerField;
    StringField23: TStringField;
    InsertBlankSettlADOQ: TADOQuery;
    InsertFastShortADOQ: TADOQuery;
    AdrLinksADOT: TADODataSet;
    DocLinksADOT: TADODataSet;
    AdrLinksADOTELINK_ID: TIntegerField;
    AdrLinksADOTELINK_NAME: TWideStringField;
    AdrLinksADOTELINK_CODE: TIntegerField;
    AdrLinksADOTELINK_LEVEL: TSmallintField;
    AdrLinksADOTELINK_TYPE: TIntegerField;
    AdrLinksADOTACT_GROUP_CODE: TIntegerField;
    AdrLinksADOTORDER_VAL: TSmallintField;
    DocLinksADOTELINK_ID: TIntegerField;
    DocLinksADOTELINK_NAME: TWideStringField;
    DocLinksADOTELINK_CODE: TIntegerField;
    DocLinksADOTELINK_LEVEL: TSmallintField;
    DocLinksADOTELINK_TYPE: TIntegerField;
    DocLinksADOTACT_GROUP_CODE: TIntegerField;
    DocLinksADOTORDER_VAL: TSmallintField;
    DocLinkDefDS: TDataSource;
    DocLinkDefADODS: TADODataSet;
    IntegerField98: TIntegerField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    IntegerField99: TIntegerField;
    IntegerField100: TIntegerField;
    StringField24: TStringField;
    AdrLinkDefADODS: TADODataSet;
    IntegerField101: TIntegerField;
    WideStringField35: TWideStringField;
    WideStringField36: TWideStringField;
    IntegerField102: TIntegerField;
    IntegerField103: TIntegerField;
    StringField25: TStringField;
    AdrLinkDefDS: TDataSource;
    ServiceActItemsADODSSTATIC_DATA: TWideStringField;
    DelOpWithChildADOSP: TADOStoredProc;
    DocTypeDefADODS: TADODataSet;
    IntegerField104: TIntegerField;
    WideStringField37: TWideStringField;
    WideStringField38: TWideStringField;
    IntegerField105: TIntegerField;
    IntegerField106: TIntegerField;
    StringField26: TStringField;
    DocTypeDefDS: TDataSource;
    DocStatusDefDS: TDataSource;
    DocStatusDefADODS: TADODataSet;
    IntegerField107: TIntegerField;
    WideStringField39: TWideStringField;
    WideStringField40: TWideStringField;
    IntegerField108: TIntegerField;
    IntegerField109: TIntegerField;
    StringField27: TStringField;
    PersStatusDefADODS: TADODataSet;
    IntegerField110: TIntegerField;
    WideStringField41: TWideStringField;
    WideStringField42: TWideStringField;
    IntegerField111: TIntegerField;
    IntegerField112: TIntegerField;
    StringField28: TStringField;
    PersStatusDefDS: TDataSource;
    OpPersonsADODSIS_OLD: TSmallintField;
    PersonsADODSIS_OLD: TSmallintField;
    PersonsADODSDEATHDATE: TDateField;
    InsertBlankDistrictADOQ: TADOQuery;
    InsertStateIfNotExistADOQ: TADOQuery;
    SetDistrToSettlADOC: TADOCommand;
    SetPersonBirthStateADOC: TADOCommand;
    SettlemsViewADODSSETTL_NAME_SMALL_SHR: TWideStringField;
    SettlemsViewADODSSETTLEM_SHORT: TWideStringField;
    OpAdrLinksADODSADR_SETTLEM_ID: TIntegerField;
    OpAdrLinksADODSITS_CITY: TSmallintField;
    OpAdrLinksADODSITS_CITY_BOOL: TBooleanField;
    SetITSCityADOC: TADOCommand;
    ServicesADOTSERVICE_TYPE_CODE: TIntegerField;
    ServicesADOTHAS_CUSTOM_FORM: TSmallintField;
    ServicesADOTCUSTOM_SHEET_INDEX: TSmallintField;
    ServicesADOTSECTION_NUM: TIntegerField;
    ServiceGroupsADODSSERVICE_ID: TIntegerField;
    ServiceGroupsADODSSERVICE_NAME: TWideStringField;
    ServiceGroupsADODSSERVICE_CODE: TIntegerField;
    ServiceGroupsADODSSERVICE_PRICE: TBCDField;
    ServiceGroupsADODSITS_GROUP: TSmallintField;
    ServiceGroupsADODSSERVICE_PARENT_ID: TIntegerField;
    ServiceGroupsADODSSERVICE_TYPE_CODE: TIntegerField;
    ServiceGroupsADODSHAS_CUSTOM_FORM: TSmallintField;
    ServiceGroupsADODSCUSTOM_SHEET_INDEX: TSmallintField;
    ServiceGroupsADODSSECTION_NUM: TIntegerField;
    ServViewADODSCUSTOM_SHEET_INDEX: TSmallintField;
    ServViewADODSHAS_CUSTOM_FORM: TSmallintField;
    ServViewADODSSECTION_NUM: TIntegerField;
    PersonOperationsADODSACTION_DESCRIPTION: TWideStringField;
    PersonsADODSPERSON_FATHER_STR: TWideStringField;
    PersonsADODSPERSON_MOTHER_STR: TWideStringField;
    PersonOperationsADODSCIVIL_STATUS: TWideStringField;
    PersonOperationsADODSACTION_LOC_TYPE: TWideStringField;
    PersonsADODSLOCATION_ADRES_ID: TIntegerField;
    ServiceParamsADODS: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);

    procedure ReloadPersonsADODS(personId: Integer=-1);
    procedure ReloadPersonsADODSOnlyFilter;
    procedure ReloadPersonsADODSFilterOFF;
    procedure ReloadDictsADODS;
    procedure ReloadCountriesADOT;
    procedure ReloadStatesADOT;
    procedure ReloadDistrictsADOT;
    procedure ReloadSettlements;
    procedure ReloadDocTypesADOT;
    procedure ReloadOKVD;
    procedure ReloadAReasons;
    procedure ReloadTReasons;
    procedure ReloadBTHRegions;
    procedure ReloadPlaceStatuses;
    procedure ReloadDocStatuses;
    procedure ReloadFMSBranches;
    procedure ReloadSettings;
    function ReloadDBVersionSetting: Integer;
    procedure ReloadSexes;
    procedure ReloadNations;
    procedure ReloadBuildTypes;
    procedure ReloadStreets;

    procedure ReloadElinksAssocs;

    //Услуги, пакеты, подчиненность операциий отчетов
    procedure ReloadServicesADOT;
    procedure ReloadServicesGroupsADOT;
    procedure ReloadServicesGroupList;
    procedure ReloadServiceActionItems;
    procedure ReloadServiceGroupActionItems;
    procedure ReloadPacketSubOperationLinkItems;
    procedure ReloadPacketOperationsFreeLnkItems;
    procedure ReloadServiceActionReports;
    procedure ReloadServicesActionLinks;
    procedure ReloadServicesView;

    //Администрирование, текущий пользователь
    procedure ReloadCurrUserRoles;
    procedure ReloadUsers;
    procedure ReloadRoles;
    procedure ReloadUserRoles;
    procedure ReloadUserActions;

    //Обновление текущих позиций
    procedure ReloadPersonsADODSCurrPos;
    procedure ReloadPersonAllianceLinksCurrent;
    procedure ReloadPersonAdrLinksCurrent;
    procedure ReloadPersonDocLinksCurrent;
    procedure ReloadPersonCurrent;
    procedure ReloadServiceGroupActionItemsCurrent;

    //Обновление наборов подчиненных лицу
    procedure ReloadPersonOperations(GoToEnd: Boolean=False; ALL_OPS: Integer=0; Filtered: Boolean=True; OperationID: Integer=-1);
    procedure ReloadPersonAdrLinks;
    procedure ReloadPersLinksAdreses;
    procedure ReloadPersonDocLinks;
    procedure ReloadPersLinksDocs;

    procedure ReloadZAGSServiceTypes;
    procedure ReloadPersonZAGSRecs;

    procedure ReloadPersonJobRecs;

    procedure ReloadPersonAllianceLinks;
    procedure ReloadLinkAlliance;

    procedure ReloadActionTypes;
    procedure ReloadLinks;

    procedure ReloadAdrLinks;
    procedure ReloadDocLinks;
    procedure ReloadAllianceLinks;

    procedure ReloadReports;
    procedure ReloadReportsOfCurrService;
    procedure ReloadShorted;

    //Типы связей
    //Типы связей элементоф данных с операцией (синие)
    procedure ReloadActAdrLinks;
    procedure ReloadActDocLinks;
    procedure ReloadActPersLinks;
    procedure ReloadActOthDataLinks;

    //Связи с текущей операцией
    procedure ReloadOpAdrLinks;
    procedure ReloadOpDocLinks;
    procedure ReloadOpPersLinks;
    procedure ReloadOpOthDataLinks;

    //Выпадающие списки адресов и документов относительно лиц (варианты)
    procedure ReloadOpPersAdrLinks;
    procedure ReloadOpPersDocLinks;

    //Агрегатные процедуры перегрузки
    procedure ReloadOperationDataSets(OperationID: Integer=-1);
    procedure ReloadAllDataSets;

    //Перезагрузка представлений
    procedure ReloadPersonView;
    procedure ReloadStatesView;
    procedure ReloadDistrictsView;
    procedure ReloadSettlemsView;
    procedure ReloadElinksView;
    //Для отчетов
    procedure ReloadCurrOpPrevResideAdr;
    procedure ReloadCurrOpIncomeRegGround;
    procedure ReloadCurrOpIncomeRegOwnerPers;
    procedure ReloadCurrOpLocationRegAdr;
    procedure ReloadCurrOpIncomeRegIdentDoc;
    procedure ReloadCurrOpIncomeOwnerIdentDoc;

    procedure PrintCurrOpReports(ReportActionType: TReportActionType);
    procedure PrintCurrentOp(ReportActionType: TReportActionType);
    procedure ReverseCurrentActionToPrintStatus;
    procedure ActivityShow;
    function RememberDBVersion: Boolean;
    function SetDBVersion(newDBVersion, oldDBVersion: Integer): Boolean;
    function goUpdate(UpdName: string): Boolean;
    function CheckDBVersion(newDBVersion, oldDBVersion: Integer): Boolean;
    procedure PersonsADODSBeforeInsert(DataSet: TDataSet);
    procedure FMSStorageADOCAfterConnect(Sender: TObject);
    procedure BTHRegionsADOTIS_RCENTERGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    function getConfParamByName(ParamName: string): String;
    function InsertBlankPerson: Integer;
    procedure PersonsADODSEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure PersonsADODSPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure PersonsADODSTAKE_PDATA_CONSENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    function GetCurrentPersonID: Integer;
    function GetUserActivity(USER_ID: Integer): Boolean;
    procedure ApplyCurrentReportAccess(ParentMenuItem: TMenuItem);
    procedure RefreshCurrUserGrants;
    function AddUpdActionQuery(IN_ACTION_ID, IN_USER_ID, IN_ATYPE_ID,
      IN_SERVICE_ID, IN_REPORT_ID, IN_DOC_ID, IN_ATYPE_CODE, IN_SERVICE_CODE,
      IN_REPORT_CODE, IN_PERSON_ID: Variant; IN_USER_LOGIN: Variant;
      IN_ATSTAMP: Variant; IN_SERVICE_GROUP_ID: Variant): Integer;
    function AddUpdAction(IN_ACTION_ID, IN_USER_ID, IN_ATYPE_ID,
      IN_SERVICE_ID, IN_REPORT_ID, IN_DOC_ID, IN_ATYPE_CODE, IN_SERVICE_CODE,
      IN_REPORT_CODE, IN_PERSON_ID: Variant; IN_USER_LOGIN: Variant;
      IN_ATSTAMP: Variant; IN_SERVICE_GROUP_ID: Variant): Integer;
    function InsertActionCurrTimeCurrUser(IN_ATYPE_ID,
      IN_SERVICE_ID, IN_REPORT_ID, IN_DOC_ID, IN_ATYPE_CODE, IN_SERVICE_CODE,
      IN_REPORT_CODE, IN_PERSON_ID, IN_SERVICE_GROUP_ID: Variant): Integer;
    function InsertCurrentPersonZAGSRecord: Integer;
    function InsertCurrentPersonJobRecord: Integer;
    function InsertCurrentPersonBuildingRecord: Integer;
    function InsertCurrentPersonAction: Integer;
    function InsertCurrentPersonActionWithOpType(SERVICE_ID, SERVICE_CODE: Variant; SERVICE_GROUP_ID: Variant): Integer;
    function AddUpdELink(IN_ELINK_ID, IN_PERSON_ID, IN_ELTYPE_ID,
      IN_ELSTATUS_ID, IN_ADRES_ID, IN_DOC_ID, IN_LINK_PERSON_ID: Variant): Integer;
    function InsertPersonLnkOnCurrPerson: Integer;
    function InsertPersonLnkOnPerson(PERSON_ID: Integer): Integer;
    function InsertBlankAdrLinkOnPerson(PERSON_ID: Integer): Integer;
    function InsertBlankDocLinkOnPerson(PERSON_ID: Integer): Integer;
    function InsertBlankAdresQuery: Integer;
    function InsertBlankSettlQuery: Integer;
    function InsertBlankDistrictQuery(DISTRICT_NAME: String=''; STATE_ID: Integer=0): Integer;
    function InsertStateIfNotExistQuery(STATE_NAME: String): Integer;
    function InsertBlankCountryQuery: Integer;
    function InsertFastShortQuery(SHORT_TEXT: string; SHORT_LEVEL: Integer): Integer;
    function InsertBlankDocQuery: Integer;
    function InsertCurrentPersonAdrLink: Integer;
    function InsertCurrentPersonDocLink: Integer;
    procedure WriteUserInput;
    procedure WriteUserOutput;
    function GetServiceCodeByID(SERVICE_ID: Integer):Integer;
    function AddUpdPerson(IN_PERSON_ID, IN_FIRST_NAME, IN_LAST_NAME, IN_SURNAME,
      IN_PERSON_BUILDING_ID, IN_PERSON_COUNTRY_ID, IN_PERSON_NATION_ID,
      IN_PERSON_SEX_ID, IN_BIRTHDATE, IN_REG_PSTATION_ID, IN_BIRTH_REGION_ID,
      IN_BIRTH_SETTLEM_ID, IN_BIRTHPLACE, IN_PERS_PLSTATUS_ID, IN_PERSON_INN,
      IN_PERSON_BIRTH_DISTRICT_ID, IN_PERSON_BIRTH_COUNTRY_ID,
      IN_PERSON_SEC_COUNTRY_ID: Variant): Integer;
    function AddPersonBaseParamsOnCurrFilter(IN_FIRST_NAME, IN_LAST_NAME,
      IN_SURNAME: String): Integer;
    function AddPersonOnBaseParams(IN_FIRST_NAME, IN_LAST_NAME,
      IN_SURNAME: String; IN_PERSON_SEX_ID, IN_PERSON_COUNTRY_ID,
      IN_PERSON_NATION_ID, IN_PERSON_BIRTH_COUNTRY_ID, IN_PERSON_BIRTH_REGION_ID,
      IN_BIRTH_SETTLEM_ID: Integer):Integer;
    function AddUpdPersonQuery(IN_PERSON_ID, IN_FIRST_NAME, IN_LAST_NAME, IN_SURNAME,
      IN_PERSON_BUILDING_ID, IN_PERSON_COUNTRY_ID, IN_PERSON_NATION_ID,
      IN_PERSON_SEX_ID, IN_BIRTHDATE, IN_REG_PSTATION_ID, IN_BIRTH_REGION_ID,
      IN_BIRTH_SETTLEM_ID, IN_BIRTHPLACE, IN_PERS_PLSTATUS_ID, IN_PERSON_INN,
      IN_PERSON_BIRTH_DISTRICT_ID, IN_PERSON_BIRTH_COUNTRY_ID,
      IN_PERSON_SEC_COUNTRY_ID: Variant): Integer;
    function insertBlankElinkAssoc(MASTER_ELINK_ID: Integer=-1; SLAVE_ELINK_ID: Integer=-1): Integer;
    function AddUpdAELAssociation(IN_AEL_AS_ID, IN_ACT_REG_ID, IN_ELINK_ID,
      IN_AEL_TYPE_ID, TYPE_STR, IN_ELINK_CODE, IN_SERVICE_ID: Variant): Integer;
    function InsertCurrentServiceItemWithAELType(IN_AEL_TYPE_NAME,
      IN_AEL_TYPE_CODE, IN_AEL_LINK_TYPE: Variant): Integer;
    function InsertCurrentServiceGroupItemWithAELType(IN_AEL_TYPE_NAME,
      IN_AEL_TYPE_CODE, IN_AEL_LINK_TYPE: Variant): Integer;
    function InsertNewServiceItemWithAELType(IN_SERVICE_ID, IN_AEL_TYPE_NAME,
      IN_AEL_TYPE_CODE, IN_AEL_LINK_TYPE: Variant): Integer;
    function AddAELAssocWithAELType(IN_ACT_REG_ID, IN_ELINK_ID, IN_AEL_TYPE_ID,
      IN_SERVICE_ID, IN_AEL_TYPE_NAME, IN_AEL_TYPE_CODE, IN_AEL_LINK_TYPE: Variant): Integer;
    function InsertCurrentOpAssocByLinkCode(IN_ELINK_CODE: Integer): Integer;
    function InsertOpAssocByCode(IN_ACT_REG_ID, IN_ELINK_CODE: Variant): Integer;
    function InsertServReportAssoc(IN_SERV_ID: Variant): Integer;
    function InsertServGroupAssoc(IN_SERV_GROUP_ID: Variant): Integer;
    function InsertServGroupAssocWithAELType(IN_SERV_GROUP_ID, IN_AEL_TYPE: Variant): Integer;
    function InsertCurrentServGroupListItem: Integer;
    function InsertCurrentServGroupListItemNULLAELType: Integer;
    function InsertCurrentServiceReport: Integer;
    function InsertCurrentServiceItem: Integer;
    function MakeCurrentServiceAsGroup: Boolean;
    function InsertBlankActionService: Boolean;
    function InsertOpAssocByCodeWithObjectID(IN_ACT_REG_ID,
      IN_ELINK_CODE, IN_OBJECT_ID: Variant): Integer;
    function InsertCurrentOpAssocByLinkCodeWithObjectID(IN_ELINK_CODE,
      IN_OBJECT_ID: Integer): Integer;
    function InsertCurrentOpFoundationPerson: Integer;
    function LinkCurrFreeOpDataItemToCurrentPacketDataItem: Boolean;
    function DetachFromCurrentPacketDataItem: Boolean;
    function GenerateOperationAssocs(IN_OPERATION_ID: Variant): Boolean;
    function ClearOperationAssocs(IN_OPERATION_ID: Variant): Boolean;
    function DeleteOperationWithChilds(IN_OPERATION_ID: Variant): Boolean;
    procedure PersonOperationsADODSAfterPost(DataSet: TDataSet);
    procedure FMSStorageADOCBeforeDisconnect(Sender: TObject);
    function InsertReportPreviewAction(IN_REPORT_CODE: Variant): Integer;
    function InsertReportPrintAction(IN_REPORT_CODE: Variant): Integer;
    procedure FMSStorageADOCAfterDisconnect(Sender: TObject);
    procedure SettlementsADOTITS_CITYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    function InsertFastAdrSettlemQuery(IN_ADRES_ID: Integer; SETTLEM_NAME: String; IN_ITS_CITY: Integer): Integer;
    function InsertFastAdrDistrictQuery(IN_ADRES_ID: Integer; DISTRICT_NAME: String): Integer;
    function InsertFastAdrStateQuery(IN_ADRES_ID: Integer; STATE_NAME: String): Integer;
    function InsertFastAdrCountryQuery(IN_ADRES_ID: Integer; COUNTRY_NAME: String): Integer;
    function InsertFastCountryQuery(COUNTRY_NAME: String): Integer;
    function InsertFastDocBrancheQuery(IN_DOC_ID: Integer; IN_BRANCHE_CODE: String; IN_BRANCHE_NAME: String='НЕТ ИМЕНИ ПОДРАЗДЕЛЕНИЯ'): Integer;
    function InsertFastPersonBirthCountryQuery(IN_PERSON_ID: Integer; COUNTRY_NAME: String): Integer;
    function InsertFastPersonCountryQuery(IN_PERSON_ID: Integer; COUNTRY_NAME: String): Integer;
    function InsertFastBirthRegionQuery(BIRTH_REGION_NAME: String): Integer;
    function InsertFastPersonBirthRegionQuery(IN_PERSON_ID: Integer; BIRTH_REGION_NAME: String; IN_IS_RCENTER: Integer): Integer;
    function InsertFastPersonBirthSettlemQuery(IN_PERSON_ID: Integer; IN_SETTLEMENT_NAME: String; IN_ITS_CITY: Integer): Integer;
    function InsertBlankPersonQuery: Integer;
    function SetPersonLocationAdres( LOCATION_ADRES_ID, PERSON_ID: Variant): Boolean;
    function SetPersonIdentDoc( IDENT_DOC_ID, PERSON_ID: Variant): Boolean;
    function SetPersonBirthSettlement( BIRTH_SETTLEM_ID, PERSON_ID: Variant): Boolean;
    function SetOperationObjAssoc( AEL_AS_ID, OBJECT_ID: Integer): Boolean;
    function LinkToPacketDataItem( AEL_AS_ID, OBJECT_ID: Integer): Boolean;
    function DetachFromPacketDataItem( AEL_AS_ID: Integer): Boolean;
    function SetSettlDistrict(DISTRICT_ID, SETTLEMENT_ID: Integer): Boolean;
    function SetPersBirthState(PERSON_ID, STATE_ID: Integer): Boolean;
    function SetItsCityState(SETTLEMENT_ID, ITS_CITY: Integer): Boolean;
    function SetCurrentOpDoc(DOC_ID: Integer): Boolean;
    function getPersAdrELink(PERSON_ID, ADRES_ID: Integer): Integer;
    function getPersDocELink(PERSON_ID, DOC_ID: Integer): Integer;
    function SetCurrentOpAdres(ADRES_ID: Integer): Boolean;
    function SetCurrentOpPerson(PERSON_ID: Integer): Boolean;
    function LinkImportKLADRItems: Boolean;
    function GenLangCASES: Boolean;
    procedure InvertCurrentAdrCityStatus;
    procedure OpPersonsADODSAfterPost(DataSet: TDataSet);
    procedure OpAdrLinksADODSBeforeInsert(DataSet: TDataSet);
    procedure OpDocLinksADODSBeforeInsert(DataSet: TDataSet);
    procedure OpPersonsADODSBeforeInsert(DataSet: TDataSet);
    procedure PersonOperationsADODSBeforeInsert(DataSet: TDataSet);
    procedure ServiceActItemsADODSBeforeInsert(DataSet: TDataSet);
    procedure PersonsADODSCalcFields(DataSet: TDataSet);
    procedure LinkAllianceADOTAfterPost(DataSet: TDataSet);
    procedure PersonsADODSFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    function GetBrancheNameById(BRANCHE_ID: Integer): String;
    function SetBrancheNameById(BRANCHE_ID: Integer; BRANCHE_NAME: String): Boolean;
    function GetServiceCustomParam(SERVICE_ID: Integer): Boolean;
    function GetServiceCustomSheetNum(SERVICE_ID: Integer): Integer;
    procedure LinkDocADOTAfterPost(DataSet: TDataSet);
    procedure LinkAdrADOTAfterPost(DataSet: TDataSet);
    procedure PersonOperationsADODSMoveComplete(DataSet: TCustomADODataSet;
      const Reason: TEventReason; const Error: Error;
      var EventStatus: TEventStatus);
    procedure PersonOperationsADODSWillMove(DataSet: TCustomADODataSet;
      const Reason: TEventReason; var EventStatus: TEventStatus);
    procedure PersonOperationsADODSAfterScroll(DataSet: TDataSet);
    procedure OpPersonsADODSAfterEdit(DataSet: TDataSet);
    procedure PersonOperationsADODSFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure PersonOperationsADODSCalcFields(DataSet: TDataSet);
    procedure ServiceGroupsADODSBeforeInsert(DataSet: TDataSet);
    procedure ServicesADOTBeforeInsert(DataSet: TDataSet);
    procedure ServGroupListADODSBeforeInsert(DataSet: TDataSet);
    procedure ServActLinksADODSBeforeInsert(DataSet: TDataSet);
    procedure PacketSubOperationLinkItemsADODSBeforeInsert(DataSet: TDataSet);
    procedure PacketOperationsFreeLnkItemsADODSBeforeInsert(DataSet: TDataSet);
    procedure ServGroupsActItemsADODSBeforeEdit(DataSet: TDataSet);
    procedure ServGroupsActItemsADODSAfterPost(DataSet: TDataSet);
    procedure checkRegionGenitiveCase(REGION_ID: Integer);
    function getRegionGenitiveCase(REGION_ID: Integer): String;
    function getRegionName(REGION_ID: Integer): String;
    function setRegionGenitiveCase(REGION_ID: Integer; GENITIVE_CASE: String): Boolean;
    procedure OpOtherDataADODSAfterEdit(DataSet: TDataSet);
    procedure OpAdrLinksADODSCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataConnection: TDataConnection;
  CDP: Widestring;
  FMSINIFile: TIniFile;
  ProgramInsertFlag: Boolean=False;
  CurrentPersonID: Integer;
  CurrentUserRoles: TUserRoles;
  OpCharsCount: Integer=0;
  GroupDataChanged: Boolean=False;

const
  USER_ENTER_ACTION_TYPE: Integer=1;
  USER_EXIT_ACTION_TYPE: Integer=2;
  WORK_OPERATION_ACTION_TYPE: Integer=3;
  REPORT_PREVIEW_ACTION_TYPE=4;
  REPORT_PRINT_ACTION_TYPE=5;
  ZAGS_RECORD_ACTION_TYPE: Integer=6;
  JOB_RECORD_ACTION_TYPE: Integer=7;
  BUILDINGS_RECORD_ACTION_TYPE: Integer=8;

  LOCATION_REG_STATEMENT_SERVICE_CODE=10;
  RESIDING_REG_STATEMENT_SERVICE_CODE=55;
  RESIDING_REG_WITH_FREE_STATEMENT_SERVICE_CODE=54;

  INCOMED_DOC_IDENTITY_OP_LINK_CODE=1;
  DOC_TEMP_REGISTRY_GROUND_OP_LINK_CODE=2;
  ADR_PREV_RESIDING_OP_LINK_CODE=3;
  PERS_OWNER_OP_LINK_CODE=4;
  FOUNDATION_PERS_OP_LINK_CODE=5;
  ADR_LOCATION_NAME_OP_LINK_CODE=6;
  OWNER_DOC_IDENTITY_OP_LINK_CODE=7;

  SERV_GROUP_ITEM_ELINK_CODE=15;
  SERVICE_REPORT_ELINK_CODE=16;

  CLIENT_DB_VERSION: Integer=1;

implementation

uses FMSMain, ConstantsUnit, PersonDesktopUnit, spUtilsUnit, EnterStringFormUnit;

{$R *.dfm}

function StringToWordsBad(T: string; Mode: Cardinal; List: Tstrings = nil): integer;
var
  i, z: integer;
  s: string;
  c: Char;

  procedure Check;
  begin
    if (s > '') and (List <> nil) then
    begin
      List.Add(S);
      z := z + 1;
    end;
    s := '';
  end;

begin
  i := 0;
  z := 0;
  s := '';
  if t > '' then
  begin
    while i <= Length(t) + 1 do
    begin
      c := t[i];
      case Mode of
        0: {русские и английские слова}
          if (c in ['a'..'z']) or (c in ['A'..'Z']) or (c in ['а'..'я']) or
            (c in ['А'..'Я']) and (c <> ' ') then
            s := s + c
          else
            Check;
        1: {только русские слова}
          if (c in ['а'..'я']) or (c in ['А'..'Я']) and (c <> ' ') then
            s := s + c
          else
            Check;
        2: {только английские слова}
          if (c in ['a'..'z']) or (c in ['A'..'Z']) and (c <> ' ') then
            s := s + c
          else
            check;
      end;
      i := i + 1;
    end;
  end;
  result := z;
end;

procedure TDataConnection.checkRegionGenitiveCase(REGION_ID: Integer);
var regName: string;
begin
  if getRegionGenitiveCase(REGION_ID)='' then
  begin
    regName:=getRegionName(REGION_ID);
    if regName<>'' then
    if MessageDlg('Установить родительский падеж для региона '''+regName+'''?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          setRegionGenitiveCase(REGION_ID,
            EnterStringForm.EnterStringFormModal('Введите родительский падеж для региона',regName));
        end;
  end;
end;

function TDataConnection.getRegionGenitiveCase(REGION_ID: Integer): String;
var res: string;
begin
  res:='';
  try
    RegionByIDADODS.Active:=False;
    RegionByIDADODS.Parameters.ParamByName('REGION_ID').Value:=
      REGION_ID;
    RegionByIDADODS.Active:=True;
    if RegionByIDADODS.Active then
      if RegionByIDADODS.RecordCount>0 then
         begin
           if RegionByIDADODS.FieldByName('REGION_GENITIVE_CASE').Value<>NULL then
             res:=RegionByIDADODS.FieldByName('REGION_GENITIVE_CASE').AsString;
         end;
  except on E:Exception do
    ShowMessage('Ошибка проверки наличия родительского падежа региона! Сообщение: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.getRegionName(REGION_ID: Integer): String;
var res: string;
begin
  res:='';
  try
    RegionByIDADODS.Active:=False;
    RegionByIDADODS.Parameters.ParamByName('REGION_ID').Value:=
      REGION_ID;
    RegionByIDADODS.Active:=True;
    if RegionByIDADODS.Active then
      if RegionByIDADODS.RecordCount>0 then
         begin
           if RegionByIDADODS.FieldByName('REGION_NAME').Value<>NULL then
             res:=RegionByIDADODS.FieldByName('REGION_NAME').AsString;
         end;
  except on E:Exception do
    ShowMessage('Ошибка проверки наличия имени региона! Сообщение: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.setRegionGenitiveCase(REGION_ID: Integer; GENITIVE_CASE: String): Boolean;
var res: Boolean;
begin
  res:=False;
  try
    SetRegionGenCaseADOC.Parameters.ParamByName('REGION_ID').Value:=
      REGION_ID;
    SetRegionGenCaseADOC.Parameters.ParamByName('GENITIVE_CASE').Value:=
      GENITIVE_CASE;
    SetRegionGenCaseADOC.Execute;
    res:=True;
  except on E:Exception do
    ShowMessage('Ошибка установки родительского падежа региона! Сообщение: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.GetBrancheNameById(BRANCHE_ID: Integer): String;
var res: string;
begin
  res:='';
  try
    FMSBrancheByIDADODS.Active:=False;
    FMSBrancheByIDADODS.Parameters.ParamByName('BRANCHE_ID').Value:=
      BRANCHE_ID;
    FMSBrancheByIDADODS.Active:=True;
    if FMSBrancheByIDADODS.Active then
      if FMSBrancheByIDADODS.RecordCount>0 then
        res:=FMSBrancheByIDADODS.FieldByName('BRANCHE_NAME').AsString;
  except on E:Exception do
    ShowMessage('Ошибка получения имени подразделения по ключу!'+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.SetBrancheNameById(BRANCHE_ID: Integer; BRANCHE_NAME: String): Boolean;
var res: Boolean;
begin
  res:=False;
  try
    SetBrancheNameADOC.Parameters.ParamByName('BRANCHE_ID').
      Value:=BRANCHE_ID;
    SetBrancheNameADOC.Parameters.ParamByName('BRANCHE_NAME').
      Value:=BRANCHE_NAME;
    SetBrancheNameADOC.Execute;
    res:=True;
  except on E:Exception do
    ShowMessage('Ошибка установки имени подразделения по ключю!'+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.GetServiceCustomParam(SERVICE_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
    ServiceParamsADODS.Active:=False;
    ServiceParamsADODS.Parameters.ParamByName('SERVICE_ID').Value:=
      SERVICE_ID;
    ServiceParamsADODS.Active:=True;
    if ServiceParamsADODS.Active then
      if ServiceParamsADODS.RecordCount>0 then
      begin
        if ServiceParamsADODS.FieldByName('HAS_CUSTOM_FORM').AsInteger<>0 then
           res:= True
        else
          res:=False;
      end;
  except on E:Exception do
    ShowMessage('Ошибка получения признака кастомности типа операции по ключу!'+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.GetServiceCustomSheetNum(SERVICE_ID: Integer): Integer;
var res: Integer;
begin
  res:=-1;
  try
    ServiceParamsADODS.Active:=False;
    ServiceParamsADODS.Parameters.ParamByName('SERVICE_ID').Value:=
      SERVICE_ID;
    ServiceParamsADODS.Active:=True;
    if ServiceParamsADODS.Active then
      if ServiceParamsADODS.RecordCount>0 then
      begin
        res:=ServiceParamsADODS.FieldByName('CUSTOM_SHEET_INDEX').
          AsInteger;
      end;
  except on E:Exception do
    ShowMessage('Ошибка получения номера формы кастомного типа операции по ключу!'+E.Message);
  end;
  Result:=res;
end;

procedure TDataConnection.ServActLinksADODSBeforeInsert(DataSet: TDataSet);
begin
  if not ProgramInsertFlag then Abort;
end;

procedure TDataConnection.ServGroupListADODSBeforeInsert(DataSet: TDataSet);
begin
  if not ProgramInsertFlag then Abort;
end;

procedure TDataConnection.ServGroupsActItemsADODSAfterPost(DataSet: TDataSet);
begin
  //ShowMessage('dddd');
  ReloadServiceGroupActionItems;
  DataConnection.ReloadPacketSubOperationLinkItems;
  DataConnection.ReloadPacketOperationsFreeLnkItems;
end;

procedure TDataConnection.ServGroupsActItemsADODSBeforeEdit(DataSet: TDataSet);
begin
  if ServGroupsActItemsADODS.RecordCount=0 then Abort;
end;

procedure TDataConnection.ServiceActItemsADODSBeforeInsert(DataSet: TDataSet);
begin
  if not ProgramInsertFlag then Abort;
end;

procedure TDataConnection.ServiceGroupsADODSBeforeInsert(DataSet: TDataSet);
begin
  if not ProgramInsertFlag then Abort;
end;

procedure TDataConnection.ServicesADOTBeforeInsert(DataSet: TDataSet);
begin
  if not ProgramInsertFlag then Abort;
end;

function TDataConnection.SetCurrentOpDoc(DOC_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  if OpDocLinksADODS.Active then
  begin
    if OpDocLinksADODS.RecordCount>0 then
    begin
      res:=SetOperationObjAssoc(OpDocLinksADODS.
        FieldByName('AEL_AS_ID').AsInteger, DOC_ID);
    end
    else
      ShowMessage('Не выделено записи связи с документом!');
  end
  else
    ShowMessage('Неактивный набор данных!');
  Result:=res;
end;

function TDataConnection.getPersAdrELink(PERSON_ID, ADRES_ID: Integer): Integer;
var res: Integer;
begin
  res:=-1;
  try
    AdrElinksADODS.Active:=False;
    AdrElinksADODS.Parameters.ParamByName('PERSON_ID').Value:=PERSON_ID;
    AdrElinksADODS.Parameters.ParamByName('ADRES_ID').Value:=ADRES_ID;
    AdrElinksADODS.Active:=True;
    if AdrElinksADODS.Active then
      if AdrElinksADODS.RecordCount>0 then
      begin
         AdrElinksADODS.First;
         res:=AdrElinksADODS.FieldByName('EL_REG_ID').AsInteger;
      end;
  except on E:Exception do
    ShowMessage('Ошибка получения ИД связи лица с адресом! Сообщение: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.getPersDocELink(PERSON_ID, DOC_ID: Integer): Integer;
var res: Integer;
begin
  res:=-1;
  try
    DocElinksADODS.Active:=False;
    DocElinksADODS.Parameters.ParamByName('PERSON_ID').Value:=PERSON_ID;
    DocElinksADODS.Parameters.ParamByName('DOC_ID').Value:=DOC_ID;
    DocElinksADODS.Active:=True;
    if DocElinksADODS.Active then
      if DocElinksADODS.RecordCount>0 then
      begin
         DocElinksADODS.First;
         res:=DocElinksADODS.FieldByName('EL_REG_ID').AsInteger;
      end;
  except on E:Exception do
    ShowMessage('Ошибка получения ИД связи лица с документом! Сообщение: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.SetCurrentOpAdres(ADRES_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  if OpAdrLinksADODS.Active then
  begin
    if OpAdrLinksADODS.RecordCount>0 then
    begin
      res:=SetOperationObjAssoc(OpAdrLinksADODS.
        FieldByName('AEL_AS_ID').AsInteger, ADRES_ID);
    end
    else
      ShowMessage('Не выделено записи связи с адресом!');
  end
  else
    ShowMessage('Неактивный набор данных!');
  Result:=res;
end;

function TDataConnection.SetCurrentOpPerson(PERSON_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  if OpPersonsADODS.Active then
  begin
    if OpPersonsADODS.RecordCount>0 then
    begin
      res:=SetOperationObjAssoc(OpPersonsADODS.
        FieldByName('AEL_AS_ID').AsInteger, PERSON_ID);
    end
    else
      ShowMessage('Не выделено записи связи с лицом!');
  end
  else
    ShowMessage('Неактивный набор данных!');
  Result:=res;
end;

function TDataConnection.SetPersonLocationAdres( LOCATION_ADRES_ID, PERSON_ID: Variant): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     SetPersonLocationAdrADOC.Parameters.ParamByName('LOCATION_ADRES_ID').Value:=LOCATION_ADRES_ID;
     SetPersonLocationAdrADOC.Parameters.ParamByName('PERSON_ID').Value:=PERSON_ID;
     SetPersonLocationAdrADOC.Execute;
     res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов команды установки адреса '+
        'местонахождения лица! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.SetPersonIdentDoc( IDENT_DOC_ID, PERSON_ID: Variant): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     SetPersonIdentDocADOC.Parameters.ParamByName('IDENT_DOC_ID').Value:=IDENT_DOC_ID;
     SetPersonIdentDocADOC.Parameters.ParamByName('PERSON_ID').Value:=PERSON_ID;
     SetPersonIdentDocADOC.Execute;
     res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов команды установки документа '+
        'идентификации лица! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.SetPersonBirthSettlement( BIRTH_SETTLEM_ID, PERSON_ID: Variant): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     SetPersonBirthSettlemADOC.Parameters.ParamByName('BIRTH_SETTLEM_ID').Value:=BIRTH_SETTLEM_ID;
     SetPersonBirthSettlemADOC.Parameters.ParamByName('PERSON_ID').Value:=PERSON_ID;
     SetPersonBirthSettlemADOC.Execute;
     res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов команды установки нас. пункта '+
        'рождения лица! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.SetOperationObjAssoc( AEL_AS_ID, OBJECT_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     SetOpObjAssocADOC.Parameters.ParamByName('AEL_AS_ID').Value:=AEL_AS_ID;
     SetOpObjAssocADOC.Parameters.ParamByName('OBJECT_ID').Value:=OBJECT_ID;
     SetOpObjAssocADOC.Execute;
     res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов команды установки ассоциации '+
        'операции с объектом! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.LinkToPacketDataItem( AEL_AS_ID, OBJECT_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     LinkCloneAELToPacketADOSP.Parameters.ParamByName('IN_AEL_AS_ID').Value:=AEL_AS_ID;
     LinkCloneAELToPacketADOSP.Parameters.ParamByName('IN_ELINK_ID').Value:=OBJECT_ID;
     LinkCloneAELToPacketADOSP.ExecProc;
     res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов процедуры установки привязки '+
        'к элементу данных пакета операций! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.DetachFromPacketDataItem( AEL_AS_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     DetachFromPacketDataADOC.Parameters.ParamByName('AEL_AS_ID').Value:=AEL_AS_ID;
     //DetachFromPacketDataADOC.Parameters.ParamByName('ELINK_ID').Value:=OBJECT_ID;
     DetachFromPacketDataADOC.Execute;
     res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов команды удаления привязки '+
        'к элементу данных пакета операций! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.SetSettlDistrict(DISTRICT_ID, SETTLEMENT_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     SetDistrToSettlADOC.Parameters.ParamByName('DISTRICT_ID').Value:=DISTRICT_ID;
     SetDistrToSettlADOC.Parameters.ParamByName('SETTLEMENT_ID').Value:=SETTLEMENT_ID;
     SetDistrToSettlADOC.Execute;
     res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов команды SetDistrToSettlADOC! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.SetPersBirthState(PERSON_ID, STATE_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     SetPersonBirthStateADOC.Parameters.ParamByName('PERSON_ID').Value:=PERSON_ID;
     SetPersonBirthStateADOC.Parameters.ParamByName('STATE_ID').Value:=STATE_ID;
     SetPersonBirthStateADOC.Execute;
     res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов команды SetPersonBirthStateADOC! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.SetItsCityState(SETTLEMENT_ID, ITS_CITY: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     SetITSCityADOC.Parameters.ParamByName('SETTLEMENT_ID').Value:=SETTLEMENT_ID;
     SetITSCityADOC.Parameters.ParamByName('ITS_CITY').Value:=ITS_CITY;
     SetITSCityADOC.Execute;
     res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов команды SetITSCityADOC! Описание: '+E.Message);
  end;
  Result:=res;
end;

procedure TDataConnection.InvertCurrentAdrCityStatus;
var itsCity: Integer;
begin
  if OpAdrLinksADODS.RecordCount>0 then
  begin
    if OpAdrLinksADODS.FindField('ITS_CITY').AsInteger=1 then
       itsCity:=0
    else
       itsCity:=1;
    SetItsCityState( OpAdrLinksADODS.FindField('ADR_SETTLEM_ID').AsInteger, itsCity);
    ReloadOpAdrLinks;
  end
  else
    Showmessage('Не выделено ни одного адреса!');
end;

function TDataConnection.LinkImportKLADRItems: Boolean;
var res: Boolean;
begin
  res:=False;
  try
    LinkKLADRItemsADOSP.ExecProc;
    res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов хранимой процедуры связки'+
      ' импортированных записей КЛАДР! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.GenLangCASES: Boolean;
var res: Boolean;
begin
  res:=False;
  try
    GenLangCASESADOSP.ExecProc;
    res:=True;
    ShowMessage('Выполнено склонение существительных!');
  except on E:Exception do
    ShowMessage('Неудачный вызов хранимой процедуры генерации'+
      ' падежных склонений! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.GenerateOperationAssocs(IN_OPERATION_ID: Variant): Boolean;
var res: Boolean;
begin
  res:=False;
  try
    GenerateOpAssocADOSP.Parameters.ParamByName('IN_ACT_REG_ID').
      Value:=IN_OPERATION_ID;
    GenerateOpAssocADOSP.ExecProc;
    res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов хранимой процедуры генерации записей '+
      'связей операции с объектами по умолчанию! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.ClearOperationAssocs(IN_OPERATION_ID: Variant): Boolean;
var res: Boolean;
begin
  res:=False;
  try
    ClearOpAssocADOSP.Parameters.ParamByName('IN_OPERATION_ID').Value:=IN_OPERATION_ID;
    ClearOpAssocADOSP.ExecProc;
    res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов хранимой процедуры очистки записей '+
      'связей операции с объектами! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.DeleteOperationWithChilds(IN_OPERATION_ID: Variant): Boolean;
var res: Boolean;
begin
  res:=False;
  try
    DelOpWithChildADOSP.Parameters.ParamByName('IN_ACTION_ID').Value:=IN_OPERATION_ID;
    DelOpWithChildADOSP.ExecProc;
    res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов хранимой процедуры удаления '+
      'операции с подчиненными! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertCurrentOpAssocByLinkCode(IN_ELINK_CODE: Integer): Integer;
begin
  if PersonOperationsADODS.RecordCount>0 then
  begin
    Result:=InsertOpAssocByCode(PersonOperationsADODS.FieldByName('ACTIONS_ID').
        AsInteger, IN_ELINK_CODE);
  end
  else
    begin
      ShowMessage('Не выделено операции лица!');
      Result:=-1;
    end;
end;

function TDataConnection.InsertCurrentOpFoundationPerson: Integer;
begin
  if PersonOperationsADODS.RecordCount>0 then
  begin
    Result:=InsertOpAssocByCodeWithObjectID(PersonOperationsADODS.FieldByName('ACTIONS_ID').
        AsInteger, FOUNDATION_PERS_OP_LINK_CODE, PersonOperationsADODS.FieldByName('PERSON_ID').
        AsInteger);
  end
  else
    begin
      ShowMessage('Не выделено операции лица!');
      Result:=-1;
    end;
end;

function TDataConnection.LinkCurrFreeOpDataItemToCurrentPacketDataItem: Boolean;
var res: Boolean;
begin
  res:=False;

  if ServGroupsActItemsADODS.Active then
  if ServGroupsActItemsADODS.RecordCount>0 then
  begin
    if PacketOperationsFreeLnkItemsADODS.Active then
    if PacketOperationsFreeLnkItemsADODS.RecordCount>0 then
    begin
      res:=DataConnection.LinkToPacketDataItem(
        PacketOperationsFreeLnkItemsADODS.FieldByName('AEL_AS_ID').AsInteger,
        ServGroupsActItemsADODS.FieldByName('AEL_AS_ID').AsInteger);
      ReloadPacketSubOperationLinkItems;
      ReloadPacketOperationsFreeLnkItems;
    end
    else
      ShowMessage('Нет записи элемента операции для привязки!');
  end
  else
    ShowMessage('Нет записи элемента пакета!');

  Result:=res;
end;

function TDataConnection.DetachFromCurrentPacketDataItem: Boolean;
var res: Boolean;
begin
  res:=False;
  if PacketSubOperationLinkItemsADODS.Active then
    if PacketSubOperationLinkItemsADODS.RecordCount>0 then
    begin
      res:=DataConnection.DetachFromPacketDataItem(
        PacketSubOperationLinkItemsADODS.FieldByName('AEL_AS_ID').AsInteger);
      ReloadPacketSubOperationLinkItems;
      ReloadPacketOperationsFreeLnkItems;
    end
    else
      ShowMessage('Нет записи привязанного элемента операции!');
  Result:=res;
end;

function TDataConnection.InsertCurrentOpAssocByLinkCodeWithObjectID(IN_ELINK_CODE, IN_OBJECT_ID: Integer): Integer;
begin
  if PersonOperationsADODS.RecordCount>0 then
  begin
    Result:=InsertOpAssocByCodeWithObjectID(PersonOperationsADODS.FieldByName('ACTIONS_ID').
        AsInteger, IN_ELINK_CODE, IN_OBJECT_ID);
  end
  else
    begin
      ShowMessage('Не выделено операции лица!');
      Result:=-1;
    end;
end;

function TDataConnection.InsertOpAssocByCode(IN_ACT_REG_ID,
    IN_ELINK_CODE: Variant): Integer;
begin
  Result:=AddUpdAELAssociation(NULL, IN_ACT_REG_ID, NULL, NULL,
    NULL, IN_ELINK_CODE, NULL);
end;

function TDataConnection.InsertServReportAssoc(IN_SERV_ID: Variant): Integer;
begin
  Result:=AddUpdAELAssociation(NULL, NULL, NULL, NULL,
    NULL, SERVICE_REPORT_ELINK_CODE, IN_SERV_ID);
    //Код для отдельного выделения связи через тип
    //SERV_GROUP_ITEM_ELINK_CODE, IN_SERV_GROUP_ID);
end;

procedure TDataConnection.LinkAdrADOTAfterPost(DataSet: TDataSet);
begin
  ReloadPersonAdrLinksCurrent;
end;

procedure TDataConnection.LinkAllianceADOTAfterPost(DataSet: TDataSet);
begin
  DataConnection.ReloadPersonView;
  DataConnection.ReloadPersonAllianceLinksCurrent;
end;

procedure TDataConnection.LinkDocADOTAfterPost(DataSet: TDataSet);
begin
  ReloadPersonDocLinksCurrent;
end;

function TDataConnection.InsertServGroupAssoc(IN_SERV_GROUP_ID: Variant): Integer;
begin
  Result:=AddUpdAELAssociation(NULL, NULL, NULL, NULL,
    NULL, NULL, IN_SERV_GROUP_ID);
    //Код для отдельного выделения связи через тип
    //SERV_GROUP_ITEM_ELINK_CODE, IN_SERV_GROUP_ID);
end;

function TDataConnection.InsertServGroupAssocWithAELType(IN_SERV_GROUP_ID, IN_AEL_TYPE: Variant): Integer;
begin
  Result:=AddUpdAELAssociation(NULL, NULL, NULL, IN_AEL_TYPE,
    NULL, NULL, IN_SERV_GROUP_ID);
    //Код для отдельного выделения связи через тип
    //SERV_GROUP_ITEM_ELINK_CODE, IN_SERV_GROUP_ID);
end;

function TDataConnection.InsertCurrentServGroupListItemNULLAELType: Integer;
var res: Integer;
begin
  res:=-1;
  if ServiceGroupsADODS.RecordCount>0 then
  begin
    res:=InsertServGroupAssocWithAELType(ServiceGroupsADODS.FieldByName('SERVICE_ID').AsInteger, NULL);
  end
  else
    ShowMessage('Нет выделенной группы операций!');
  Result:=res;
end;

function TDataConnection.InsertCurrentServGroupListItem: Integer;
var res: Integer;
begin
  res:=-1;
  if ServiceGroupsADODS.RecordCount>0 then
  begin
    res:=InsertServGroupAssocWithAELType(ServiceGroupsADODS.FieldByName('SERVICE_ID').AsInteger, 0);
  end
  else
    ShowMessage('Нет выделенной группы операций!');
  Result:=res;
end;

function TDataConnection.InsertCurrentServiceReport: Integer;
var res: Integer;
begin
  res:=-1;
  if ServicesADOT.RecordCount>0 then
  begin
    res:=InsertServReportAssoc(ServicesADOT.FieldByName('SERVICE_ID').AsInteger);
  end
  else
    ShowMessage('Нет выделенного типа операций!');
  Result:=res;
end;

function TDataConnection.InsertCurrentServiceItem: Integer;
var res: Integer;
begin
  res:=-1;
  if ServicesADOT.RecordCount>0 then
  begin
    res:=InsertServGroupAssoc(ServicesADOT.FieldByName('SERVICE_ID').AsInteger);
  end
  else
    ShowMessage('Нет выделенного типа операций!');
  Result:=res;
end;

function TDataConnection.MakeCurrentServiceAsGroup: Boolean;
var res: Boolean;
begin
  res:=False;
  try
  if ServicesADOT.Active then
    if ServicesADOT.RecordCount>0 then
    begin
      if not (ServicesADOT.State in [dsEdit]) then
        ServicesADOT.Edit;
      ServicesADOT.FieldByName('ITS_GROUP').Value:=1;
      ServicesADOT.Post;
      ReloadServicesADOT;
    end
    else
      ShowMessage('Нет выделенной операции!');
  except on E:Exception do
    ShowMessage('Ошибка при отметке операции как группы! Сообщение: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertBlankActionService: Boolean;
var res: Boolean;
begin
  res:=False;
  try
    AddUpdServiceADOSP.Parameters.ParamByName('IN_SERVICE_ID').Value:=NULL;
    AddUpdServiceADOSP.Parameters.ParamByName('IN_SERVICE_NAME').Value:='';
    AddUpdServiceADOSP.Parameters.ParamByName('IN_SERVICE_CODE').Value:=NULL;
    AddUpdServiceADOSP.Parameters.ParamByName('IN_SERVICE_PRICE').Value:=0;
    AddUpdServiceADOSP.ExecProc;
    res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов хранимой процедуры добавления '+
      ' пустого типа операции! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertOpAssocByCodeWithObjectID(IN_ACT_REG_ID,
    IN_ELINK_CODE, IN_OBJECT_ID: Variant): Integer;
begin
  Result:=AddUpdAELAssociation(NULL, IN_ACT_REG_ID, IN_OBJECT_ID, NULL,
    NULL, IN_ELINK_CODE, NULL);
end;

function TDataConnection.AddUpdPerson(IN_PERSON_ID, IN_FIRST_NAME, IN_LAST_NAME, IN_SURNAME,
      IN_PERSON_BUILDING_ID, IN_PERSON_COUNTRY_ID, IN_PERSON_NATION_ID,
      IN_PERSON_SEX_ID, IN_BIRTHDATE, IN_REG_PSTATION_ID, IN_BIRTH_REGION_ID,
      IN_BIRTH_SETTLEM_ID, IN_BIRTHPLACE, IN_PERS_PLSTATUS_ID, IN_PERSON_INN,
      IN_PERSON_BIRTH_DISTRICT_ID, IN_PERSON_BIRTH_COUNTRY_ID,
      IN_PERSON_SEC_COUNTRY_ID: Variant): Integer;
var res: Integer;
begin
  res:=-1;
  Result:=res;
end;

function TDataConnection.AddPersonBaseParamsOnCurrFilter(IN_FIRST_NAME, IN_LAST_NAME,
      IN_SURNAME: String): Integer;
var res: Integer;
    useSearchResult: Boolean;
begin
  res:=-1;
  useSearchResult:=False;
  if PersonsADODS.Active then
    if PersonsADODS.RecordCount>0 then
       useSearchResult:=True;
  if useSearchResult then
    res:=AddPersonOnBaseParams(IN_FIRST_NAME, IN_LAST_NAME,
      IN_SURNAME, PersonsADODS.FieldByName('PERSON_SEX_ID').AsInteger,
      PersonsADODS.FieldByName('PERSON_COUNTRY_ID').AsInteger,
      PersonsADODS.FieldByName('PERSONS_NATION_ID').AsInteger,
      PersonsADODS.FieldByName('BIRTH_COUNTRY_ID').AsInteger,
      PersonsADODS.FieldByName('BIRTH_REGION_ID').AsInteger,
      PersonsADODS.FieldByName('BIRTH_SETTLEM_ID').AsInteger)
  else
    res:=AddPersonOnBaseParams(IN_FIRST_NAME, IN_LAST_NAME,
      IN_SURNAME, NULL, NULL, NULL, NULL, NULL, NULL);
  Result:=res;
end;

function TDataConnection.AddPersonOnBaseParams(IN_FIRST_NAME, IN_LAST_NAME,
      IN_SURNAME: String; IN_PERSON_SEX_ID, IN_PERSON_COUNTRY_ID,
      IN_PERSON_NATION_ID, IN_PERSON_BIRTH_COUNTRY_ID, IN_PERSON_BIRTH_REGION_ID,
      IN_BIRTH_SETTLEM_ID: Integer):Integer;
var res: Integer;
begin
  res:=-1;
  res:=AddUpdPersonQuery(NULL, IN_FIRST_NAME, IN_LAST_NAME, IN_SURNAME, NULL,
    IN_PERSON_COUNTRY_ID, IN_PERSON_NATION_ID, IN_PERSON_SEX_ID, NULL, NULL,
    IN_PERSON_BIRTH_REGION_ID, IN_BIRTH_SETTLEM_ID, NULL, NULL, NULL,
    NULL, IN_PERSON_BIRTH_COUNTRY_ID, NULL);
  Result:=res;
end;

function TDataConnection.AddUpdPersonQuery(IN_PERSON_ID, IN_FIRST_NAME, IN_LAST_NAME,
      IN_SURNAME, IN_PERSON_BUILDING_ID, IN_PERSON_COUNTRY_ID, IN_PERSON_NATION_ID,
      IN_PERSON_SEX_ID, IN_BIRTHDATE, IN_REG_PSTATION_ID, IN_BIRTH_REGION_ID,
      IN_BIRTH_SETTLEM_ID, IN_BIRTHPLACE, IN_PERS_PLSTATUS_ID, IN_PERSON_INN,
      IN_PERSON_BIRTH_DISTRICT_ID, IN_PERSON_BIRTH_COUNTRY_ID,
      IN_PERSON_SEC_COUNTRY_ID: Variant): Integer;
var res: Integer;
begin
  res:=-1;
  try
    AddPersonADOQ.Active:=False;
    AddPersonADOQ.Parameters.ParamByName('IN_PERSON_ID').Value:=IN_PERSON_ID;
    AddPersonADOQ.Parameters.ParamByName('IN_FIRST_NAME').Value:=IN_FIRST_NAME;
    AddPersonADOQ.Parameters.ParamByName('IN_LAST_NAME').Value:=IN_LAST_NAME;
    AddPersonADOQ.Parameters.ParamByName('IN_SURNAME').Value:=IN_SURNAME;
    AddPersonADOQ.Parameters.ParamByName('IN_PERSON_BUILDING_ID').Value:=IN_PERSON_BUILDING_ID;
    AddPersonADOQ.Parameters.ParamByName('IN_PERSON_COUNTRY_ID').Value:=IN_PERSON_COUNTRY_ID;
    AddPersonADOQ.Parameters.ParamByName('IN_PERSON_NATION_ID').Value:=IN_PERSON_NATION_ID;
    AddPersonADOQ.Parameters.ParamByName('IN_PERSON_SEX_ID').Value:=IN_PERSON_SEX_ID;
    AddPersonADOQ.Parameters.ParamByName('IN_BIRTHDATE').Value:=IN_BIRTHDATE;
    AddPersonADOQ.Parameters.ParamByName('IN_REG_PSTATION_ID').Value:=IN_REG_PSTATION_ID;
    AddPersonADOQ.Parameters.ParamByName('IN_BIRTH_REGION_ID').Value:=IN_BIRTH_REGION_ID;
    AddPersonADOQ.Parameters.ParamByName('IN_BIRTH_SETTLEM_ID').Value:=IN_BIRTH_SETTLEM_ID;
    AddPersonADOQ.Parameters.ParamByName('IN_BIRTHPLACE').Value:=IN_BIRTHPLACE;
    AddPersonADOQ.Parameters.ParamByName('IN_PERS_PLSTATUS_ID').Value:=IN_PERS_PLSTATUS_ID;
    AddPersonADOQ.Parameters.ParamByName('IN_PERSON_INN').Value:=IN_PERSON_INN;
    AddPersonADOQ.Parameters.ParamByName('IN_PERSON_BIRTH_DISTRICT_ID').Value:=IN_PERSON_BIRTH_DISTRICT_ID;
    AddPersonADOQ.Parameters.ParamByName('IN_PERSON_BIRTH_COUNTRY_ID').Value:=IN_PERSON_BIRTH_COUNTRY_ID;
    AddPersonADOQ.Parameters.ParamByName('IN_PERSON_SEC_COUNTRY_ID').Value:=IN_PERSON_SEC_COUNTRY_ID;
    AddPersonADOQ.Active:=True;
    if AddPersonADOQ.Active then
      if AddPersonADOQ.RecordCount>0 then
        res:=AddPersonADOQ.Fields[0].AsInteger;
    AddPersonADOQ.Active:=False;
  except on E:Exception do
    ShowMessage('Неудачный вызов запроса для процедуры добавления '+
      'лица! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.insertBlankElinkAssoc(MASTER_ELINK_ID: Integer=-1; SLAVE_ELINK_ID: Integer=-1): Integer;
begin
  Result:=AddUpdAELAssociation(NULL, NULL, SLAVE_ELINK_ID, MASTER_ELINK_ID,
    NULL, NULL, NULL);
end;

function TDataConnection.AddUpdAELAssociation(IN_AEL_AS_ID, IN_ACT_REG_ID, IN_ELINK_ID,
      IN_AEL_TYPE_ID, TYPE_STR, IN_ELINK_CODE, IN_SERVICE_ID: Variant): Integer;
var res: Integer;
begin
  res:=-1;
  try
    AddUpdAELASSOCADOSP.Parameters.ParamByName('IN_AEL_AS_ID').Value:=IN_AEL_AS_ID;
    AddUpdAELASSOCADOSP.Parameters.ParamByName('IN_ACT_REG_ID').Value:=IN_ACT_REG_ID;
    AddUpdAELASSOCADOSP.Parameters.ParamByName('IN_ELINK_ID').Value:=IN_ELINK_ID;
    AddUpdAELASSOCADOSP.Parameters.ParamByName('IN_AEL_TYPE_ID').Value:=IN_AEL_TYPE_ID;
    AddUpdAELASSOCADOSP.Parameters.ParamByName('TYPE_STR').Value:=TYPE_STR;
    AddUpdAELASSOCADOSP.Parameters.ParamByName('IN_ELINK_CODE').Value:=IN_ELINK_CODE;
    AddUpdAELASSOCADOSP.Parameters.ParamByName('IN_SERVICE_ID').Value:=IN_SERVICE_ID;
    AddUpdAELASSOCADOSP.ExecProc;
  except on E:Exception do
    ShowMessage('Неудачный вызов хранимой процедуры добавления записи в '+
      'регистр связей операции с объектами! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertCurrentServiceItemWithAELType(IN_AEL_TYPE_NAME,
  IN_AEL_TYPE_CODE, IN_AEL_LINK_TYPE: Variant): Integer;
var res: Integer;
begin
  res:=-1;
  if ServicesADOT.RecordCount>0 then
  begin
    res:=InsertNewServiceItemWithAELType(ServicesADOT.FieldByName('SERVICE_ID').AsInteger,
      IN_AEL_TYPE_NAME, IN_AEL_TYPE_CODE, IN_AEL_LINK_TYPE);
  end
  else
    ShowMessage('Нет выделенного типа операций!');
  Result:=res;
end;

function TDataConnection.InsertCurrentServiceGroupItemWithAELType(IN_AEL_TYPE_NAME,
  IN_AEL_TYPE_CODE, IN_AEL_LINK_TYPE: Variant): Integer;
var res: Integer;
begin
  res:=-1;
  if ServGroupListADODS.RecordCount>0 then
  begin
    res:=InsertNewServiceItemWithAELType(ServGroupListADODS.FieldByName('SERVICE_ID').AsInteger,
      IN_AEL_TYPE_NAME, IN_AEL_TYPE_CODE, IN_AEL_LINK_TYPE);
  end
  else
    ShowMessage('Нет выделенного группы (пакета) операций!');
  Result:=res;
end;

function TDataConnection.InsertNewServiceItemWithAELType(IN_SERVICE_ID, IN_AEL_TYPE_NAME,
  IN_AEL_TYPE_CODE, IN_AEL_LINK_TYPE: Variant): Integer;
begin
  Result:=AddAELAssocWithAELType(NULL, NULL, NULL,
    IN_SERVICE_ID, IN_AEL_TYPE_NAME, IN_AEL_TYPE_CODE, IN_AEL_LINK_TYPE);
end;

function TDataConnection.AddAELAssocWithAELType(IN_ACT_REG_ID, IN_ELINK_ID, IN_AEL_TYPE_ID,
  IN_SERVICE_ID, IN_AEL_TYPE_NAME, IN_AEL_TYPE_CODE, IN_AEL_LINK_TYPE: Variant): Integer;
var res: Integer;
begin
  res:=-1;
  try
    AddAELAssocWithAELTypeADOSP.Parameters.ParamByName('IN_ACT_REG_ID').Value:=IN_ACT_REG_ID;
    AddAELAssocWithAELTypeADOSP.Parameters.ParamByName('IN_ELINK_ID').Value:=IN_ELINK_ID;
    AddAELAssocWithAELTypeADOSP.Parameters.ParamByName('IN_AEL_TYPE_ID').Value:=IN_AEL_TYPE_ID;
    AddAELAssocWithAELTypeADOSP.Parameters.ParamByName('IN_SERVICE_ID').Value:=IN_SERVICE_ID;
    AddAELAssocWithAELTypeADOSP.Parameters.ParamByName('IN_AEL_TYPE_NAME').Value:=IN_AEL_TYPE_NAME;
    AddAELAssocWithAELTypeADOSP.Parameters.ParamByName('IN_AEL_TYPE_CODE').Value:=IN_AEL_TYPE_CODE;
    AddAELAssocWithAELTypeADOSP.Parameters.ParamByName('IN_AEL_ELINK_TYPE').Value:=IN_AEL_LINK_TYPE;
    AddAELAssocWithAELTypeADOSP.ExecProc;
  except on E:Exception do
    ShowMessage('Неудачный вызов хранимой процедуры добавления записи в '+
      'регистр связей операции с объектами c новым типом связи! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertCurrentPersonDocLink: Integer;
begin
  if PersonsADODS.RecordCount>0 then
  begin
    Result:=AddUpdELink(NULL, PersonsADODS.FieldByName('PERSON_ID').AsInteger,
      NULL, NULL, NULL, -1, NULL);
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      Result:=-1;
    end;
end;

function TDataConnection.InsertCurrentPersonAdrLink: Integer;
begin
  if PersonsADODS.RecordCount>0 then
  begin
    Result:=AddUpdELink(NULL, PersonsADODS.FieldByName('PERSON_ID').AsInteger,
      NULL, NULL, -1, NULL, NULL);
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      Result:=-1;
    end;
end;

function TDataConnection.InsertBlankAdresQuery: Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertBlankAdresADOQ.Active:=False;
    InsertBlankAdresADOQ.Active:=True;
    if InsertBlankAdresADOQ.Active then
       if InsertBlankAdresADOQ.RecordCount>0 then
         res:=InsertBlankAdresADOQ.Fields[0].AsInteger;
    InsertBlankAdresADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры InsertBlankAdresADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertBlankSettlQuery: Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertBlankSettlADOQ.Active:=False;
    InsertBlankSettlADOQ.Active:=True;
    if InsertBlankSettlADOQ.Active then
       if InsertBlankSettlADOQ.RecordCount>0 then
         res:=InsertBlankSettlADOQ.Fields[0].AsInteger;
    InsertBlankSettlADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры InsertBlankSettlQuery! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertBlankDistrictQuery(DISTRICT_NAME: String=''; STATE_ID: Integer=0): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertBlankDistrictADOQ.Active:=False;
    InsertBlankDistrictADOQ.Parameters.ParamByName('DISTRICT_NAME').Value:=DISTRICT_NAME;
    InsertBlankDistrictADOQ.Parameters.ParamByName('DISTR_SHORT').Value:='р-н';
    InsertBlankDistrictADOQ.Parameters.ParamByName('STATE_ID').Value:=STATE_ID;
    InsertBlankDistrictADOQ.Active:=True;
    if InsertBlankDistrictADOQ.Active then
       if InsertBlankDistrictADOQ.RecordCount>0 then
         res:=InsertBlankDistrictADOQ.Fields[0].AsInteger;
    InsertBlankDistrictADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры InsertBlankDistrictADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertStateIfNotExistQuery(STATE_NAME: String): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertStateIfNotExistADOQ.Active:=False;
    InsertStateIfNotExistADOQ.Parameters.ParamByName('STATE_NAME').Value:=STATE_NAME;
    InsertStateIfNotExistADOQ.Active:=True;
    if InsertStateIfNotExistADOQ.Active then
       if InsertStateIfNotExistADOQ.RecordCount>0 then
         res:=InsertStateIfNotExistADOQ.Fields[0].AsInteger;
    InsertStateIfNotExistADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры InsertStateIfNotExistADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertBlankCountryQuery: Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertBlankAdresADOQ.Active:=False;
    InsertBlankAdresADOQ.Active:=True;
    if InsertBlankAdresADOQ.Active then
       if InsertBlankAdresADOQ.RecordCount>0 then
         res:=InsertBlankAdresADOQ.Fields[0].AsInteger;
    InsertBlankAdresADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры InsertBlankCountryQuery! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertFastShortQuery(SHORT_TEXT: string; SHORT_LEVEL: Integer): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastShortADOQ.Active:=False;
    InsertFastShortADOQ.Parameters.ParamByName('SHORT_TEXT').Value:=SHORT_TEXT;
    InsertFastShortADOQ.Parameters.ParamByName('SHORT_FULL_TEXT').Value:=
      EnterStringForm.EnterStringFormModal('Введите полный текст для сокращения '''+SHORT_TEXT+'''');
    InsertFastShortADOQ.Parameters.ParamByName('SHORT_LEVEL').Value:=SHORT_LEVEL;
    InsertFastShortADOQ.Active:=True;
    if InsertFastShortADOQ.Active then
       if InsertFastShortADOQ.RecordCount>0 then
         res:=InsertFastShortADOQ.Fields[0].AsInteger;
    InsertFastShortADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры InsertFastShortADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertBlankDocQuery: Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertBlankDocADOQ.Active:=False;
    InsertBlankDocADOQ.Active:=True;
    if InsertBlankDocADOQ.Active then
       if InsertBlankDocADOQ.RecordCount>0 then
         res:=InsertBlankDocADOQ.Fields[0].AsInteger;
    InsertBlankDocADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры InsertBlankDocADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertPersonLnkOnCurrPerson: Integer;
var res, adr_id: Integer;
begin
  if PersonsADODS.RecordCount>0 then
  begin
    res:=InsertPersonLnkOnPerson(PersonsADODS.
      FieldByName('PERSON_ID').AsInteger);
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      res:=-1;
    end;

  Result:=res;
end;



function TDataConnection.InsertPersonLnkOnPerson(PERSON_ID: Integer): Integer;
var res, adr_id: Integer;
begin
  res:=-1;
  if PERSON_ID>0 then
  begin
    //adr_id:=InsertBlankAdresQuery;
    //if adr_id>=0 then
    if (AddUpdELink(NULL, PERSON_ID, NULL, NULL, NULL, NULL, -1)>0)  then
      res:=adr_id;
    Result:=res;
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      Result:=-1;
    end;
end;

function TDataConnection.InsertBlankAdrLinkOnPerson(PERSON_ID: Integer): Integer;
var res, adr_id: Integer;
begin
  res:=-1;
  if PERSON_ID>0 then
  begin
    adr_id:=InsertBlankAdresQuery;
    if adr_id>=0 then
      if (AddUpdELink(NULL, PERSON_ID, NULL, NULL, adr_id, NULL, NULL)>0)  then
          res:=adr_id;
    Result:=res;
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      Result:=-1;
    end;
end;

function TDataConnection.InsertBlankDocLinkOnPerson(PERSON_ID: Integer): Integer;
var res, doc_id: Integer;
begin
  res:=-1;
  if PERSON_ID>0 then
  begin
    doc_id:=InsertBlankDocQuery;
    if doc_id>=0 then
      if (AddUpdELink(NULL, PERSON_ID, NULL, NULL, NULL, doc_id, NULL)>0)  then
          res:=doc_id;
    Result:=res;
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      Result:=-1;
    end;
end;

//function TDataConnection.InsertBlankPersonLinkOnPerson(PERSON_ID: Integer): Integer;
//var res, doc_id: Integer;
//begin
//  res:=-1;
//  if PERSON_ID>0 then
//  begin
//    doc_id:=InsertBlankDocQuery;
//    if doc_id>=0 then
//      if (AddUpdELink(NULL, PERSON_ID, NULL, NULL, NULL, doc_id, NULL)>0)  then
//          res:=doc_id;
//    Result:=res;
//  end
//  else
//    begin
//      ShowMessage('Не выделено лица!');
//      Result:=-1;
//    end;
//end;

function TDataConnection.AddUpdELink(IN_ELINK_ID, IN_PERSON_ID, IN_ELTYPE_ID,
      IN_ELSTATUS_ID, IN_ADRES_ID, IN_DOC_ID, IN_LINK_PERSON_ID: Variant): Integer;
var res: Integer;
begin
  res:=-1;
  try
    AddPersLinkEntityADOSP.Parameters.ParamByName('IN_ELINK_ID').Value:=IN_ELINK_ID;
    AddPersLinkEntityADOSP.Parameters.ParamByName('IN_PERSON_ID').Value:=IN_PERSON_ID;
    AddPersLinkEntityADOSP.Parameters.ParamByName('IN_ELTYPE_ID').Value:=IN_ELTYPE_ID;
    AddPersLinkEntityADOSP.Parameters.ParamByName('IN_ELSTATUS_ID').Value:=IN_ELSTATUS_ID;
    AddPersLinkEntityADOSP.Parameters.ParamByName('IN_ADRES_ID').Value:=IN_ADRES_ID;
    AddPersLinkEntityADOSP.Parameters.ParamByName('IN_DOC_ID').Value:=IN_DOC_ID;
    AddPersLinkEntityADOSP.Parameters.ParamByName('IN_LINK_PERSON_ID').Value:=IN_LINK_PERSON_ID;
    AddPersLinkEntityADOSP.ExecProc;
    res:=1;
  except on E:Exception do
    ShowMessage('Неудачный вызов хранимой процедуры добавления записи в '+
      'регистр связей сущностей с лицом! Описание: '+E.Message);
  end;
  Result:=res;
end;

procedure TDataConnection.WriteUserInput;
begin
  InsertActionCurrTimeCurrUser(USER_ENTER_ACTION_TYPE, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL, NULL);
end;

procedure TDataConnection.WriteUserOutput;
begin
  InsertActionCurrTimeCurrUser(USER_EXIT_ACTION_TYPE, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL, NULL);
end;

function TDataConnection.InsertCurrentPersonZAGSRecord: Integer;
begin
  if PersonsADODS.RecordCount>0 then
  begin
    Result:=InsertActionCurrTimeCurrUser(ZAGS_RECORD_ACTION_TYPE, NULL, NULL,
      NULL, NULL, NULL, NULL, PersonsADODS.FieldByName('PERSON_ID').AsInteger,
      NULL);
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      Result:=-1;
    end;
end;

function TDataConnection.InsertCurrentPersonJobRecord: Integer;
begin
  if PersonsADODS.RecordCount>0 then
  begin
    Result:=InsertActionCurrTimeCurrUser(JOB_RECORD_ACTION_TYPE, NULL, NULL,
      NULL, NULL, NULL, NULL, PersonsADODS.FieldByName('PERSON_ID').AsInteger,
      NULL);
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      Result:=-1;
    end;
end;

function TDataConnection.InsertCurrentPersonBuildingRecord: Integer;
begin
  if PersonsADODS.RecordCount>0 then
  begin
    Result:=InsertActionCurrTimeCurrUser(BUILDINGS_RECORD_ACTION_TYPE, NULL, NULL,
      NULL, NULL, NULL, NULL, PersonsADODS.FieldByName('PERSON_ID').AsInteger,
      NULL);
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      Result:=-1;
    end;
end;

function TDataConnection.InsertCurrentPersonAction: Integer;
begin
  if PersonsADODS.RecordCount>0 then
  begin
    Result:=InsertActionCurrTimeCurrUser(WORK_OPERATION_ACTION_TYPE, NULL, NULL,
      NULL, NULL, NULL, NULL, PersonsADODS.FieldByName('PERSON_ID').AsInteger,
      NULL);
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      Result:=-1;
    end;
end;

function TDataConnection.InsertCurrentPersonActionWithOpType(SERVICE_ID, SERVICE_CODE: Variant;
    SERVICE_GROUP_ID: Variant): Integer;
begin
  if PersonsADODS.RecordCount>0 then
  begin
    Result:=InsertActionCurrTimeCurrUser(WORK_OPERATION_ACTION_TYPE, SERVICE_ID, NULL,
      NULL, NULL, SERVICE_CODE, NULL, PersonsADODS.FieldByName('PERSON_ID').AsInteger,
      SERVICE_GROUP_ID);
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      Result:=-1;
    end;
end;

function TDataConnection.InsertReportPreviewAction(IN_REPORT_CODE: Variant): Integer;
begin
  Result:=InsertActionCurrTimeCurrUser(REPORT_PREVIEW_ACTION_TYPE, NULL, NULL,
    NULL, NULL, NULL, IN_REPORT_CODE, NULL, NULL);
end;

function TDataConnection.InsertReportPrintAction(IN_REPORT_CODE: Variant): Integer;
begin
  Result:=InsertActionCurrTimeCurrUser(REPORT_PRINT_ACTION_TYPE, NULL, NULL,
    NULL, NULL, NULL, IN_REPORT_CODE, NULL, NULL);
end;

procedure TDataConnection.OpAdrLinksADODSBeforeInsert(DataSet: TDataSet);
begin
  if not ProgramInsertFlag then Abort;
end;

procedure TDataConnection.OpAdrLinksADODSCalcFields(DataSet: TDataSet);
begin
  if OpAdrLinksADODSITS_CITY.AsInteger=1 then
      OpAdrLinksADODSITS_CITY_BOOL.Value:=True
  else
    OpAdrLinksADODSITS_CITY_BOOL.Value:=False;
end;

procedure TDataConnection.OpDocLinksADODSBeforeInsert(DataSet: TDataSet);
begin
  if not ProgramInsertFlag then Abort;
end;

procedure TDataConnection.OpOtherDataADODSAfterEdit(DataSet: TDataSet);
begin
  if PersonOperationsADODS.Active then
    if PersonOperationsADODS.RecordCount>0 then
      if PersonOperationsADODS.FieldByName('ITS_GROUP').Value<>NULL then
         if PersonOperationsADODS.FieldByName('ITS_GROUP').AsInteger>0 then
            GroupDataChanged:=True;
end;

procedure TDataConnection.OpPersonsADODSAfterEdit(DataSet: TDataSet);
begin
  //if DataSet.State in [dsEdit] then
  //   DataSet.Post;
  if PersonOperationsADODS.Active then
    if PersonOperationsADODS.RecordCount>0 then
      if PersonOperationsADODS.FieldByName('ITS_GROUP').Value<>NULL then
         if PersonOperationsADODS.FieldByName('ITS_GROUP').AsInteger>0 then
            GroupDataChanged:=True;
end;

procedure TDataConnection.OpPersonsADODSAfterPost(DataSet: TDataSet);
begin
  ReloadPersonView;
  ReloadOpPersAdrLinks;
  ReloadOpPersDocLinks;
  ReloadActAdrLinks;
  ReloadActDocLinks;
  ReloadActPersLinks;
  ReloadOpPersLinks;
  ReloadOpAdrLinks;
  ReloadOpDocLinks;
end;

procedure TDataConnection.OpPersonsADODSBeforeInsert(DataSet: TDataSet);
begin
  if not ProgramInsertFlag then Abort;
end;

function TDataConnection.InsertActionCurrTimeCurrUser(IN_ATYPE_ID,
      IN_SERVICE_ID, IN_REPORT_ID, IN_DOC_ID, IN_ATYPE_CODE, IN_SERVICE_CODE,
      IN_REPORT_CODE, IN_PERSON_ID, IN_SERVICE_GROUP_ID: Variant): Integer;
begin
  Result:=DataConnection.AddUpdActionQuery( NULL, CurrentPersonID, IN_ATYPE_ID,
      IN_SERVICE_ID, IN_REPORT_ID, IN_DOC_ID, IN_ATYPE_CODE, IN_SERVICE_CODE,
      IN_REPORT_CODE, IN_PERSON_ID, NULL, NULL, IN_SERVICE_GROUP_ID);
end;

function TDataConnection.AddUpdActionQuery(IN_ACTION_ID, IN_USER_ID, IN_ATYPE_ID,
      IN_SERVICE_ID, IN_REPORT_ID, IN_DOC_ID, IN_ATYPE_CODE, IN_SERVICE_CODE,
      IN_REPORT_CODE, IN_PERSON_ID: Variant; IN_USER_LOGIN: Variant;
      IN_ATSTAMP: Variant; IN_SERVICE_GROUP_ID: Variant): Integer;
var res: Integer;
begin
  res:=-1;
  try
    AddUpdActionADOQ.Active:=False;
    AddUpdActionADOQ.Parameters.ParamByName('IN_ACTION_ID').Value:=IN_ACTION_ID;
    AddUpdActionADOQ.Parameters.ParamByName('IN_USER_ID').Value:=IN_USER_ID;
    AddUpdActionADOQ.Parameters.ParamByName('IN_ATYPE_ID').Value:=IN_ATYPE_ID;
    AddUpdActionADOQ.Parameters.ParamByName('IN_SERVICE_ID').Value:=IN_SERVICE_ID;
    AddUpdActionADOQ.Parameters.ParamByName('IN_REPORT_ID').Value:=IN_REPORT_ID;
    AddUpdActionADOQ.Parameters.ParamByName('IN_DOC_ID').Value:=IN_DOC_ID;
    AddUpdActionADOQ.Parameters.ParamByName('IN_ATYPE_CODE').Value:=IN_ATYPE_CODE;
    AddUpdActionADOQ.Parameters.ParamByName('IN_SERVICE_CODE').Value:=IN_SERVICE_CODE;
    AddUpdActionADOQ.Parameters.ParamByName('IN_REPORT_CODE').Value:=IN_REPORT_CODE;
    AddUpdActionADOQ.Parameters.ParamByName('IN_PERSON_ID').Value:=IN_PERSON_ID;
    AddUpdActionADOQ.Parameters.ParamByName('IN_USER_LOGIN').Value:=IN_USER_LOGIN;
    AddUpdActionADOQ.Parameters.ParamByName('IN_ATSTAMP').Value:=IN_ATSTAMP;
    AddUpdActionADOQ.Parameters.ParamByName('IN_SERVICE_GROUP_ID').Value:=IN_SERVICE_GROUP_ID;
    AddUpdActionADOQ.Active:=True;
    if AddUpdActionADOQ.Active then
       if AddUpdActionADOQ.RecordCount>0 then
          res:=AddUpdActionADOQ.Fields[0].AsInteger;
  except on E:Exception do
    ShowMessage('Неудачный вызов запроса для хранимой процедуры добавления записи в регистр действий! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.AddUpdAction(IN_ACTION_ID, IN_USER_ID, IN_ATYPE_ID,
      IN_SERVICE_ID, IN_REPORT_ID, IN_DOC_ID, IN_ATYPE_CODE, IN_SERVICE_CODE,
      IN_REPORT_CODE, IN_PERSON_ID: Variant; IN_USER_LOGIN: Variant;
      IN_ATSTAMP: Variant; IN_SERVICE_GROUP_ID: Variant): Integer;
var res: Integer;
begin
  res:=-1;
  try
    AddUpdActionADOSP.Parameters.ParamByName('IN_ACTION_ID').Value:=IN_ACTION_ID;
    AddUpdActionADOSP.Parameters.ParamByName('IN_USER_ID').Value:=IN_USER_ID;
    AddUpdActionADOSP.Parameters.ParamByName('IN_ATYPE_ID').Value:=IN_ATYPE_ID;
    AddUpdActionADOSP.Parameters.ParamByName('IN_SERVICE_ID').Value:=IN_SERVICE_ID;
    AddUpdActionADOSP.Parameters.ParamByName('IN_REPORT_ID').Value:=IN_REPORT_ID;
    AddUpdActionADOSP.Parameters.ParamByName('IN_DOC_ID').Value:=IN_DOC_ID;
    AddUpdActionADOSP.Parameters.ParamByName('IN_ATYPE_CODE').Value:=IN_ATYPE_CODE;
    AddUpdActionADOSP.Parameters.ParamByName('IN_SERVICE_CODE').Value:=IN_SERVICE_CODE;
    AddUpdActionADOSP.Parameters.ParamByName('IN_REPORT_CODE').Value:=IN_REPORT_CODE;
    AddUpdActionADOSP.Parameters.ParamByName('IN_PERSON_ID').Value:=IN_PERSON_ID;
    AddUpdActionADOSP.Parameters.ParamByName('IN_USER_LOGIN').Value:=IN_USER_LOGIN;
    AddUpdActionADOSP.Parameters.ParamByName('IN_ATSTAMP').Value:=IN_ATSTAMP;
    AddUpdActionADOSP.Parameters.ParamByName('IN_SERVICE_GROUP_ID').Value:=IN_SERVICE_GROUP_ID;
    AddUpdActionADOSP.ExecProc;
  except on E:Exception do
    ShowMessage('Неудачный вызов хранимой процедуры добавления записи в регистр действий! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.GetCurrentPersonID: Integer;
var res: Integer;
begin
res:=-1;
 GetPersonByLoginADOQ.Active:=False;
 try
   GetPersonByLoginADOQ.Parameters.FindParam('login').Value:=
     FMSStorageADOC.Properties['User Name'].Value;

   GetPersonByLoginADOQ.Active:=True;
   if GetPersonByLoginADOQ.RecordCount<=0 then
     begin
       ShowMessage('Не зарегистрировано ни одного пользователя с именем '''+FMSStorageADOC.Properties['User Name'].Value+'''.');
       FMSStorageADOC.Connected:=False;
     end
   else if GetPersonByLoginADOQ.RecordCount>1 then
     begin
       ShowMessage('Зарегистрировано более одного пользователя с именем '''+FMSStorageADOC.Properties['User Name'].Value+'''.');
       FMSStorageADOC.Connected:=False;
     end
   else
     begin
       res:=GetPersonByLoginADOQ.FieldByName('USER_ID').AsInteger;
     end;
 except on E:Exception do
   begin
     ShowMessage('Неудачный запрос пользователя по его имени! Сообщение: '+E.Message+'.');
   end;
 end;
 Result:=res;
end;

function TDataConnection.GetUserActivity(USER_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
    UserParamsADODS.Active:=False;
    UserParamsADODS.Parameters.ParamByName('USER_ID').Value:=USER_ID;
    UserParamsADODS.Active:=True;
    if UserParamsADODS.Active then
      if UserParamsADODS.RecordCount>0 then
         if UserParamsADODS.FieldByName('IS_ACTIVE').AsInteger=1 then
            res:=True;
  except on E:Exception do
   begin
     ShowMessage('Неудачный запрос данных пользователя! Сообщение: '+E.Message+'.');
   end;
  end;
  Result:=res;
end;

procedure TDataConnection.ApplyCurrentReportAccess(ParentMenuItem: TMenuItem);
var I: Integer;
begin
  if (ParentMenuItem.Count>0) then
  begin

  for I:= 0 to ParentMenuItem.Count - 1 do
       ParentMenuItem.Items[I].Enabled:=False;

  if CurrOpReportsADODS.Active then
    if (CurrOpReportsADODS.RecordCount>0) then
    begin
      CurrOpReportsADODS.First;
      repeat

        for I:= 0 to ParentMenuItem.Count - 1 do
          if (ParentMenuItem.Items[I].HelpContext=
                CurrOpReportsADODS.FieldByName('REPORT_INT_CODE').AsInteger) then
            ParentMenuItem.Items[I].Enabled:=True;

        CurrOpReportsADODS.Next;
        if CurrOpReportsADODS.Eof then
          Break;

      until false;
    end;
  end;
end;

function TDataConnection.InsertFastAdrCountryQuery(IN_ADRES_ID: Integer; COUNTRY_NAME: String): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastAdrCountryADOQ.Active:=False;
    InsertFastAdrCountryADOQ.Parameters.
      ParamByName('IN_COUNTRY_NAME').Value:=COUNTRY_NAME;
    InsertFastAdrCountryADOQ.Parameters.
      ParamByName('IN_ADRES_ID').Value:=IN_ADRES_ID;
    InsertFastAdrCountryADOQ.Active:=True;
    if InsertFastAdrCountryADOQ.Active then
       if InsertFastAdrCountryADOQ.RecordCount>0 then
         res:=InsertFastAdrCountryADOQ.Fields[0].AsInteger;
    InsertFastAdrCountryADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры ADD_ADRES_COUNTRY в контексте InsertFastAdrCountryADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertFastAdrStateQuery(IN_ADRES_ID: Integer; STATE_NAME: String): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastAdrStateADOQ.Active:=False;
    InsertFastAdrStateADOQ.Parameters.
      ParamByName('IN_STATE_NAME').Value:=STATE_NAME;
    InsertFastAdrStateADOQ.Parameters.
      ParamByName('IN_ADRES_ID').Value:=IN_ADRES_ID;
    InsertFastAdrStateADOQ.Active:=True;
    if InsertFastAdrStateADOQ.Active then
       if InsertFastAdrStateADOQ.RecordCount>0 then
         res:=InsertFastAdrStateADOQ.Fields[0].AsInteger;
    InsertFastAdrStateADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры ADD_ADRES_STATE в контексте InsertFastAdrStateADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertFastDocBrancheQuery(IN_DOC_ID: Integer; IN_BRANCHE_CODE: String; IN_BRANCHE_NAME: String='НЕТ ИМЕНИ ПОДРАЗДЕЛЕНИЯ'): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastDocBrancheADOQ.Active:=False;
    InsertFastDocBrancheADOQ.Parameters.
      ParamByName('IN_BRANCHE_CODE').Value:=IN_BRANCHE_CODE;
    InsertFastDocBrancheADOQ.Parameters.
      ParamByName('IN_BRANCHE_NAME').Value:=IN_BRANCHE_NAME;
    InsertFastDocBrancheADOQ.Parameters.
      ParamByName('IN_DOC_ID').Value:=IN_DOC_ID;
    InsertFastDocBrancheADOQ.Active:=True;
    if InsertFastDocBrancheADOQ.Active then
       if InsertFastDocBrancheADOQ.RecordCount>0 then
         res:=InsertFastDocBrancheADOQ.Fields[0].AsInteger;
    InsertFastDocBrancheADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры ADD_DOC_FMS_BRANCHE в контексте InsertFastDocBrancheADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertFastAdrDistrictQuery(IN_ADRES_ID: Integer; DISTRICT_NAME: String): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastAdrDistrictADOQ.Active:=False;
    InsertFastAdrDistrictADOQ.Parameters.
      ParamByName('IN_DISTRICT_NAME').Value:=DISTRICT_NAME;
    InsertFastAdrDistrictADOQ.Parameters.
      ParamByName('IN_ADRES_ID').Value:=IN_ADRES_ID;
    InsertFastAdrDistrictADOQ.Active:=True;
    if InsertFastAdrDistrictADOQ.Active then
       if InsertFastAdrDistrictADOQ.RecordCount>0 then
         res:=InsertFastAdrDistrictADOQ.Fields[0].AsInteger;
    InsertFastAdrDistrictADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры ADD_ADRES_DISTRICT в контексте InsertFastAdrDistrictADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertFastAdrSettlemQuery(IN_ADRES_ID: Integer; SETTLEM_NAME: String; IN_ITS_CITY: Integer): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastAdrSettlemADOQ.Active:=False;
    InsertFastAdrSettlemADOQ.Parameters.
      ParamByName('IN_SETTLEM_NAME').Value:=SETTLEM_NAME;
    InsertFastAdrSettlemADOQ.Parameters.
      ParamByName('IN_ADRES_ID').Value:=IN_ADRES_ID;
    InsertFastAdrSettlemADOQ.Parameters.
      ParamByName('IN_ITS_CITY').Value:=IN_ITS_CITY;
    InsertFastAdrSettlemADOQ.Active:=True;
    if InsertFastAdrSettlemADOQ.Active then
       if InsertFastAdrSettlemADOQ.RecordCount>0 then
         res:=InsertFastAdrSettlemADOQ.Fields[0].AsInteger;
    InsertFastAdrCountryADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры ADD_ADRES_SETTLEMENT в контексте InsertFastAdrSettlemADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertFastCountryQuery(COUNTRY_NAME: String): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastCountryADOQ.Active:=False;
    InsertFastCountryADOQ.Parameters.
      ParamByName('IN_COUNTRY_NAME').Value:=COUNTRY_NAME;
    InsertFastCountryADOQ.Active:=True;
    if InsertFastCountryADOQ.Active then
       if InsertFastCountryADOQ.RecordCount>0 then
         res:=InsertFastCountryADOQ.Fields[0].AsInteger;
    InsertFastCountryADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры ADD_UPDATE_COUNTRY_EXT в контексте InsertFastCountryQuery! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertFastPersonBirthCountryQuery(IN_PERSON_ID: Integer; COUNTRY_NAME: String): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastPersonBirthCountryADOQ.Active:=False;
    InsertFastPersonBirthCountryADOQ.Parameters.
      ParamByName('IN_COUNTRY_NAME').Value:=COUNTRY_NAME;
    InsertFastPersonBirthCountryADOQ.Parameters.
      ParamByName('IN_PERSON_ID').Value:=IN_PERSON_ID;
    InsertFastPersonBirthCountryADOQ.Active:=True;
    if InsertFastPersonBirthCountryADOQ.Active then
       if InsertFastPersonBirthCountryADOQ.RecordCount>0 then
         res:=InsertFastPersonBirthCountryADOQ.Fields[0].AsInteger;
    InsertFastPersonBirthCountryADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры ADD_PERSON_BIRTH_COUNTRY в контексте InsertFastPersonBirthCountryADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertFastPersonCountryQuery(IN_PERSON_ID: Integer; COUNTRY_NAME: String): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastPersonCountryADOQ.Active:=False;
    InsertFastPersonCountryADOQ.Parameters.
      ParamByName('IN_COUNTRY_NAME').Value:=COUNTRY_NAME;
    InsertFastPersonCountryADOQ.Parameters.
      ParamByName('IN_PERSON_ID').Value:=IN_PERSON_ID;
    InsertFastPersonCountryADOQ.Active:=True;
    if InsertFastPersonCountryADOQ.Active then
       if InsertFastPersonCountryADOQ.RecordCount>0 then
         res:=InsertFastPersonCountryADOQ.Fields[0].AsInteger;
    InsertFastPersonCountryADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры ADD_UPDATE_COUNTRY_EXT в контексте InsertFastCountryQuery! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertFastBirthRegionQuery(BIRTH_REGION_NAME: String): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastBirthRegionADOQ.Active:=False;
    InsertFastBirthRegionADOQ.Parameters.
      ParamByName('IN_REGION_NAME').Value:=BIRTH_REGION_NAME;
    InsertFastBirthRegionADOQ.Active:=True;
    if InsertFastBirthRegionADOQ.Active then
       if InsertFastBirthRegionADOQ.RecordCount>0 then
         res:=InsertFastBirthRegionADOQ.Fields[0].AsInteger;
    InsertFastBirthRegionADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры ADD_PERSON_CIVIL_COUNTRY в контексте InsertFastBirthRegionQuery! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertFastPersonBirthRegionQuery(IN_PERSON_ID: Integer; BIRTH_REGION_NAME: String; IN_IS_RCENTER: Integer): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastPersonBirthRegionADOQ.Active:=False;
    InsertFastPersonBirthRegionADOQ.Parameters.
      ParamByName('IN_PERSON_ID').Value:=IN_PERSON_ID;
    InsertFastPersonBirthRegionADOQ.Parameters.
      ParamByName('IN_REGION_NAME').Value:=BIRTH_REGION_NAME;
    InsertFastPersonBirthRegionADOQ.Parameters.
      ParamByName('IN_IS_RCENTER').Value:=IN_IS_RCENTER;
    InsertFastPersonBirthRegionADOQ.Active:=True;
    if InsertFastPersonBirthRegionADOQ.Active then
       if InsertFastPersonBirthRegionADOQ.RecordCount>0 then
         res:=InsertFastPersonBirthRegionADOQ.Fields[0].AsInteger;
    InsertFastPersonBirthRegionADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры ADD_PERSON_BIRTH_REGION в контексте InsertFastPersonBirthRegionADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertFastPersonBirthSettlemQuery(IN_PERSON_ID: Integer; IN_SETTLEMENT_NAME: String; IN_ITS_CITY: Integer): Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertFastPersonBirthSettlemADOQ.Active:=False;
    InsertFastPersonBirthSettlemADOQ.Parameters.
      ParamByName('IN_PERSON_ID').Value:=IN_PERSON_ID;
    InsertFastPersonBirthSettlemADOQ.Parameters.
      ParamByName('IN_SETTLEMENT_NAME').Value:=IN_SETTLEMENT_NAME;
    InsertFastPersonBirthSettlemADOQ.Parameters.
      ParamByName('IN_ITS_CITY').Value:=IN_ITS_CITY;
    InsertFastPersonBirthSettlemADOQ.Active:=True;
    if InsertFastPersonBirthSettlemADOQ.Active then
       if InsertFastPersonBirthSettlemADOQ.RecordCount>0 then
         res:=InsertFastPersonBirthSettlemADOQ.
          Fields[0].asInteger;
    InsertFastPersonBirthSettlemADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры ADD_PERSON_BIRTH_SETTLEMENT в контексте InsertFastPersonBirthSettlemADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertBlankPersonQuery: Integer;
var res: Integer;
begin
  res:=-1;
  try
    InsertBlankPersonADOQ.Active:=False;
    InsertBlankPersonADOQ.Active:=True;
    if InsertBlankPersonADOQ.Active then
       if InsertBlankPersonADOQ.RecordCount>0 then
         res:=InsertBlankPersonADOQ.Fields[0].AsInteger;
    InsertBlankPersonADOQ.Active:=False;
    //ShowMessage('ssss'+IntToStr(res));
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры InsertBlankPersonADOQ! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.InsertBlankPerson: Integer;
var res: Integer;
    OUT_PRM: TParameter;
begin
  res:=-1;
  try
    //InsBlankPersADOSP.Parameters.Refresh;
    //InsBlankPersADOSP.Parameters.AddParameter;
    //InsBlankPersADOSP.Parameters[0].Direction:=pdOutput;
    //ShowMessage('dddd'+IntToStr(InsBlankPersADOSP.Parameters.Count));
    InsBlankPersADOSP.ExecProc;
    //ShowMessage(IntToStr(InsBlankPersADOSP.Recordset.Fields['OUT_PERSON_ID'].Value));
    //res:=InsBlankPersADOSP.Parameters[0].Value;//.ParamByName('OUT_PERSON_ID').Value;
    //
  except on E:Exception do
    ShowMessage('Ошибка при вызове хранимой процедуры InsBlankPersADOSP! Описание: '+
      E.Message);
  end;
  Result:=res;
end;

function TDataConnection.getConfParamByName(ParamName: string): String;
var res: String;
begin
  res:='';
  if ParamName='FMS_BRANCH_NAME_DEFAULT' then
  begin
    try
      FMSBrNameDefADODS.Active:=False;
      FMSBrNameDefADODS.Active:=True;
      if FMSBrNameDefADODS.RecordCount=1 then
        begin
          if FMSBrNameDefADODS.FieldByName(ParamName).Value<>NULL then
            res:=FMSBrNameDefADODS.FieldByName(ParamName).AsString;
        end
      else
        ShowMessage('Не найдено н одной или более одной записи в БД '+
          'о параметре '+ParamName+'!');
    except on E:Exception do
      ShowMessage('Ошибка получения системной опции !'+ParamName+
        ' Описание: '+E.Message);
    end;
  end
  else if ParamName='FMS_BRANCH_CODE_DEFAULT' then
  begin
    try
      FMSBrNameDefADODS.Active:=False;
      FMSBrNameDefADODS.Active:=True;
      if FMSBrNameDefADODS.RecordCount=1 then
        begin
          if FMSBrNameDefADODS.FieldByName(ParamName).Value<>NULL then
            res:=FMSBrNameDefADODS.FieldByName(ParamName).AsString;
        end
      else
        ShowMessage('Не найдено н одной или более одной записи в БД '+
          'о параметре '+ParamName+'!');
    except on E:Exception do
      ShowMessage('Ошибка получения системной опции !'+ParamName+
        ' Описание: '+E.Message);
    end;
  end
  else if ParamName='STATE_NAME_DEFAULT' then
  begin
    try
      StateNameDefADODS.Active:=False;
      StateNameDefADODS.Active:=True;
      if StateNameDefADODS.RecordCount=1 then
        begin
          if StateNameDefADODS.FieldByName(ParamName).Value<>NULL then
            res:=StateNameDefADODS.FieldByName(ParamName).AsString;
        end
      else
        ShowMessage('Не найдено н одной или более одной записи в БД '+
          'о параметре '+ParamName+'!');
    except on E:Exception do
      ShowMessage('Ошибка получения системной опции !'+ParamName+
        ' Описание: '+E.Message);
    end;
  end
  else if ParamName='FMS_BRANCH_NAME_DEFAULT_STR2' then
  begin
    try
      FMSBrStr2SettADODS.Active:=False;
      FMSBrStr2SettADODS.Active:=True;
      if FMSBrStr2SettADODS.RecordCount=1 then
        begin
          if FMSBrStr2SettADODS.FieldByName('STR_VALUE').Value<>NULL then
            res:=FMSBrStr2SettADODS.FieldByName('STR_VALUE').AsString;
        end
      else
        ShowMessage('Не найдено н одной или более одной записи в БД '+
          'о параметре '+ParamName+'!');
    except on E:Exception do
      ShowMessage('Ошибка получения системной опции !'+ParamName+
        ' Описание: '+E.Message);
    end;
  end
  else if ParamName='RDIR_FIO_DEFAULT' then
  begin
    try
      RDirFIOStrSettADODS.Active:=False;
      RDirFIOStrSettADODS.Active:=True;
      if RDirFIOStrSettADODS.RecordCount=1 then
        begin
          if RDirFIOStrSettADODS.FieldByName('STR_VALUE').Value<>NULL then
            res:=RDirFIOStrSettADODS.FieldByName('STR_VALUE').AsString;
        end
      else
        ShowMessage('Не найдено н одной или более одной записи в БД '+
          'о параметре '+ParamName+'!');
    except on E:Exception do
      ShowMessage('Ошибка получения системной опции !'+ParamName+
        ' Описание: '+E.Message);
    end;
  end
  else if ParamName='RDIR_FIO_DEFAULT_STR2' then
  begin
    try
      RDirFIOStr2SettADODS.Active:=False;
      RDirFIOStr2SettADODS.Active:=True;
      if RDirFIOStr2SettADODS.RecordCount=1 then
        begin
          if RDirFIOStr2SettADODS.FieldByName('STR_VALUE').Value<>NULL then
            res:=RDirFIOStr2SettADODS.FieldByName('STR_VALUE').AsString;
        end
      else
        ShowMessage('Не найдено н одной или более одной записи в БД '+
          'о параметре '+ParamName+'!');
    except on E:Exception do
      ShowMessage('Ошибка получения системной опции !'+ParamName+
        ' Описание: '+E.Message);
    end;
  end
  else if ParamName='RRANK_DEFAULT' then
  begin
    try
      RRankStrSettADODS.Active:=False;
      RRankStrSettADODS.Active:=True;
      if RRankStrSettADODS.RecordCount=1 then
        begin
          if RRankStrSettADODS.FieldByName('STR_VALUE').Value<>NULL then
            res:=RRankStrSettADODS.FieldByName('STR_VALUE').AsString;
        end
      else
        ShowMessage('Не найдено н одной или более одной записи в БД '+
          'о параметре '+ParamName+'!');
    except on E:Exception do
      ShowMessage('Ошибка получения системной опции !'+ParamName+
        ' Описание: '+E.Message);
    end;
  end
  else if ParamName='RRANK_DEFAULT_STR2' then
  begin
    try
      RRankStr2SettADODS.Active:=False;
      RRankStr2SettADODS.Active:=True;
      if RRankStr2SettADODS.RecordCount=1 then
        begin
          if RRankStr2SettADODS.FieldByName('STR_VALUE').Value<>NULL then
            res:=RRankStr2SettADODS.FieldByName('STR_VALUE').AsString;
        end
      else
        ShowMessage('Не найдено н одной или более одной записи в БД '+
          'о параметре '+ParamName+'!');
    except on E:Exception do
      ShowMessage('Ошибка получения системной опции !'+ParamName+
        ' Описание: '+E.Message);
    end;
  end
  else
  begin

  end;
  Result:=res;
end;

procedure TDataConnection.ReloadCurrUserRoles;
begin
  CurrentUserRoles:=[];
  try
  try
     CurrentUserRolesADODS.Active:=False;
     CurrentUserRolesADODS.Parameters.ParamByName('user_id').
        Value:=CurrentPersonID;
     CurrentUserRolesADODS.Active:=True;
     //PersonsADODS.Properties['Update Criteria'].value:=adCriteriaKey;
     //, , , ,
     if CurrentUserRolesADODS.RecordCount>0 then
     begin
       CurrentUserRolesADODS.First;
       repeat
          if CurrentUserRolesADODS.FieldByName('ROLE_INT_CODE').AsInteger=1 then
             CurrentUserRoles:=CurrentUserRoles+[rltAdministrator]
          else if CurrentUserRolesADODS.FieldByName('ROLE_INT_CODE').AsInteger=2 then
              CurrentUserRoles:=CurrentUserRoles+[rltDirector]
          else if CurrentUserRolesADODS.FieldByName('ROLE_INT_CODE').AsInteger=3 then
              CurrentUserRoles:=CurrentUserRoles+[rltSpec]
          else if CurrentUserRolesADODS.FieldByName('ROLE_INT_CODE').AsInteger=4 then
              CurrentUserRoles:=CurrentUserRoles+[rltBeginner]
          else if CurrentUserRolesADODS.FieldByName('ROLE_INT_CODE').AsInteger=5 then
              CurrentUserRoles:=CurrentUserRoles+[rltGuest]
          else
            ShowMessage('Неизвестный код роли!');
          if CurrentUserRolesADODS.RecNo<CurrentUserRolesADODS.RecordCount then
              CurrentUserRolesADODS.Next
          else
            Break;

       until False;
     end
     else
      ShowMessage('Пользователю не присвоено никаких ролей!');

  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы РОЛИ ТЕКУЩЕГО ПОЛЬЗОВАТЕЛЯ! Описание: '+E.Message);
  end;
  finally
    RefreshCurrUserGrants;
  end;
end;

procedure TDataConnection.RefreshCurrUserGrants;
var CurrUserRolesStr: Widestring;
begin

  CurrUserRolesStr:='Тек. пользователь:';
  MainForm.AdmPanelMenuItem.Enabled:=False;

  if rltAdministrator in CurrentUserRoles then
  begin
    CurrUserRolesStr:=CurrUserRolesStr+' АДМ';
    MainForm.AdmPanelMenuItem.Enabled:=True;
  end;
  if rltDirector in CurrentUserRoles then
  begin
    CurrUserRolesStr:=CurrUserRolesStr+' ДИР';
  end;

  if rltSpec in CurrentUserRoles then
  begin
    CurrUserRolesStr:=CurrUserRolesStr+' СПЕЦИАЛИСТ';
  end;

  if rltBeginner in CurrentUserRoles then
  begin
    CurrUserRolesStr:=CurrUserRolesStr+' СТАЖЕР';
  end;

  if rltGuest in CurrentUserRoles then
  begin
    CurrUserRolesStr:=CurrUserRolesStr+' ГОСТЬ';
  end;

  MainForm.MainStatusBar.Panels[2].Text:=CurrUserRolesStr;

end;

procedure TDataConnection.ReloadPersonsADODS(personId: Integer=-1);
begin
  try
     PersonsADODS.Active:=False;
     PersonsADODS.Filtered:=False;
     PersonsADODS.Active:=True;
     PersonsADODS.Properties['Update Criteria'].value:=adCriteriaKey;
	 if (personId>0) then
	 begin
		PersonsADODS.First;
		repeat
		    if (PersonsADODS.FieldByName('PERSON_ID').asInteger=personId) then
				Break;
			PersonsADODS.Next;
			if PersonsADODS.Eof then
				Break;
		until false;
	 end;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ЛИЦО! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonsADODSOnlyFilter;
begin
  try
     PersonsADODS.Filtered:=False;
     PersonsADODS.Filtered:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки фильтрации таблицы ЛИЦО! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonsADODSFilterOFF;
begin
  try
     PersonsADODS.Filtered:=False;
  except on E:Exception do
     ShowMessage('Ошибка снятия фильтрации таблицы ЛИЦО! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonsADODSCurrPos;
begin
  try
     PersonsADODS.UpdateCursorPos;
     PersonsADODS.Recordset.Resync(adAffectCurrent, adResyncAllValues);
     PersonsADODS.Resync([rmExact]);
     //PersonsADODS.Active:=False;
     //PersonsADODS.Active:=True;
     //PersonsADODS.Properties['Update Criteria'].value:=adCriteriaKey;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки текущей позиции таблицы ЛИЦО! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonView;
begin
  try
     PersonViewADODS.Active:=False;
     PersonViewADODS.Active:=True;
     //PersonsADODS.Properties['Update Criteria'].value:=adCriteriaKey;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ЛИЦО ВИД! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadStatesView;
begin
  try
     StatesViewADODS.Active:=False;
     StatesViewADODS.Active:=True;
     //PersonsADODS.Properties['Update Criteria'].value:=adCriteriaKey;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ПРЕДСТАВЛЕНИЕ ОБЛАСТИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadDistrictsView;
begin
  try
     DistrictsViewADODS.Active:=False;
     DistrictsViewADODS.Active:=True;
     //PersonsADODS.Properties['Update Criteria'].value:=adCriteriaKey;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ПРЕДСТАВЛЕНИЕ РАЙОНЫ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadSettlemsView;
begin
  try
     SettlemsViewADODS.Active:=False;
     SettlemsViewADODS.Active:=True;
     //PersonsADODS.Properties['Update Criteria'].value:=adCriteriaKey;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ПРЕДСТАВЛЕНИЕ НАС ПУНКТЫ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadElinksView;
begin
  try
     ElinksViewADODS.Active:=False;
     ElinksViewADODS.Active:=True;
     //PersonsADODS.Properties['Update Criteria'].value:=adCriteriaKey;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ПРЕДСТАВЛЕНИЕ ВИДЫ СУЩНОСТНЫХ СВЯЗЕЙ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadDictsADODS;
begin
  try
     DictsADOT.Active:=False;
     DictsADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СПРАВОЧНИКИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadCountriesADOT;
begin
  try
     CountriesADOT.Active:=False;
     CountriesADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СТРАНЫ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadStatesADOT;
begin
  try
     StatesADOT.Active:=False;
     StatesADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СПРАВОЧНИК СУБЪЕКТЫ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadDistrictsADOT;
begin
  try
     DistrictsADOT.Active:=False;
     DistrictsADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СПРАВОЧНИК РАЙОНЫ, ОКРУГА! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadSettlements;
begin
  try
     SettlementsADOT.Active:=False;
     SettlementsADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы НАСЕЛЕННЫЕ ПУНКТЫ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadDocTypesADOT;
begin
  try
     DocTypesADOT.Active:=False;
     DocTypesADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ТИПЫ ДОКУМЕНТОВ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadServicesADOT;
begin
  try
     ServicesADOT.Active:=False;
     ServicesADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ПРЕЙСКУРАНТ УСЛУГ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadServicesGroupsADOT;
begin
  try
     ServiceGroupsADODS.Active:=False;
     ServiceGroupsADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ГРУППЫ УСЛУГ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadServicesGroupList;
begin
  try
     ServGroupListADODS.Active:=False;
     ServGroupListADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СОСТАВ ГРУППЫ УСЛУГ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadServiceActionItems;
begin
  try
     ServiceActItemsADODS.Active:=False;
     ServiceActItemsADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СОСТАВ УСЛУГИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadServiceGroupActionItems;
var prev_id: Integer;
begin
  try
     prev_id:=-1;
     if ServGroupsActItemsADODS.Active then
       if ServGroupsActItemsADODS.RecordCount>0 then
          prev_id:=ServGroupsActItemsADODS.FieldByName('AEL_AS_ID').AsInteger;
     ServGroupsActItemsADODS.Active:=False;
     ServGroupsActItemsADODS.Active:=True;
     ServGroupsActItemsADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
     if ServGroupsActItemsADODS.Active then
     begin
       if ServGroupsActItemsADODS.RecordCount>0 then
       begin
         if prev_id>0 then
         begin
           ServGroupsActItemsADODS.First;
           repeat
             if (ServGroupsActItemsADODS.FieldByName('AEL_AS_ID').
              AsInteger=prev_id) then
                Break;

             ServGroupsActItemsADODS.Next;

             if ServGroupsActItemsADODS.Eof then
               Break;
           until false;
         end
         else
           ServGroupsActItemsADODS.Last;
       end
     end;

  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СОСТАВ ПАКЕТА! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadServiceGroupActionItemsCurrent;
begin
  try
     ServGroupsActItemsADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
     //ServGroupsActItemsADODS.UpdateCursorPos;
     ServGroupsActItemsADODS.Recordset.Resync(adAffectCurrent, adResyncAllValues);
     ServGroupsActItemsADODS.Resync([rmExact]);
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки текущей позиции таблицы СОСТАВ ПАКЕТА! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPacketSubOperationLinkItems;
begin
  try
     PacketSubOperationLinkItemsADODS.Active:=False;
     PacketSubOperationLinkItemsADODS.Active:=True;
     //PacketSubOperationLinkItemsADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ПРИВЯЗОК ЭЛЕМЕНТА ПАКЕТА К ДАННЫМ ПОДЧИНЕННЫХ ОПЕРАЦИЙ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPacketOperationsFreeLnkItems;
begin
  try
     PacketOperationsFreeLnkItemsADODS.Active:=False;
     PacketOperationsFreeLnkItemsADODS.Active:=True;
     //ServGroupsActItemsADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы НЕПРИВЯЗАННЫХ ДАННЫХ ПОДЧИНЕННЫХ ОПЕРАЦИЙ ПАКЕТА! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadServiceActionReports;
begin
  try
     ServiceReportsADODS.Active:=False;
     ServiceReportsADODS.Active:=True;
     ServiceReportsADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СОСТАВ ОТЧЕТОВ УСЛУГИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadServicesActionLinks;
begin
  try
     ServActLinksADODS.Active:=False;
     ServActLinksADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ТИПЫ СВЯЗЕЙ СОСТАВА УСЛУГИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadServicesView;
begin
  try
     ServViewADODS.Active:=False;
     ServViewADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки представления УСЛУГИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadOKVD;
begin
  try
     OKVDADOT.Active:=False;
     OKVDADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ОКВЭД! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadAReasons;
begin
  try
     AReasonsADOT.Active:=False;
     AReasonsADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ОСНОВАНИЯ ДЛЯ ОПЕРАЦИЙ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadTReasons;
begin
  try
     TReasonsADOT.Active:=False;
     TReasonsADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ПРИЧИНЫ ВЫДАЧИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadBTHRegions;
begin
  try
     BTHRegionsADOT.Active:=False;
     BTHRegionsADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы РЕГИОНЫ РОЖДЕНИЯ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPlaceStatuses;
begin
  try
     PlaceStatusesADOT.Active:=False;
     PlaceStatusesADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СПРАВОЧНИК МЕСТОПРЕБЫВАНИЙ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadDocStatuses;
begin
  try
     DocStatusesADOT.Active:=False;
     DocStatusesADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СТАТУСЫ ДОКУМЕНТОВ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadFMSBranches;
begin
  try
     FMSBranchesADOT.Active:=False;
     FMSBranchesADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ОРГАНЫ РЕГИСТРАЦИОННОГО УЧЕТА! Описание: '+E.Message);
  end;
end;

function TDataConnection.ReloadDBVersionSetting: Integer;
var res: Integer;
begin
  res:=-1;
  try
     DBVersionADODS.Active:=False;
     DBVersionADODS.Active:=True;
     if DBVersionADODS.Active then
       if DBVersionADODS.RecordCount>0 then
          begin
            if DBVersionADODS.FieldByName('INT_VALUE').Value<>NULL then
              res:=DBVersionADODS.FieldByName('INT_VALUE').AsInteger;
          end;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки ОРГАНА РЕГИСТРАЦИОННОГО УЧЕТА по умолчанию! Описание: '+E.Message);
  end;
  Result:=res;
end;

procedure TDataConnection.ReloadSettings;
begin

  try
     FMSBrDefSettADODS.Active:=False;
     FMSBrDefSettADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки ОРГАНА РЕГИСТРАЦИОННОГО УЧЕТА по умолчанию! Описание: '+E.Message);
  end;

  try
     StateDefSettADODS.Active:=False;
     StateDefSettADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки СУБЪЕКТА РФ по умолчанию! Описание: '+E.Message);
  end;

  try
     FMSBrStr2SettADODS.Active:=False;
     FMSBrStr2SettADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки ПАДЕЖ НАИМЕНОВАНИЯ ОРГ РЕГ УЧЕТА по умолчанию! Описание: '+E.Message);
  end;

  try
     RDirFIOStrSettADODS.Active:=False;
     RDirFIOStrSettADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки ФИО НАЧАЛЬНИКА ФМС РАЙОНА по умолчанию! Описание: '+E.Message);
  end;

  try
     RDirFIOStr2SettADODS.Active:=False;
     RDirFIOStr2SettADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки ПАДЕЖ ФИО НАЧАЛЬНИКА ФМС РАЙОНА по умолчанию! Описание: '+E.Message);
  end;

  try
     RRankStrSettADODS.Active:=False;
     RRankStrSettADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки ЗВАНИЕ НАЧАЛЬНИКА ФМС РАЙОНА по умолчанию! Описание: '+E.Message);
  end;

  try
     RRankStr2SettADODS.Active:=False;
     RRankStr2SettADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки ПАДЕЖ ЗВАНИЯ НАЧАЛЬНИКА ФМС РАЙОНА по умолчанию! Описание: '+E.Message);
  end;

  try
     AdrCountryDefADODS.Active:=False;
     AdrCountryDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки СТРАНЫ АДРЕСА по умолчанию! Описание: '+E.Message);
  end;

  try
     AdrStateDefADODS.Active:=False;
     AdrStateDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки ОБЛАСТИ АДРЕСА по умолчанию! Описание: '+E.Message);
  end;

  try
     AdrDistrictDefADODS.Active:=False;
     AdrDistrictDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки РАЙОНА АДРЕСА по умолчанию! Описание: '+E.Message);
  end;

  try
     AdrSettlDefADODS.Active:=False;
     AdrSettlDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки НАС. ПУНКТА АДРЕСА по умолчанию! Описание: '+E.Message);
  end;

  try
     CivilCountryDefADODS.Active:=False;
     CivilCountryDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки СТРАНЫ ГРАЖДАНСТВА по умолчанию! Описание: '+E.Message);
  end;

  try
     NationDefADODS.Active:=False;
     NationDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки НАЦИОНАЛЬНОСТИ по умолчанию! Описание: '+E.Message);
  end;

  try
     RegionDefADODS.Active:=False;
     RegionDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки РЕГИОН по умолчанию! Описание: '+E.Message);
  end;

  try
     AdrLinkDefADODS.Active:=False;
     AdrLinkDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки СВЯЗЬ ЛИЦА С АДРЕСОМ по умолчанию! Описание: '+E.Message);
  end;

  try
     DocLinkDefADODS.Active:=False;
     DocLinkDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки СВЯЗЬ ЛИЦА С ДОКУМЕНТОМ по умолчанию! Описание: '+E.Message);
  end;

  try
     DocTypeDefADODS.Active:=False;
     DocTypeDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки ТИПА ДОКУМЕНТА по умолчанию! Описание: '+E.Message);
  end;

  try
     DocStatusDefADODS.Active:=False;
     DocStatusDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки СТАТУСА ДОКУМЕНТА по умолчанию! Описание: '+E.Message);
  end;

  try
     PersStatusDefADODS.Active:=False;
     PersStatusDefADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки запроса настройки СТАТУСА ПРЕБЫВАНИЯ ЛИЦА по умолчанию! Описание: '+E.Message);
  end;

end;

procedure TDataConnection.ReloadSexes;
begin
  try
     SexADOT.Active:=False;
     SexADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ПОЛ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadNations;
begin
  try
     NationsADOT.Active:=False;
     NationsADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы НАЦИОНАЛЬНОСТЬ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadBuildTypes;
begin
  try
     BuildTypesADOT.Active:=False;
     BuildTypesADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы УРОВНИ ОБРАЗОВАНИЯ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadStreets;
begin
  try
     StreetsADODS.Active:=False;
     StreetsADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы УЛИЦЫ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadElinksAssocs;
begin
  try
     ElinksAssocsADODS.Active:=False;
     ElinksAssocsADODS.Active:=True;
     ElinksAssocsADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ОТНОШЕНИЯ ВЗАИМОСВЯЗЕЙ СУЩНОСТЕЙ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadUsers;
begin
  try
     UsersADOT.Active:=False;
     UsersADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ПОЛЬЗОВАТЕЛИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.SettlementsADOTITS_CITYGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
if SettlementsADOTITS_CITY.Value=1 then
     Text:='ДА'
  else
    Text:='НЕТ';
end;

procedure TDataConnection.ReloadRoles;
begin
  try
     RolesADOT.Active:=False;
     RolesADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы РОЛИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadUserRoles;
begin
  try
     UserRolesADODS.Active:=False;
     UserRolesADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы РОЛИ ПОЛЬЗОВАТЕЛЯ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadUserActions;
begin
  try
     UsrActionsADOT.Active:=False;
     UsrActionsADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СОБЫТИЯ ПОЛЬЗОВАТЕЛЯ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonOperations(GoToEnd: Boolean=False; ALL_OPS: Integer=0; Filtered: Boolean=True; OperationID: Integer=-1);
begin
  try
     PersonOperationsADODS.Active:=False;
     //PersonOperationsADODS.Parameters.ParamByName('ALL_OPS').Value:=ALL_OPS;
     PersonOperationsADODS.Filtered:=Filtered;
     PersonOperationsADODS.Active:=True;
     PersonOperationsADODS.Properties['Unique Table'].Value := 'ACTIONS_REG';


      if PersonOperationsADODS.Active then
        if PersonOperationsADODS.RecordCount>0 then
          if GoToEnd then
            PersonOperationsADODS.Last
          else if OperationID>0 then
            begin
              PersonOperationsADODS.First;
              repeat
                if PersonOperationsADODS.FieldByName('ACTIONS_ID').
                  AsInteger=OperationID then
                    Break;
                PersonOperationsADODS.Next;
                if PersonOperationsADODS.Eof then
                begin
                   ShowMessage('Плохая ошибка, не найдена только что добавленная операция в списке! Обратитесь к разработчику!');
                   Break;
                end;
              until false;
            end
          else
          begin

          end;

  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ОПЕРАЦИИ ПО ЛИЦУ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadZAGSServiceTypes;
begin
  try
     ZAGSServTypesADODS.Active:=False;
     ZAGSServTypesADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ТИПЫ ЗАПИСЕЙ ЗАГС! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonZAGSRecs;
begin
  try
     PersZAGSRecsADODS.Active:=False;
     PersZAGSRecsADODS.Active:=True;
     PersZAGSRecsADODS.Properties['Unique Table'].Value := 'ACTIONS_REG';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ЗАПИСЕЙ ЗАГС ПО ЛИЦУ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonJobRecs;
begin
  try
     PersonJobRecsADODS.Active:=False;
     PersonJobRecsADODS.Active:=True;
     PersonJobRecsADODS.Properties['Unique Table'].Value := 'ACTIONS_REG';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ЗАПИСЕЙ О ТРУДОВОЙ ДЕЯТЕЛЬНОСТИ ПО ЛИЦУ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonAdrLinks;
begin
  try
     PersonAdrLinksADODS.Active:=False;
     PersonAdrLinksADODS.Active:=True;
     PersonAdrLinksADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы АДРЕСА ПО ЛИЦУ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonAdrLinksCurrent;
begin
  try
     PersonAdrLinksADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
     //PersAllianLinksADODS.Properties['Update Criteria'].Value := adCriteriaKey;
     PersonAdrLinksADODS.UpdateCursorPos;
     //PersAllianLinksADODS.Recordset.Resync(adAffectCurrent, adResyncAllValues);//adResyncAutoIncrement+adResyncUpdates);
     PersonAdrLinksADODS.Resync([rmExact]);
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы АДРЕСОВ ПО ЛИЦУ ТЕКУЩАЯ ЗАПИСЬ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersLinksAdreses;
begin
  try
     LinkAdrADOT.Active:=False;
     LinkAdrADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы АДРЕСА ТАБЛИЦЫ СВЯЗИ С АДРЕСОМ ПО ЛИЦУ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonDocLinks;
begin
  try
     PersonDocLinksADODS.Active:=False;
     PersonDocLinksADODS.Active:=True;
     PersonDocLinksADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ДОКУМЕНТОВ ПО ЛИЦУ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonDocLinksCurrent;
begin
  try
     PersonDocLinksADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
     //PersAllianLinksADODS.Properties['Update Criteria'].Value := adCriteriaKey;
     PersonDocLinksADODS.UpdateCursorPos;
     //PersonDocLinksADODS.Recordset.Resync(adAffectCurrent, adResyncAllValues);//adResyncAutoIncrement+adResyncUpdates);
     PersonDocLinksADODS.Resync([rmExact]);
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ДОКУМЕНТОВ ПО ЛИЦУ ТЕКУЩАЯ ЗАПИСЬ! Описание: '+E.Message);
  end;
  //ShowMessage('---');
end;

procedure TDataConnection.ReloadPersLinksDocs;
begin
  try
     LinkDocADOT.Active:=False;
     LinkDocADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ДОКУМЕНТА ТАБЛИЦЫ СВЯЗИ С ДОКУЕНТОМ ПО ЛИЦУ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonAllianceLinks;
begin
  try
     PersAllianLinksADODS.Active:=False;
     PersAllianLinksADODS.Active:=True;
     PersAllianLinksADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ЛИЦ-РОДСТВЕННИКОВ ПО ЛИЦУ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonAllianceLinksCurrent;
begin
  try
     PersAllianLinksADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
     //PersAllianLinksADODS.Properties['Update Criteria'].Value := adCriteriaKey;
     PersAllianLinksADODS.UpdateCursorPos;
     //PersAllianLinksADODS.Recordset.Resync(adAffectCurrent, adResyncAllValues);//adResyncAutoIncrement+adResyncUpdates);
     PersAllianLinksADODS.Resync([rmExact]);
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ЛИЦ-РОДСТВЕННИКОВ ПО ЛИЦУ ТЕКУЩАЯ ЗАПИСЬ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadPersonCurrent;
begin
  try
     //PersAllianLinksADODS.Active:=False;
     //PersAllianLinksADODS.Active:=True;
     //PersAllianLinksADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
     //PersAllianLinksADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
     PersonsADODS.UpdateCursorPos;
     PersonsADODS.Recordset.Resync(adAffectCurrent, adResyncAllValues);
     PersonsADODS.Resync([rmExact]);
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ЛИЦbТЕКУЩАЯ ЗАПИСЬ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadLinkAlliance;
begin
  try
     LinkAllianceADOT.Active:=False;
     LinkAllianceADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ЛИЦА ТАБЛИЦЫ СВЯЗИ С РОДСТВЕННИКОМ ПО ЛИЦУ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadActAdrLinks;
begin
  try
     ActAdrLADOT.Active:=False;
     ActAdrLADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СПРАВОЧНИК ТИПОВ СВЯЗЕЙ ОПЕРАЦИЙ С АДРЕСАМИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadActDocLinks;
begin
  try
     ActDocLADOT.Active:=False;
     ActDocLADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СПРАВОЧНИК ТИПОВ СВЯЗЕЙ ОПЕРАЦИЙ С ДОКУМЕНТАМИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadActPersLinks;
begin
  try
     ActPersLADOT.Active:=False;
     ActPersLADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СПРАВОЧНИК ТИПОВ СВЯЗЕЙ ОПЕРАЦИЙ С ЛИЦАМИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadActOthDataLinks;
begin
  try
     ActOthDataLADOT.Active:=False;
     ActOthDataLADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СПРАВОЧНИК ТИПОВ СВЯЗЕЙ ОПЕРАЦИЙ С ПРОЧИМИ ДАННЫМИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadOpAdrLinks;
begin
  try
     OpAdrLinksADODS.Active:=False;
     OpAdrLinksADODS.Active:=True;
     OpAdrLinksADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы АДРЕСОВ ОПЕРАЦИИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadOpDocLinks;
begin
  try
     OpDocLinksADODS.Active:=False;
     OpDocLinksADODS.Active:=True;
     OpDocLinksADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ДОКУМЕНТОВ ОПЕРАЦИИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadOpPersLinks;
begin
  try
     OpPersonsADODS.Active:=False;
     OpPersonsADODS.Active:=True;
     OpPersonsADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ЛИЦ ОПЕРАЦИИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadOpOthDataLinks;
begin
  try
     OpOtherDataADODS.Active:=False;
     OpOtherDataADODS.Active:=True;
     OpOtherDataADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ПРОЧИХ ДАННЫХ ОПЕРАЦИИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadOpPersAdrLinks;
begin
  try
     OpPersAdrLinksADODS.Active:=False;
     OpPersAdrLinksADODS.Active:=True;
     //OpPersonsADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ВОЗМОЖНЫХ АДРЕСОВ ОПЕРАЦИИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadOpPersDocLinks;
begin
  try
     OpPersDocLinksADODS.Active:=False;
     OpPersDocLinksADODS.Active:=True;
     //OpPersonsADODS.Properties['Unique Table'].Value := 'AEL_ASSOC';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ВОЗМОЖНЫХ ДОКУМЕНТОВ ОПЕРАЦИИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadActionTypes;
begin
  try
     ActionTypesADOT.Active:=False;
     ActionTypesADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ТИПЫ ДЕЙСТВИЙ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadLinks;
begin
  try
     LinksADOT.Active:=False;
     LinksADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ТИПЫ СВЯЗЕЙ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadAdrLinks;
begin
  try
     AdrLinksADOT.Active:=False;
     AdrLinksADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ТИПЫ СВЯЗЕЙ С АДРЕСАМИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadDocLinks;
begin
  try
     DocLinksADOT.Active:=False;
     DocLinksADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ТИПЫ СВЯЗЕЙ С ДОКУМЕНТАМИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadAllianceLinks;
begin
  try
     AllianceLinksADODS.Active:=False;
     AllianceLinksADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ТИПЫ СВЯЗЕЙ С ЛИЦАМИ-РОДСТВЕННИКАМИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadReports;
begin
  try
     ReportsADOT.Active:=False;
     ReportsADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СПРАВОЧНИК ОТЧЕТЫ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadReportsOfCurrService;
begin
  try
     CurrOpReportsADODS.Active:=False;
     CurrOpReportsADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ОТЧЕТЫ ТЕКУЩЕЙ ОПЕРАЦИИ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadShorted;
begin
  try
     ShortedADOT.Active:=False;
     ShortedADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СПРАВОЧНИК СОКРАЩЕНИЙ! Описание: '+E.Message);
  end;
end;

function TDataConnection.RememberDBVersion: Boolean;
var res: Boolean;
begin
  res:=False;
  try
    RememberPrevDBVersionADOC.Execute;
    res:=True;
  except on E:Exception do
    ShowMessage('Неудачный вызов инструкции отметки '+
      'о номере прежней версии БД! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.SetDBVersion(newDBVersion, oldDBVersion: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  if ReloadDBVersionSetting=oldDBVersion then
  begin
    if RememberDBVersion then
    begin
      try
        SetDBVersionADOC.Parameters.ParamByName('DB_VERSION').
          Value:=newDBVersion;
        SetDBVersionADOC.Execute;
        res:=True;
      except on E:Exception do
        ShowMessage('Неудачный вызов хранимой процедуры очистки записей '+
          'связей операции с объектами! Описание: '+E.Message);
      end;
    end
    else
      ShowMessage('Ошибка отметки предыдущей версии БД!');
  end
  else
    ShowMessage('Одним из приложений уже произведено планируемое '+
        'изменение структуры БД, перезагрузите приложение!');
  Result:=res;
end;

function TDataConnection.goUpdate(UpdName: string): Boolean;
var res: Boolean;
begin
  res:=False;
  try
    DBUpdateADOQ.SQL.LoadFromFile(CDP+'\update\'+UpdName);
    //DBUpdateADOC.CommandText.
    DBUpdateADOQ.ExecSQL;
    res:=True;
  except on E:Exception do
    ShowMessage('Ошибка проведения update БД '+UpdName+'! Сообщение: '+E.Message);
  end;
  Result:=res;
end;

function TDataConnection.CheckDBVersion(newDBVersion, oldDBVersion: Integer): Boolean;
var res: Boolean;
    tmpDBVersion: Integer;
begin
  res:=False;
  if oldDBVersion<=0 then
  begin
    MainForm.MainStatusBar.Panels[3].
      Text:='Аварийная версия БД!';
    ShowMessage('Аварийная или неопределенная версия БД!')
  end
  else
  begin
    if newDBVersion<oldDBVersion then
      begin
        MainForm.MainStatusBar.Panels[3].
          Text:='Версия БД/БД-КЛ: '+IntToStr(oldDBVersion)
          +'/'+IntToStr(newDBVersion);
        ShowMessage('Версия БД более поздняя, чем используемая клиентким '+
          'приложением, обратитесь к разработчику за последней версией '+
          'клиентского приложения!');
      end
    else if newDBVersion=oldDBVersion then
      begin
        MainForm.MainStatusBar.Panels[3].
          Text:='Версия БД/БД-КЛ: '+IntToStr(newDBVersion);
        res:=True;
      end
    else if newDBVersion>oldDBVersion then
    begin
      if MessageDlg('Версия БД используемого приложением - '+
        IntToStr(newDBVersion)+', текущая версия БД - '+
        IntToStr(oldDBVersion)+'! Произвести UPDATE базы данных?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        tmpDBVersion:=oldDBVersion;

        if tmpDBVersion=1 then
        begin
          if not goUpdate('db_1ver_to_2ver_01.sql') then
          begin
            ShowMessage('Ошибка этапа преобразования БД db_1ver_to_2ver_01.sql!');
            Exit;
          end;
          tmpDBVersion:=2;
        end;

        //if SetDBVersion(tmpDBVersion, 1) then
        if SetDBVersion(tmpDBVersion, oldDBVersion) then
        begin
          if (tmpDBVersion<newDBVersion) then
            ShowMessage('Версия БД не доведена до требуемой!')
          else
            res:=True;
        end
        else
          ShowMessage('Ошибка установки версии, обратитесь к разработчику!');
      end;
    end
    else
      ShowMessage('Ошибка сопоставления версий БД!');

  end;

  Result:=res;
end;

procedure TDataConnection.FMSStorageADOCAfterConnect(Sender: TObject);
var useDBVersion: Integer;
begin
  if DataConnection.FMSStorageADOC.Connected then
  begin
      MainForm.MainHeaderControl.Sections[0].Text:='Отключение от БД';
      //MainForm.DBConnectRxSwitch.StateOn:=True;
      CurrentPersonID:=DataConnection.GetCurrentPersonID;
      if (CurrentPersonID>=0) then
      begin
        if GetUserActivity(CurrentPersonID) then
        begin
            useDBVersion:=ReloadDBVersionSetting;
            if CheckDBVersion( CLIENT_DB_VERSION, useDBVersion) then
            begin
              WriteUserInput;
              ReloadCurrUserRoles;
              DataConnection.ReloadAllDataSets;
            end
            else
            begin
              FMSStorageADOC.Connected:=False;
              ShowMessage('Отрицательный результат сверки версий БД!');
            end;
        end
        else
        begin
          FMSStorageADOC.Connected:=False;
          ShowMessage('Запись пользователя неактивна или не найдена!');
        end;
      end;
  end;
end;

procedure TDataConnection.FMSStorageADOCAfterDisconnect(Sender: TObject);
begin
  MainForm.MainHeaderControl.Sections[0].Text:='Подключение к БД';
  //MainForm.DBConnectRxSwitch.StateOn:=False;
end;

procedure TDataConnection.FMSStorageADOCBeforeDisconnect(Sender: TObject);
begin
  if (CurrentPersonID>=0) then
      begin
        WriteUserOutput;
      end;
end;

function TDataConnection.GetServiceCodeByID(SERVICE_ID: Integer):Integer;
var res: Integer;
begin
  res:=-1;
  try
    ServiceCodeByIDADODS.Active:=False;
    ServiceCodeByIDADODS.Parameters.ParamByName('SERVICE_ID').
      Value:=SERVICE_ID;
    ServiceCodeByIDADODS.Active:=True;
    res:=ServiceCodeByIDADODS.FieldByName('SERVICE_CODE').AsInteger;
  except on E:Exception do
    ShowMessage('Ошибка получения кода услуги по ID! Сообщение: '+E.Message);
  end;
  Result:=res;
end;

procedure TDataConnection.PacketOperationsFreeLnkItemsADODSBeforeInsert(
  DataSet: TDataSet);
begin
  if not ProgramInsertFlag then Abort;
end;

procedure TDataConnection.PacketSubOperationLinkItemsADODSBeforeInsert(
  DataSet: TDataSet);
begin
  if not ProgramInsertFlag then Abort;
end;

procedure TDataConnection.PersonOperationsADODSAfterPost(DataSet: TDataSet);
var ServiceCode: Integer;
begin
  if False then
  begin
  ServiceCode:=GetServiceCodeByID
    (PersonOperationsADODS.FieldByName('SERVICE_ID').AsInteger);
  case ServiceCode of
    LOCATION_REG_STATEMENT_SERVICE_CODE:
    begin
      if MessageDlg('Добавить объекты операции по умолчанию?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          if MessageDlg('Очистить предыдущие объекты операции?',
              mtConfirmation,[mbYes,mbNo],0) = mrYes then
                 ClearOperationAssocs(PersonOperationsADODS.
                 FieldByName('ACTIONS_ID').AsInteger);
          InsertCurrentOpFoundationPerson;
          InsertCurrentOpAssocByLinkCode(PERS_OWNER_OP_LINK_CODE);
          InsertCurrentOpAssocByLinkCode(ADR_PREV_RESIDING_OP_LINK_CODE);
          InsertCurrentOpAssocByLinkCode(ADR_LOCATION_NAME_OP_LINK_CODE);
          InsertCurrentOpAssocByLinkCode(INCOMED_DOC_IDENTITY_OP_LINK_CODE);
          InsertCurrentOpAssocByLinkCode(OWNER_DOC_IDENTITY_OP_LINK_CODE);
          InsertCurrentOpAssocByLinkCode(DOC_TEMP_REGISTRY_GROUND_OP_LINK_CODE);
          ReloadActAdrLinks;
          ReloadActDocLinks;
          ReloadActPersLinks;
          ReloadOpPersAdrLinks;
          ReloadOpPersDocLinks;
          ReloadOpPersLinks;
          ReloadOpAdrLinks;
          ReloadOpDocLinks;
        end;
    end;
  else
    begin

    end;
  end;
  end;
end;

procedure TDataConnection.PersonOperationsADODSAfterScroll(DataSet: TDataSet);
begin
  if GroupDataChanged then
  begin
    GroupDataChanged:=False;
    ActivityShow;
    //Варианты адресов и документов для операции
    ReloadOpPersAdrLinks;
    ReloadOpPersDocLinks;

    //Списки адресов и документов, лиц и проч данных операции
    ReloadOpAdrLinks;
    ReloadOpDocLinks;
    ReloadOpPersLinks;
    ReloadOpOthDataLinks;
  end;
end;

procedure TDataConnection.PersonOperationsADODSBeforeInsert(DataSet: TDataSet);
begin
  if not ProgramInsertFlag then Abort;
end;

procedure TDataConnection.PersonOperationsADODSCalcFields(DataSet: TDataSet);
begin
  if PersonOperationsADODSTO_PRINT.Value=1 then
    PersonOperationsADODSTO_PRINT_BOOL.Value:=True
  else
    PersonOperationsADODSTO_PRINT_BOOL.Value:=False;
end;

procedure TDataConnection.PersonOperationsADODSFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if (PersonDesktopForm<>nil) then
  if PersonDesktopForm.CheckBox1.Checked then
      begin
        Accept:=False;
        if PersonOperationsADODS.FieldByName('ITS_GROUP').Value<>NULL then
          if PersonOperationsADODS.FieldByName('ITS_GROUP').AsInteger>0 then
            Accept:=True;
      end
  else
    Accept:=True;
end;

procedure TDataConnection.PrintCurrOpReports(ReportActionType: TReportActionType);
begin
  //ShowMessage(IntToStr(CurrOpReportsADODS.RecordCount));
  if CurrOpReportsADODS.Active then
    if CurrOpReportsADODS.RecordCount>0 then
    begin

      //CurrOpReportsADODS.First;
      //ShowMessage('2');
      repeat

        ReportGenDM.ReportActionOnCode(ReportActionType,
          CurrOpReportsADODS.FieldByName('REPORT_INT_CODE').AsInteger);

        CurrOpReportsADODS.Next;
        if CurrOpReportsADODS.Eof then
          Break;
      until false;
    end;
end;

procedure TDataConnection.PrintCurrentOp(ReportActionType: TReportActionType);
var ACTION_ID, TO_PRINT_VALUE: Integer;
begin
  if PersonOperationsADODS.Active then
    if PersonOperationsADODS.RecordCount>0 then
    begin
      try
        //PersonOperationsADODS.DisableControls;
        try
        ACTION_ID:=PersonOperationsADODS.FieldByName('ACTIONS_ID').AsInteger;

        if not (PersonOperationsADODS.State in [dsEdit]) then
          PersonOperationsADODS.Edit;
        //PersonOperationsADODS.FieldByName('TO_PRINT').Value:=1;

        if PersonOperationsADODS.FieldByName('TO_PRINT').AsInteger=1 then
        begin
          PrintCurrOpReports(ReportActionType);
          if not (PersonOperationsADODS.State in [dsEdit]) then
            PersonOperationsADODS.Edit;
          PersonOperationsADODS.FieldByName('TO_PRINT').Value:=0;
        end;

        if (PersonOperationsADODS.State in [dsEdit]) then
          PersonOperationsADODS.Post;

        //ShowMessage('подч');
        //PersonOperationsADODS.Filtered:=False;
        ReloadPersonOperations(False, 0, False);
        PersonOperationsADODS.First;
        repeat
          //ShowMessage('подч');
          if PersonOperationsADODS.FieldByName('ACTION_GROUP_ID').
            AsInteger=ACTION_ID then
            begin
              if PersonOperationsADODS.FieldByName('TO_PRINT').AsInteger=1 then
              begin
                PrintCurrOpReports(ReportActionType);
                if not (PersonOperationsADODS.State in [dsEdit]) then
                  PersonOperationsADODS.Edit;
                PersonOperationsADODS.FieldByName('TO_PRINT').Value:=0;
              end;
            end;
          PersonOperationsADODS.Next;
          if PersonOperationsADODS.Eof then
             Break;
        until false;

        ReloadPersonOperations;
        //PersonOperationsADODS.Filtered:=True;

        PersonOperationsADODS.First;
        repeat
          if PersonOperationsADODS.FieldByName('ACTIONS_ID').
            AsInteger=ACTION_ID then
              Break;
          PersonOperationsADODS.Next;
          if PersonOperationsADODS.Eof then
             Break;
        until false;

        if (PersonOperationsADODS.State in [dsEdit]) then
          PersonOperationsADODS.Post;
        except on E:Exception do
          ShowMessage('Ошибка посылки на печать! Описание: '+E.Message);
        end;
      finally
        //PersonOperationsADODS.EnableControls;
      end;
    end;
end;

procedure TDataConnection.ReverseCurrentActionToPrintStatus;
var ACTION_ID, TO_PRINT_VALUE: Integer;
begin
  if PersonOperationsADODS.Active then
    if PersonOperationsADODS.RecordCount>0 then
    begin
      try
        PersonOperationsADODS.DisableControls;
        try
        ACTION_ID:=PersonOperationsADODS.FieldByName('ACTIONS_ID').AsInteger;
        if not (PersonOperationsADODS.State in [dsEdit]) then
          PersonOperationsADODS.Edit;
        if PersonOperationsADODS.FieldByName('TO_PRINT').AsInteger=1 then
          PersonOperationsADODS.FieldByName('TO_PRINT').Value:=0
        else
          PersonOperationsADODS.FieldByName('TO_PRINT').Value:=1;
        TO_PRINT_VALUE:=PersonOperationsADODS.FieldByName('TO_PRINT').AsInteger;
        if (PersonOperationsADODS.State in [dsEdit]) then
          PersonOperationsADODS.Post;
        //PersonOperationsADODS.Filtered:=False;

        ReloadPersonOperations(False, 0, False);
        PersonOperationsADODS.First;
        repeat
          if PersonOperationsADODS.FieldByName('ACTION_GROUP_ID').
            AsInteger=ACTION_ID then
            begin
              if not (PersonOperationsADODS.State in [dsEdit]) then
                PersonOperationsADODS.Edit;
              PersonOperationsADODS.FieldByName('TO_PRINT').Value:=TO_PRINT_VALUE;
            end;
          PersonOperationsADODS.Next;
          if PersonOperationsADODS.Eof then
             Break;
        until false;

        ReloadPersonOperations;
        //PersonOperationsADODS.Filtered:=True;

        PersonOperationsADODS.First;
        repeat
          if PersonOperationsADODS.FieldByName('ACTIONS_ID').
            AsInteger=ACTION_ID then
              Break;
          PersonOperationsADODS.Next;
          if PersonOperationsADODS.Eof then
             Break;
        until false;

        if (PersonOperationsADODS.State in [dsEdit]) then
          PersonOperationsADODS.Post;
        except on E:Exception do
          ShowMessage('Ошибка установка признака посылки на печать! Описание: '+
            E.Message);
        end;
      finally
        PersonOperationsADODS.EnableControls;
      end;
    end;
end;

procedure TDataConnection.ActivityShow;
begin
  if OpCharsCount>2000000 then
    OpCharsCount:=0;
  MainForm.MainStatusBar.Panels[3].Text:=
    StringOfChar('*',(OpCharsCount mod 3)+1)+
    '('+IntToStr(OpCharsCount)+')';
  OpCharsCount:=OpCharsCount+1;
end;

procedure TDataConnection.PersonOperationsADODSMoveComplete(
  DataSet: TCustomADODataSet; const Reason: TEventReason; const Error: Error;
  var EventStatus: TEventStatus);
begin
  //ActivityShow;
  //ShowMessage('ddd');
  {//Варианты адресов и документов для операции
  ReloadOpPersAdrLinks;
  ReloadOpPersDocLinks;

  //Списки адресов и документов, лиц и проч данных операции
  ReloadOpAdrLinks;
  ReloadOpDocLinks;
  ReloadOpPersLinks;
  ReloadOpOthDataLinks;}
end;

procedure TDataConnection.PersonOperationsADODSWillMove(
  DataSet: TCustomADODataSet; const Reason: TEventReason;
  var EventStatus: TEventStatus);
begin
  //ActivityShow;
end;

procedure TDataConnection.PersonsADODSBeforeInsert(DataSet: TDataSet);
begin
  //Перед возникновением новой строки в DataSet
  if not ProgramInsertFlag then Abort;
end;

procedure TDataConnection.PersonsADODSCalcFields(DataSet: TDataSet);
begin
  if PersonsADODSTAKE_PDATA_CONSENT.Value=1 then
    PersonsADODSTAKE_CONSENT_BOOL.Value:=True
  else
    PersonsADODSTAKE_CONSENT_BOOL.Value:=False;
end;

procedure TDataConnection.PersonsADODSEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  //E.Message
end;

procedure TDataConnection.PersonsADODSFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
//var
//  Dest: Tstrings;
//  i: integer;
//  AnalysStr: string;
//  acceptsArray: array of Boolean;
//  acceptVal: Boolean;
begin

  Accept:=((Pos(AnsiLowerCase(PersonDesktopForm.PersonSearchLIKEEdit.Text),
    AnsiLowerCase(PersonsADODS.
    FieldByName('LAST_NAME').AsString))=1) or
    (Length(PersonDesktopForm.PersonSearchLIKEEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(PersonDesktopForm.PersonSearchNameEdit.Text),
    AnsiLowerCase(PersonsADODS.
      FieldByName('FIRST_NAME').AsString))=1) or
      (Length(PersonDesktopForm.PersonSearchNameEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(PersonDesktopForm.PersonSearchSurnameEdit.Text),
    AnsiLowerCase(PersonsADODS.
      FieldByName('SURNAME').AsString))=1) or
      (Length(PersonDesktopForm.PersonSearchSurnameEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(PersonDesktopForm.PersonSearchCivilEdit.Text),
    AnsiLowerCase(PersonsADODS.
      FieldByName('COUNTRY_LOOK').AsString))=1) or
      (Length(PersonDesktopForm.PersonSearchCivilEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(PersonDesktopForm.PersonSearchBirthdateEdit.Text),
    AnsiLowerCase(PersonsADODS.
      FieldByName('BIRTHDATE').AsString))=1) or
      (Length(PersonDesktopForm.PersonSearchBirthdateEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(PersonDesktopForm.PersonSearchNationEdit.Text),
    AnsiLowerCase(PersonsADODS.
      FieldByName('NATION_LOOK').AsString))=1) or
      (Length(PersonDesktopForm.PersonSearchNationEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(PersonDesktopForm.PersonSearchBCountEdit.Text),
    AnsiLowerCase(PersonsADODS.
      FieldByName('BIRTH_COUNTRY_LOOK').AsString))=1) or
      (Length(PersonDesktopForm.PersonSearchBCountEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(PersonDesktopForm.PersonSearchBRegionEdit.Text),
    AnsiLowerCase(PersonsADODS.
      FieldByName('BTH_REGION_LOOK').AsString))=1) or
      (Length(PersonDesktopForm.PersonSearchBRegionEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(PersonDesktopForm.PersSearchBSettlemEdit.Text),
    AnsiLowerCase(PersonsADODS.
      FieldByName('SETTL_LOOK').AsString))=1) or
      (Length(PersonDesktopForm.PersSearchBSettlemEdit.Text)=0));
  {Accept:=False;
  AnalysStr:=Trim(PersonDesktopForm.PersonSearchLIKEEdit.Text);
  //ShowMessage(AnalysStr);
  if (Length(AnalysStr)>0) then
  begin
    Dest := TstringList.Create;
    StringToWords(AnalysStr, Dest, [' ']);
    if Dest.Count>0 then
    begin

      SetLength(acceptsArray,Dest.Count);
      acceptVal:=True;
      for i := 0 to Dest.Count - 1 do
      begin

        acceptsArray[i]:=False;

        //ShowMessage(AnsiLowerCase(PersonsADODS.FieldByName('LAST_NAME').
        //  AsString));
        if (i=0) and (Pos(AnsiLowerCase(Dest.Strings[i]),
          AnsiLowerCase(PersonsADODS.FieldByName('LAST_NAME').
          AsString))=1) then
            acceptsArray[i]:=True;


        if (i=1) and (Pos(AnsiLowerCase(Dest.Strings[i]),
          AnsiLowerCase(PersonsADODS.FieldByName('FIRST_NAME').
          AsString))=1) then
            acceptsArray[i]:=True;

        if (i=2) and (Pos(AnsiLowerCase(Dest.Strings[i]),
          AnsiLowerCase(PersonsADODS.FieldByName('SURNAME').
          AsString))=1) then
            acceptsArray[i]:=True;

        if (i>=0) and (i<=5) and ( (Pos(AnsiLowerCase(Dest.Strings[i]),
          AnsiLowerCase(PersonsADODS.FieldByName('COUNTRY_LOOK').
          AsString))=1)
          or (Pos(AnsiLowerCase(Dest.Strings[i]),
          AnsiLowerCase(PersonsADODS.FieldByName('BIRTH_COUNTRY_LOOK').
          AsString))=1)
          or (Pos(AnsiLowerCase(Dest.Strings[i]),
          AnsiLowerCase(PersonsADODS.FieldByName('SEC_COUNTRY_LOOK').
          AsString))=1)
          or (Pos(AnsiLowerCase(Dest.Strings[i]),
          AnsiLowerCase(PersonsADODS.FieldByName('BTH_REGION_LOOK').
          AsString))=1)
          or (Pos(AnsiLowerCase(Dest.Strings[i]),
          AnsiLowerCase(PersonsADODS.FieldByName('BIRTHPLACE').
          AsString))=1)
          or (Pos(AnsiLowerCase(Dest.Strings[i]),
          AnsiLowerCase(PersonsADODS.FieldByName('NATION_LOOK').
          AsString))=1)
          ) then
            acceptsArray[i]:=True;

        acceptVal:=acceptVal and acceptsArray[i];

      end;

      Accept:=acceptVal;
    end
    else
    begin
      Accept:=True;
    end;
  end
  else
    Accept:=True;  }

end;

procedure TDataConnection.PersonsADODSPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('Ошибка фиксации изменений в БД, Д');
end;

procedure TDataConnection.PersonsADODSTAKE_PDATA_CONSENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if PersonsADODSTAKE_PDATA_CONSENT.Value=1 then
     Text:='ДА'
  else
    Text:='НЕТ';
end;

procedure TDataConnection.ReloadOperationDataSets(OperationID: Integer=-1);
begin
  ReloadPersonView;
  //Варианты адресов и документов для операции
  ReloadOpPersAdrLinks;
  ReloadOpPersDocLinks;

  ReloadPersonOperations(False, 0, True, OperationID);

  //Типы связей элементоф данных с операцией (синие)
  ReloadActAdrLinks;
  ReloadActDocLinks;
  ReloadActPersLinks;
  ReloadActOthDataLinks;

  //Списки адресов и документов, лиц и проч данных операции
  ReloadOpAdrLinks;
  ReloadOpDocLinks;
  ReloadOpPersLinks;
  ReloadOpOthDataLinks;
end;

procedure TDataConnection.ReloadAllDataSets;
begin

  ReloadPersonView;
  ReloadStatesView;
  ReloadDistrictsView;
  ReloadSettlemsView;
  ReloadElinksView;

  ReloadSexes;
  ReloadPlaceStatuses;
  ReloadBTHRegions;
  ReloadNations;
  ReloadBuildTypes;
  ReloadLinks;
  ReloadAdrLinks;
  ReloadDocLinks;
  ReloadAllianceLinks;
  ReloadPersonsADODS;
  ReloadDictsADODS;
  ReloadCountriesADOT;
  ReloadStatesADOT;
  ReloadDistrictsADOT;
  ReloadSettlements;
  ReloadDocTypesADOT;
  ReloadStreets;

  ReloadElinksAssocs;

  ReloadServicesADOT;
  ReloadServicesActionLinks;
  ReloadServicesGroupsADOT;
  ReloadServicesGroupList;
  ReloadServiceActionItems;
  ReloadServiceGroupActionItems;
  ReloadPacketSubOperationLinkItems;
  ReloadPacketOperationsFreeLnkItems;
  ReloadServiceActionReports;

  ReloadServicesView;

  ReloadOKVD;
  ReloadAReasons;
  ReloadTReasons;
  ReloadDocStatuses;
  ReloadFMSBranches;
  ReloadSettings;
  ReloadReports;
  ReloadReportsOfCurrService;
  ReloadShorted;

  ReloadPersonAdrLinks;
  ReloadPersLinksAdreses;

  ReloadPersonDocLinks;
  ReloadPersLinksDocs;

  ReloadPersonAllianceLinks;
  ReloadLinkAlliance;

  ReloadOperationDataSets;

  ReloadZAGSServiceTypes;
  ReloadPersonZAGSRecs;
  ReloadPersonJobRecs;

end;

procedure TDataConnection.ReloadCurrOpPrevResideAdr;
begin
  try
     CurrOpPrevResideAdrADODS.Active:=False;
     CurrOpPrevResideAdrADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки выборки ПАРАМЕТРА ОПЕРАЦИИ АДРЕС ПРЕЖНЕГО ПРОЖИВАНИЯ (ПРИБЫЛ ИЗ)! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadCurrOpIncomeRegGround;
begin
  try
     CurrOpIncomeRegGroundADODS.Active:=False;
     CurrOpIncomeRegGroundADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки выборки ПАРАМЕТРА ОПЕРАЦИИ ДОКУМЕНТ-ОСНОВАНИЕ ДЛЯ ВСЕЛЕНИЯ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadCurrOpIncomeRegOwnerPers;
begin
  try
     CurrOpIncomeRegGroundADODS.Active:=False;
     CurrOpIncomeRegGroundADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки выборки ПАРАМЕТРА ОПЕРАЦИИ ДОКУМЕНТ-ОСНОВАНИЕ ДЛЯ ВСЕЛЕНИЯ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadCurrOpLocationRegAdr;
begin
  try
     CurrOpLocationRegAdrADODS.Active:=False;
     CurrOpLocationRegAdrADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки выборки ПАРАМЕТРА ОПЕРАЦИИ АДРЕС ПРЕБЫВАНИЯ ДЛЯ ВСЕЛЕНИЯ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadCurrOpIncomeRegIdentDoc;
begin
  try
     CurrOpIncomeRegIdentDocADODS.Active:=False;
     CurrOpIncomeRegIdentDocADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки выборки ПАРАМЕТРА ДОКУМЕНТ ИДЕНТИФИКАЦИИ РЕГИСТРИРУЕМОГО ДЛЯ ВСЕЛЕНИЯ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.ReloadCurrOpIncomeOwnerIdentDoc;
begin
  try
     CurrOpIncomeOwnerIdentDocADODS.Active:=False;
     CurrOpIncomeOwnerIdentDocADODS.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки выборки ПАРАМЕТРА ДОКУМЕНТ ИДЕНТИФИКАЦИИ ВЛАДЕЛЬЦА ДЛЯ ВСЕЛЕНИЯ! Описание: '+E.Message);
  end;
end;

procedure TDataConnection.BTHRegionsADOTIS_RCENTERGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  //if BTHRegionsADOTIS_RCENTER.Value then
  //begin
    if BTHRegionsADOTIS_RCENTER.Value=1 then
       Text:='Да'
    else
        Text:='Нет';
  //end
  //else
  //  Text:='Нет';

end;

procedure TDataConnection.DataModuleCreate(Sender: TObject);
begin
  CDP:=GetCurrentDir;
  FMSINIFile := TIniFile.Create(GetCurrentDir+'\FMSReportGenerator.ini');
  DataConnection.FMSStorageADOC.Connected:=False;
  DataConnection.FMSStorageADOC.ConnectionString:='FILE NAME='+CDP+'\FMSMainChannel.udl';

  if FMSINIFile.ReadString('BUSINESS_DATA','автоматическое_подключение_к_БД','NO')='YES' then
    DataConnection.FMSStorageADOC.Connected:=True;

  DataConnection.FMSStorageADOC.LoginPrompt:=True;

  //ADTGFileSDlg.InitialDir := CDP+'\er_model\';
  //ADTGFileODlg.InitialDir := CDP+'\er_model\';
end;

end.
