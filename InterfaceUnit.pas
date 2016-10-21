unit InterfaceUnit;

interface

uses
  SysUtils, Classes, Menus, Dialogs, Variants, Controls, DB;

type
  TInterfaceDM = class(TDataModule)
    OpPersonPopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PersonOperationsPopupMenu: TPopupMenu;
    N4: TMenuItem;
    PersonsPopupMenu: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    OpAdresesPopupMenu: TPopupMenu;
    N9: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure OpPersonPopupMenuPopup(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure PersonsPopupMenuPopup(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InterfaceDM: TInterfaceDM;

implementation

uses EntitySelInsUnit, ConstantsUnit, DBConnect, ReportDM;

{$R *.dfm}

procedure TInterfaceDM.N1Click(Sender: TObject);
var newPersonId: Integer;
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
end;

procedure TInterfaceDM.N2Click(Sender: TObject);
var newAdrId: Integer;
begin
  newAdrId:=EntSelInsertForm.ShowModalForSelect( entAdres, smInsert,
    DataConnection.InsertBlankAdrLinkOnPerson(
      DataConnection.OpPersonsADODS.FieldByName('ELINK_ID').AsInteger));
  //ShowMessage('efwefwef'+IntTOStr(newPersonId));
  //DataConnection.ReloadPersonsADODS;
  if newAdrId>=0 then
  begin
    //Варианты адресов и документов для лиц
    DataConnection.ReloadOpPersAdrLinks;
    //DataConnection.ReloadOpPersDocLinks;

    //DataConnection.ReloadPersonView;
    DataConnection.ReloadActAdrLinks;
    DataConnection.ReloadActDocLinks;
    DataConnection.ReloadActPersLinks;
    //DataConnection.ReloadOpPersLinks;
    //DataConnection.ReloadOpAdrLinks;
    //DataConnection.ReloadOpDocLinks;
  end;
end;

procedure TInterfaceDM.N3Click(Sender: TObject);
var newDocId: Integer;
begin
  newDocId:=EntSelInsertForm.ShowModalForSelect( entDoc, smInsert,
    DataConnection.InsertBlankDocLinkOnPerson(
      DataConnection.OpPersonsADODS.FieldByName('ELINK_ID').AsInteger));
  //ShowMessage('efwefwef'+IntTOStr(newPersonId));
  //DataConnection.ReloadPersonsADODS;
  if newDocId>=0 then
  begin
    //Варианты адресов и документов для лиц
    //DataConnection.ReloadOpPersAdrLinks;
    DataConnection.ReloadOpPersDocLinks;

    //DataConnection.ReloadPersonView;
    DataConnection.ReloadActAdrLinks;
    DataConnection.ReloadActDocLinks;
    DataConnection.ReloadActPersLinks;
    //DataConnection.ReloadOpPersLinks;
    //DataConnection.ReloadOpAdrLinks;
    //DataConnection.ReloadOpDocLinks;
  end;
end;

procedure TInterfaceDM.N4Click(Sender: TObject);
begin
  if DataConnection.PersonOperationsADODS.Active then
  if DataConnection.PersonOperationsADODS.FieldByName('ACTIONS_ID').AsInteger<>NULL then
  if DataConnection.PersonOperationsADODS.FieldByName('ACTIONS_ID').AsInteger>0 then
  if MessageDlg('Удалить операцию?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    DataConnection.DeleteOperationWithChilds(DataConnection.
      PersonOperationsADODS.FieldByName('ACTIONS_ID').AsInteger);
    DataConnection.ReloadPersonOperations;
  end;
  //DataConnection.PersOperationDSD.Execute;
end;

procedure TInterfaceDM.N5Click(Sender: TObject);
begin
  if MessageDlg('Удалить лицо?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
  DataConnection.PersonDSD.Execute;
end;

procedure TInterfaceDM.N6Click(Sender: TObject);
begin
  if DataConnection.PersonsADODS.Active then
  begin
    if DataConnection.PersonsADODS.RecordCount>0 then
    begin
      if not (DataConnection.PersonsADODS.State in [dsEdit]) then
        DataConnection.PersonsADODS.Edit;
      if DataConnection.PersonsADODS.FieldByName('TAKE_PDATA_CONSENT').
        AsInteger<>1  then
        DataConnection.PersonsADODS.FieldByName('TAKE_PDATA_CONSENT').Value:=1
      else
        DataConnection.PersonsADODS.FieldByName('TAKE_PDATA_CONSENT').Value:=0;
      DataConnection.PersonsADODS.Post;
      DataConnection.ReloadPersonsADODSCurrPos;
    end;
  end;
end;

procedure TInterfaceDM.N7Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.PersonDataConsentfrxRep);
  ReportGenDM.PersonDataConsentfrxRep.ShowReport();
end;

procedure TInterfaceDM.N8Click(Sender: TObject);
begin
  DataConnection.PrintCurrentOp(ratPreview);
end;

procedure TInterfaceDM.N9Click(Sender: TObject);
begin
  DataConnection.InvertCurrentAdrCityStatus;
end;

procedure TInterfaceDM.OpPersonPopupMenuPopup(Sender: TObject);
begin
  N1.Enabled:=False;
  N2.Enabled:=False;
  N3.Enabled:=False;
  if DataConnection.OpPersonsADODS.Active then
  begin
    if DataConnection.OpPersonsADODS.RecordCount>0 then
    begin
      N1.Enabled:=True;
      if DataConnection.OpPersonsADODS.FieldByName('ELINK_ID').Value<>NULL then
      begin
        if DataConnection.OpPersonsADODS.FieldByName('ELINK_ID').AsInteger>0 then
        begin
          N2.Enabled:=True;
          N3.Enabled:=True;
        end;
      end;
    end;
  end;
end;

procedure TInterfaceDM.PersonsPopupMenuPopup(Sender: TObject);
begin
  N5.Enabled:=False;
  N6.Enabled:=False;
  N7.Enabled:=False;
  if DataConnection.PersonsADODS.Active then
  begin
    if DataConnection.PersonsADODS.RecordCount>0 then
    begin

      N5.Enabled:=True;
      N6.Enabled:=True;
      N7.Enabled:=True;

      if DataConnection.PersonsADODS.FieldByName('TAKE_PDATA_CONSENT').
        AsInteger<>1  then
          N6.Caption:='Отметить согласие на обработку личных данных'
      else
          N6.Caption:='Снять пометку о согласии на обработку';

    end;
  end;
end;

end.
