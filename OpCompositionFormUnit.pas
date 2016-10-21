unit OpCompositionFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, GridsEh, DBGridEh, Grids,
  DBGrids, ComCtrls, DBCGrids, Mask, DB;

type
  TOpCompositionForm = class(TForm)
    OpCompositPageControl: TPageControl;
    TablesTabSheet: TTabSheet;
    FieldsTabSheet: TTabSheet;
    GroupBox3: TGroupBox;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    Splitter7: TSplitter;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    TabSheet6: TTabSheet;
    DBGrid6: TDBGrid;
    GroupBox4: TGroupBox;
    OpPersonsDBGridEh: TDBGridEh;
    Panel19: TPanel;
    DBNavigator3: TDBNavigator;
    GroupBox5: TGroupBox;
    Panel8: TPanel;
    BitBtn7: TBitBtn;
    DBNavigator5: TDBNavigator;
    OpAdresDBGridEh: TDBGridEh;
    Panel20: TPanel;
    DBNavigator4: TDBNavigator;
    GroupBox6: TGroupBox;
    Panel9: TPanel;
    BitBtn8: TBitBtn;
    DBNavigator6: TDBNavigator;
    OpDocsDBGridEh: TDBGridEh;
    Panel21: TPanel;
    DBNavigator7: TDBNavigator;
    GroupBox10: TGroupBox;
    Panel12: TPanel;
    BitBtn11: TBitBtn;
    DBNavigator9: TDBNavigator;
    OpOthDataDBGridEh: TDBGridEh;
    Panel22: TPanel;
    DBNavigator8: TDBNavigator;
    GroupBox1: TGroupBox;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    OpAdrLinksDBCtrlGrid: TDBCtrlGrid;
    DBText2: TDBText;
    DBEdit2: TDBEdit;
    OpPersonsDBCtrlGrid: TDBCtrlGrid;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    OpDocLinksDBCtrlGrid: TDBCtrlGrid;
    DBText3: TDBText;
    DBEdit3: TDBEdit;
    OpOtherDataDBCtrlGrid: TDBCtrlGrid;
    DBText4: TDBText;
    DBEdit4: TDBEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator10: TDBNavigator;
    DBNavigator11: TDBNavigator;
    procedure OpPersonsDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpAdresDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpDocsDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpOthDataDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure OpPersonsDBGridEhGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure OpPersonsDBCtrlGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  end;

var
  OpCompositionForm: TOpCompositionForm;

implementation

uses DBConnect, InterfaceUnit, ConstantsUnit, EntitySelInsUnit, PersonDesktopUnit;

{$R *.dfm}

procedure TOpCompositionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  {if DataConnection.OpPersonsADODS.State in [dsEdit] then
     DataConnection.OpPersonsADODS.Post;
  if DataConnection.OpAdrLinksADODS.State in [dsEdit] then
     DataConnection.OpAdrLinksADODS.Post;
  if DataConnection.OpDocLinksADODS.State in [dsEdit] then
     DataConnection.OpDocLinksADODS.Post;
  if DataConnection.OpOtherDataADODS.State in [dsEdit] then
     DataConnection.OpOtherDataADODS.Post; }
end;

procedure TOpCompositionForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=27) then
  begin
    Close;
  end
end;

procedure TOpCompositionForm.FormShow(Sender: TObject);
begin
if OpCompositPageControl.ActivePage=TablesTabSheet then
  OpPersonsDBGridEh.SetFocus;
if OpCompositPageControl.ActivePage=FieldsTabSheet then
  OpPersonsDBCtrlGrid.SetFocus;
end;

procedure TOpCompositionForm.OpAdresDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    PersonDesktopForm.InsertCurrOpPersonAdres;
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

procedure TOpCompositionForm.OpAdrLinksDBCtrlGridKeyDown(Sender: TObject;
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

procedure TOpCompositionForm.OpDocLinksDBCtrlGridKeyDown(Sender: TObject;
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

procedure TOpCompositionForm.OpDocsDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=45) then
  begin
    PersonDesktopForm.InsertCurrOpPersonDoc;
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

procedure TOpCompositionForm.OpOthDataDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key)=9) then
  begin
    if (OpOthDataDBGridEh.Row>=OpOthDataDBGridEh.RowCount-1)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        OpPersonsDBGridEh.SetFocus;
      end;
  end;
end;

procedure TOpCompositionForm.OpOtherDataDBCtrlGridKeyDown(Sender: TObject;
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

procedure TOpCompositionForm.OpPersonsDBCtrlGridKeyDown(Sender: TObject;
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

procedure TOpCompositionForm.OpPersonsDBGridEhGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DataConnection.OpPersonsADODS.FieldByName('IS_OLD').AsInteger<>0 then
  begin
    Background:=clMoneyGreen;
    AFont.Size:=13;
    AFont.Style:=[fsBold];
  end;
end;

procedure TOpCompositionForm.OpPersonsDBGridEhKeyDown(Sender: TObject;
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
    if (OpPersonsDBGridEh.Row>=OpPersonsDBGridEh.RowCount-1)
      //and (PersonsDBGridEh.Col=11)
      then
      begin
        OpAdresDBGridEh.SetFocus;
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

end.
