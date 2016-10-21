unit PersonDesktopUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons,
  GridsEh, DBGridEh, DBCtrlsEh, DB, DBLookupEh;

type
  TPersonDesktopForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    PersonDetailsPageControl: TPageControl;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    Splitter1: TSplitter;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    PersOperationsTabSheet: TTabSheet;
    Panel3: TPanel;
    DBNavigator2: TDBNavigator;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Splitter2: TSplitter;
    GroupBox1: TGroupBox;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel7: TPanel;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    Splitter3: TSplitter;
    Label18: TLabel;
    Label19: TLabel;
    DocTakeReasonDBLookCB: TDBLookupComboBox;
    Label20: TLabel;
    DocBrancheNameDBEdit: TDBEdit;
    DocOMDBLookCB: TDBLookupComboBox;
    Label22: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox3: TGroupBox;
    Splitter4: TSplitter;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBEdit15: TDBEdit;
    Label23: TLabel;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    PersonsDBGridEh: TDBGridEh;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    GroupBox6: TGroupBox;
    Panel8: TPanel;
    BitBtn7: TBitBtn;
    DBNavigator5: TDBNavigator;
    Panel9: TPanel;
    BitBtn8: TBitBtn;
    DBNavigator6: TDBNavigator;
    OpAdresDBGridEh: TDBGridEh;
    OpDocsDBGridEh: TDBGridEh;
    OpPersonsDBGridEh: TDBGridEh;
    Label25: TLabel;
    GroupBox7: TGroupBox;
    TabSheet1: TTabSheet;
    Panel10: TPanel;
    BitBtn9: TBitBtn;
    GroupBox8: TGroupBox;
    TabSheet7: TTabSheet;
    GroupBox9: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBDateTimeEditEh4: TDBDateTimeEditEh;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    GroupBox10: TGroupBox;
    Panel12: TPanel;
    BitBtn11: TBitBtn;
    DBNavigator9: TDBNavigator;
    OpOthDataDBGridEh: TDBGridEh;
    Splitter7: TSplitter;
    PersonOperationsDBGrid: TDBGridEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox9: TDBLookupComboBox;
    Label24: TLabel;
    DocStatusDBLookCEh: TDBLookupComboboxEh;
    Label26: TLabel;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    Label27: TLabel;
    BitBtn1: TBitBtn;
    Panel13: TPanel;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    DBGrid3: TDBGrid;
    BitBtn2: TBitBtn;
    Panel14: TPanel;
    Panel6: TPanel;
    BitBtn4: TBitBtn;
    DBGrid4: TDBGrid;
    BitBtn12: TBitBtn;
    Panel15: TPanel;
    Panel11: TPanel;
    BitBtn10: TBitBtn;
    DBGrid7: TDBGrid;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Panel16: TPanel;
    HeaderControl1: THeaderControl;
    DocBrancheCodeDBLookCEh: TDBLookupComboboxEh;
    AdrCountryDBLookCEh: TDBLookupComboboxEh;
    AdrStateDBLookCEh: TDBLookupComboboxEh;
    AdrDistrictDBLookCEh: TDBLookupComboboxEh;
    AdrSettlemDBLookCEh: TDBLookupComboboxEh;
    PersonJobsTabSheet: TTabSheet;
    Panel17: TPanel;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    DBGridEh1: TDBGridEh;
    PersZAGSRecsDBGridEh: TDBGridEh;
    DBDateTimeEditEh5: TDBDateTimeEditEh;
    DBEdit12: TDBEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Panel18: TPanel;
    CheckBox1: TCheckBox;
    GroupBox11: TGroupBox;
    PersonSearchLIKEEdit: TEdit;
    GroupBox12: TGroupBox;
    PersonSearchNameEdit: TEdit;
    GroupBox13: TGroupBox;
    PersonSearchSurnameEdit: TEdit;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    PersonSearchCivilEdit: TEdit;
    PersonSearchNationEdit: TEdit;
    GroupBox19: TGroupBox;
    PersonSearchBCountEdit: TEdit;
    PersonSearchBRegionEdit: TEdit;
    PersSearchBSettlemEdit: TEdit;
    Panel19: TPanel;
    DBNavigator3: TDBNavigator;
    Panel20: TPanel;
    DBNavigator4: TDBNavigator;
    Panel21: TPanel;
    DBNavigator7: TDBNavigator;
    Panel22: TPanel;
    DBNavigator8: TDBNavigator;
    DBDateTimeEditEh6: TDBDateTimeEditEh;
    Label28: TLabel;
    PersonSearchBirthdateEdit: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label29: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label30: TLabel;
    DBLookupComboboxEh9: TDBLookupComboboxEh;
    Label43: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure PersOperationsTabSheetShow(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure insertPersonForm;
    procedure insertPersonFormOnFilterParams;
    procedure selectPersonList;
    procedure PersonsDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonOperationsDBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure insertCurrentPersonOperationAction;
    procedure InsertCurrOpPerson;
    procedure EditCurrOpPerson;
    procedure EditCurrPerson;
    procedure OpPersonsDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure InsertCurrOpPersonAdres;
    procedure EditCurrOpPersonAdres(selectFromList: Boolean=False);
    procedure InsertCurrOpPersonDoc;
    procedure EditCurrOpPersonDoc(selectFromList: Boolean=False);
    procedure OpAdresDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpDocsDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn9Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure OpOthDataDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonSearchLIKEEditChange(Sender: TObject);
    procedure DocBrancheCodeDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure DocBrancheCodeDBLookCEhEnter(Sender: TObject);
    procedure DocBrancheNameDBEditEnter(Sender: TObject);
    procedure DocBrancheNameDBEditExit(Sender: TObject);
    procedure AdrCountryDBLookCEhEnter(Sender: TObject);
    procedure AdrStateDBLookCEhEnter(Sender: TObject);
    procedure AdrDistrictDBLookCEhEnter(Sender: TObject);
    procedure AdrSettlemDBLookCEhEnter(Sender: TObject);
    procedure AdrCountryDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure AdrStateDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure AdrDistrictDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure AdrSettlemDBLookCEhNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure PersZAGSRecsDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn16Click(Sender: TObject);
    procedure PersonJobsTabSheetShow(Sender: TObject);
    procedure PersonOperationsDBGridGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure BitBtn18Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure PersonOperationsDBGridDblClick(Sender: TObject);
    procedure PersonsDBGridEhDblClick(Sender: TObject);
    procedure PersonSearchLIKEEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonSearchNameEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonSearchSurnameEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonSearchSexEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonSearchCivilEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonSearchNationEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonSearchBCountEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonSearchBRegionEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersSearchBSettlemEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonsDBGridEhGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PersonDesktopForm: TPersonDesktopForm;

implementation

uses DBConnect, InterfaceUnit, ConstantsUnit, EntitySelInsUnit,
  OpCompositionFormUnit, CustomOperFormUnit;

{$R *.dfm}

procedure TPersonDesktopForm.InsertCurrOpPerson;
var newPersonId: Integer;
begin
if DataConnection.OpPersonsADODS.Active then
  begin
    if DataConnection.OpPersonsADODS.RecordCount>0 then
    begin
      newPersonId:=EntSelInsertForm.ShowModalForSelect( entPerson, smInsert);
      //ShowMessage('efwefwef'+IntTOStr(newPersonId));
      //DataConnection.ReloadPersonsADODS;
      if newPersonId>=0 then
      begin
        DataConnection.SetCurrentOpPerson(newPersonId);
        DataConnection.ReloadPersonView;
        DataConnection.ReloadActAdrLinks;
        DataConnection.ReloadActDocLinks;
        DataConnection.ReloadActPersLinks;
        DataConnection.ReloadOpPersLinks;
        DataConnection.ReloadOpAdrLinks;
        DataConnection.ReloadOpDocLinks;
      end;
    end
    else
      ShowMessage('Не выделено записи связи с лицом!');
  end
  else
    ShowMessage('Неактивный набор данных!');
end;

procedure TPersonDesktopForm.EditCurrOpPerson;
//var newPersonId: Integer;
begin
if DataConnection.OpPersonsADODS.Active then
  begin
    if DataConnection.OpPersonsADODS.RecordCount>0 then
    begin
      //newPersonId:=
      EntSelInsertForm.ShowModalForSelect( entPerson, smEdit,
        DataConnection.OpPersonsADODS.FieldByName('ELINK_ID').AsInteger);
      //ShowMessage('efwefwef'+IntTOStr(newPersonId));
      //DataConnection.ReloadPersonsADODS;
      //if newPersonId>=0 then
      //begin
      //  DataConnection.SetCurrentOpPerson(newPersonId);
        DataConnection.ReloadPersonView;
        DataConnection.ReloadActAdrLinks;
        DataConnection.ReloadActDocLinks;
        DataConnection.ReloadActPersLinks;
        DataConnection.ReloadOpPersLinks;
        DataConnection.ReloadOpAdrLinks;
        DataConnection.ReloadOpDocLinks;
      //end;
    end
    else
      ShowMessage('Не выделено записи связи с лицом!');
  end
  else
    ShowMessage('Неактивный набор данных!');
end;

procedure TPersonDesktopForm.EditCurrPerson;
//var newPersonId: Integer;
begin
if DataConnection.PersonsADODS.Active then
  begin
    if DataConnection.PersonsADODS.RecordCount>0 then
    begin
      //newPersonId:=
      ShowModalForSelect( entPerson, smEdit, PersonDesktopForm,
        DataConnection.PersonsADODS.FieldByName('PERSON_ID').AsInteger);

      DataConnection.ReloadPersonView;
      DataConnection.ReloadPersonCurrent;
    end
    else
      ShowMessage('Не выделено записи лица!');
  end
  else
    ShowMessage('Неактивный набор данных!');
end;

procedure TPersonDesktopForm.InsertCurrOpPersonAdres;
var adrPersonId: Integer;
    selectedTypes: TSelReturn;
begin
  if DataConnection.OpPersonsADODS.Active then
  begin
    if DataConnection.OpPersonsADODS.RecordCount>0 then
    begin

      if DataConnection.OpPersonsADODS.FieldByName('ELINK_ID').Value<>NULL then
      begin
        if DataConnection.OpPersonsADODS.FieldByName('ELINK_ID').AsInteger>0 then
        begin

           adrPersonId:=DataConnection.OpPersonsADODS.FieldByName('ELINK_ID').AsInteger;

        end
        else
          adrPersonId:=DataConnection.PersonsADODS.FieldByName('PERSON_ID').AsInteger;
      end
      else
        adrPersonId:=DataConnection.PersonsADODS.FieldByName('PERSON_ID').AsInteger;

          selectedTypes:=ShowModalForSelectRetComplex( entAdres, smInsert, PersonDesktopForm,
            DataConnection.InsertBlankAdrLinkOnPerson(adrPersonId));

          if selectedTypes.ResultEntityID>=0 then
          begin
            //Варианты адресов и документов для лиц
            DataConnection.SetCurrentOpAdres(selectedTypes.ResultEntityLinkID);
            DataConnection.ReloadOpPersAdrLinks;

            DataConnection.ReloadActAdrLinks;
            DataConnection.ReloadActDocLinks;
            DataConnection.ReloadActPersLinks;

            DataConnection.ReloadOpAdrLinks;
          end;

    end
    else
      ShowMessage('Не назначено или не выделено лица в составе лиц!');
  end
  else
    ShowMessage('Не назначено или не выделено лица в составе лиц!');
end;

procedure TPersonDesktopForm.EditCurrOpPersonAdres(selectFromList: Boolean=False);
var newAdrId: Integer;
begin
  if DataConnection.OpAdrLinksADODS.Active then
  begin
    if DataConnection.OpAdrLinksADODS.RecordCount>0 then
    begin

      if (DataConnection.OpAdrLinksADODS.FieldByName('ADRES_ID').Value<>NULL)
        or selectFromList then
      begin
        if (DataConnection.OpAdrLinksADODS.FieldByName('ADRES_ID').AsInteger>0)
          or selectFromList then
        begin

          if (selectFromList) then
          begin
            newAdrId:=EntSelInsertForm.ShowModalForSelect( entAdres, smSelect,
              DataConnection.InsertBlankAdrLinkOnPerson(
                DataConnection.PersonsADODS.FieldByName('PERSON_ID').AsInteger));
            //if not (DataConnection.OpAdrLinksADODS.State in [dsEdit]) then
            //  DataConnection.OpAdrLinksADODS.Edit;
            //DataConnection.OpAdrLinksADODS.FieldByName('ADRES_ID').Value:=newAdrId;
            //DataConnection.OpAdrLinksADODS.Post;
            //ShowMessage(IntToStr(newAdrId));
            if newAdrId>0 then
              DataConnection.SetCurrentOpAdres(DataConnection.getPersAdrELink(
                DataConnection.PersonsADODS.FieldByName('PERSON_ID').AsInteger,newAdrId));
          end
          else
            newAdrId:=EntSelInsertForm.ShowModalForSelect( entAdres, smEdit,
              DataConnection.OpAdrLinksADODS.FieldByName('ADRES_ID').AsInteger);

          //if newAdrId>=0 then
          //begin
            //Варианты адресов и документов для лиц
            DataConnection.ReloadOpPersAdrLinks;

            DataConnection.ReloadActAdrLinks;
            DataConnection.ReloadActDocLinks;
            DataConnection.ReloadActPersLinks;

            DataConnection.ReloadOpAdrLinks;
          //end;

        end
        else
          ShowMessage('Не назначено адреса в выделенной записи = NULL!');
      end
      else
        ShowMessage('Не назначено адреса в выделенной записи <0!');
    end
    else
      ShowMessage('Не назначено или не выделено адреса в составе требуемой адресной информации!');
  end
  else
    ShowMessage('Не назначено или не выделено адреса в составе требуемой адресной информации!');
end;

procedure TPersonDesktopForm.InsertCurrOpPersonDoc;
var adrPersonId: Integer;
    selectedTypes: TSelReturn;
begin
  if DataConnection.OpPersonsADODS.Active then
  begin
    if DataConnection.OpPersonsADODS.RecordCount>0 then
    begin

      if DataConnection.OpPersonsADODS.FieldByName('ELINK_ID').Value<>NULL then
      begin
        if DataConnection.OpPersonsADODS.FieldByName('ELINK_ID').AsInteger>0 then
        begin

          adrPersonId:=DataConnection.OpPersonsADODS.FieldByName('ELINK_ID').AsInteger;

        end
        else
          adrPersonId:=DataConnection.PersonsADODS.FieldByName('PERSON_ID').AsInteger;
      end
      else
        adrPersonId:=DataConnection.PersonsADODS.FieldByName('PERSON_ID').AsInteger;

        selectedTypes:=ShowModalForSelectRetComplex( entDoc, smInsert, PersonDesktopForm,
            DataConnection.InsertBlankDocLinkOnPerson(adrPersonId));

          if selectedTypes.ResultEntityID>=0 then
          begin
            //Варианты адресов и документов для лиц
            //DataConnection.ReloadOpPersAdrLinks;
            DataConnection.SetCurrentOpDoc(selectedTypes.ResultEntityLinkID);
            DataConnection.ReloadOpPersDocLinks;

            DataConnection.ReloadActAdrLinks;
            DataConnection.ReloadActDocLinks;
            DataConnection.ReloadActPersLinks;

            DataConnection.ReloadOpDocLinks;
          end;

    end
    else
      ShowMessage('Не назначено или не выделено лица в составе лиц!');
  end
  else
    ShowMessage('Не назначено или не выделено лица в составе лиц!');
end;

procedure TPersonDesktopForm.EditCurrOpPersonDoc(selectFromList: Boolean=False);
var newDocId: Integer;
begin
  if DataConnection.OpDocLinksADODS.Active then
  begin
    if DataConnection.OpDocLinksADODS.RecordCount>0 then
    begin

      if (DataConnection.OpDocLinksADODS.FieldByName('DOC_ID').Value<>NULL)
        or selectFromList then
      begin
        if (DataConnection.OpDocLinksADODS.FieldByName('DOC_ID').AsInteger>0)
          or selectFromList then
        begin

          if (selectFromList) then
          begin
            newDocId:=EntSelInsertForm.ShowModalForSelect( entDoc, smSelect,
              DataConnection.InsertBlankDocLinkOnPerson(
                DataConnection.PersonsADODS.FieldByName('PERSON_ID').AsInteger));
            //if not (DataConnection.OpAdrLinksADODS.State in [dsEdit]) then
            //  DataConnection.OpAdrLinksADODS.Edit;
            //DataConnection.OpAdrLinksADODS.FieldByName('ADRES_ID').Value:=newAdrId;
            //DataConnection.OpAdrLinksADODS.Post;
            //ShowMessage(IntToStr(newAdrId));
            if newDocId>0 then
              DataConnection.SetCurrentOpDoc(DataConnection.getPersDocELink(
                DataConnection.PersonsADODS.FieldByName('PERSON_ID').AsInteger,newDocId));
          end
          else
          newDocId:=
          EntSelInsertForm.ShowModalForSelect( entDoc, smEdit,
            DataConnection.OpDocLinksADODS.FieldByName('DOC_ID').AsInteger);

          //if newDocId>=0 then
          //begin
            //Варианты адресов и документов для лиц
            //DataConnection.ReloadOpPersAdrLinks;
            DataConnection.ReloadOpPersDocLinks;

            DataConnection.ReloadActAdrLinks;
            DataConnection.ReloadActDocLinks;
            DataConnection.ReloadActPersLinks;

            DataConnection.ReloadOpDocLinks;
          //end;

        end
        else
          ShowMessage('Не назначено документа в выделенной записи!');
      end
      else
        ShowMessage('Не назначено документа в выделенной записи!');
    end
    else
      ShowMessage('Не назначено или не выделено адреса в составе требуемых документов!');
  end
  else
    ShowMessage('Не назначено или не выделено адреса в составе требуемых документов!');
end;

procedure TPersonDesktopForm.AdrCountryDBLookCEhEnter(Sender: TObject);
begin
  if (DataConnection.LinkAdrADOT.State in [dsEdit]) then
    DataConnection.LinkAdrADOT.Post;
  DataConnection.LinkAdrADOT.Edit;
end;

procedure TPersonDesktopForm.AdrCountryDBLookCEhNotInList(Sender: TObject;
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
          DataConnection.LinkAdrADOT.FieldByName('ADRES_ID').AsInteger,
          notInListText);
        DataConnection.ReloadCountriesADOT;
        //ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        DataConnection.ReloadPersLinksAdreses;
        DataConnection.LinkAdrADOT.Edit;
      end;
end;

procedure TPersonDesktopForm.AdrDistrictDBLookCEhEnter(Sender: TObject);
begin
  if (DataConnection.LinkAdrADOT.State in [dsEdit]) then
    DataConnection.LinkAdrADOT.Post;
  DataConnection.LinkAdrADOT.Edit;
end;

procedure TPersonDesktopForm.AdrDistrictDBLookCEhNotInList(Sender: TObject;
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
          DataConnection.LinkAdrADOT.FieldByName('ADRES_ID').AsInteger,
          notInListText);
        DataConnection.ReloadDistrictsView;
        //ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        DataConnection.ReloadPersLinksAdreses;
        DataConnection.LinkAdrADOT.Edit;
      end;
end;

procedure TPersonDesktopForm.AdrSettlemDBLookCEhEnter(Sender: TObject);
begin
  if (DataConnection.LinkAdrADOT.State in [dsEdit]) then
    DataConnection.LinkAdrADOT.Post;
  DataConnection.LinkAdrADOT.Edit;
end;

procedure TPersonDesktopForm.AdrSettlemDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
    itsCity: Integer;
begin
  notInListText:=AdrSettlemDBLookCEh.Text;
  itsCity:=0;
  if MessageDlg('Добавить новый город и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        if MessageDlg('Является ли новый населенный пункт городом?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes then
            itsCity:=1;

        DataConnection.InsertFastAdrSettlemQuery(
          DataConnection.LinkAdrADOT.FieldByName('ADRES_ID').AsInteger,
          notInListText, itsCity);
        DataConnection.ReloadSettlemsView;
        //ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        DataConnection.ReloadPersLinksAdreses;
        DataConnection.LinkAdrADOT.Edit;
      end;
end;

procedure TPersonDesktopForm.AdrStateDBLookCEhEnter(Sender: TObject);
begin
  if (DataConnection.LinkAdrADOT.State in [dsEdit]) then
    DataConnection.LinkAdrADOT.Post;
  DataConnection.LinkAdrADOT.Edit;
end;

procedure TPersonDesktopForm.AdrStateDBLookCEhNotInList(Sender: TObject;
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
          DataConnection.LinkAdrADOT.FieldByName('ADRES_ID').AsInteger,
          notInListText);
        DataConnection.ReloadStatesView;
        //ResultEntityID:=BlankAdrADODS.FieldByName('ADRES_ID').AsInteger;
        DataConnection.ReloadPersLinksAdreses;
        DataConnection.LinkAdrADOT.Edit;
      end;
end;

procedure TPersonDesktopForm.BitBtn10Click(Sender: TObject);
begin
  DataConnection.InsertPersonLnkOnCurrPerson;
  DataConnection.ReloadPersonAllianceLinks;
  DataConnection.ReloadLinkAlliance;
end;

procedure TPersonDesktopForm.BitBtn16Click(Sender: TObject);
begin
  DataConnection.InsertCurrentPersonJobRecord;
  DataConnection.ReloadPersonJobRecs;
end;

procedure TPersonDesktopForm.BitBtn18Click(Sender: TObject);
begin
  DataConnection.ReloadPersonView;
  //Варианты адресов и документов для операции
  DataConnection.ReloadOpPersAdrLinks;
  DataConnection.ReloadOpPersDocLinks;

  //ReloadPersonOperations(False);

  //Типы связей элементоф данных с операцией (синие)
  //DataConnection.ReloadActAdrLinks;
  //DataConnection.ReloadActDocLinks;
  //DataConnection.ReloadActPersLinks;
  //DataConnection.ReloadActOthDataLinks;

  //Списки адресов и документов, лиц и проч данных операции
  DataConnection.ReloadOpAdrLinks;
  DataConnection.ReloadOpDocLinks;
  DataConnection.ReloadOpPersLinks;
  DataConnection.ReloadOpOthDataLinks;
end;

procedure TPersonDesktopForm.BitBtn1Click(Sender: TObject);
begin
  //DataConnection.InsertBlankPerson;
  EntSelInsertForm.ShowModalForSelect( entPerson, smInsert);
  DataConnection.ReloadPersonsADODS;
end;

procedure TPersonDesktopForm.insertCurrentPersonOperationAction;
var selectedTypes: TSelReturn;
    selectType, newOperationId: Integer;
begin
  selectedTypes:=EntSelInsertForm.ShowModalForSelectRetComplex(
      entServiceType, smSelect);
  if selectedTypes.ResultEntityID>0 then
  begin
    newOperationId:=DataConnection.InsertCurrentPersonActionWithOpType(selectedTypes.ResultEntityID,
      NULL, selectedTypes.ResultEntityGroupID);
    //ShowMessage(IntToStr(selectedTypes.ResultEntityID));
    //DataConnection.ReloadPersonOperations(True);
    DataConnection.ReloadOperationDataSets(newOperationId);

    if not(PersonDetailsPageControl.ActivePage=PersOperationsTabSheet) then
    begin
      PersOperationsTabSheet.Show;
    end;

    if DataConnection.GetServiceCustomParam(selectedTypes.ResultEntityID) and
      (DataConnection.GetServiceCustomSheetNum(selectedTypes.ResultEntityID)>0) then
      begin
        CustomOperForm.ShowModal;
        CustomOperForm.CustomFormOpPageControl.ActivePageIndex:=
          DataConnection.GetServiceCustomSheetNum(selectedTypes.ResultEntityID)-1;
      end
    else
      OpCompositionForm.ShowModal;

  end
  else
    ShowMessage('Не выбрано ни одного типа операции!');
end;

procedure TPersonDesktopForm.BitBtn2Click(Sender: TObject);
begin
  insertCurrentPersonOperationAction;
end;

procedure TPersonDesktopForm.BitBtn3Click(Sender: TObject);
begin
  DataConnection.InsertCurrentPersonAdrLink;
  DataConnection.ReloadPersonAdrLinks;
  DataConnection.ReloadPersLinksAdreses;
end;

procedure TPersonDesktopForm.BitBtn4Click(Sender: TObject);
begin
  DataConnection.InsertCurrentPersonDocLink;
  DataConnection.ReloadPersonDocLinks;
  DataConnection.ReloadPersLinksDocs;
end;

procedure TPersonDesktopForm.BitBtn9Click(Sender: TObject);
begin
  DataConnection.InsertCurrentPersonZAGSRecord;
  DataConnection.ReloadPersonZAGSRecs;
end;

procedure TPersonDesktopForm.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    DataConnection.ReloadPersonOperations(False,1)
  else
    DataConnection.ReloadPersonOperations(False,0);
end;

procedure TPersonDesktopForm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Insert - добавление операции
  if (Integer(Key)=45) then
  begin
    insertCurrentPersonOperationAction;
  end
  else if (Integer(Key)=9) then
  begin
    if (PersonOperationsDBGrid.Row>=PersonOperationsDBGrid.RowCount-1) then
      begin
        OpPersonsDBGridEh.SetFocus;
      end;
  end
  else if (Integer(Key)=13) then
  begin
    OpCompositionForm.ShowModal;
  end
  else if (Integer(Key)=32) then
  begin
    DataConnection.ReverseCurrentActionToPrintStatus;
  end
  else
  begin

  end;
end;

procedure TPersonDesktopForm.DocBrancheCodeDBLookCEhEnter(Sender: TObject);
begin
  if (DataConnection.LinkDocADOT.State in [dsEdit]) then
    DataConnection.LinkDocADOT.Post;
  DataConnection.LinkDocADOT.Edit;
end;

procedure TPersonDesktopForm.DocBrancheCodeDBLookCEhNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
var notInListText: String;
begin
  notInListText:=DocBrancheCodeDBLookCEh.Text;
  //ShowMessage(notInListText);
  if MessageDlg('Добавить новое подразделение и связать с ним?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin

        //if MessageDlg('Является ли новый регион областным центром?',
        //  mtConfirmation,[mbYes,mbNo],0) = mrYes then
        //    isRCenter:=1;

        DataConnection.InsertFastDocBrancheQuery(
          DataConnection.LinkDocADOT.FieldByName('DOC_ID').AsInteger,
          notInListText);
        DataConnection.ReloadFMSBranches;
        //ResultEntityID:=BlankDocADODS.FieldByName('DOC_ID').AsInteger;
        DataConnection.ReloadPersLinksDocs;
        DataConnection.LinkDocADOT.Edit;
      end;
end;

procedure TPersonDesktopForm.DocBrancheNameDBEditEnter(Sender: TObject);
var linkBranchName: string;
begin
  if DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_ID').Value<>NULL then
    begin
      linkBranchName:=DataConnection.GetBrancheNameById(
              DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_ID').AsInteger);
      if (DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_NAME').Value=NULL) or
        (DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_NAME').AsString<>linkBranchName) then
        begin

           if not (DataConnection.LinkDocADOT.State in [dsEdit]) then
              DataConnection.LinkDocADOT.Edit;
           DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_NAME').Value:=
            linkBranchName;
         end;
    end;
end;

procedure TPersonDesktopForm.DocBrancheNameDBEditExit(Sender: TObject);
var oldName: string;
begin
  if (DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_ID').Value<>NULL) then
  begin
    oldName:=DataConnection.GetBrancheNameById(
              DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_ID').AsInteger);
    if (DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_NAME').AsString<>'') and
      (DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_NAME').AsString<>oldName)
      then
      begin
        if MessageDlg('Изменить имя подразделения в справочнике с '''+oldName+
        ''' на '''+DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_NAME').AsString+'''?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          if DataConnection.SetBrancheNameById(
            DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_ID').AsInteger,
            DataConnection.LinkDocADOT.FieldByName('DOC_BRANCH_NAME').AsString) then
            begin
              DataConnection.ReloadFMSBranches;
              ShowMessage('Имя подразделения изменено в справочнике!');
            end;
        end;
      end;
  end;
end;

procedure TPersonDesktopForm.PersonJobsTabSheetShow(Sender: TObject);
begin
  DataConnection.ReloadPersonJobRecs;
end;

procedure TPersonDesktopForm.PersonOperationsDBGridDblClick(Sender: TObject);
begin
  if PersonOperationsDBGrid.Col=1 then
  begin
    DataConnection.ReverseCurrentActionToPrintStatus;
  end;
end;

procedure TPersonDesktopForm.PersonOperationsDBGridGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (DataConnection.PersonOperationsADODS.RecNo mod 2)<>0 then
      Background:=$00AAE7F9;
  if DataConnection.PersonOperationsADODS.FieldByName('ITS_GROUP').AsInteger<>0 then
  begin
    Background:=clMoneyGreen;
    AFont.Size:=13;
    AFont.Style:=[fsBold];
  end;

end;

procedure TPersonDesktopForm.PersonOperationsDBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Insert - добавление операции
  if (Integer(Key)=45) then
  begin
    insertCurrentPersonOperationAction;
  end
  else if (Integer(Key)=9) then
  begin
    OpPersonsDBGridEh.SetFocus;
  end
  else
  begin

  end;
end;

procedure TPersonDesktopForm.insertPersonForm;
var selectedTypes: TSelReturn;
begin
  //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
    selectedTypes:=EntitySelInsUnit.ShowModalForSelectRetComplex( entPerson,
      smInsert, Self, -1);
    //ShowMessage(IntToStr(selectedTypes.ResultEntityID));
    if selectedTypes.ResultEntityID>=0 then
      begin
        PersonSearchLIKEEdit.Text:='';
        DataConnection.ReloadPersonsADODS(selectedTypes.ResultEntityID);
        //DataConnection.SetPersonLocationAdres(
        //  selectedTypes.ResultEntityID, ResultEntityID);
        //ReloadSearchAdresesNonFiltered;
        //ReloadBlankPerson(ResultEntityID);
        //ShowMessage('---');
      end;
end;

procedure TPersonDesktopForm.insertPersonFormOnFilterParams;
var newPersonId: Integer;
begin
  if (PersonSearchLIKEEdit.Text<>'') or (PersonSearchNameEdit.Text<>'') or
    (PersonSearchSurnameEdit.Text<>'') then
  begin
    newPersonId:=DataConnection.AddPersonBaseParamsOnCurrFilter(
      PersonSearchNameEdit.Text, PersonSearchLIKEEdit.Text,
      PersonSearchSurnameEdit.Text);
    DataConnection.ReloadPersonsADODS(newPersonId);
    EntitySelInsUnit.ShowModalForSelectRetComplex( entPerson,
      smEdit, Self, newPersonId);
    DataConnection.ReloadPersonsADODS(newPersonId);
  end
  else
    ShowMessage('Введите хотя бы одну часть имени!');

end;

procedure TPersonDesktopForm.selectPersonList;
var selectedTypes: TSelReturn;
begin
  //PersonsDBGridEh.SetFocus;
    //OpOthDataDBGridEh.SetFocus;
    selectedTypes:=EntitySelInsUnit.ShowModalForSelectRetComplex( entPerson,
      smSelect, Self, -1);
    //ShowMessage(IntToStr(selectedTypes.ResultEntityID));
    if selectedTypes.ResultEntityID>=0 then
      begin
        PersonSearchLIKEEdit.Text:='';
        DataConnection.ReloadPersonsADODS(selectedTypes.ResultEntityID);
        //DataConnection.SetPersonLocationAdres(
        //  selectedTypes.ResultEntityID, ResultEntityID);
        //ReloadSearchAdresesNonFiltered;
        //ReloadBlankPerson(ResultEntityID);
        //ShowMessage('---');
      end;
end;

procedure TPersonDesktopForm.PersonsDBGridEhDblClick(Sender: TObject);
begin
  if DataConnection.PersonsADODS.FieldByName('IS_OLD').AsInteger<>0 then
  begin
    ShowMessage('Лицо заблокировано, как имеющее старые данные!');
  end
  else
  begin
    EditCurrPerson;
  end;
end;

procedure TPersonDesktopForm.PersonsDBGridEhGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DataConnection.PersonsADODS.FieldByName('IS_OLD').AsInteger<>0 then
  begin
    Background:=clMoneyGreen;
    AFont.Size:=13;
    AFont.Style:=[fsBold];
  end;
end;

procedure TPersonDesktopForm.PersonsDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //ShowMessage(IntToStr(Integer(Key)));
  if DataConnection.PersonsADODS.FieldByName('IS_OLD').AsInteger<>0 then
  begin
    ShowMessage('Лицо заблокировано, как имеющее старые данные!');
  end
  else
  begin
  //Insert - добавление лица
  if (Integer(Key)=45) then
  begin
    //DataConnection.InsertBlankPerson;
    //EntSelInsertForm.
    //EntitySelInsUnit.ShowModalForSelect( entPerson, smInsert, PersonDesktopForm);
    //DataConnection.ReloadPersonsADODS;
    insertPersonForm;
  end
  else if (Integer(Key)=9) then
  begin
    if (PersonsDBGridEh.Row>=PersonsDBGridEh.RowCount-1) and
      (PersonsDBGridEh.Col=11) then
      begin
        PersonOperationsDBGrid.SetFocus;
      end;
  end
  else if (Integer(Key)=116) then
  begin
    selectPersonList;
  end
  else if (Integer(Key)=123) then
  begin
    EditCurrPerson;
  end
  else
  begin

  end;
  end;

end;

procedure TPersonDesktopForm.PersonSearchBCountEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    insertPersonFormOnFilterParams;
  end;
end;

procedure TPersonDesktopForm.PersonSearchBRegionEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    insertPersonFormOnFilterParams;
  end;
end;

procedure TPersonDesktopForm.PersonSearchCivilEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    insertPersonFormOnFilterParams;
  end;
end;

procedure TPersonDesktopForm.PersonSearchLIKEEditChange(Sender: TObject);
begin
  DataConnection.ReloadPersonsADODSOnlyFilter;
end;

procedure TPersonDesktopForm.PersonSearchLIKEEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    insertPersonFormOnFilterParams;
  end;
end;

procedure TPersonDesktopForm.PersonSearchNameEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    insertPersonFormOnFilterParams;
  end;
end;

procedure TPersonDesktopForm.PersonSearchNationEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    insertPersonFormOnFilterParams;
  end;
end;

procedure TPersonDesktopForm.PersonSearchSexEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    insertPersonFormOnFilterParams;
  end;
end;

procedure TPersonDesktopForm.PersonSearchSurnameEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    insertPersonFormOnFilterParams;
  end;
end;

procedure TPersonDesktopForm.OpAdresDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    InsertCurrOpPersonAdres;
  end
  else if (Integer(Key)=9) then
  begin
    if (OpAdresDBGridEh.Row>=OpAdresDBGridEh.RowCount-1)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        OpDocsDBGridEh.SetFocus;
      end;
  end
  else if (Integer(Key)=123) then
  begin
    EditCurrOpPersonAdres;
  end
  else if (Integer(Key)=116) then
  begin
    EditCurrOpPersonAdres(True);
  end
  else
  begin

  end;
end;

procedure TPersonDesktopForm.OpDocsDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    InsertCurrOpPersonDoc;
  end
  else if (Integer(Key)=9) then
  begin
    //PersonsDBGridEh.SetFocus;
    if (OpDocsDBGridEh.Row>=OpDocsDBGridEh.RowCount-1)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        OpOthDataDBGridEh.SetFocus;
      end;
  end
  else if (Integer(Key)=123) then
  begin
    EditCurrOpPersonDoc;
  end
  else if (Integer(Key)=116) then
  begin
    EditCurrOpPersonDoc(True);
  end
  else
  begin

  end;
end;

procedure TPersonDesktopForm.OpOthDataDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=9) then
  begin
    if (OpOthDataDBGridEh.Row>=OpOthDataDBGridEh.RowCount-1)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        PersonsDBGridEh.SetFocus;
      end;
  end;
end;

procedure TPersonDesktopForm.OpPersonsDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    InsertCurrOpPerson;
  end
  else if (Integer(Key)=9) then
  begin
    if (OpPersonsDBGridEh.Row>=OpPersonsDBGridEh.RowCount-1)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        OpAdresDBGridEh.SetFocus;
      end;
  end
  else if (Integer(Key)=123) then
  begin
    EditCurrOpPerson;
  end
  else
  begin

  end;
end;

procedure TPersonDesktopForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //45 Insert - добавление //46 Del
  //13 Enter //27 Escape //9 Tab
  //112 F1 //113 F2 //114 F3 //115 F4
  //116 F5 //117 F6 //118 F7 //119 F8
  //120 F9 //121 F10 //122 F11 //123 F12
  //37 Left Arrow //38 Up Arrow
  //39 Rigth Arrow //40 Bottom Arrow
  //36 Home //35 End  //33 Page Up  //34 Page Down

  //ShowMessage(IntToStr(Integer(Key)));DataConnection.ReloadPersonsADODSFilterOFF;
  if (Integer(Key)=45) then
  begin

  end
  else if (Integer(Key)=118) then  //F7 - снятие фильтров таблицы лиц
  begin
    PersonSearchLIKEEdit.Text:='';
    PersonSearchNameEdit.Text:='';
    PersonSearchSurnameEdit.Text:='';
    PersonSearchBirthdateEdit.Text:='';
    PersonSearchBRegionEdit.Text:='';
    PersSearchBSettlemEdit.Text:='';
    PersonSearchCivilEdit.Text:='';
    DataConnection.ReloadPersonsADODSFilterOFF;
    PersonSearchLIKEEdit.SetFocus;
  end
  else if (Integer(Key)=113) then  //F2 - новое лицо
  begin
    //DataConnection.InsertBlankPerson;
    EntSelInsertForm.ShowModalForSelect( entPerson, smInsert);
    DataConnection.ReloadPersonsADODS;
  end
  else if (Integer(Key)=114) then  //F3 - новая операция по тек лицу
  begin
    insertCurrentPersonOperationAction;
  end
  else
    begin

    end;
end;

procedure TPersonDesktopForm.FormShow(Sender: TObject);
begin
  PersOperationsTabSheet.Show;
  PersonSearchLIKEEdit.SetFocus;
end;

procedure TPersonDesktopForm.PersOperationsTabSheetShow(Sender: TObject);
begin
  DataConnection.ReloadOperationDataSets;
end;

procedure TPersonDesktopForm.PersSearchBSettlemEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    insertPersonFormOnFilterParams;
  end;
end;

procedure TPersonDesktopForm.PersZAGSRecsDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //Insert - добавление операции
  if (Integer(Key)=45) then
  begin
    insertCurrentPersonOperationAction;
  end
  else if (Integer(Key)=9) then
  begin
    OpPersonsDBGridEh.SetFocus;
  end
  else
  begin

  end;
end;

procedure TPersonDesktopForm.TabSheet1Show(Sender: TObject);
begin
  DataConnection.ReloadPersonZAGSRecs;
end;

procedure TPersonDesktopForm.TabSheet2Show(Sender: TObject);
begin
  DataConnection.ReloadPersonDocLinks;
  DataConnection.ReloadPersLinksDocs;
end;

procedure TPersonDesktopForm.TabSheet3Show(Sender: TObject);
begin
  DataConnection.ReloadPersonAdrLinks;
  DataConnection.ReloadPersLinksAdreses;
end;

procedure TPersonDesktopForm.TabSheet7Show(Sender: TObject);
begin
  DataConnection.ReloadPersonView;
  DataConnection.ReloadPersonAllianceLinks;
  DataConnection.ReloadLinkAlliance;
end;

end.
