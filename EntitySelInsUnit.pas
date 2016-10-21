unit EntitySelInsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ConstantsUnit, Buttons, Mask, DBCtrls,
  DB, Grids, DBGrids, DBCtrlsEh, ADODB, ActnList, DBActns, GridsEh, DBGridEh,
  DBLookupEh, MemTableDataEh, MemTableEh, EhLibADO;

type

  //TEntSelFormManagment = class

  //end;

  TEntSelInsertForm = class(TForm)
    SelInsEntityPageControl: TPageControl;
    AddNewAdresTabSheet: TTabSheet;
    SelectExistAdresTabSheet: TTabSheet;
    AddNewDocTabSheet: TTabSheet;
    SelectExistDocTabSheet: TTabSheet;
    AddNewPersonTabSheet: TTabSheet;
    SelectExistPersonTabSheet: TTabSheet;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    Label23: TLabel;
    AdrPersLinkTypeDBLookupCB: TDBLookupComboBox;
    Label16: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label25: TLabel;
    DocCustomBranchNameDBEdit: TDBEdit;
    Label20: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    Label24: TLabel;
    DocPersLinkTypeDBLookupCB: TDBLookupComboBox;
    Label26: TLabel;
    SelectExistOperationTypeTabSheet: TTabSheet;
    ServicesDictTreeView: TTreeView;
    DBLookupComboBox15: TDBLookupComboBox;
    Label33: TLabel;
    DBLookupComboBox16: TDBLookupComboBox;
    Label34: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    BlankPersonADODS: TADODataSet;
    BlankPersonADODSPERSON_ID: TIntegerField;
    BlankPersonADODSFIRST_NAME: TWideStringField;
    BlankPersonADODSLAST_NAME: TWideStringField;
    BlankPersonADODSSURNAME: TWideStringField;
    BlankPersonADODSPERSON_BUILDING_ID: TIntegerField;
    BlankPersonADODSPERSON_COUNTRY_ID: TIntegerField;
    BlankPersonADODSPERSONS_NATION_ID: TIntegerField;
    BlankPersonADODSPERSON_SEX_ID: TIntegerField;
    BlankPersonADODSBIRTHDATE: TDateField;
    BlankPersonADODSREG_PSTATION_ID: TIntegerField;
    BlankPersonADODSBIRTH_REGION_ID: TIntegerField;
    BlankPersonADODSBIRTH_SETTLEM_ID: TIntegerField;
    BlankPersonADODSBIRTHPLACE: TWideStringField;
    BlankPersonADODSPERS_PLSTATUS_ID: TIntegerField;
    BlankPersonADODSIDENTITY_DOC_ID: TIntegerField;
    BlankPersonADODSPERSON_INN: TWideStringField;
    BlankPersonADODSPERSON_SEX_ID_LOOK: TStringField;
    BlankPersonADODSBTH_REGION_LOOK: TStringField;
    BlankPersonADODSPERS_PLSTAT_LOOK: TStringField;
    BlankPersonADODSBUILD_TYPE_LOOK: TStringField;
    BlankPersonADODSNATION_LOOK: TStringField;
    BlankPersonADODSCOUNTRY_LOOK: TStringField;
    BlankPersonADODSSETTL_LOOK: TStringField;
    BlankPersonADODSTAKE_PDATA_CONSENT: TSmallintField;
    BlankPersonDS: TDataSource;
    BlankPersAllianLinksADODS: TADODataSet;
    BlankPersAllianLinksADODSEL_REG_ID: TIntegerField;
    BlankPersAllianLinksADODSEVENT_DATE: TDateField;
    BlankPersAllianLinksADODSTERMINATE_DATE: TDateField;
    BlankPersAllianLinksADODSPERSON_ID: TIntegerField;
    BlankPersAllianLinksADODSLINK_PERSON_ID: TIntegerField;
    BlankPersAllianLinksADODSELINK_TYPE: TIntegerField;
    BlankPersAllianLinksADODSENTLNK_TYPE_ID: TIntegerField;
    BlankPersAllianLinksADODSESTATUS_ID: TIntegerField;
    BlankPersAllianLinksADODSPERSON_NAME: TWideStringField;
    BlankPersAllianLinksADODSPERS_LOOK: TStringField;
    BlankPersAllianLinksADODSALLIAN_LOOK: TStringField;
    BlankPersAllianLinksDS: TDataSource;
    BlankLinkAllianADOT: TADOTable;
    BlankLinkAlianDS: TDataSource;
    BlankAdrADODS: TADODataSet;
    BlankAdrDS: TDataSource;
    BlankAdrELinkADODS: TADODataSet;
    BlankAdrELinkDS: TDataSource;
    BlankDocADODS: TADODataSet;
    BlankDocADODSDOC_ID: TIntegerField;
    BlankDocADODSDOC_NAME: TWideStringField;
    BlankDocADODSIS_IDENTITY: TSmallintField;
    BlankDocADODSDOC_TYPE_ID: TIntegerField;
    BlankDocADODSDOC_SERIE: TWideStringField;
    BlankDocADODSDOC_NUM: TWideStringField;
    BlankDocADODSDOC_CREATE_DATE: TDateField;
    BlankDocADODSDOC_TREASON_ID: TIntegerField;
    BlankDocADODSDOC_EXPIRATION_DATE: TDateField;
    BlankDocADODSDOC_BRANCH_NAME: TWideStringField;
    BlankDocADODSDOC_BRANCH_ID: TIntegerField;
    BlankDocADODSDOC_POLICY_STATION_ID: TIntegerField;
    BlankDocADODSDOC_BRANCHE_CODE: TWideStringField;
    BlankDocDS: TDataSource;
    BlankDocELinkADODS: TADODataSet;
    BlankDocELinkDS: TDataSource;
    InsSelActionList: TActionList;
    PersAllianDSPost: TDataSetPost;
    Panel1: TPanel;
    Panel3: TPanel;
    OKBitBtn: TBitBtn;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    PersonSearchADODS: TADODataSet;
    PersonSearchDS: TDataSource;
    StatusBar: TStatusBar;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    BlankPersonADODSBIRTH_DISTRICT_ID: TIntegerField;
    BlankPersonADODSBIRTH_COUNTRY_ID: TIntegerField;
    BlankPersonADODSSEC_COUNTRY_ID: TIntegerField;
    BlankPersonADODSCLOSED: TSmallintField;
    BlankPersonADODSBIRTH_COUNTRY_LOOK: TStringField;
    PersCountryDBLookCEh: TDBLookupComboboxEh;
    GroupBox6: TGroupBox;
    PersNationDBLookCEh: TDBLookupComboboxEh;
    GroupBox7: TGroupBox;
    PersBthCountryDBLookCEh: TDBLookupComboboxEh;
    GroupBox8: TGroupBox;
    PBthRegDBLookCEh: TDBLookupComboboxEh;
    GroupBox9: TGroupBox;
    PersSexDBLookCEh: TDBLookupComboboxEh;
    BlankPersonADODSDEATHDATE: TDateField;
    GroupBox10: TGroupBox;
    PBthSettlDBLookCEh: TDBLookupComboboxEh;
    DocSearchADODS: TADODataSet;
    DocSearchDS: TDataSource;
    Panel5: TPanel;
    GroupBox11: TGroupBox;
    SearchDocSerieDBEdit: TDBEdit;
    GroupBox12: TGroupBox;
    SearchDocNumDBEdit: TDBEdit;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    SearchDocTypeDBLookCEh: TDBLookupComboboxEh;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    DBGrid3: TDBGrid;
    BlankDocADODSDOC_TYPE_LOOK: TStringField;
    BlankDocTypeDBLookCEh: TDBLookupComboboxEh;
    BlankDocELinkADODSEL_REG_ID: TIntegerField;
    BlankDocELinkADODSEVENT_DATE: TDateField;
    BlankDocELinkADODSTERMINATE_DATE: TDateField;
    BlankDocELinkADODSENTLNK_TYPE_ID: TIntegerField;
    BlankDocELinkADODSESTATUS_ID: TIntegerField;
    BlankDocELinkADODSPERSON_ID: TIntegerField;
    BlankDocELinkADODSADRES_ID: TIntegerField;
    BlankDocELinkADODSDOC_ID: TIntegerField;
    BlankDocELinkADODSLINK_PERSON_ID: TIntegerField;
    BlankDocELinkADODSCLOSED: TSmallintField;
    Label45: TLabel;
    DBLookupComboboxEh18: TDBLookupComboboxEh;
    AdrSearchDS: TDataSource;
    AdrSearchADODS: TADODataSet;
    BlankDocADODSCLOSED: TSmallintField;
    BlankDocADODSDOC_STATUS_ID: TIntegerField;
    BlankDocADODSDOC_STATUS_LOOK: TStringField;
    SearchDocStatusDBLookCEh: TDBLookupComboboxEh;
    DocSearchADODSDOC_CREATE_DATE: TDateField;
    DocSearchADODSDOC_ID: TIntegerField;
    DocSearchADODSDOC_BRANCH_NAME: TWideStringField;
    DocSearchADODSDOC_NUM: TWideStringField;
    DocSearchADODSDOC_SERIE: TWideStringField;
    DocSearchADODSDOC_EXPIRATION_DATE: TDateField;
    DocSearchADODSIS_IDENTITY: TSmallintField;
    DocSearchADODSPOLICY_STATION_NAME: TWideStringField;
    DocSearchADODSDOC_TYPE_NAME: TWideStringField;
    DocSearchADODSDOC_TYPE_INT_CODE: TIntegerField;
    DocSearchADODSDOC_FULL_NAME: TWideStringField;
    DocSearchADODSDOC_BRANCHE_CODE: TWideStringField;
    DocSearchADODSPLSTATUS_NAME: TWideStringField;
    DocSearchADODSDOC_STATUS_ID: TIntegerField;
    SrchDocCreateDateDBDTEdEh: TDBDateTimeEditEh;
    SrchDocExpDateDBDTEdEh: TDBDateTimeEditEh;
    SearchDocBranchNameDBEdit: TDBEdit;
    Label47: TLabel;
    AdrCountryDBLookCEh: TDBLookupComboboxEh;
    BlankAdrADODSADRES_ID: TIntegerField;
    BlankAdrADODSHOUSE_NUM: TIntegerField;
    BlankAdrADODSCORPUS: TWideStringField;
    BlankAdrADODSAPARTMENT_NUM: TIntegerField;
    BlankAdrADODSLITER: TWideStringField;
    BlankAdrADODSLEAVE_SQUARE: TBCDField;
    BlankAdrADODSFULL_SQUARE: TBCDField;
    BlankAdrADODSADR_COUNTRY_ID: TIntegerField;
    BlankAdrADODSADR_STATE_ID: TIntegerField;
    BlankAdrADODSADR_REGION_ID: TIntegerField;
    BlankAdrADODSADR_SETTLEM_ID: TIntegerField;
    BlankAdrADODSSTREET_NAME: TWideStringField;
    BlankAdrADODSCLOSED: TSmallintField;
    BlankAdrADODSCOUNTRY_LOOK: TStringField;
    BlankAdrADODSSTATE_LOOK: TStringField;
    BlankAdrADODSDISTRICT_LOOK: TStringField;
    BlankAdrADODSSETTL_LOOK: TStringField;
    AdrStateDBLookCEh: TDBLookupComboboxEh;
    AdrDistrictDBLookCEh: TDBLookupComboboxEh;
    AdrSettlemDBLookCEh: TDBLookupComboboxEh;
    StreetDictDBLookCEh: TDBLookupComboboxEh;
    Label48: TLabel;
    DocBrancheCodeDBLookCEh: TDBLookupComboboxEh;
    BlankDocADODSDOC_BRANCHE_LOOK: TStringField;
    BlankPersonADODSLOCATION_ADRES_ID: TIntegerField;
    BlankSettlemADODS: TADODataSet;
    BlankSettlemDS: TDataSource;
    SettlSearchDS: TDataSource;
    SettlSearchADODS: TADODataSet;
    SelectExistSettlementTabSheet: TTabSheet;
    DBGrid4: TDBGrid;
    Panel6: TPanel;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    AdrSearchADODSADRES_ID: TIntegerField;
    AdrSearchADODSADR_FULL_NAME: TWideStringField;
    AdrSearchADODSADR_FULL_PART1: TWideStringField;
    AdrSearchADODSADR_FULL_PART2: TWideStringField;
    AdrSearchADODSCOUNTRY_NAME: TWideStringField;
    AdrSearchADODSSTATE_NAME: TWideStringField;
    AdrSearchADODSDISTRICT_NAME: TWideStringField;
    AdrSearchADODSSETTLEM_NAME: TWideStringField;
    AdrSearchADODSSTREET_NAME: TWideStringField;
    AdrSearchADODSHOUSE_NUM: TIntegerField;
    AdrSearchADODSCORPUS: TWideStringField;
    AdrSearchADODSLITER: TWideStringField;
    AdrSearchADODSAPARTMENT_NUM: TIntegerField;
    AdrSearchADODSITS_CITY: TSmallintField;
    AdrSearchADODSSHORT_NAME: TWideStringField;
    AdrSearchADODSSETTL_SHORTY_NAME: TWideStringField;
    AdrSearchADODSSETTL_SHORTY_ID: TIntegerField;
    AdrSearchADODSSTATE_SHORTY: TWideStringField;
    GroupBox23: TGroupBox;
    AdrSearchCountryDBLookC: TDBLookupComboboxEh;
    GroupBox24: TGroupBox;
    AdrSearchSettlementDBLookC: TDBLookupComboboxEh;
    GroupBox25: TGroupBox;
    AdrSearchStateDBLookC: TDBLookupComboboxEh;
    GroupBox26: TGroupBox;
    AdrSearchDistrictDBLookC: TDBLookupComboboxEh;
    AdrSearchDBGridEh: TDBGridEh;
    DBGrid2: TDBGrid;
    GroupBox27: TGroupBox;
    GroupBox28: TGroupBox;
    GroupBox29: TGroupBox;
    SearchLastNameDBEdit: TDBEdit;
    SearchFirstNameDBEdit: TDBEdit;
    SearchSurnameDBEdit: TDBEdit;
    AdrSearchStreetDBEdit: TDBEdit;
    AdrSearchHouseNumDBEdit: TDBEdit;
    AdrSearchCorpusDBEdit: TDBEdit;
    AdrSearchApartmentDBEdit: TDBEdit;
    GroupBox30: TGroupBox;
    PersonSearchResultDBGridEh: TDBGridEh;
    Panel7: TPanel;
    GroupBox19: TGroupBox;
    GroupBox31: TGroupBox;
    GroupBox32: TGroupBox;
    GroupBox33: TGroupBox;
    SettlemNameSettlSearchDBEdit: TDBEdit;
    DistrictNameSettlSearchDBLookCEh: TDBLookupComboboxEh;
    SettlShortSettlSearchDBLookCEh: TDBLookupComboboxEh;
    BlankSettlemADODSSETTLEMENT_ID: TIntegerField;
    BlankSettlemADODSSETTLEM_NAME: TWideStringField;
    BlankSettlemADODSDISTRICT_NAME: TWideStringField;
    BlankSettlemADODSSHORT_NAME: TWideStringField;
    BlankSettlemADODSITS_CITY: TSmallintField;
    BlankSettlemADODSKLADR_SHORTY: TWideStringField;
    BlankSettlemADODSKLADR_CODE: TWideStringField;
    BlankSettlemADODSKLADR_INDEX: TWideStringField;
    BlankSettlemADODSKLADR_GNIMB: TWideStringField;
    BlankSettlemADODSKLADR_UNO: TWideStringField;
    BlankSettlemADODSKLADR_OCATD: TWideStringField;
    BlankSettlemADODSKLADR_STATUS: TWideStringField;
    BlankSettlemADODSSETTL_STATE_ID: TIntegerField;
    BlankSettlemADODSSETTL_DISTRICT_ID: TIntegerField;
    BlankSettlemADODSSETTL_SHORTY_ID: TIntegerField;
    Label40: TLabel;
    BlankAdrADODSSTREET_SHORT: TWideStringField;
    StreetShortDBLookCEh: TDBLookupComboboxEh;
    AdrSearchADODSSTREET_SHORT: TWideStringField;
    BlankPersDocsADODS: TADODataSet;
    BlankPersAdrADODS: TADODataSet;
    BlankPersDocsDS: TDataSource;
    BlankPersAdrDS: TDataSource;
    BlankPersDocsADODSDOC_CREATE_DATE: TDateField;
    BlankPersDocsADODSDOC_ID: TIntegerField;
    BlankPersDocsADODSDOC_BRANCH_NAME: TWideStringField;
    BlankPersDocsADODSDOC_NUM: TWideStringField;
    BlankPersDocsADODSDOC_SERIE: TWideStringField;
    BlankPersDocsADODSDOC_EXPIRATION_DATE: TDateField;
    BlankPersDocsADODSIS_IDENTITY: TSmallintField;
    BlankPersDocsADODSPOLICY_STATION_NAME: TWideStringField;
    BlankPersDocsADODSDOC_TYPE_NAME: TWideStringField;
    BlankPersDocsADODSDOC_TYPE_INT_CODE: TIntegerField;
    BlankPersDocsADODSDOC_FULL_NAME: TWideStringField;
    BlankPersDocsADODSDOC_BRANCHE_CODE: TWideStringField;
    BlankPersDocsADODSPLSTATUS_NAME: TWideStringField;
    BlankPersDocsADODSDOC_STATUS_ID: TIntegerField;
    BlankPersDocsADODSPERSON_ID: TIntegerField;
    BlankPersAdrADODSADRES_ID: TIntegerField;
    BlankPersAdrADODSADR_FULL_NAME: TWideStringField;
    BlankPersAdrADODSADR_FULL_PART1: TWideStringField;
    BlankPersAdrADODSADR_FULL_PART2: TWideStringField;
    BlankPersAdrADODSCOUNTRY_NAME: TWideStringField;
    BlankPersAdrADODSSTATE_NAME: TWideStringField;
    BlankPersAdrADODSDISTRICT_NAME: TWideStringField;
    BlankPersAdrADODSSETTLEM_NAME: TWideStringField;
    BlankPersAdrADODSSTREET_NAME: TWideStringField;
    BlankPersAdrADODSHOUSE_NUM: TIntegerField;
    BlankPersAdrADODSCORPUS: TWideStringField;
    BlankPersAdrADODSLITER: TWideStringField;
    BlankPersAdrADODSAPARTMENT_NUM: TIntegerField;
    BlankPersAdrADODSITS_CITY: TSmallintField;
    BlankPersAdrADODSSHORT_NAME: TWideStringField;
    BlankPersAdrADODSSETTL_SHORTY_NAME: TWideStringField;
    BlankPersAdrADODSSETTL_SHORTY_ID: TIntegerField;
    BlankPersAdrADODSSTATE_SHORTY: TWideStringField;
    BlankPersAdrADODSSTATE_SHORT: TWideStringField;
    BlankPersAdrADODSDISTRICT_SHORT: TWideStringField;
    BlankPersAdrADODSSETTLEM_SHORT: TWideStringField;
    BlankPersAdrADODSSTATE_SHORT_FULL: TWideStringField;
    BlankPersAdrADODSDISTRICT_SHORT_FULL: TWideStringField;
    BlankPersAdrADODSSETTL_SHORT_FULL: TWideStringField;
    BlankPersAdrADODSSTATE_GENITIVE_CASE: TWideStringField;
    BlankPersAdrADODSDISTRICT_GENITIVE_CASE: TWideStringField;
    BlankPersAdrADODSSTREET_SHORT: TWideStringField;
    BlankPersAdrADODSPERSON_ID: TIntegerField;
    AddNewPersonPageScroller: TPageScroller;
    AddNewPersonPanelPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label27: TLabel;
    Label3: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label39: TLabel;
    Label32: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label44: TLabel;
    Label42: TLabel;
    Label49: TLabel;
    PersonLastNameDBEdit: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboboxEh6: TDBLookupComboboxEh;
    DBEdit3: TDBEdit;
    PBirthSettlDBLookupComboboxEh: TDBLookupComboboxEh;
    PBirthRegDBLookupComboboxEh: TDBLookupComboboxEh;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBEdit4: TDBEdit;
    PBirthCountryDBLookCEh: TDBLookupComboboxEh;
    PersBuildDBLookCEh: TDBLookupComboboxEh;
    BlPersNationDBLookCEh: TDBLookupComboboxEh;
    PCivilCountryDBLookCEh: TDBLookupComboboxEh;
    PersIdentDocDBLookCEh: TDBLookupComboboxEh;
    PersStatusDBLookCEh: TDBLookupComboboxEh;
    PersLocAdrDBLookCEh: TDBLookupComboboxEh;
    PersAlliantGrBox: TGroupBox;
    PersonAlliantPanel: TPanel;
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    GroupBox34: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBDateTimeEditEh4: TDBDateTimeEditEh;
    DBEdit1: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    BitBtn4: TBitBtn;
    BlPersonAlliantDBGrid: TDBGrid;
    AdrGroupBox: TGroupBox;
    DocsGroupBox: TGroupBox;
    GroupBox36: TGroupBox;
    GroupBox37: TGroupBox;
    EntFormAL: TActionList;
    BlPersAdrsDBGrid: TDBGrid;
    BlPersDocssDBGrid: TDBGrid;
    BlankPersAdrADODSENTLNK_TYPE_ID: TIntegerField;
    BlankPersAdrADODSEVENT_DATE: TDateField;
    BlankPersAdrADODSTERMINATE_DATE: TDateField;
    BlankPersAdrADODSELINK_LOOK: TStringField;
    BlankPersDocsADODSENTLNK_TYPE_ID: TIntegerField;
    BlankPersDocsADODSEVENT_DATE: TDateField;
    BlankPersDocsADODSTERMINATE_DATE: TDateField;
    BlankPersDocsADODSELINK_LOOK: TStringField;
    BlankPersAdrsDSP: TDataSetPost;
    BlankPersDocsDSP: TDataSetPost;
    BitBtn5: TBitBtn;
    BitBtn12: TBitBtn;
    function ShowModalForSelect(EntityType: TEntityType;
    SelFormMode: TSelFormMode; NewObjectID: Integer=-1): Integer;
    function ShowModalForSelectRetComplex(EntityType: TEntityType;
    SelFormMode: TSelFormMode; NewObjectID: Integer=-1): TSelReturn;
    procedure OKBitBtnClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ReloadServicesDictTree;
    procedure ServicesDictTreeViewMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ServicesDictTreeViewKeyPress(Sender: TObject; var Key: Char);
    procedure ServicesDictTreeViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function ReloadBlankPerson(PERSON_ID: Integer): Boolean;
    function InsertPersonLnkOnCurrBlankPerson: Integer;
    procedure ReloadBlankPersonAllianceLinks;
    procedure ReloadBlankLinkAlliance;
    function ReloadBlankAdres(ADRES_ID: Integer): Boolean;
    function ReloadBlankDoc(DOC_ID: Integer): Boolean;
    function ReloadBlankSettl(SETTL_ID: Integer): Boolean;
    procedure ReloadBlankAdrELink;
    procedure ReloadBlankDocELink;
    function ReloadSearchPersons: Integer;
    function ReloadSearchPersonsNonFiltered: Integer;
    function ReloadSearchAdreses: Integer;
    function ReloadSearchAdresesNonFiltered: Integer;
    function ReloadSearchDocs: Integer;
    function ReloadSearchDocsNonFiltered: Integer;
    function ReloadSearchSettlems: Integer;
    procedure ReloadBlankPersonAdreses;
    procedure ReloadBlankPersonDocs;
    function RefreshSearchPersonsFilter: Integer;
    function RefreshSearchAdresesFilter: Integer;
    function RefreshSearchDocsFilter: Integer;
    function RefreshSearchSettlemsFilter: Integer;
    procedure PersCountryDBLookCEhChange(Sender: TObject);
    procedure PersSexDBLookCEhChange(Sender: TObject);
    procedure PersNationDBLookCEhChange(Sender: TObject);
    procedure PersBthCountryDBLookCEhChange(Sender: TObject);
    procedure PBthRegDBLookCEhChange(Sender: TObject);
    procedure PBthSettlDBLookCEhChange(Sender: TObject);
    procedure SearchDocTypeDBLookCEhChange(Sender: TObject);
    procedure SearchDocSerieDBEditChange(Sender: TObject);
    procedure SearchDocNumDBEditChange(Sender: TObject);
    procedure SearchDocStatusDBLookCEhChange(Sender: TObject);
    procedure SrchDocCreateDateDBDTEdEhChange(Sender: TObject);
    procedure SrchDocExpDateDBDTEdEhChange(Sender: TObject);
    procedure SearchDocBranchNameDBEditChange(Sender: TObject);
    procedure DocSearchADODSFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure PersIdentDocDBLookCEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PBirthRegDBLookupComboboxEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure DBEdit4Enter(Sender: TObject);
    procedure PBirthSettlDBLookupComboboxEhNotInList(Sender: TObject;
      NewText: string; var RecheckInList: Boolean);
    procedure PBirthCountryDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure PCivilCountryDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure AdrCountryDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure AdrStateDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure AdrDistrictDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure AdrSettlemDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure StreetDictDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StreetDictDBLookCEhExit(Sender: TObject);
    procedure PBirthRegDBLookupComboboxEhEnter(Sender: TObject);
    procedure PBirthSettlDBLookupComboboxEhEnter(Sender: TObject);
    procedure PBirthCountryDBLookCEhEnter(Sender: TObject);
    procedure PCivilCountryDBLookCEhEnter(Sender: TObject);
    procedure AdrCountryDBLookCEhEnter(Sender: TObject);
    procedure AdrStateDBLookCEhEnter(Sender: TObject);
    procedure AdrDistrictDBLookCEhEnter(Sender: TObject);
    procedure AdrSettlemDBLookCEhEnter(Sender: TObject);
    procedure DocBrancheCodeDBLookCEhEnter(Sender: TObject);
    procedure DocBrancheCodeDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure DocCustomBranchNameDBEditEnter(Sender: TObject);
    procedure DocCustomBranchNameDBEditExit(Sender: TObject);
    procedure PersLocAdrDBLookCEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SettlSearchEditChange(Sender: TObject);
    procedure SettlSearchADODSFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PBirthSettlDBLookupComboboxEhKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure SearchFirstNameDfBEditChange(Sender: TObject);
    procedure SearchSurnamefDBEditChange(Sender: TObject);
    procedure PersonSearchResultDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonSearchADODSFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure AdrSearchDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdrSearchCountryDBLookCChange(Sender: TObject);
    procedure AdrSearchStateDBLookCChange(Sender: TObject);
    procedure AdrSearchDistrictDBLookCChange(Sender: TObject);
    procedure AdrSearchSettlementDBLookCChange(Sender: TObject);
    procedure AdrSearchStreetEditChange(Sender: TObject);
    procedure AdrSearchHouseNumEditChange(Sender: TObject);
    procedure AdrSearchCorpusEditChange(Sender: TObject);
    procedure AdrSearchApartmentNumEditChange(Sender: TObject);
    procedure AdrSearchADODSFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure SearchLastNameDBEditChange(Sender: TObject);
    procedure AdrSearchStreetDBEditChange(Sender: TObject);
    procedure AdrSearchDBGridEhDblClick(Sender: TObject);
    procedure PBthRegDBLookCEhEnter(Sender: TObject);
    procedure PBthRegDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure PersCountryDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure PersCountryDBLookCEhEnter(Sender: TObject);
    procedure SearchLastNameDBEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SearchFirstNameDBEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SearchSurnameDBEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersCountryDBLookCEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersSexDBLookCEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersNationDBLookCEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersBthCountryDBLookCEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PBthRegDBLookCEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PBthSettlDBLookCEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersBthCountryDBLookCEhEnter(Sender: TObject);
    procedure PBthSettlDBLookCEhEnter(Sender: TObject);
    procedure PersBthCountryDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure PBthSettlDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure PersonSearchResultDBGridEhDblClick(Sender: TObject);
    procedure BlankPersonADODSAfterPost(DataSet: TDataSet);
    procedure SettlemNameSettlSearchDBEditChange(Sender: TObject);
    procedure SettlShortSettlSearchDBLookCEhChange(Sender: TObject);
    procedure DistrictNameSettlSearchDBLookCEhChange(Sender: TObject);
    procedure SettlShortSettlSearchDBLookCEhNotInList(Sender: TObject;
      NewText: string; var RecheckInList: Boolean);
    procedure AdrSearchCountryDBLookCNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure AdrSearchStateDBLookCNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure AdrSearchDistrictDBLookCNotInList(Sender: TObject;
      NewText: string; var RecheckInList: Boolean);
    procedure AdrSearchSettlementDBLookCNotInList(Sender: TObject;
      NewText: string; var RecheckInList: Boolean);
    procedure DBLookupComboboxEh6Enter(Sender: TObject);
    procedure DistrictNameSettlSearchDBLookCEhNotInList(Sender: TObject;
      NewText: string; var RecheckInList: Boolean);
    procedure PBirthRegDBLookupComboboxEhExit(Sender: TObject);
    procedure DistrictNameSettlSearchDBLookCEhEnter(Sender: TObject);
    procedure BlankPersAdrADODSBeforeInsert(DataSet: TDataSet);
    procedure BlankPersDocsADODSBeforeInsert(DataSet: TDataSet);
    procedure BlPersDocssDBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BlPersDocssDBGridEnter(Sender: TObject);
    procedure BlPersAdrsDBGridEnter(Sender: TObject);
    procedure BlPersAdrsDBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BlPersonAlliantDBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    AutoDestroy: Boolean;
    ResultEntityID: Integer;
    ResultEntityType: TEntityType;
    ResultIdS: array of Integer;
    FormSelInsMode: TSelFormMode;
    ResultEntityGroupID: Integer;
    ResultEntityLinkID: Integer;
    ParentEntId: Integer;
    AutoCreateStateId: Integer;
  end;

function ShowModalForSelect(EntityType: TEntityType;
    SelFormMode: TSelFormMode; OwnerForm: TForm; NewObjectID: Integer=-1; ParentEntId: Integer=0): Integer;
function ShowModalForSelectRetComplex(EntityType: TEntityType;
    SelFormMode: TSelFormMode; OwnerForm: TForm; NewObjectID: Integer=-1; ParentEntId: Integer=0): TSelReturn;

var
  EntSelInsertForm: TEntSelInsertForm;

implementation

uses DBConnect, PersonDesktopUnit, spUtilsUnit;

{$R *.dfm}

function ShowModalForSelect(EntityType: TEntityType;
    SelFormMode: TSelFormMode; OwnerForm: TForm; NewObjectID: Integer=-1; ParentEntId: Integer=0): Integer;
var NewSelInsertForm: TEntSelInsertForm;
begin
  try
  NewSelInsertForm := TEntSelInsertForm.Create(OwnerForm);
  NewSelInsertForm.AutoDestroy:=True;
  NewSelInsertForm.ParentEntId:=ParentEntId;
  NewSelInsertForm.AutoCreateStateId:=0;
  Result:=NewSelInsertForm.ShowModalForSelect(EntityType,
    SelFormMode, NewObjectID);
  finally
    FreeAndNil(NewSelInsertForm);
  end;
end;

function ShowModalForSelectRetComplex(EntityType: TEntityType;
    SelFormMode: TSelFormMode; OwnerForm: TForm; NewObjectID: Integer=-1; ParentEntId: Integer=0): TSelReturn;
var NewSelInsertForm: TEntSelInsertForm;
begin
  try
  NewSelInsertForm := TEntSelInsertForm.Create(OwnerForm);
  NewSelInsertForm.AutoDestroy:=True;
  NewSelInsertForm.ParentEntId:=ParentEntId;
  NewSelInsertForm.AutoCreateStateId:=0;
  Result:=NewSelInsertForm.ShowModalForSelectRetComplex(EntityType,
    SelFormMode, NewObjectID);
  finally
    FreeAndNil(NewSelInsertForm);
  end;
end;

function TEntSelInsertForm.ReloadSearchPersons: Integer;
var res: Integer;
begin
  res:=-1;
  try
    PersonSearchADODS.Active:=False;
    PersonSearchADODS.Filtered:=False;
    PersonSearchADODS.Active:=True;
    PersonSearchADODS.Filtered:=True;
  except on E:Exception do
	  ShowMessage('Ошибка перезагрузки таблицы поиска лица! '+E.Message);
  end;
  Result:=res;
end;

function TEntSelInsertForm.ReloadSearchPersonsNonFiltered: Integer;
var res: Integer;
begin
  res:=-1;
  try
    PersonSearchADODS.Active:=False;
    PersonSearchADODS.Filtered:=False;
    PersonSearchADODS.Active:=True;
  except on E:Exception do
	  ShowMessage('Ошибка перезагрузки таблицы поиска лица РЕЖИМ БЕЗ ФИЛЬТРАЦИИ! '+E.Message);
  end;
  Result:=res;
end;

function TEntSelInsertForm.ReloadSearchAdreses: Integer;
var res: Integer;
begin
  res:=-1;
  try
    AdrSearchADODS.Active:=False;
    AdrSearchADODS.Filtered:=False;
    AdrSearchADODS.Active:=True;
    AdrSearchADODS.Filtered:=True;
  except on E:Exception do
	  ShowMessage('Ошибка перезагрузки таблицы поиска адреса! '+E.Message);
  end;
  Result:=res;
end;

function TEntSelInsertForm.ReloadSearchAdresesNonFiltered: Integer;
var res: Integer;
begin
  res:=-1;
  try
    AdrSearchADODS.Active:=False;
    AdrSearchADODS.Filtered:=False;
    AdrSearchADODS.Active:=True;
  except on E:Exception do
	  ShowMessage('Ошибка перезагрузки таблицы поиска адреса в режиме БЕЗ ФИЛЬТРА! '+E.Message);
  end;
  Result:=res;
end;

function TEntSelInsertForm.ReloadSearchDocs: Integer;
var res: Integer;
begin
  res:=-1;
  try
    DocSearchADODS.Active:=False;
    DocSearchADODS.Filtered:=False;
    DocSearchADODS.Active:=True;
    DocSearchADODS.Filtered:=True;
  except on E:Exception do
	  ShowMessage('Ошибка перезагрузки таблицы поиска документа! '+E.Message);
  end;
  Result:=res;
end;

function TEntSelInsertForm.ReloadSearchDocsNonFiltered: Integer;
var res: Integer;
begin
  res:=-1;
  try
    DocSearchADODS.Active:=False;
    DocSearchADODS.Filtered:=False;
    DocSearchADODS.Active:=True;
  except on E:Exception do
	  ShowMessage('Ошибка перезагрузки таблицы поиска документа в режиме БЕЗ ФИЛЬТРА! '+E.Message);
  end;
  Result:=res;
end;

function TEntSelInsertForm.ReloadSearchSettlems: Integer;
var res: Integer;
begin
  res:=-1;
  try
    SettlSearchADODS.Active:=False;
    SettlSearchADODS.Filtered:=False;
    SettlSearchADODS.Active:=True;
    SettlSearchADODS.Filtered:=True;
  except on E:Exception do
	  ShowMessage('Ошибка перезагрузки таблицы поиска населенного пункта! '+E.Message);
  end;
  Result:=res;
end;

procedure TEntSelInsertForm.ReloadBlankPersonAdreses;
//var res: Integer;
begin
  //res:=-1;
  try
    BlankPersAdrADODS.Active:=False;
    BlankPersAdrADODS.Parameters.ParamByName('PERSON_ID').Value:=
      BlankPersonADODS.FieldByName('PERSON_ID').AsInteger;
    BlankPersAdrADODS.Active:=True;
    BlankPersAdrADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
  except on E:Exception do
	  ShowMessage('Ошибка перезагрузки таблицы BlankPersAdrADODS! '+E.Message);
  end;
  //Result:=res;
end;

procedure TEntSelInsertForm.ReloadBlankPersonDocs;
//var res: Integer;
begin
  //res:=-1;
  try
    BlankPersDocsADODS.Active:=False;
    BlankPersDocsADODS.Parameters.ParamByName('PERSON_ID').Value:=
      BlankPersonADODS.FieldByName('PERSON_ID').AsInteger;
    BlankPersDocsADODS.Active:=True;
    BlankPersDocsADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
  except on E:Exception do
	  ShowMessage('Ошибка перезагрузки таблицы BlankPersDocsADODS! '+E.Message);
  end;
  //Result:=res;
end;

function TEntSelInsertForm.RefreshSearchPersonsFilter: Integer;
var res: Integer;
begin
  res:=-1;
  if PersonSearchADODS.Active then
  begin
    try
      PersonSearchADODS.Filtered:=False;
      PersonSearchADODS.Filtered:=True;
    except on E:Exception do
	    //ShowMessage('Ошибка обновления фильтра поиска лица! '+E.Message);
    end;
  end;
  Result:=res;
end;

function TEntSelInsertForm.RefreshSearchAdresesFilter: Integer;
var res: Integer;
begin
  res:=-1;
  if AdrSearchADODS.Active then
  begin
    try
      AdrSearchADODS.Filtered:=False;
      AdrSearchADODS.Filtered:=True;
    except on E:Exception do
	    //ShowMessage('Ошибка обновления фильтра поиска адреса! '+E.Message);
    end;
  end;
  Result:=res;
end;

function TEntSelInsertForm.RefreshSearchDocsFilter: Integer;
var res: Integer;
begin
  res:=-1;
  //ShowMessage('sss1');
  if DocSearchADODS.Active then
  begin
    //ShowMessage('sss2');
    try
      DocSearchADODS.Filtered:=False;
      DocSearchADODS.Filtered:=True;
    except on E:Exception do
	    //ShowMessage('Ошибка обновления фильтра поиска документа! '+E.Message);
    end;
  end;
  Result:=res;
end;

function TEntSelInsertForm.RefreshSearchSettlemsFilter: Integer;
var res: Integer;
begin
  res:=-1;
  if SettlSearchADODS.Active then
  begin
    try
      SettlSearchADODS.Filtered:=False;
      SettlSearchADODS.Filtered:=True;
    except on E:Exception do
	    //ShowMessage('Ошибка обновления фильтра поиска населенного пункта! '+E.Message);
    end;
  end;
  Result:=res;
end;

procedure TEntSelInsertForm.ReloadServicesDictTree;
Var CurrentTreeNode, CurrentRootTreeNode, OneGroupListMode, TwoGroupListMode: TTreeNode;
    last_service_id, root_items_counter, level2_counter: Integer;
    num_prefix: string;
begin

  ServicesDictTreeView.Enabled:=False;
  try

  try
  last_service_id:=-1;

  DataConnection.ReloadServicesView;
  ServicesDictTreeView.Items.Clear;

  OneGroupListMode := ServicesDictTreeView.Items.
            AddChildObject(nil, 'I. ОБМЕН ПАСПОРТА', nil);
  OneGroupListMode.SelectedIndex:=-1;
  TwoGroupListMode := ServicesDictTreeView.Items.
            AddChildObject(nil, 'II. РЕГИСТРАЦИЯ', nil);
  TwoGroupListMode.SelectedIndex:=-1;

  if DataConnection.ServViewADODS.RecordCount>0 then
  begin

    root_items_counter:=0;
    level2_counter:=0;

    DataConnection.ServViewADODS.First;
    repeat

      if last_service_id<>DataConnection.ServViewADODS.
        FieldByName('PARENT_SERVICE_ID').AsInteger then
        begin
          //Добавление в корень
          root_items_counter:=root_items_counter+1;
          num_prefix:='';//IntToStr(root_items_counter)+'. ';

          if DataConnection.ServViewADODS.
              FieldByName('SECTION_NUM').AsInteger<=0 then

          CurrentTreeNode := ServicesDictTreeView.Items.
            AddChildObject(nil, num_prefix+DataConnection.ServViewADODS.
              FieldByName('SERVICE_NAME').AsString, nil)
          else
          begin
            if DataConnection.ServViewADODS.
              FieldByName('SECTION_NUM').AsInteger=1 then
                CurrentTreeNode := ServicesDictTreeView.Items.
                AddChildObject(OneGroupListMode, num_prefix+DataConnection.
                  ServViewADODS.FieldByName('SERVICE_NAME').AsString, nil);
            if DataConnection.ServViewADODS.
              FieldByName('SECTION_NUM').AsInteger=2 then
                CurrentTreeNode := ServicesDictTreeView.Items.
                AddChildObject(TwoGroupListMode, num_prefix+DataConnection.
                  ServViewADODS.FieldByName('SERVICE_NAME').AsString, nil);
          end;

          last_service_id:=DataConnection.ServViewADODS.
            FieldByName('SERVICE_ID').AsInteger;

          CurrentRootTreeNode:=CurrentTreeNode;
          level2_counter:=0;
        end
      else
        begin
          level2_counter:=level2_counter+1;
          num_prefix:=IntToStr(root_items_counter)+'.'+
            IntToStr(level2_counter)+'. ';
          CurrentTreeNode := ServicesDictTreeView.Items.
            AddChildObject(CurrentRootTreeNode, num_prefix+DataConnection.
            ServViewADODS.FieldByName('SERVICE_NAME').AsString, nil);
          last_service_id:=DataConnection.ServViewADODS.
            FieldByName('PARENT_SERVICE_ID').AsInteger;
        end;

      CurrentTreeNode.SelectedIndex:=DataConnection.ServViewADODS.
        FieldByName('SERVICE_ID').AsInteger;

      DataConnection.ServViewADODS.Next;
      if DataConnection.ServViewADODS.Eof then
        Break;
    until false;

    //if DataConnection.ServViewADODS.FieldByName('ITS_GROUP').AsInteger=1 then


  end
    else ShowMessage('Нет структурированных данных для отображения в дереве операций!');
  except on E:Exception do
    begin
      ShowMessage('Ошибка формирования дерева типов операций! Описание: '+E.Message);
    end;
  end;

  finally
    ServicesDictTreeView.Enabled:=True;
  end;

end;

procedure TEntSelInsertForm.AdrCountryDBLookCEhEnter(Sender: TObject);
begin
  if (BlankAdrADODS.State in [dsEdit]) then
    BlankAdrADODS.Post;
  BlankAdrADODS.Edit;
end;

procedure TEntSelInsertForm.AdrCountryDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=AdrCountryDBLookCEh.Text;
  if MessageDlg('Добавить новое государство и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        //if MessageDlg('Является ли новый регион областным центром?',
        //  mtConfirmation,[mbYes,mbNo],0) = mrYes then
        //    isRCenter:=1;

        DataConnection.InsertFastAdrCountryQuery(
          BlankAdrADODS.FieldByName('ADRES_ID').AsInteger,
          notInListText);
        DataConnection.ReloadCountriesADOT;
        ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        ReloadBlankAdres(ResultEntityID);
        BlankAdrADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.AdrDistrictDBLookCEhEnter(Sender: TObject);
begin
  if (BlankAdrADODS.State in [dsEdit]) then
    BlankAdrADODS.Post;
  BlankAdrADODS.Edit;
end;

procedure TEntSelInsertForm.AdrDistrictDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=AdrDistrictDBLookCEh.Text;
  if MessageDlg('Добавить новый район и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        //if MessageDlg('Является ли новый регион областным центром?',
        //  mtConfirmation,[mbYes,mbNo],0) = mrYes then
        //    isRCenter:=1;

        DataConnection.InsertFastAdrDistrictQuery(
          BlankAdrADODS.FieldByName('ADRES_ID').AsInteger,
          notInListText);
        DataConnection.ReloadDistrictsView;
        ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        ReloadBlankAdres(ResultEntityID);
        BlankAdrADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.AdrSearchADODSFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=((Pos(AnsiLowerCase(AdrSearchCountryDBLookC.Text),
    AnsiLowerCase(AdrSearchADODS.
    FieldByName('COUNTRY_NAME').AsString))=1) or
    (Length(AdrSearchCountryDBLookC.Text)=0)) and
    ((Pos(AnsiLowerCase(AdrSearchStateDBLookC.Text),
    AnsiLowerCase(AdrSearchADODS.
      FieldByName('STATE_NAME').AsString))=1) or
      (Length(AdrSearchStateDBLookC.Text)=0)) and
    ((Pos(AnsiLowerCase(AdrSearchDistrictDBLookC.Text),
    AnsiLowerCase(AdrSearchADODS.
      FieldByName('DISTRICT_NAME').AsString))=1) or
      (Length(AdrSearchDistrictDBLookC.Text)=0)) and
    ((Pos(AnsiLowerCase(AdrSearchSettlementDBLookC.Text),
    AnsiLowerCase(AdrSearchADODS.
      FieldByName('SETTLEM_NAME').AsString))=1) or
      (Length(AdrSearchSettlementDBLookC.Text)=0)) and
    ((Pos(AnsiLowerCase(AdrSearchStreetDBEdit.Text),
    AnsiLowerCase(AdrSearchADODS.
      FieldByName('STREET_NAME').AsString))=1) or
      (Length(AdrSearchStreetDBEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(AdrSearchHouseNumDBEdit.Text),
    AnsiLowerCase(AdrSearchADODS.
      FieldByName('HOUSE_NUM').AsString))=1) or
      (Length(AdrSearchHouseNumDBEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(AdrSearchCorpusDBEdit.Text),
    AnsiLowerCase(AdrSearchADODS.
      FieldByName('CORPUS').AsString))=1) or
      (Length(AdrSearchCorpusDBEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(AdrSearchApartmentDBEdit.Text),
    AnsiLowerCase(AdrSearchADODS.
      FieldByName('APARTMENT_NUM').AsString))=1) or
      (Length(AdrSearchApartmentDBEdit.Text)=0));
end;

procedure TEntSelInsertForm.AdrSearchApartmentNumEditChange(Sender: TObject);
begin
  RefreshSearchAdresesFilter;
end;

procedure TEntSelInsertForm.AdrSearchCorpusEditChange(Sender: TObject);
begin
  RefreshSearchAdresesFilter;
end;

procedure TEntSelInsertForm.AdrSearchCountryDBLookCChange(Sender: TObject);
begin
  RefreshSearchAdresesFilter;
end;

procedure TEntSelInsertForm.AdrSearchCountryDBLookCNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=NewText;
  if MessageDlg('Добавить новое государство и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        //if MessageDlg('Является ли новый регион областным центром?',
        //  mtConfirmation,[mbYes,mbNo],0) = mrYes then
        //    isRCenter:=1;

        DataConnection.InsertFastAdrCountryQuery(
          BlankAdrADODS.FieldByName('ADRES_ID').AsInteger,
          notInListText);
        DataConnection.ReloadCountriesADOT;
        ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        ReloadBlankAdres(ResultEntityID);
        BlankAdrADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.AdrSearchDistrictDBLookCChange(Sender: TObject);
begin
  RefreshSearchAdresesFilter;
end;

procedure TEntSelInsertForm.AdrSearchDistrictDBLookCNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=NewText;
  if MessageDlg('Добавить новый район и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        //if MessageDlg('Является ли новый регион областным центром?',
        //  mtConfirmation,[mbYes,mbNo],0) = mrYes then
        //    isRCenter:=1;

        DataConnection.InsertFastAdrDistrictQuery(
          BlankAdrADODS.FieldByName('ADRES_ID').AsInteger,
          notInListText);
        DataConnection.ReloadDistrictsView;
        ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        ReloadBlankAdres(ResultEntityID);
        BlankAdrADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.AdrSearchHouseNumEditChange(Sender: TObject);
begin
  RefreshSearchAdresesFilter;
end;

procedure TEntSelInsertForm.AdrSearchSettlementDBLookCChange(Sender: TObject);
begin
  RefreshSearchAdresesFilter;
end;

procedure TEntSelInsertForm.AdrSearchSettlementDBLookCNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
    itsCity: Integer;
begin
  notInListText:=NewText;
  itsCity:=0;
  if MessageDlg('Добавить новый район и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        if MessageDlg('Является ли новый населенный пункт городом?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes then
            itsCity:=1;

        DataConnection.InsertFastAdrSettlemQuery(
          BlankAdrADODS.FieldByName('ADRES_ID').AsInteger,
          notInListText, itsCity);
        DataConnection.ReloadSettlemsView;
        ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        ReloadBlankAdres(ResultEntityID);
        BlankAdrADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.AdrSearchStateDBLookCChange(Sender: TObject);
begin
  RefreshSearchAdresesFilter;
end;

procedure TEntSelInsertForm.AdrSearchStateDBLookCNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=NewText;
  if MessageDlg('Добавить новую область/субъект и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        //if MessageDlg('Является ли новый регион областным центром?',
        //  mtConfirmation,[mbYes,mbNo],0) = mrYes then
        //    isRCenter:=1;

        DataConnection.InsertFastAdrStateQuery(
          BlankAdrADODS.FieldByName('ADRES_ID').AsInteger,
          notInListText);
        DataConnection.ReloadStatesView;
        ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        ReloadBlankAdres(ResultEntityID);
        BlankAdrADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.AdrSearchStreetDBEditChange(Sender: TObject);
begin
  RefreshSearchAdresesFilter;
end;

procedure TEntSelInsertForm.AdrSearchStreetEditChange(Sender: TObject);
begin
  RefreshSearchAdresesFilter;
end;

procedure TEntSelInsertForm.AdrSettlemDBLookCEhEnter(Sender: TObject);
begin
  if (BlankAdrADODS.State in [dsEdit]) then
    BlankAdrADODS.Post;
  BlankAdrADODS.Edit;
end;

procedure TEntSelInsertForm.AdrSettlemDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
    itsCity: Integer;
begin
  notInListText:=AdrSettlemDBLookCEh.Text;
  itsCity:=0;
  if MessageDlg('Добавить новый район и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        if MessageDlg('Является ли новый населенный пункт городом?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes then
            itsCity:=1;

        DataConnection.InsertFastAdrSettlemQuery(
          BlankAdrADODS.FieldByName('ADRES_ID').AsInteger,
          notInListText, itsCity);
        DataConnection.ReloadSettlemsView;
        ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        ReloadBlankAdres(ResultEntityID);
        BlankAdrADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.AdrStateDBLookCEhEnter(Sender: TObject);
begin
  if (BlankAdrADODS.State in [dsEdit]) then
    BlankAdrADODS.Post;
  BlankAdrADODS.Edit;
end;

procedure TEntSelInsertForm.AdrStateDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=AdrStateDBLookCEh.Text;
  if MessageDlg('Добавить новую область/субъект и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        //if MessageDlg('Является ли новый регион областным центром?',
        //  mtConfirmation,[mbYes,mbNo],0) = mrYes then
        //    isRCenter:=1;

        DataConnection.InsertFastAdrStateQuery(
          BlankAdrADODS.FieldByName('ADRES_ID').AsInteger,
          notInListText);
        DataConnection.ReloadStatesView;
        ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        ReloadBlankAdres(ResultEntityID);
        BlankAdrADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.OKBitBtnClick(Sender: TObject);
var hasNewEnt: Boolean;
begin
  //ShowMessage('sss2');
  hasNewEnt:=True;
  case ResultEntityType of
    entPerson:
    begin
      if (BlankPersonADODS.State in [dsEdit]) then
        BlankPersonADODS.Post;
      if FormSelInsMode=smInsert then
      begin

      end
      else if FormSelInsMode=smSelect then
      begin
      if PersonSearchADODS.Active then
      if (PersonSearchADODS.RecordCount>0) then
      if (PersonSearchADODS.FieldByName('PERSON_ID').Value<>NULL) then
      begin
        ResultEntityID:=PersonSearchADODS.FieldByName('PERSON_ID').AsInteger;
        if not (BlankPersonADODS.State in [dsEdit]) then
          BlankPersonADODS.Edit;
        BlankPersonADODS.FieldByName('CLOSED').Value:=2;
        BlankPersonADODS.Post;
      end;
      end
      else
        begin

        end;
    end;
    entAdres:
    begin
      if (BlankAdrADODS.State in [dsEdit]) then
        BlankAdrADODS.Post;
      if (BlankAdrELinkADODS.State in [dsEdit]) then
        BlankAdrELinkADODS.Post;
      if FormSelInsMode=smInsert then
      begin

      end
      else if FormSelInsMode=smSelect then
      begin
      if AdrSearchADODS.Active then
      if (AdrSearchADODS.RecordCount>0) then
      if (AdrSearchADODS.FieldByName('ADRES_ID').Value<>NULL) then
      begin
        if (AdrSearchADODS.FieldByName('ADRES_ID').AsInteger>0) then
          ResultEntityID:=AdrSearchADODS.FieldByName('ADRES_ID').AsInteger;
        //Close;
        //ShowMessage(IntToStr(ResultEntityID));
      end;
      end
      else
        begin

        end;
        //ShowMessage(IntToStr(ResultEntityID));
    end;
    entDoc:
    begin
      if (BlankDocADODS.State in [dsEdit]) then
        BlankDocADODS.Post;
      if (BlankDocELinkADODS.State in [dsEdit]) then
        BlankDocELinkADODS.Post;
    end;
    entServiceType:
    begin
      if FormSelInsMode=smInsert then
      begin

      end
      else if FormSelInsMode=smSelect then
      begin

      end
      else
        begin

        end;
    end;
    entSettlement:
    begin

      if FormSelInsMode=smInsert then
      begin

      end
      else if FormSelInsMode=smSelect then
      begin
      if SettlSearchADODS.Active then
        if SettlSearchADODS.RecordCount>0 then
        begin
          if (SettlSearchADODS.FieldByName('SETTLEMENT_ID').Value<>NULL) then
          begin
            if (SettlSearchADODS.FieldByName('SETTLEMENT_ID').AsInteger>0) then
            begin
              ResultEntityID:=SettlSearchADODS.FieldByName('SETTLEMENT_ID').AsInteger;
              hasNewEnt:=False;
            end;
          end;
        end;
        if hasNewEnt then
          begin
            if not (BlankSettlemADODS.State in [dsEdit]) then
              BlankSettlemADODS.Edit;
            if MessageDlg('Является ли новый населенный пункт городом?',
              mtConfirmation,[mbYes,mbNo],0) = mrYes then
                BlankSettlemADODS.FieldByName('ITS_CITY').Value:=1
            else
                BlankSettlemADODS.FieldByName('ITS_CITY').Value:=0;
          end;
      end
      else
        begin

        end;

      if BlankSettlemADODS.State in [dsEdit] then
          BlankSettlemADODS.Post;
      DataConnection.ReloadSettlemsView;

    end
    else
    begin
      ShowMessage('Неизвестный режим панели выборки!');
    end;
  end;
  Close;
end;

procedure TEntSelInsertForm.BitBtn2Click(Sender: TObject);
begin
  ResultEntityID:=-1;
  ResultEntityGroupID:=-1;
  SetLength(ResultIdS,1);
  ResultIdS[0]:=-1;
  //ShowMessage('sss');
  case ResultEntityType of
    entPerson:
    begin
      if BlankPersonADODS.RecordCount>0 then
      begin
        if FormSelInsMode=smInsert then
        begin
        if not (BlankPersonADODS.State in [dsEdit]) then
          BlankPersonADODS.Edit;
        BlankPersonADODS.FieldByName('CLOSED').Value:=2;
        BlankPersonADODS.Post;
        end;
      end;
    end;
    entAdres:
    begin
      //if (BlankAdrADODS.State in [dsEdit]) then
      //  BlankAdrADODS.Post;
      //if (BlankAdrELinkADODS.State in [dsEdit]) then
      //  BlankAdrELinkADODS.Post;
    end;
    entDoc:
    begin
      //if (BlankDocADODS.State in [dsEdit]) then
      //  BlankDocADODS.Post;
      //if (BlankDocELinkADODS.State in [dsEdit]) then
      //  BlankDocELinkADODS.Post;
    end;
    entServiceType:
    begin
      if FormSelInsMode=smInsert then
      begin

      end
      else if FormSelInsMode=smSelect then
      begin

      end
      else
        begin

        end;
    end;
    entSettlement:
    begin
      if FormSelInsMode=smInsert then
      begin

      end
      else if FormSelInsMode=smSelect then
      begin

      end
    end
    else
    begin
      ShowMessage('Неизвестный режим панели выборки!');
    end;
  end;

  Close;
end;

procedure TEntSelInsertForm.BitBtn3Click(Sender: TObject);
begin
  InsertPersonLnkOnCurrBlankPerson;
  ReloadBlankPersonAllianceLinks;
  ReloadBlankLinkAlliance;
end;

procedure TEntSelInsertForm.BlankPersAdrADODSBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TEntSelInsertForm.BlankPersDocsADODSBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TEntSelInsertForm.BlankPersonADODSAfterPost(DataSet: TDataSet);
begin
  if BlankPersonADODS.FieldByName('BIRTH_REGION_ID').Value<>NULL then
    DataConnection.checkRegionGenitiveCase(
      BlankPersonADODS.FieldByName('BIRTH_REGION_ID').AsInteger);
end;

procedure TEntSelInsertForm.DocCustomBranchNameDBEditEnter(Sender: TObject);
var linkBranchName: string;
begin
  if BlankDocADODS.FieldByName('DOC_BRANCH_ID').Value<>NULL then
    begin
      linkBranchName:=DataConnection.GetBrancheNameById(
              BlankDocADODS.FieldByName('DOC_BRANCH_ID').AsInteger);
      if (BlankDocADODS.FieldByName('DOC_BRANCH_NAME').Value=NULL) or
        (BlankDocADODS.FieldByName('DOC_BRANCH_NAME').AsString<>linkBranchName
          ) then
        begin
           if not (BlankDocADODS.State in [dsEdit]) then
              BlankDocADODS.Edit;
           BlankDocADODS.FieldByName('DOC_BRANCH_NAME').Value:=
            linkBranchName;
         end;
    end;
end;

procedure TEntSelInsertForm.DocCustomBranchNameDBEditExit(Sender: TObject);
var oldName: string;
begin
  if (BlankDocADODS.FieldByName('DOC_BRANCH_ID').Value<>NULL) then
  begin
    oldName:=DataConnection.GetBrancheNameById(
              BlankDocADODS.FieldByName('DOC_BRANCH_ID').AsInteger);
    if (BlankDocADODS.FieldByName('DOC_BRANCH_NAME').AsString<>'') and
      (BlankDocADODS.FieldByName('DOC_BRANCH_NAME').AsString<>oldName)
      then
      begin
        if MessageDlg('Изменить имя подразделения в справочнике с '''+oldName+
        ''' на '''+BlankDocADODS.FieldByName('DOC_BRANCH_NAME').AsString+'''?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          if DataConnection.SetBrancheNameById(
            BlankDocADODS.FieldByName('DOC_BRANCH_ID').AsInteger,
            BlankDocADODS.FieldByName('DOC_BRANCH_NAME').AsString) then
            begin
              DataConnection.ReloadFMSBranches;
              ShowMessage('Имя подразделения изменено в справочнике!');
            end;
        end;
      end;
  end;
end;

procedure TEntSelInsertForm.SettlemNameSettlSearchDBEditChange(Sender: TObject);
begin
  RefreshSearchSettlemsFilter;
end;

procedure TEntSelInsertForm.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=13) then
  begin
    //if (DBEdit15.Text='') then
    //begin
      Label48.Enabled:=True;
      StreetDictDBLookCEh.Enabled:=True;
      StreetDictDBLookCEh.SetFocus;
    //end;
  end;
end;

procedure TEntSelInsertForm.DBEdit4Enter(Sender: TObject);
var BIRTH_REGION_GEN_CASE: string;
begin
  if (BlankPersonADODS.FieldByName('BIRTHPLACE').AsString='') or
    (BlankPersonADODS.FieldByName('BIRTHPLACE').AsString<>PBirthSettlDBLookupComboboxEh.Text) then
  begin
    if not (BlankPersonADODS.State in [dsEdit]) then
      BlankPersonADODS.Edit;

    BIRTH_REGION_GEN_CASE:='';
    if BlankPersonADODS.FieldByName('BIRTH_REGION_ID').Value<>NULL then
      BIRTH_REGION_GEN_CASE:=DataConnection.getRegionGenitiveCase(
        BlankPersonADODS.FieldByName('BIRTH_REGION_ID').AsInteger);

    if BIRTH_REGION_GEN_CASE<>'' then
      BlankPersonADODS.FieldByName('BIRTHPLACE').Value:=
      PBirthSettlDBLookupComboboxEh.Text//+' '+
      //BIRTH_REGION_GEN_CASE
    else
    BlankPersonADODS.FieldByName('BIRTHPLACE').Value:=
      PBirthSettlDBLookupComboboxEh.Text;//+' '+
      //PBirthRegDBLookupComboboxEh.Text;
  end;
end;

procedure TEntSelInsertForm.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    //InsertCurrOpPersonDoc;
    //selectedTypes:=EntitySelInsUnit.ShowModalForSelectRetComplex( entDoc, smInsert, Self,
    //        DataConnection.InsertBlankDocLinkOnPerson(
    //        BlankPersonADODS.FieldByName('PERSON_ID').AsInteger));
    //
    //      if selectedTypes.ResultEntityID>=0 then
    //      begin
            //Варианты адресов и документов для лиц
            //DataConnection.ReloadOpPersAdrLinks;
    //        DataConnection.SetPersonIdentDoc(selectedTypes.ResultEntityID,
    //          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger);
    //        ReloadSearchDocsNonFiltered;
    //        ReloadBlankPerson(ResultEntityID);
            //DataConnection.ReloadOpPersDocLinks;

            //DataConnection.ReloadActAdrLinks;
            //DataConnection.ReloadActDocLinks;
            //DataConnection.ReloadActPersLinks;

            //DataConnection.ReloadOpDocLinks;
     //     end;
  end
  else if (Integer(Key)=9) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
  end
  else if (Integer(Key)=13) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
    if PersonSearchADODS.Active then
      if PersonSearchADODS.RecordCount>0 then
      begin
        ResultEntityID:=PersonSearchADODS.FieldByName('PERSON_ID').AsInteger;
        Close;
      end;
  end
  else if (Integer(Key)=123) then
  begin
    //EditCurrOpPersonDoc;
  end
  else
  begin

  end;
end;

procedure TEntSelInsertForm.DBGrid3DblClick(Sender: TObject);
begin
if DocSearchADODS.Active then
    if DocSearchADODS.RecordCount>0 then
    if (DocSearchADODS.FieldByName('DOC_ID').Value<>NULL) then
      if (DocSearchADODS.FieldByName('DOC_ID').AsInteger>0) then
    begin
      ResultEntityID:=DocSearchADODS.FieldByName('DOC_ID').AsInteger;
      Close;
    end;
end;

procedure TEntSelInsertForm.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    //InsertCurrOpPersonDoc;
    //selectedTypes:=EntitySelInsUnit.ShowModalForSelectRetComplex( entDoc, smInsert, Self,
    //        DataConnection.InsertBlankDocLinkOnPerson(
    //        BlankPersonADODS.FieldByName('PERSON_ID').AsInteger));
    //
    //      if selectedTypes.ResultEntityID>=0 then
    //      begin
            //Варианты адресов и документов для лиц
            //DataConnection.ReloadOpPersAdrLinks;
    //        DataConnection.SetPersonIdentDoc(selectedTypes.ResultEntityID,
    //          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger);
    //        ReloadSearchDocsNonFiltered;
    //        ReloadBlankPerson(ResultEntityID);
            //DataConnection.ReloadOpPersDocLinks;

            //DataConnection.ReloadActAdrLinks;
            //DataConnection.ReloadActDocLinks;
            //DataConnection.ReloadActPersLinks;

            //DataConnection.ReloadOpDocLinks;
     //     end;
  end
  else if (Integer(Key)=9) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
  end
  else if (Integer(Key)=13) then
  begin
    if DocSearchADODS.Active then
    if DocSearchADODS.RecordCount>0 then
    if (DocSearchADODS.FieldByName('DOC_ID').Value<>NULL) then
      if (DocSearchADODS.FieldByName('DOC_ID').AsInteger>0) then
    begin
      ResultEntityID:=DocSearchADODS.FieldByName('DOC_ID').AsInteger;
      Close;
    end;
  end
  else if (Integer(Key)=123) then
  begin
    //EditCurrOpPersonDoc;
  end
  else
  begin

  end;
end;

procedure TEntSelInsertForm.DBGrid4DblClick(Sender: TObject);
begin
  if SettlSearchADODS.Active then
      if SettlSearchADODS.RecordCount>0 then
      begin
        ResultEntityID:=SettlSearchADODS.FieldByName('SETTLEMENT_ID').AsInteger;
        Close;
      end;
end;

procedure TEntSelInsertForm.DBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Integer(Key)=45) then
  begin
  end
  else if (Integer(Key)=9) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
  end
  else if (Integer(Key)=13) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
    if SettlSearchADODS.Active then
      if SettlSearchADODS.RecordCount>0 then
      begin
        ResultEntityID:=SettlSearchADODS.FieldByName('SETTLEMENT_ID').AsInteger;
        Close;
      end;
  end
  else if (Integer(Key)=123) then
  begin
    //EditCurrOpPersonDoc;
  end
  else
  begin

  end;
end;

procedure TEntSelInsertForm.BlPersAdrsDBGridEnter(Sender: TObject);
begin
  AddNewPersonPageScroller.Position:=519;
end;

procedure TEntSelInsertForm.BlPersAdrsDBGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=9) then
  begin
    if (BlankPersAdrADODS.RecNo>=BlankPersAdrADODS.RecordCount)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        BlPersonAlliantDBGrid.SetFocus;
      end;
  end
end;

procedure TEntSelInsertForm.BlPersDocssDBGridEnter(Sender: TObject);
begin
  AddNewPersonPageScroller.Position:=200;
end;

procedure TEntSelInsertForm.BlPersDocssDBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=9) then
  begin
    if (BlankPersDocsADODS.RecNo>=BlankPersDocsADODS.RecordCount)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        BlPersAdrsDBGrid.SetFocus;
      end;
  end
end;

procedure TEntSelInsertForm.BlPersonAlliantDBGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=9) then
  begin
    if (BlankPersAllianLinksADODS.RecNo>=BlankPersAllianLinksADODS.RecordCount)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        OKBitBtn.SetFocus;
      end;

  end
end;

procedure TEntSelInsertForm.AdrSearchDBGridEhDblClick(Sender: TObject);
begin
  if AdrSearchADODS.Active then
      if AdrSearchADODS.RecordCount>0 then
      if (AdrSearchADODS.FieldByName('ADRES_ID').Value<>NULL) then
      if (AdrSearchADODS.FieldByName('ADRES_ID').AsInteger>0) then
      begin
        ResultEntityID:=AdrSearchADODS.FieldByName('ADRES_ID').AsInteger;
        Close;
      end;
end;

procedure TEntSelInsertForm.AdrSearchDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    //InsertCurrOpPersonDoc;
    //selectedTypes:=EntitySelInsUnit.ShowModalForSelectRetComplex( entDoc, smInsert, Self,
    //        DataConnection.InsertBlankDocLinkOnPerson(
    //        BlankPersonADODS.FieldByName('PERSON_ID').AsInteger));
    //
    //      if selectedTypes.ResultEntityID>=0 then
    //      begin
            //Варианты адресов и документов для лиц
            //DataConnection.ReloadOpPersAdrLinks;
    //        DataConnection.SetPersonIdentDoc(selectedTypes.ResultEntityID,
    //          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger);
    //        ReloadSearchDocsNonFiltered;
    //        ReloadBlankPerson(ResultEntityID);
            //DataConnection.ReloadOpPersDocLinks;

            //DataConnection.ReloadActAdrLinks;
            //DataConnection.ReloadActDocLinks;
            //DataConnection.ReloadActPersLinks;

            //DataConnection.ReloadOpDocLinks;
     //     end;
  end
  else if (Integer(Key)=9) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
  end
  else if (Integer(Key)=13) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
    if AdrSearchADODS.Active then
      if AdrSearchADODS.RecordCount>0 then
      if (AdrSearchADODS.FieldByName('ADRES_ID').Value<>NULL) then
      if (AdrSearchADODS.FieldByName('ADRES_ID').AsInteger>0) then
      begin
        ResultEntityID:=AdrSearchADODS.FieldByName('ADRES_ID').AsInteger;
        Close;
      end;
  end
  else if (Integer(Key)=123) then
  begin
    //EditCurrOpPersonDoc;
  end
  else
  begin

  end;
end;

procedure TEntSelInsertForm.PersonSearchResultDBGridEhDblClick(Sender: TObject);
begin
  if PersonSearchADODS.Active then
    if PersonSearchADODS.RecordCount>0 then
      if (PersonSearchADODS.FieldByName('PERSON_ID').Value<>NULL) then
      if (PersonSearchADODS.FieldByName('PERSON_ID').AsInteger>0) then
      begin
        if not (BlankPersonADODS.State in [dsEdit]) then
          BlankPersonADODS.Edit;
        BlankPersonADODS.FieldByName('CLOSED').Value:=2;
        BlankPersonADODS.Post;
        ResultEntityID:=PersonSearchADODS.FieldByName('PERSON_ID').AsInteger;
        Close;
      end;
end;

procedure TEntSelInsertForm.PersonSearchResultDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    //InsertCurrOpPersonDoc;
    //selectedTypes:=EntitySelInsUnit.ShowModalForSelectRetComplex( entDoc, smInsert, Self,
    //        DataConnection.InsertBlankDocLinkOnPerson(
    //        BlankPersonADODS.FieldByName('PERSON_ID').AsInteger));
    //
    //      if selectedTypes.ResultEntityID>=0 then
    //      begin
            //Варианты адресов и документов для лиц
            //DataConnection.ReloadOpPersAdrLinks;
    //        DataConnection.SetPersonIdentDoc(selectedTypes.ResultEntityID,
    //          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger);
    //        ReloadSearchDocsNonFiltered;
    //        ReloadBlankPerson(ResultEntityID);
            //DataConnection.ReloadOpPersDocLinks;

            //DataConnection.ReloadActAdrLinks;
            //DataConnection.ReloadActDocLinks;
            //DataConnection.ReloadActPersLinks;

            //DataConnection.ReloadOpDocLinks;
     //     end;
  end
  else if (Integer(Key)=9) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
  end
  else if (Integer(Key)=13) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
    if PersonSearchADODS.Active then
      if PersonSearchADODS.RecordCount>0 then
      if (PersonSearchADODS.FieldByName('PERSON_ID').Value<>NULL) then
      if (PersonSearchADODS.FieldByName('PERSON_ID').AsInteger>0) then
      begin
        if not (BlankPersonADODS.State in [dsEdit]) then
          BlankPersonADODS.Edit;
        BlankPersonADODS.FieldByName('CLOSED').Value:=2;
        BlankPersonADODS.Post;
        ResultEntityID:=PersonSearchADODS.FieldByName('PERSON_ID').AsInteger;
        Close;
      end;
  end
  else if (Integer(Key)=123) then
  begin
    //EditCurrOpPersonDoc;
  end
  else
  begin

  end;
end;

procedure TEntSelInsertForm.PersIdentDocDBLookCEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var selectedTypes: TSelReturn;
begin
  if (Integer(Key)=45) then
  begin
    //InsertCurrOpPersonDoc;
    if (BlankPersonADODS.State in [dsEdit]) then
      BlankPersonADODS.Post;
    selectedTypes:=EntitySelInsUnit.ShowModalForSelectRetComplex( entDoc, smInsert, Self,
            DataConnection.InsertBlankDocLinkOnPerson(
            BlankPersonADODS.FieldByName('PERSON_ID').AsInteger));

          if selectedTypes.ResultEntityID>=0 then
          begin
            //Варианты адресов и документов для лиц
            //DataConnection.ReloadOpPersAdrLinks;
            DataConnection.SetPersonIdentDoc(selectedTypes.ResultEntityID,
              BlankPersonADODS.FieldByName('PERSON_ID').AsInteger);
            //ReloadSearchDocsNonFiltered;
            ReloadBlankPersonDocs;
            ReloadBlankPerson(ResultEntityID);
            //DataConnection.ReloadOpPersDocLinks;

            //DataConnection.ReloadActAdrLinks;
            //DataConnection.ReloadActDocLinks;
            //DataConnection.ReloadActPersLinks;

            //DataConnection.ReloadOpDocLinks;
          end;
  end
  else if (Integer(Key)=9) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
  end
  else if (Integer(Key)=123) then
  begin
    //EditCurrOpPersonDoc;

    if BlankPersonADODS.State in [dsEdit] then
       BlankPersonADODS.Post;

    if BlankPersonADODS.FieldByName('IDENTITY_DOC_ID').AsInteger>0 then
    begin
      EntSelInsertForm.ShowModalForSelect( entDoc, smEdit,
        BlankPersonADODS.FieldByName('IDENTITY_DOC_ID').AsInteger);
      //ReloadSearchDocsNonFiltered;
      ReloadBlankPersonDocs;
      ReloadBlankPerson(ResultEntityID);
    end
    else
      ShowMessage('Не установлен документ для правки!');
  end
  else
  begin

  end;
end;

procedure TEntSelInsertForm.PersLocAdrDBLookCEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var selectedTypes: TSelReturn;
begin
  if (Integer(Key)=45) then
  begin
    //InsertCurrOpPersonDoc;
    if (BlankPersonADODS.State in [dsEdit]) then
      BlankPersonADODS.Post;
    selectedTypes:=EntitySelInsUnit.ShowModalForSelectRetComplex( entAdres, smInsert, Self,
            DataConnection.InsertBlankAdrLinkOnPerson(
            BlankPersonADODS.FieldByName('PERSON_ID').AsInteger));

          if selectedTypes.ResultEntityID>=0 then
          begin
            //Варианты адресов и документов для лиц
            //DataConnection.ReloadOpPersAdrLinks;
            DataConnection.SetPersonLocationAdres(selectedTypes.ResultEntityID,
              BlankPersonADODS.FieldByName('PERSON_ID').AsInteger);
            //ReloadSearchAdresesNonFiltered;
            ReloadBlankPersonAdreses;
            ReloadBlankPerson(ResultEntityID);
            //DataConnection.ReloadOpPersDocLinks;

            //DataConnection.ReloadActAdrLinks;
            //DataConnection.ReloadActDocLinks;
            //DataConnection.ReloadActPersLinks;

            //DataConnection.ReloadOpDocLinks;
          end;
  end
  else if (Integer(Key)=116) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
    selectedTypes:=EntitySelInsUnit.ShowModalForSelectRetComplex( entAdres,
      smSelect, Self, DataConnection.InsertBlankAdrLinkOnPerson(
            BlankPersonADODS.FieldByName('PERSON_ID').AsInteger));
    //ShowMessage(IntToStr(selectedTypes.ResultEntityID));
    if selectedTypes.ResultEntityID>=0 then
      begin
        DataConnection.SetPersonLocationAdres(
          selectedTypes.ResultEntityID, ResultEntityID);
        //ReloadSearchAdresesNonFiltered;
        ReloadBlankPersonAdreses;
        ReloadBlankPerson(ResultEntityID);
        //ShowMessage('---');
      end;
  end
  else if (Integer(Key)=9) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
  end
  else if (Integer(Key)=123) then
  begin
    //EditCurrOpPersonDoc;

    if BlankPersonADODS.State in [dsEdit] then
       BlankPersonADODS.Post;

    if BlankPersonADODS.FieldByName('LOCATION_ADRES_ID').AsInteger>0 then
    begin
      EntSelInsertForm.ShowModalForSelect( entAdres, smEdit,
        BlankPersonADODS.FieldByName('LOCATION_ADRES_ID').AsInteger);
      //ReloadSearchAdresesNonFiltered;
      ReloadBlankPersonAdreses;
      ReloadBlankPerson(ResultEntityID);
    end
    else
      ShowMessage('Не установлен адрес для правки!');
  end
  else
  begin

  end;
end;

procedure TEntSelInsertForm.DBLookupComboboxEh6Enter(Sender: TObject);
var itsWoman: Boolean;
begin
  itsWoman:=False;
  if BlankPersonADODS.State in [dsEdit] then
    BlankPersonADODS.Post;
  if (AnsiLowerCase(Copy(BlankPersonADODS.FieldByName('LAST_NAME').AsString,
      Length(BlankPersonADODS.FieldByName('LAST_NAME').AsString)-2, 3))='ова') or
     (AnsiLowerCase(Copy(BlankPersonADODS.FieldByName('SURNAME').AsString,
      Length(BlankPersonADODS.FieldByName('SURNAME').AsString)-2, 3))='вна') then
        itsWoman:=True;
  if (AnsiLowerCase(Copy(BlankPersonADODS.FieldByName('LAST_NAME').AsString,
      Length(BlankPersonADODS.FieldByName('LAST_NAME').AsString)-1, 2))='ов') or
     (AnsiLowerCase(Copy(BlankPersonADODS.FieldByName('SURNAME').AsString,
      Length(BlankPersonADODS.FieldByName('SURNAME').AsString)-2, 3))='вич')  then
        itsWoman:=False;

  BlankPersonADODS.Edit;
  if itsWoman then
    BlankPersonADODS.FieldByName('PERSON_SEX_ID').Value:=2
  else
    BlankPersonADODS.FieldByName('PERSON_SEX_ID').Value:=1;

end;

procedure TEntSelInsertForm.DistrictNameSettlSearchDBLookCEhChange(
  Sender: TObject);
begin
  RefreshSearchSettlemsFilter;
end;

procedure TEntSelInsertForm.DistrictNameSettlSearchDBLookCEhEnter(
  Sender: TObject);
begin
  if (BlankSettlemADODS.State in [dsEdit]) then
          BlankSettlemADODS.Post;
end;

procedure TEntSelInsertForm.DistrictNameSettlSearchDBLookCEhNotInList(
  Sender: TObject; NewText: string; var RecheckInList: Boolean);
var notInListText: String;
    newDistrId: Integer;
begin
  notInListText:=NewText;
  if MessageDlg('Добавить новый район и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        //if MessageDlg('Является ли новый регион областным центром?',
        //  mtConfirmation,[mbYes,mbNo],0) = mrYes then
        //    isRCenter:=1;

        newDistrId:=DataConnection.InsertBlankDistrictQuery(
          notInListText, Self.ParentEntId);

        DataConnection.SetSettlDistrict(newDistrId,
          BlankSettlemADODS.FieldByName('SETTLEMENT_ID').AsInteger);

        DataConnection.ReloadDistrictsADOT;
        ResultEntityID:=BlankSettlemADODS.FieldByName('SETTLEMENT_ID').AsInteger;

        ReloadBlankSettl(ResultEntityID);
        BlankSettlemADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.StreetDictDBLookCEhExit(Sender: TObject);
begin
  Label48.Enabled:=False;
  StreetDictDBLookCEh.Enabled:=False;
end;

procedure TEntSelInsertForm.StreetDictDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
begin
  //ShowMessage(NewText);
  //BlankAdrADODS.FieldByName('STREET_NAME').Value:=NewText;
end;

procedure TEntSelInsertForm.PCivilCountryDBLookCEhEnter(Sender: TObject);
begin
  if (BlankPersonADODS.State in [dsEdit]) then
    BlankPersonADODS.Post;
  BlankPersonADODS.Edit;
end;

procedure TEntSelInsertForm.PCivilCountryDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=PCivilCountryDBLookCEh.Text;
  if MessageDlg('Добавить новое государство и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        //if MessageDlg('Является ли новый регион областным центром?',
        //  mtConfirmation,[mbYes,mbNo],0) = mrYes then
        //    isRCenter:=1;

        DataConnection.InsertFastPersonCountryQuery(
          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger,
          notInListText);
        DataConnection.ReloadCountriesADOT;
        ResultEntityID:=BlankPersonADODS.FieldByName('PERSON_ID').AsInteger;
        ReloadBlankPerson(ResultEntityID);
        BlankPersonADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.PBirthCountryDBLookCEhEnter(Sender: TObject);
begin
  if (BlankPersonADODS.State in [dsEdit]) then
    BlankPersonADODS.Post;
  BlankPersonADODS.Edit;
end;

procedure TEntSelInsertForm.PBirthCountryDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=PBirthCountryDBLookCEh.Text;
  if MessageDlg('Добавить новое государство и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        //if MessageDlg('Является ли новый регион областным центром?',
        //  mtConfirmation,[mbYes,mbNo],0) = mrYes then
        //    isRCenter:=1;

        DataConnection.InsertFastPersonBirthCountryQuery(
          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger,
          notInListText);
        DataConnection.ReloadCountriesADOT;
        ResultEntityID:=BlankPersonADODS.FieldByName('PERSON_ID').AsInteger;
        ReloadBlankPerson(ResultEntityID);
        BlankPersonADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.PBirthRegDBLookupComboboxEhEnter(Sender: TObject);
begin
  if (BlankPersonADODS.State in [dsEdit]) then
    BlankPersonADODS.Post;
  BlankPersonADODS.Edit;
end;

procedure TEntSelInsertForm.PBirthRegDBLookupComboboxEhExit(Sender: TObject);
begin
  //Self.AutoCreateStateId:=DataConnection.InsertStateIfNotExistQuery(
  //  PBirthRegDBLookupComboboxEh.Text);
end;

procedure TEntSelInsertForm.PBirthRegDBLookupComboboxEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var isRCenter: Integer;
    notInListText: String;
begin
  isRCenter:=0;
  notInListText:=PBirthRegDBLookupComboboxEh.Text;
  if MessageDlg('Добавить новый регион и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        if MessageDlg('Является ли новый регион областным центром?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes then
            isRCenter:=1;

        DataConnection.InsertFastPersonBirthRegionQuery(
          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger,
          notInListText, isRCenter);
        DataConnection.ReloadBTHRegions;
        ResultEntityID:=BlankPersonADODS.FieldByName('PERSON_ID').AsInteger;
        ReloadBlankPerson(ResultEntityID);
        BlankPersonADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.PBirthSettlDBLookupComboboxEhEnter(Sender: TObject);
begin
  if (BlankPersonADODS.State in [dsEdit]) then
    BlankPersonADODS.Post;
  BlankPersonADODS.Edit;
end;

procedure TEntSelInsertForm.PBirthSettlDBLookupComboboxEhKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var selectedTypes: TSelReturn;
begin
  if (Integer(Key)=45) then
  begin
    //InsertCurrOpPersonDoc;
    //if (BlankPersonADODS.State in [dsEdit]) then
    //  BlankPersonADODS.Post;
    //selectedTypes:=EntitySelInsUnit.ShowModalForSelectRetComplex( entDoc, smInsert, Self,
    //        DataConnection.InsertBlankDocLinkOnPerson(
    //        BlankPersonADODS.FieldByName('PERSON_ID').AsInteger));

    //      if selectedTypes.ResultEntityID>=0 then
    //      begin
            //Варианты адресов и документов для лиц
            //DataConnection.ReloadOpPersAdrLinks;
    //        DataConnection.SetPersonIdentDoc(selectedTypes.ResultEntityID,
    //          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger);
    //        ReloadSearchDocsNonFiltered;
    //        ReloadBlankPerson(ResultEntityID);
    //      end;
  end
  else if (Integer(Key)=116) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
    selectedTypes:=EntitySelInsUnit.ShowModalForSelectRetComplex( entSettlement,
      smSelect, Self, -1, 0);
    if selectedTypes.ResultEntityID>=0 then
      begin
        DataConnection.SetPersonBirthSettlement(
          selectedTypes.ResultEntityID, ResultEntityID);
        DataConnection.ReloadSettlemsView;
        ReloadBlankPerson(ResultEntityID);
        //ShowMessage('---');
      end;
  end
  else if (Integer(Key)=9) then
  begin
    //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
  end
  else if (Integer(Key)=123) then
  begin
    //EditCurrOpPersonDoc;
  end
  else
  begin

  end;
end;

procedure TEntSelInsertForm.PBirthSettlDBLookupComboboxEhNotInList(
  Sender: TObject; NewText: string; var RecheckInList: Boolean);
var itsCity: Integer;
    notInListText: String;
begin

  itsCity:=0;
  notInListText:=PBirthSettlDBLookupComboboxEh.Text;
  if MessageDlg('Добавить новый населенный пункт и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        if MessageDlg('Является ли новый населенный пункт городом?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes then
            itsCity:=1;

        DataConnection.InsertFastPersonBirthSettlemQuery(
          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger,
          notInListText, itsCity);
        DataConnection.ReloadSettlemsView;
        ResultEntityID:=BlankPersonADODS.FieldByName('PERSON_ID').AsInteger;
        ReloadBlankPerson(ResultEntityID);
        BlankPersonADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.DocBrancheCodeDBLookCEhEnter(Sender: TObject);
begin
  if (BlankDocADODS.State in [dsEdit]) then
    BlankDocADODS.Post;
  BlankDocADODS.Edit;
end;

procedure TEntSelInsertForm.DocBrancheCodeDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=DocBrancheCodeDBLookCEh.Text;
  if MessageDlg('Добавить новое подразделение и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        //if MessageDlg('Является ли новый регион областным центром?',
        //  mtConfirmation,[mbYes,mbNo],0) = mrYes then
        //    isRCenter:=1;

        DataConnection.InsertFastDocBrancheQuery(
          BlankDocADODS.FieldByName('DOC_ID').AsInteger,
          notInListText);
        DataConnection.ReloadFMSBranches;
        ResultEntityID:=BlankDocADODS.FieldByName('DOC_ID').AsInteger;
        ReloadBlankDoc(ResultEntityID);
        BlankDocADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.DocSearchADODSFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  //ShowMessage('sss');
  Accept:=
    ((Pos(AnsiLowerCase(SearchDocTypeDBLookCEh.Text),
    AnsiLowerCase(DocSearchADODS.
      FieldByName('DOC_TYPE_NAME').AsString))=1) or
      (Length(SearchDocTypeDBLookCEh.Text)=0)) and
    ((Pos(AnsiLowerCase(SearchDocSerieDBEdit.Text),
    AnsiLowerCase(DocSearchADODS.
      FieldByName('DOC_SERIE').AsString))=1) or
      (Length(SearchDocSerieDBEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(SearchDocNumDBEdit.Text),
    AnsiLowerCase(DocSearchADODS.
      FieldByName('DOC_NUM').AsString))=1) or
      (Length(SearchDocNumDBEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(SearchDocStatusDBLookCEh.Text),
    AnsiLowerCase(DocSearchADODS.
      FieldByName('PLSTATUS_NAME').AsString))=1) or
      (Length(SearchDocStatusDBLookCEh.Text)=0)) and
    //((Pos(SrchDocCreateDateDBDTEdEh.Text,DocSearchADODS.
    //  FieldByName('DOC_CREATE_DATE').AsString)=1) or
    //  (Length(SrchDocCreateDateDBDTEdEh.Text)=0)) and
    //((Pos(SrchDocExpDateDBDTEdEh.Text,DocSearchADODS.
    //  FieldByName('NATION_NAME').AsString)=1) or
    //  (Length(SrchDocExpDateDBDTEdEh.Text)=0)) and
    ((Pos(AnsiLowerCase(SearchDocBranchNameDBEdit.Text),
    AnsiLowerCase(DocSearchADODS.
      FieldByName('DOC_BRANCH_NAME').AsString))=1) or
      (Length(SearchDocBranchNameDBEdit.Text)=0));
end;

procedure TEntSelInsertForm.SettlSearchADODSFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  Dest: Tstrings;
  i: integer;
  AnalysStr: string;
  acceptsArray: array of Boolean;
  acceptVal: Boolean;
begin

  Accept:=((Pos(AnsiLowerCase(SettlemNameSettlSearchDBEdit.Text),
    AnsiLowerCase(SettlSearchADODS.
    FieldByName('SETTLEM_NAME').AsString))=1) or
    (Length(SettlemNameSettlSearchDBEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(SettlShortSettlSearchDBLookCEh.Text),
    AnsiLowerCase(SettlSearchADODS.
      FieldByName('SETTLEM_SHORT').AsString))=1) or
      (Length(SettlShortSettlSearchDBLookCEh.Text)=0)) and
    ((Pos(AnsiLowerCase(DistrictNameSettlSearchDBLookCEh.Text),
    AnsiLowerCase(SettlSearchADODS.
      FieldByName('DISTRICT_FULL_NAME').AsString))=1) or
      (Length(DistrictNameSettlSearchDBLookCEh.Text)=0))

  {Accept:=False;
  AnalysStr:=Trim(SettlemNameDBEdit.Text);
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
          AnsiLowerCase(SettlSearchADODS.FieldByName('SETTLEM_NAME').
          AsString))<>0) then
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
    Accept:=True; }

end;

procedure TEntSelInsertForm.SettlSearchEditChange(Sender: TObject);
begin
  RefreshSearchSettlemsFilter;
end;

procedure TEntSelInsertForm.SettlShortSettlSearchDBLookCEhChange(
  Sender: TObject);
begin
  RefreshSearchSettlemsFilter;
end;

procedure TEntSelInsertForm.SettlShortSettlSearchDBLookCEhNotInList(
  Sender: TObject; NewText: string; var RecheckInList: Boolean);
var notInListText: String;
    itsCity: Integer;
    newShortId: Integer;
begin
  notInListText:=NewText;
  itsCity:=0;
  if notInListText<>'' then
  if MessageDlg('Добавить новое сокращение и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        if MessageDlg('Является ли сокращение городом?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes then
            itsCity:=1;

        newShortId:=DataConnection.InsertFastShortQuery(
          notInListText, 4-itsCity);
        DataConnection.ReloadShorted;
        //ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        ResultEntityID:=BlankSettlemADODS.FieldByName('SETTLEMENT_ID').AsInteger;
        if BlankSettlemADODS.State in [dsEdit] then
           BlankSettlemADODS.Post;
        ReloadBlankSettl(ResultEntityID);
        BlankSettlemADODS.Edit;
        BlankSettlemADODS.FieldByName('SETTL_SHORTY_ID').Value:=newShortId;
        BlankSettlemADODS.Post;
        BlankSettlemADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=27) then
  begin
    ResultEntityID:=-1;
    ResultEntityGroupID:=-1;
    SetLength(ResultIdS,1);
    ResultIdS[0]:=-1;
    Close;
  end
  else if (Integer(Key)=115) then
  begin
    case ResultEntityType of
    entPerson:
      begin
        if (BlankPersonADODS.State in [dsEdit]) then
          BlankPersonADODS.Post;
        BlankPersonADODS.Edit;
        if (SelInsEntityPageControl.ActivePage=AddNewPersonTabSheet) then
        begin
          ReloadSearchPersonsNonFiltered;
          SelectExistPersonTabSheet.Show;
        end
        else
        begin
          AddNewPersonTabSheet.Show;
          //BasePersonDataTabSheet.Show;
          PersonLastNameDBEdit.SetFocus;
        end;
      end;
    entDoc:
      begin
        ReloadSearchDocs;
        SelectExistDocTabSheet.Show;
      end;
    end;
  end
  else
  begin

  end;
end;

procedure TEntSelInsertForm.FormShow(Sender: TObject);
begin
  if (SelInsEntityPageControl.ActivePage=SelectExistOperationTypeTabSheet) then
  begin
    if ServicesDictTreeView.Items.Count>0 then
      ServicesDictTreeView.SetFocus;
  end
  else if (SelInsEntityPageControl.ActivePage=AddNewPersonTabSheet) then
  begin
    //BasePersonDataTabSheet.Show;
    PersonLastNameDBEdit.SetFocus;
  end
  else if (SelInsEntityPageControl.ActivePage=AddNewAdresTabSheet) then
  begin
    AdrPersLinkTypeDBLookupCB.SetFocus;
    Label48.Enabled:=False;
    StreetDictDBLookCEh.Enabled:=False;
  end
  else if (SelInsEntityPageControl.ActivePage=AddNewDocTabSheet) then
  begin
    BlankDocTypeDBLookCEh.SetFocus;
  end
  else if (SelInsEntityPageControl.ActivePage=SelectExistAdresTabSheet) then
  begin
    AdrSearchCountryDBLookC.SetFocus;
  end
  else if (SelInsEntityPageControl.ActivePage=SelectExistPersonTabSheet) then
  begin
    SearchLastNameDBEdit.SetFocus;
  end
  else if (SelInsEntityPageControl.ActivePage=SelectExistSettlementTabSheet) then
  begin
    SettlemNameSettlSearchDBEdit.SetFocus;
  end
  else
  begin

  end;
end;

function TEntSelInsertForm.ShowModalForSelectRetComplex(EntityType: TEntityType;
    SelFormMode: TSelFormMode; NewObjectID: Integer=-1): TSelReturn;
var res: TSelReturn;
begin
   res.ResultEntityID:=ShowModalForSelect(EntityType, SelFormMode, NewObjectID);
   //res.ResultIdS:=ResultIdS;
   res.ResultEntityLinkID:=ResultEntityLinkID;
   res.ResultEntityGroupID:=ResultEntityGroupID;
   Result:=res;
end;

procedure TEntSelInsertForm.SrchDocCreateDateDBDTEdEhChange(Sender: TObject);
begin
  RefreshSearchDocsFilter;
end;

procedure TEntSelInsertForm.SrchDocExpDateDBDTEdEhChange(Sender: TObject);
begin
  RefreshSearchDocsFilter;
end;

procedure TEntSelInsertForm.SearchDocBranchNameDBEditChange(Sender: TObject);
begin
  RefreshSearchDocsFilter;
end;

procedure TEntSelInsertForm.SearchDocNumDBEditChange(Sender: TObject);
begin
  RefreshSearchDocsFilter;
end;

procedure TEntSelInsertForm.SearchDocSerieDBEditChange(Sender: TObject);
begin
  RefreshSearchDocsFilter;
end;

procedure TEntSelInsertForm.SearchDocStatusDBLookCEhChange(Sender: TObject);
begin
  RefreshSearchDocsFilter;
end;

procedure TEntSelInsertForm.SearchDocTypeDBLookCEhChange(Sender: TObject);
begin
  RefreshSearchDocsFilter;
end;

procedure TEntSelInsertForm.SearchFirstNameDBEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=40) then
  begin
    PersonSearchResultDBGridEh.SetFocus;
  end
end;

procedure TEntSelInsertForm.SearchFirstNameDfBEditChange(Sender: TObject);
begin
  RefreshSearchPersonsFilter;
end;

procedure TEntSelInsertForm.SearchLastNameDBEditChange(Sender: TObject);
begin
  RefreshSearchPersonsFilter;
end;

procedure TEntSelInsertForm.SearchLastNameDBEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=40) then
  begin
    PersonSearchResultDBGridEh.SetFocus;
  end
end;

procedure TEntSelInsertForm.SearchSurnameDBEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=40) then
  begin
    PersonSearchResultDBGridEh.SetFocus;
  end
end;

procedure TEntSelInsertForm.SearchSurnamefDBEditChange(Sender: TObject);
begin
  RefreshSearchPersonsFilter;
end;

procedure TEntSelInsertForm.ServicesDictTreeViewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var i: Integer;
begin
  if (Integer(Key)=13) then
  begin
    ResultEntityID:=-1;
    SetLength(ResultIdS,1);
    ResultIdS[0]:=-1;
    ResultEntityGroupID:=-1;
    if ServicesDictTreeView.SelectionCount>0 then
    begin
      SetLength(ResultIdS,ServicesDictTreeView.SelectionCount);
      ResultEntityID:=ServicesDictTreeView.
        Selections[0].SelectedIndex;

      if ServicesDictTreeView.Selections[0].Level>0 then
        ResultEntityGroupID:=ServicesDictTreeView.
        Selections[0].Parent.SelectedIndex;

      for i:=0 to ServicesDictTreeView.SelectionCount-1 do
      begin
        ResultIdS[i]:=ServicesDictTreeView.
          Selections[i].SelectedIndex;
      end;
    end;

    Close;
  end
end;

procedure TEntSelInsertForm.ServicesDictTreeViewKeyPress(Sender: TObject;
  var Key: Char);
var I, root_counter: Integer;
    str_item_num: string;
begin
  str_item_num:=Key;
  if StrToIntDef(str_item_num,0)>0 then
  for I := 0 to ServicesDictTreeView.Items.Count - 1 do
    ServicesDictTreeView.Items[I].Collapse(True);

  //ShowMessage(IntToStr(StrToIntDef(str_item_num,0)));
  if StrToIntDef(str_item_num,0)>0 then
  begin
    root_counter:=0;
    for I := 0 to ServicesDictTreeView.Items.Count - 1 do
    if ServicesDictTreeView.Items[I].Level=0 then
    begin
       root_counter:=root_counter+1;
       if (root_counter>=StrToInt(str_item_num)) then
       begin
          ServicesDictTreeView.Items[I].Expand(True);
          Break;
       end;
    end;
  end;

  ResultEntityID:=-1;
  SetLength(ResultIdS,1);
  ResultIdS[0]:=-1;
  ResultEntityGroupID:=-1;
  if ServicesDictTreeView.SelectionCount>0 then
  begin
    SetLength(ResultIdS,ServicesDictTreeView.SelectionCount);
    ResultEntityID:=ServicesDictTreeView.
      Selections[0].SelectedIndex;

    if ServicesDictTreeView.Selections[0].Level>0 then
      ResultEntityGroupID:=ServicesDictTreeView.
      Selections[0].Parent.SelectedIndex;

    for i:=0 to ServicesDictTreeView.SelectionCount-1 do
    begin
      ResultIdS[i]:=ServicesDictTreeView.
        Selections[i].SelectedIndex;
    end;
  end;

end;

procedure TEntSelInsertForm.ServicesDictTreeViewMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var i: Integer;
begin
  ResultEntityID:=-1;
  SetLength(ResultIdS,1);
  ResultIdS[0]:=-1;
  ResultEntityGroupID:=-1;
  if ServicesDictTreeView.SelectionCount>0 then
  begin
    SetLength(ResultIdS,ServicesDictTreeView.SelectionCount);
    ResultEntityID:=ServicesDictTreeView.
      Selections[0].SelectedIndex;

    if ServicesDictTreeView.Selections[0].Level>0 then
    ResultEntityGroupID:=ServicesDictTreeView.
      Selections[0].Parent.SelectedIndex;

    for i:=0 to ServicesDictTreeView.SelectionCount-1 do
    begin
      ResultIdS[i]:=ServicesDictTreeView.
        Selections[i].SelectedIndex;
    end;
  end;
end;

function TEntSelInsertForm.ReloadBlankPerson(PERSON_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     BlankPersonADODS.Active:=False;
     BlankPersonADODS.Parameters.ParamByName('person_id').
        Value:=PERSON_ID;
     BlankPersonADODS.Active:=True;
     if BlankPersonADODS.Active then
        if BlankPersonADODS.RecordCount=1 then
            res:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки поставщика данных ДОБАВЛЕННЫЙ ПОЛЬЗОВАТЕЛЬ! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TEntSelInsertForm.InsertPersonLnkOnCurrBlankPerson: Integer;
var res, adr_id: Integer;
begin
  if BlankPersonADODS.RecordCount>0 then
  begin
    res:=DataConnection.InsertPersonLnkOnPerson(BlankPersonADODS.
      FieldByName('PERSON_ID').AsInteger);
  end
  else
    begin
      ShowMessage('Не выделено лица!');
      res:=-1;
    end;

  Result:=res;
end;

procedure TEntSelInsertForm.PBthRegDBLookCEhChange(Sender: TObject);
begin
  RefreshSearchPersonsFilter;
end;

procedure TEntSelInsertForm.PBthRegDBLookCEhEnter(Sender: TObject);
begin
  if (BlankPersonADODS.State in [dsEdit]) then
    BlankPersonADODS.Post;
  BlankPersonADODS.Edit;
end;


procedure TEntSelInsertForm.PBthRegDBLookCEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Integer(Key)=40) then
  begin
    PersonSearchResultDBGridEh.SetFocus;
  end
end;

procedure TEntSelInsertForm.PBthRegDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var isRCenter: Integer;
    notInListText: String;
begin
  isRCenter:=0;
  notInListText:=NewText;
  if MessageDlg('Добавить новый регион и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        if MessageDlg('Является ли новый регион областным центром?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes then
            isRCenter:=1;

        DataConnection.InsertFastPersonBirthRegionQuery(
          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger,
          notInListText, isRCenter);
        DataConnection.ReloadBTHRegions;
        ResultEntityID:=BlankPersonADODS.FieldByName('PERSON_ID').AsInteger;
        ReloadBlankPerson(ResultEntityID);
        BlankPersonADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.PBthSettlDBLookCEhChange(Sender: TObject);
begin
  RefreshSearchPersonsFilter;
end;

procedure TEntSelInsertForm.PBthSettlDBLookCEhEnter(Sender: TObject);
begin
  if (BlankPersonADODS.State in [dsEdit]) then
    BlankPersonADODS.Post;
  BlankPersonADODS.Edit;
end;

procedure TEntSelInsertForm.PBthSettlDBLookCEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=40) then
  begin
    PersonSearchResultDBGridEh.SetFocus;
  end
end;

procedure TEntSelInsertForm.PBthSettlDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var itsCity: Integer;
    notInListText: String;
begin

  itsCity:=0;
  notInListText:=NewText;
  if MessageDlg('Добавить новый населенный пункт и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        if MessageDlg('Является ли новый населенный пункт городом?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes then
            itsCity:=1;

        DataConnection.InsertFastPersonBirthSettlemQuery(
          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger,
          notInListText, itsCity);
        DataConnection.ReloadSettlemsView;
        ResultEntityID:=BlankPersonADODS.FieldByName('PERSON_ID').AsInteger;
        ReloadBlankPerson(ResultEntityID);
        BlankPersonADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.PersBthCountryDBLookCEhChange(Sender: TObject);
begin
  RefreshSearchPersonsFilter;
end;

procedure TEntSelInsertForm.PersBthCountryDBLookCEhEnter(Sender: TObject);
begin
  if (BlankPersonADODS.State in [dsEdit]) then
    BlankPersonADODS.Post;
  BlankPersonADODS.Edit;
end;

procedure TEntSelInsertForm.PersBthCountryDBLookCEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Integer(Key)=40) then
  begin
    PersonSearchResultDBGridEh.SetFocus;
  end
end;

procedure TEntSelInsertForm.PersBthCountryDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=NewText;
  if MessageDlg('Добавить новое государство и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        DataConnection.InsertFastPersonBirthCountryQuery(
          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger,
          notInListText);
        DataConnection.ReloadCountriesADOT;
        ResultEntityID:=BlankPersonADODS.FieldByName('PERSON_ID').AsInteger;
        ReloadBlankPerson(ResultEntityID);
        BlankPersonADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.PersCountryDBLookCEhChange(Sender: TObject);
begin
  RefreshSearchPersonsFilter;
end;

procedure TEntSelInsertForm.PersCountryDBLookCEhEnter(Sender: TObject);
begin
  if (BlankPersonADODS.State in [dsEdit]) then
    BlankPersonADODS.Post;
  BlankPersonADODS.Edit;
end;

procedure TEntSelInsertForm.PersCountryDBLookCEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=40) then
  begin
    PersonSearchResultDBGridEh.SetFocus;
  end
end;

procedure TEntSelInsertForm.PersCountryDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=NewText;
  if MessageDlg('Добавить новое государство и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        DataConnection.InsertFastPersonCountryQuery(
          BlankPersonADODS.FieldByName('PERSON_ID').AsInteger,
          notInListText);
        DataConnection.ReloadCountriesADOT;
        ResultEntityID:=BlankPersonADODS.FieldByName('PERSON_ID').AsInteger;
        ReloadBlankPerson(ResultEntityID);
        BlankPersonADODS.Edit;
      end;
end;

procedure TEntSelInsertForm.PersNationDBLookCEhChange(Sender: TObject);
begin
  RefreshSearchPersonsFilter;
end;

procedure TEntSelInsertForm.PersNationDBLookCEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Integer(Key)=40) then
  begin
    PersonSearchResultDBGridEh.SetFocus;
  end
end;

procedure TEntSelInsertForm.PersonSearchADODSFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  StatusBar.Panels[0].Text:=SearchLastNameDBEdit.Text;
  Accept:=((Pos(AnsiLowerCase(SearchLastNameDBEdit.Text),
    AnsiLowerCase(PersonSearchADODS.
    FieldByName('LAST_NAME').AsString))=1) or
    (Length(SearchLastNameDBEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(SearchFirstNameDBEdit.Text),
    AnsiLowerCase(PersonSearchADODS.
      FieldByName('FIRST_NAME').AsString))=1) or
      (Length(SearchFirstNameDBEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(SearchSurnameDBEdit.Text),
    AnsiLowerCase(PersonSearchADODS.
      FieldByName('SURNAME').AsString))=1) or
      (Length(SearchSurnameDBEdit.Text)=0)) and
    ((Pos(AnsiLowerCase(PersCountryDBLookCEh.Text),
    AnsiLowerCase(PersonSearchADODS.
      FieldByName('COUNTRY_NAME').AsString))=1) or
      (Length(PersCountryDBLookCEh.Text)=0)) and
    ((Pos(AnsiLowerCase(PersSexDBLookCEh.Text),
    AnsiLowerCase(PersonSearchADODS.
      FieldByName('SEX_NAME').AsString))=1) or
      (Length(PersSexDBLookCEh.Text)=0)) and
    ((Pos(AnsiLowerCase(PersNationDBLookCEh.Text),
    AnsiLowerCase(PersonSearchADODS.
      FieldByName('NATION_NAME').AsString))=1) or
      (Length(PersNationDBLookCEh.Text)=0)) and
    ((Pos(AnsiLowerCase(PersBthCountryDBLookCEh.Text),
    AnsiLowerCase(PersonSearchADODS.
      FieldByName('BIRTH_COUNT').AsString))=1) or
      (Length(PersBthCountryDBLookCEh.Text)=0)) and
    ((Pos(AnsiLowerCase(PBthRegDBLookCEh.Text),
    AnsiLowerCase(PersonSearchADODS.
      FieldByName('REGION_NAME').AsString))=1) or
      (Length(PBthRegDBLookCEh.Text)=0)) and
    ((Pos(AnsiLowerCase(PBthSettlDBLookCEh.Text),
    AnsiLowerCase(PersonSearchADODS.
      FieldByName('SETTLEM_NAME').AsString))=1) or
      (Length(PBthSettlDBLookCEh.Text)=0));
end;

procedure TEntSelInsertForm.PersSexDBLookCEhChange(Sender: TObject);
begin
  RefreshSearchPersonsFilter;
end;

procedure TEntSelInsertForm.PersSexDBLookCEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Integer(Key)=40) then
  begin
    PersonSearchResultDBGridEh.SetFocus;
  end
end;

procedure TEntSelInsertForm.ReloadBlankPersonAllianceLinks;
begin
  try
     BlankPersAllianLinksADODS.Active:=False;
     BlankPersAllianLinksADODS.Active:=True;
     BlankPersAllianLinksADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ЛИЦ-РОДСТВЕННИКОВ ПО НОВОМУ ЛИЦУ! Описание: '+E.Message);
  end;
end;

procedure TEntSelInsertForm.ReloadBlankLinkAlliance;
begin
  try
     BlankLinkAllianADOT.Active:=False;
     BlankLinkAllianADOT.Active:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы ЛИЦА ТАБЛИЦЫ СВЯЗИ С РОДСТВЕННИКОМ ПО НОВОМУ ЛИЦУ! Описание: '+E.Message);
  end;
end;

function TEntSelInsertForm.ReloadBlankAdres(ADRES_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     BlankAdrADODS.Active:=False;
     BlankAdrELinkADODS.Active:=False;
     BlankAdrADODS.Parameters.ParamByName('adres_id').
        Value:=ADRES_ID;
     BlankAdrELinkADODS.Parameters.ParamByName('adres_id').
        Value:=ADRES_ID;
     BlankAdrADODS.Active:=True;
     BlankAdrELinkADODS.Active:=True;
     if BlankAdrADODS.Active and BlankAdrELinkADODS.Active then
        if (BlankAdrADODS.RecordCount=1) and (BlankAdrELinkADODS.RecordCount=1) then
            res:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки поставщика данных ДОБАВЛЕННЫЙ АДРЕС ЛИЦА! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TEntSelInsertForm.ReloadBlankDoc(DOC_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     BlankDocADODS.Active:=False;
     BlankDocELinkADODS.Active:=False;
     BlankDocADODS.Parameters.ParamByName('doc_id').
        Value:=DOC_ID;
     BlankDocELinkADODS.Parameters.ParamByName('doc_id').
        Value:=DOC_ID;
     BlankDocADODS.Active:=True;
     BlankDocELinkADODS.Active:=True;
     //res:=True;
     if BlankDocADODS.Active and BlankDocELinkADODS.Active then
        if (BlankDocADODS.RecordCount=1) and (BlankDocELinkADODS.RecordCount=1) then
            res:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки поставщика данных ДОБАВЛЕННЫЙ ДОКУМЕНТ ЛИЦА! Описание: '+E.Message);
  end;
  Result:=res;
end;

function TEntSelInsertForm.ReloadBlankSettl(SETTL_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;
  try
     BlankSettlemADODS.Active:=False;
     BlankSettlemADODS.Parameters.ParamByName('SETTL_ID').
        Value:=SETTL_ID;
     BlankSettlemADODS.Active:=True;
     if BlankSettlemADODS.Active then
        if (BlankSettlemADODS.RecordCount=1) then
            res:=True;
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки поставщика данных ДОБАВЛЕННЫЙ НАСЕЛЕННЫЙ ПУНКТ! Описание: '+E.Message);
  end;
  Result:=res;
end;

procedure TEntSelInsertForm.ReloadBlankAdrELink;
begin
  try
     BlankAdrELinkADODS.Active:=False;
     BlankAdrELinkADODS.Active:=True;
     BlankAdrELinkADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СВЯЗКИ НОВОГО АДРЕСА С ЛИЦОМ! Описание: '+E.Message);
  end;
end;

procedure TEntSelInsertForm.ReloadBlankDocELink;
begin
  try
     BlankDocELinkADODS.Active:=False;
     BlankDocELinkADODS.Active:=True;
     BlankDocELinkADODS.Properties['Unique Table'].Value := 'ENTLNK_REG';
  except on E:Exception do
     ShowMessage('Ошибка перезагрузки таблицы СВЯЗКИ НОВОГО ДОКУМЕНТА С ЛИЦОМ! Описание: '+E.Message);
  end;
end;

function TEntSelInsertForm.ShowModalForSelect(EntityType: TEntityType;
    SelFormMode: TSelFormMode; NewObjectID: Integer=-1): Integer;
begin
  SetLength(ResultIdS,1);
  ResultIdS[0]:=NewObjectID;
  ResultEntityType:=EntityType;
  FormSelInsMode:=SelFormMode;
  ResultEntityID:=NewObjectID;
  ResultEntityGroupID:=-1;
  ResultEntityLinkID:=-1;
  case EntityType of
    entPerson:
    begin
      if (ResultEntityID=-1) then
          ResultEntityID:=DataConnection.InsertBlankPersonQuery;
      if ReloadBlankPerson(ResultEntityID) then
        begin
          ReloadBlankPersonAdreses;
          ReloadBlankPersonDocs;
          if (SelFormMode=smInsert) then
            begin

              //ShowMessage(IntToStr(ResultEntityID));
              ReloadSearchDocsNonFiltered;
              ReloadSearchAdresesNonFiltered;

              ReloadBlankPersonAllianceLinks;
              ReloadBlankLinkAlliance;
              AddNewPersonTabSheet.Show;

            end
          else if (SelFormMode=smEdit) then
            begin

              ReloadSearchDocsNonFiltered;
              ReloadSearchAdresesNonFiltered;

              ReloadBlankPersonAllianceLinks;
              ReloadBlankLinkAlliance;
              AddNewPersonTabSheet.Show;
            end
          else
            begin
              ReloadSearchPersonsNonFiltered;
              SelectExistPersonTabSheet.Show;
            end;
        end
        else
          begin
            ResultEntityID:=-1;
            Result:=ResultEntityID;
            ShowMessage('Неудачное добавление нового лица!');
            Exit;
          end;

    end;
    entAdres:
    begin
      DataConnection.ReloadStreets;

      if (ResultEntityID<=0) then
        ResultEntityID:=DataConnection.InsertBlankAdresQuery;
      //ShowMessage(IntToStr(ResultEntityID));
      if ReloadBlankAdres(ResultEntityID) then
      begin
        ReloadBlankAdrELink;
        DataConnection.ReloadPersonView;
        ResultEntityLinkID:=BlankAdrELinkADODS.FieldByName('EL_REG_ID').AsInteger;


        if SelFormMode=smInsert then
        begin
          //ShowMessage('dddd');
          AddNewAdresTabSheet.Show;
        end
        else if SelFormMode=smEdit then
          AddNewAdresTabSheet.Show
        else
        begin

          ReloadSearchAdresesNonFiltered;
          SelectExistAdresTabSheet.Show;
        end;

      end
      else
          begin
            ResultEntityID:=-1;
            Result:=ResultEntityID;
            ShowMessage('Неудачное добавление нового адреса лица!');
            Exit;
          end;

    end;
    entDoc:
    begin
      DataConnection.ReloadPersonView;

      if (ResultEntityID<=0) then
        ResultEntityID:=DataConnection.InsertBlankDocQuery;

      if ReloadBlankDoc(ResultEntityID) then
      begin
        ReloadBlankDocELink;
        ResultEntityLinkID:=BlankDocELinkADODS.FieldByName('EL_REG_ID').AsInteger;

        if SelFormMode=smInsert then
        begin
          AddNewDocTabSheet.Show
        end
        else if SelFormMode=smEdit then
          AddNewDocTabSheet.Show
        else
        begin
          ReloadSearchDocsNonFiltered;
          SelectExistDocTabSheet.Show;
        end;

      end
      else
          begin
            ResultEntityID:=-1;
            Result:=ResultEntityID;
            ShowMessage('Неудачное добавление нового документа лица!');
            Exit;
          end;

    end;
    entServiceType:
    begin
      if SelFormMode=smInsert then
      begin

      end
      else if SelFormMode=smSelect then
      begin
        SelectExistOperationTypeTabSheet.Show;
        ReloadServicesDictTree;
      end
      else
        begin

        end;
    end;
    entSettlement:
    begin
      if (ResultEntityID<=0) then
        ResultEntityID:=DataConnection.InsertBlankSettlQuery;

      if ReloadBlankSettl(ResultEntityID) then
      begin
      if SelFormMode=smInsert then
        begin
          //AddNewDocTabSheet.Show
        end
      else if SelFormMode=smEdit then
        begin
          //AddNewDocTabSheet.Show
        end
      else
        begin
          ReloadSearchSettlems;
          SelectExistSettlementTabSheet.Show;
        end;
      end
      else
          begin
            ResultEntityID:=-1;
            Result:=ResultEntityID;
            ShowMessage('Неудачное добавление нового населенного пункта!');
            Exit;
          end;
    end;
    else
    begin
      ShowMessage('Неизвестный режим панели выборки!');
    end;
  end;
  ShowModal;
  //PersonLastNameDBEdit.SetFocus;
  Result:=ResultEntityID;
end;

end.
