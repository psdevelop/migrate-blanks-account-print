unit StaticDictionariesUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Buttons,
  GridsEh, DBGridEh, DB;

type
  TStaticDictsForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    StatesTabSheet: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    TabSheet9: TTabSheet;
    Panel4: TPanel;
    DBNavigator4: TDBNavigator;
    DBGrid4: TDBGrid;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    Panel5: TPanel;
    DBNavigator5: TDBNavigator;
    Panel6: TPanel;
    DBNavigator6: TDBNavigator;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    Panel7: TPanel;
    DBNavigator7: TDBNavigator;
    DBGrid7: TDBGrid;
    TabSheet14: TTabSheet;
    PageControl4: TPageControl;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    Panel8: TPanel;
    DBNavigator8: TDBNavigator;
    DBGrid8: TDBGrid;
    Panel9: TPanel;
    DBNavigator9: TDBNavigator;
    DBGrid9: TDBGrid;
    TabSheet17: TTabSheet;
    Panel10: TPanel;
    DBNavigator10: TDBNavigator;
    DBGrid10: TDBGrid;
    Panel11: TPanel;
    DBNavigator11: TDBNavigator;
    DBGrid11: TDBGrid;
    TabSheet18: TTabSheet;
    Panel12: TPanel;
    DBNavigator12: TDBNavigator;
    DBGrid12: TDBGrid;
    Panel13: TPanel;
    DBNavigator13: TDBNavigator;
    DBGrid13: TDBGrid;
    Национальности: TTabSheet;
    Panel14: TPanel;
    DBNavigator14: TDBNavigator;
    DBGrid14: TDBGrid;
    TabSheet19: TTabSheet;
    Panel15: TPanel;
    DBNavigator15: TDBNavigator;
    DBGrid15: TDBGrid;
    Panel16: TPanel;
    DBNavigator16: TDBNavigator;
    DBGrid16: TDBGrid;
    PageControl5: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet20: TTabSheet;
    Panel3: TPanel;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    Panel17: TPanel;
    DBGrid17: TDBGrid;
    Panel18: TPanel;
    DBNavigator17: TDBNavigator;
    GroupBox1: TGroupBox;
    Panel19: TPanel;
    BitBtn1: TBitBtn;
    DBGrid18: TDBGrid;
    TabSheet21: TTabSheet;
    Panel20: TPanel;
    DBGrid19: TDBGrid;
    Panel21: TPanel;
    GroupBox2: TGroupBox;
    Splitter1: TSplitter;
    PageControl6: TPageControl;
    ServActItemsTabSheet: TTabSheet;
    AppServItemsWithNewTypeTabSheet: TTabSheet;
    Panel22: TPanel;
    BitBtn2: TBitBtn;
    Panel23: TPanel;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    NewAELETypeIDComboBox: TComboBox;
    NewAELTypeNameEdit: TEdit;
    Label2: TLabel;
    DBNavigator18: TDBNavigator;
    DBNavigator19: TDBNavigator;
    TabSheet22: TTabSheet;
    GroupBox3: TGroupBox;
    PageControl7: TPageControl;
    TabSheet23: TTabSheet;
    DBGrid21: TDBGrid;
    Panel24: TPanel;
    BitBtn4: TBitBtn;
    DBNavigator20: TDBNavigator;
    Panel26: TPanel;
    DBGrid22: TDBGrid;
    Panel27: TPanel;
    Splitter2: TSplitter;
    TabSheet24: TTabSheet;
    Panel25: TPanel;
    DBGrid23: TDBGrid;
    Panel28: TPanel;
    DBNavigator21: TDBNavigator;
    GroupBox6: TGroupBox;
    PageControl8: TPageControl;
    ServGroupActItemsTabSheet: TTabSheet;
    Panel31: TPanel;
    BitBtn6: TBitBtn;
    DBNavigator23: TDBNavigator;
    AppServGroupItemsWithNewTypeTabSheet: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Panel32: TPanel;
    BitBtn7: TBitBtn;
    NewGroupAELETypeIDComboBox: TComboBox;
    NewGroupAELTypeNameEdit: TEdit;
    Splitter3: TSplitter;
    Panel30: TPanel;
    GroupBox5: TGroupBox;
    Panel29: TPanel;
    GroupBox4: TGroupBox;
    Splitter4: TSplitter;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBGrid24: TDBGrid;
    DBGrid26: TDBGrid;
    Panel33: TPanel;
    Panel34: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    TabSheet25: TTabSheet;
    DBGrid20: TDBGrid;
    Panel35: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    TabSheet26: TTabSheet;
    ListBox1: TListBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure TabSheet20Show(Sender: TObject);
    procedure TabSheet21Show(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet22Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure TabSheet24Show(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StaticDictsForm: TStaticDictsForm;

implementation

uses DBConnect;

{$R *.dfm}

function WideStringToUTF8(const S: string): string;
begin
   SetLength(Result, WideCharToMultiByte(CP_UTF8, 0, @S[1], Length(S) * 2 div SizeOf(WCHAR), nil, 0,
nil, nil));
   WideCharToMultiByte(CP_UTF8, 0, @S[1], Length(S) * 2 div SizeOf(WCHAR),  @Result[1], Length(Result) *
2, nil, nil);
end;

function WideStringToString(const ws: WideString; codePage: Word): AnsiString;
var
  l: integer;
begin
  if ws = '' then
    Result := ''
  else
  begin
    l := WideCharToMultiByte(codePage,
      WC_COMPOSITECHECK or WC_DISCARDNS or WC_SEPCHARS or WC_DEFAULTCHAR,
      @ws[1], - 1, nil, 0, nil, nil);
    SetLength(Result, l - 1);
    if l > 1 then
      WideCharToMultiByte(codePage,
        WC_COMPOSITECHECK or WC_DISCARDNS or WC_SEPCHARS or WC_DEFAULTCHAR,
        @ws[1], - 1, @Result[1], l - 1, nil, nil);
  end;
end;

function StringToWideString(const s: AnsiString; codePage: Word): WideString;
var
  l: integer;
begin
  if s = '' then
    Result := ''
  else
  begin
    l := MultiByteToWideChar(codePage, MB_PRECOMPOSED, PAnsiChar(@s[1]), - 1, nil, 0);
    SetLength(Result, l - 1);
    if l > 1 then
      MultiByteToWideChar(CodePage, MB_PRECOMPOSED, PAnsiChar(@s[1]),
        - 1, PWideChar(@Result[1]), l - 1);
  end;
end;

procedure TStaticDictsForm.BitBtn10Click(Sender: TObject);
begin
  DataConnection.insertBlankElinkAssoc;
  DataConnection.ReloadElinksAssocs;
end;

procedure TStaticDictsForm.BitBtn1Click(Sender: TObject);
begin
  DataConnection.InsertCurrentServGroupListItemNULLAELType;
  DataConnection.ReloadServicesGroupList;
end;

procedure TStaticDictsForm.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Добавить новый тип связи с операцией?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
  AppServItemsWithNewTypeTabSheet.Show
  else
  begin
  DataConnection.ReloadServicesActionLinks;
  DataConnection.InsertCurrentServiceItem;
  DataConnection.ReloadServiceActionItems;
  end;
end;

procedure TStaticDictsForm.BitBtn3Click(Sender: TObject);
var UTF8Name: UTF8String;
    LinkTypeIndex: Integer;
    //UnicodeName: WideString;
    //tmp: RawbyteString;
    //L: Cardinal;
    //UTF8Arr: array of Char;
    //sample: string;
begin
  if NewAELTypeNameEdit.Text<>'' then
  begin
    //sample:='фывыфвфыв';
    //UTF8Name:=NewAELTypeNameEdit.Text;
    //UnicodeName:=WideString(NewAELTypeNameEdit.Text);
    //NewAELTypeNameEdit.
    //tmp:=NewAELTypeNameEdit.Text;
    //AnsiToUnicode(
    //ShowMessage(IntToStr(StringCodePage(NewAELTypeNameEdit.Text))+
    //'sss'+IntToStr(StringElementSize(NewAELTypeNameEdit.Text))
    //+'aaa'+IntToStr(StringCodePage(sample))+
    //'sss'+IntToStr(StringElementSize(sample)));
    //UnicodeToUTF8(@UTF8Name[1],@UnicodeName[1],
    //  Length(NewAELTypeNameEdit.Text));
    //UnicodeToUtf8(PAnsiChar(UTF8Name),
    //  Length(UTF8Name), PWideChar(UnicodeName), L);
    //SetLength(UTF8Name,length(PWideChar(UnicodeName))*2);
    //UnicodeToUtf8(PAnsiChar(UTF8Name),PWideChar(UnicodeName),
    //  Length(PWideChar(UnicodeName))*2);
    //ShowMessage(UTF8ToString(WideStringToUTF8(UnicodeName)));
    LinkTypeIndex:=NewAELETypeIDComboBox.ItemIndex+3;
    if LinkTypeIndex=6 then
       LinkTypeIndex:=7;
    DataConnection.InsertCurrentServiceItemWithAELType(
      NewAELTypeNameEdit.Text,NULL,LinkTypeIndex);
    DataConnection.ReloadServicesActionLinks;
    DataConnection.ReloadServiceActionItems;
  end
  else
    ShowMessage('Пустое наименование типа связи!');
  ServActItemsTabSheet.Show;
end;

procedure TStaticDictsForm.BitBtn4Click(Sender: TObject);
begin
  DataConnection.InsertCurrentServiceReport;
  DataConnection.ReloadServiceActionReports;
end;

procedure TStaticDictsForm.BitBtn5Click(Sender: TObject);
begin
  DataConnection.InsertBlankActionService;
  DataConnection.ReloadServicesADOT;
  //DataConnection.ServicesADOT.Last;
end;

procedure TStaticDictsForm.BitBtn6Click(Sender: TObject);
begin
  if MessageDlg('Добавить новый тип связи данных с пакетом?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
    AppServGroupItemsWithNewTypeTabSheet.Show
  else
  begin
    DataConnection.ReloadServicesActionLinks;
    DataConnection.InsertCurrentServGroupListItem;
    DataConnection.ReloadServiceGroupActionItems;
  end;
end;

procedure TStaticDictsForm.BitBtn7Click(Sender: TObject);
var UTF8Name: UTF8String;
    LinkTypeIndex: Integer;
    //UnicodeName: WideString;
    //tmp: RawbyteString;
    //L: Cardinal;
    //UTF8Arr: array of Char;
    //sample: string;
begin
  if NewGroupAELTypeNameEdit.Text<>'' then
  begin
    //sample:='фывыфвфыв';
    //UTF8Name:=NewAELTypeNameEdit.Text;
    //UnicodeName:=WideString(NewAELTypeNameEdit.Text);
    //NewAELTypeNameEdit.
    //tmp:=NewAELTypeNameEdit.Text;
    //AnsiToUnicode(
    //ShowMessage(IntToStr(StringCodePage(NewAELTypeNameEdit.Text))+
    //'sss'+IntToStr(StringElementSize(NewAELTypeNameEdit.Text))
    //+'aaa'+IntToStr(StringCodePage(sample))+
    //'sss'+IntToStr(StringElementSize(sample)));
    //UnicodeToUTF8(@UTF8Name[1],@UnicodeName[1],
    //  Length(NewAELTypeNameEdit.Text));
    //UnicodeToUtf8(PAnsiChar(UTF8Name),
    //  Length(UTF8Name), PWideChar(UnicodeName), L);
    //SetLength(UTF8Name,length(PWideChar(UnicodeName))*2);
    //UnicodeToUtf8(PAnsiChar(UTF8Name),PWideChar(UnicodeName),
    //  Length(PWideChar(UnicodeName))*2);
    //ShowMessage(UTF8ToString(WideStringToUTF8(UnicodeName)));
    LinkTypeIndex:=NewGroupAELETypeIDComboBox.ItemIndex+3;
    if LinkTypeIndex=6 then
       LinkTypeIndex:=7;
    DataConnection.InsertCurrentServiceGroupItemWithAELType(
      NewGroupAELTypeNameEdit.Text,NULL,LinkTypeIndex);
    DataConnection.ReloadServicesActionLinks;
    DataConnection.ReloadServiceGroupActionItems;
  end
  else
    ShowMessage('Пустое наименование типа связи!');
  ServGroupActItemsTabSheet.Show;
end;

procedure TStaticDictsForm.BitBtn8Click(Sender: TObject);
begin
  DataConnection.MakeCurrentServiceAsGroup;
end;

procedure TStaticDictsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataConnection.ReloadReportsOfCurrService;
end;

procedure TStaticDictsForm.SpeedButton1Click(Sender: TObject);
begin
  DataConnection.LinkCurrFreeOpDataItemToCurrentPacketDataItem;
end;

procedure TStaticDictsForm.SpeedButton2Click(Sender: TObject);
begin
  DataConnection.DetachFromCurrentPacketDataItem;
end;

procedure TStaticDictsForm.TabSheet20Show(Sender: TObject);
begin
  DataConnection.ReloadServicesGroupsADOT;
  DataConnection.ReloadServiceActionItems;
end;

procedure TStaticDictsForm.TabSheet21Show(Sender: TObject);
begin
  if PageControl6.ActivePage<>ServActItemsTabSheet then
      ServActItemsTabSheet.Show;
  DataConnection.ReloadServicesActionLinks;
  DataConnection.ReloadServicesADOT;
  DataConnection.ReloadServiceActionItems;
end;

procedure TStaticDictsForm.TabSheet22Show(Sender: TObject);
begin
  DataConnection.ReloadServiceActionReports;
end;

procedure TStaticDictsForm.TabSheet24Show(Sender: TObject);
begin
  if PageControl8.ActivePage<>ServGroupActItemsTabSheet then
      ServGroupActItemsTabSheet.Show;
  DataConnection.ReloadServiceGroupActionItems;
  DataConnection.ReloadPacketSubOperationLinkItems;
  DataConnection.ReloadPacketOperationsFreeLnkItems;
end;

end.
