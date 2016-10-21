unit CustomOperFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, DBGridEh, DB, DBLookupEh, DBCtrlsEh,
  Mask, DBCtrls, ADODB, ConstantsUnit, MemTableDataEh, MemTableEh, DBCGrids,
  Grids, DBGrids;

type

  TCustomOpType = (cotPassChange, cotRegistration);

  TCustomOperForm = class(TForm)
    CustomFormOpPageControl: TPageControl;
    ChangePassCustOpTabSheet: TTabSheet;
    TabSheet2: TTabSheet;
    PersonLastNameDBEdit: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBLookupComboboxEh6: TDBLookupComboboxEh;
    Label27: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label44: TLabel;
    PersIdentDocDBLookCEh: TDBLookupComboboxEh;
    Label49: TLabel;
    PersLocAdrDBLookCEh: TDBLookupComboboxEh;
    Label4: TLabel;
    Label33: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    OpAdrTypeMemTableEh: TMemTableEh;
    OpAdrTypeMemTableEhAdrType: TStringField;
    OpAdrTypeDS: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBComboBox1: TDBComboBox;
    BlankOpPersonsTYPEADODS: TADODataSet;
    BlankOpAdresesTYPEADODS: TADODataSet;
    BlankOpDocsTYPEADODS: TADODataSet;
    DBComboBox3: TDBComboBox;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    OpAdrLinksDBCtrlGrid: TDBCtrlGrid;
    DBText2: TDBText;
    DBEdit6: TDBEdit;
    OpPersonsDBCtrlGrid: TDBCtrlGrid;
    DBText1: TDBText;
    DBEdit7: TDBEdit;
    OpDocLinksDBCtrlGrid: TDBCtrlGrid;
    DBText3: TDBText;
    DBEdit9: TDBEdit;
    OpOtherDataDBCtrlGrid: TDBCtrlGrid;
    DBText4: TDBText;
    DBEdit10: TDBEdit;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator10: TDBNavigator;
    DBNavigator11: TDBNavigator;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure OpPersonsDBCtrlGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpAdrLinksDBCtrlGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpDocLinksDBCtrlGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpOtherDataDBCtrlGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowSelf(CustomOpType: TCustomOpType);
    procedure RefreshFieds(CustomOpType: TCustomOpType);
    function ChangeOperationEntityByType(TYPE_CODE: Integer; EntityType: TEntityType; SelFormMode: TSelFormMode): Boolean;
    function GetOperEntityIDByType(TYPE_CODE: Integer; EntityType: TEntityType): Integer;
    function SetOperEntityIDByType(TYPE_CODE: Integer; EntityType: TEntityType; NEW_ENT_ID: Integer): Boolean;
  end;

var
  CustomOperForm: TCustomOperForm;

implementation

{$R *.dfm}

uses DBConnect, PersonDesktopUnit;

function TCustomOperForm.GetOperEntityIDByType(TYPE_CODE: Integer; EntityType: TEntityType): Integer;
var res: Integer;
begin
  res:=-1;
  case EntityType of
    entPerson:
    begin

    end;
    entAdres:
    begin

    end;
    entDoc:
    begin

    end
    else
    begin
      ShowMessage('Неизвестный режим запроса существующего ID!');
    end;
  end;
  Result:=res;
end;

procedure TCustomOperForm.OpAdrLinksDBCtrlGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    PersonDesktopForm.InsertCurrOpPersonAdres;
  end
  else if (Integer(Key)=9) then
  begin
    {if (OpAdresDBGridEh.Row>=OpAdresDBGridEh.RowCount-1)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        OpDocsDBGridEh.SetFocus;
      end;}
  end
  else if (Integer(Key)=123) then
  begin
    PersonDesktopForm.EditCurrOpPersonAdres;
  end
  else if (Integer(Key)=116) then
  begin
    PersonDesktopForm.EditCurrOpPersonAdres(True);
  end
  else
  begin

  end;

end;

procedure TCustomOperForm.OpDocLinksDBCtrlGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    PersonDesktopForm.InsertCurrOpPersonDoc;
  end
  else if (Integer(Key)=9) then
  begin
    //PersonsDBGridEh.SetFocus;
    {if (OpDocsDBGridEh.Row>=OpDocsDBGridEh.RowCount-1)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        OpOthDataDBGridEh.SetFocus;
      end;}
  end
  else if (Integer(Key)=123) then
  begin
    PersonDesktopForm.EditCurrOpPersonDoc;
  end
  else if (Integer(Key)=116) then
  begin
    PersonDesktopForm.EditCurrOpPersonDoc(True);
  end
  else
  begin

  end;

end;

procedure TCustomOperForm.OpOtherDataDBCtrlGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=9) then
  begin
    if (DataConnection.OpOtherDataADODS.RecNo>=DataConnection.OpOtherDataADODS.RecordCount)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        OpPersonsDBCtrlGrid.SetFocus;
      end;
  end;
end;

procedure TCustomOperForm.OpPersonsDBCtrlGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if DataConnection.OpPersonsADODS.FieldByName('IS_OLD').AsInteger<>0 then
  begin
    ShowMessage('Лицо заблокировано, как имеющее старые данные!');
  end
else
  begin
  if (Integer(Key)=45) then
  begin
    PersonDesktopForm.InsertCurrOpPerson;
  end
  else if (Integer(Key)=9) then
  begin
    if (DataConnection.OpPersonsADODS.RecNo>=DataConnection.OpPersonsADODS.RecordCount)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        OpAdrLinksDBCtrlGrid.SetFocus;
      end;
  end
  else if (Integer(Key)=123) then
  begin
    PersonDesktopForm.EditCurrOpPerson;
  end
  else
  begin

  end;
  end;
end;

function TCustomOperForm.SetOperEntityIDByType(TYPE_CODE: Integer; EntityType: TEntityType; NEW_ENT_ID: Integer): Boolean;
var res: Boolean;
begin
  res:=False;

  case EntityType of
    entPerson:
    begin

    end;
    entAdres:
    begin

    end;
    entDoc:
    begin

    end
    else
    begin
      ShowMessage('Неизвестный режим установки существующего ID!');
    end;
  end;

  Result:=res;
end;

function TCustomOperForm.ChangeOperationEntityByType(TYPE_CODE: Integer; EntityType: TEntityType; SelFormMode: TSelFormMode): Boolean;
var res: Boolean;
begin
  res:=False;
  Result:=res;
end;

procedure TCustomOperForm.ShowSelf(CustomOpType: TCustomOpType);
var res: Boolean;
begin
  res:=False;
  RefreshFieds(CustomOpType);
  Self.ShowModal;
  case CustomOpType of
    cotPassChange:
    begin
      CustomFormOpPageControl.ActivePage:=
        ChangePassCustOpTabSheet;
    end
    else
    begin
      ShowMessage('Неизвестный режим панели!');
    end;
  end;
end;

procedure TCustomOperForm.RefreshFieds(CustomOpType: TCustomOpType);
var res: Boolean;
begin
  res:=False;
end;

end.
