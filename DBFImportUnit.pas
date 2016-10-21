unit DBFImportUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, Menus, DBCtrls, ExtCtrls, Grids, DBGrids,
  StdCtrls, Buttons;

type
  TDBFImportForm = class(TForm)
    DBFImportADOC: TADOConnection;
    HousesADOT: TADOTable;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PageControl1: TPageControl;
    KLADRTabSheet: TTabSheet;
    TabSheet2: TTabSheet;
    Panel8: TPanel;
    KLADRDS: TDataSource;
    DBGrid1: TDBGrid;
    KLADRADODS: TADODataSet;
    KLADRADODSname: TStringField;
    KLADRADODSsocr: TStringField;
    KLADRADODScode: TStringField;
    KLADRADODSindex: TStringField;
    KLADRADODSgninmb: TStringField;
    KLADRADODSuno: TStringField;
    KLADRADODSocatd: TStringField;
    KLADRADODSstatus: TStringField;
    ShortiesDS: TDataSource;
    ShortedADODS: TADODataSet;
    ImportKLADRItemADOSP: TADOStoredProc;
    DBGrid2: TDBGrid;
    ShortedADODSlevel: TStringField;
    ShortedADODSscname: TStringField;
    ShortedADODSsocrname: TStringField;
    ShortedADODSkod_t_st: TStringField;
    MinLevelEdit: TEdit;
    Label1: TLabel;
    UpDown1: TUpDown;
    MaxLevelEdit: TEdit;
    UpDown2: TUpDown;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    ImportShortedADOSP: TADOStoredProc;
    KLADRFilterCheckBox: TCheckBox;
    KLADRFilterMemo: TMemo;
    BitBtn3: TBitBtn;
    procedure KLADRADOTnameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure KLADRADOTsocrGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure KLADRADODSnameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure KLADRADODSsocrGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ShortedADODSscnameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ShortedADODSsocrnameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ReloadKLADRTable;
    procedure ReloadShortiesTable;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure KLADRADODSFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBFImportForm: TDBFImportForm;

implementation

uses DBConnect;

{$R *.dfm}

procedure TDBFImportForm.ReloadKLADRTable;
begin
  try
    KLADRADODS.Active:=False;
    if KLADRFilterCheckBox.Checked then
       KLADRADODS.Filtered:=True
    else
      KLADRADODS.Filtered:=False;
    KLADRADODS.Active:=True;
  except on E:Exception do
    ShowMessage('Ошибка перезагрузки таблицы KLADR! Описание: '+E.Message);
  end;
end;

procedure TDBFImportForm.ReloadShortiesTable;
begin
  try
    ShortedADODS.Active:=False;
    ShortedADODS.Active:=True;
  except on E:Exception do
    ShowMessage('Ошибка перезагрузки таблицы СОКРАЩЕНИЯ! Описание: '+E.Message);
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
    l := MultiByteToWideChar(codePage, MB_PRECOMPOSED, PAnsiChar(@s[1]), -1, nil,
      0);
    SetLength(Result, l - 1);
    if l > 1 then
      MultiByteToWideChar(CodePage, MB_PRECOMPOSED, PAnsiChar(@s[1]),
        -1, PWideChar(@Result[1]), l - 1);
  end;
end;

procedure TDBFImportForm.BitBtn1Click(Sender: TObject);
begin
  ReloadKLADRTable;
  if KLADRADODS.Active then
     if KLADRADODS.RecordCount>0 then
     begin
       KLADRADODS.First;
       ShowMessage('Всего записей: '+IntToStr(KLADRADODS.RecordCount));

       repeat

         try
           ImportKLADRItemADOSP.Parameters.ParamByName('IN_ITEM_NAME').Value:=
             Trim(StringToWideString(KLADRADODS.FieldByName('name').AsString,866));
           ImportKLADRItemADOSP.Parameters.ParamByName('IN_SHORTY_NAME').Value:=
             Trim(StringToWideString(KLADRADODS.FieldByName('socr').AsString, 866));
           ImportKLADRItemADOSP.Parameters.ParamByName('IN_KLADR_CODE').Value:=
             Trim(StringToWideString(KLADRADODS.FieldByName('code').AsString, 866));
           ImportKLADRItemADOSP.Parameters.ParamByName('IN_INDEX').Value:=
             Trim(StringToWideString(KLADRADODS.FieldByName('index').AsString, 866));
           ImportKLADRItemADOSP.Parameters.ParamByName('IN_GNIMB').Value:=
             Trim(StringToWideString(KLADRADODS.FieldByName('gninmb').AsString, 866));
           ImportKLADRItemADOSP.Parameters.ParamByName('IN_UNO').Value:=
             Trim(StringToWideString(KLADRADODS.FieldByName('uno').AsString, 866));
           ImportKLADRItemADOSP.Parameters.ParamByName('IN_OCATD').Value:=
             Trim(StringToWideString(KLADRADODS.FieldByName('ocatd').AsString, 866));
           ImportKLADRItemADOSP.Parameters.ParamByName('IN_STATUS').Value:=
             StrToIntDef(Trim(StringToWideString(KLADRADODS.FieldByName('status').AsString, 866)),0);
           ImportKLADRItemADOSP.Parameters.ParamByName('MIN_LEVEL').
              Value:=StrToInt(MinLevelEdit.Text);
           ImportKLADRItemADOSP.Parameters.ParamByName('MAX_LEVEL').
              Value:=StrToInt(MaxLevelEdit.Text);
           ImportKLADRItemADOSP.ExecProc;
           //ShowMessage('fff');
         except on E:Exception do
           ShowMessage('Неудачный вызов процедуры импорта в таблицу КЛАДР! '+E.Message);
         end;

         KLADRADODS.Next;
         if KLADRADODS.Eof then
            Break;
       until false;

     end;
end;

procedure TDBFImportForm.BitBtn2Click(Sender: TObject);
begin
  ReloadShortiesTable;
  if ShortedADODS.Active then
     if ShortedADODS.RecordCount>0 then
     begin
       ShortedADODS.First;
       ShowMessage('Всего записей: '+IntToStr(ShortedADODS.RecordCount));
       repeat

         try
           ImportShortedADOSP.Parameters.ParamByName('IN_SHORT_LEVEL').Value:=
             Trim(StringToWideString(ShortedADODS.FieldByName('level').AsString,866));
           ImportShortedADOSP.Parameters.ParamByName('IN_SHORT_TEXT').Value:=
             Trim(StringToWideString(ShortedADODS.FieldByName('scname').AsString, 866));
           ImportShortedADOSP.Parameters.ParamByName('IN_SHORT_FULL_TEXT').Value:=
             Trim(StringToWideString(ShortedADODS.FieldByName('socrname').AsString, 866));
           ImportShortedADOSP.Parameters.ParamByName('IN_SHORT_INT_CODE').Value:=
             ShortedADODS.FieldByName('kod_t_st').AsInteger;
           ImportShortedADOSP.ExecProc;
         except on E:Exception do
           ShowMessage('Неудачный вызов процедуры импорта в таблицу СОКРАЩЕНИЯ!');
         end;

         ShortedADODS.Next;
         if ShortedADODS.Eof then
            Break;
       until false;

     end;
end;

procedure TDBFImportForm.BitBtn3Click(Sender: TObject);
begin
  if DataConnection.LinkImportKLADRItems then
    ShowMessage('Связка КЛАДР по кодам ОКАТО выполнена!')
  else
    ShowMessage('Неудачная связка КЛАДР по кодам ОКАТО!');
end;

procedure TDBFImportForm.FormCreate(Sender: TObject);
begin
  DBFImportADOC.Connected:=False;
end;

procedure TDBFImportForm.FormShow(Sender: TObject);
begin
  ReloadKLADRTable;
  ReloadShortiesTable;
end;

procedure TDBFImportForm.KLADRADODSFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var tmp: RawbyteString;
    utmp: UnicodeString;
    I: Integer;
    acc: Boolean;
begin
  tmp:=KLADRADODS.FieldByName('socr').Value;
  utmp:=StringToWideString(tmp, 866);
  acc:=False;
  for I := 0 to KLADRFilterMemo.Lines.Count - 1 do
    if (KLADRFilterMemo.Lines[i]<>'') and (KLADRFilterMemo.Lines[i]<>' ') and
      (KLADRFilterMemo.Lines[i]<>'  ') then
    if (Trim(KLADRFilterMemo.Lines[i])=Trim(utmp)) then
    begin
      acc:=True;
      Break;
    end;
  Accept:=acc;
end;

procedure TDBFImportForm.KLADRADODSnameGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var sample: string;
    tmp: RawbyteString;
    utmp: UnicodeString;
begin
  sample:='test';
  tmp:=KLADRADODSname.Value;
  utmp:=StringToWideString(tmp, 866);
  Text:=utmp;
end;

procedure TDBFImportForm.KLADRADODSsocrGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var sample: string;
    tmp: RawbyteString;
    utmp: UnicodeString;
begin
  sample:='test';
  tmp:=KLADRADODSsocr.Value;
  utmp:=StringToWideString(tmp, 866);
  //if (utmp='нп') then
  //  ShowMessage('sss');
  Text:=utmp;
end;

procedure TDBFImportForm.KLADRADOTnameGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var sample: string;
    tmp: RawbyteString;
    utmp: UnicodeString;
begin
  sample:='test';
  //KLADRADOTscname.AsBytes;
  //tmp:=KLADRADOTname.Value;
  //SetCodePage( tmp, 866);
  utmp:=StringToWideString(tmp, 866);
  Text:=utmp;
  //AnsiToUnicode(
  //ShowMessage(IntToStr(StringCodePage(tmp))+
  //  'sss'+IntToStr(StringElementSize(tmp))
  //  +'aaa'+IntToStr(StringCodePage(sample))+
  //  'sss'+IntToStr(StringElementSize(sample)));
end;

procedure TDBFImportForm.KLADRADOTsocrGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var sample: string;
    tmp: RawbyteString;
    utmp: UnicodeString;
begin
  //tmp:=KLADRADOTsocr.Value;
  utmp:=StringToWideString(tmp, 866);
  Text:=utmp;
end;

procedure TDBFImportForm.ShortedADODSscnameGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var sample: string;
    tmp: RawbyteString;
    utmp: UnicodeString;
begin
  tmp:=ShortedADODSscname.Value;
  utmp:=StringToWideString(tmp, 866);
  Text:=utmp;
end;

procedure TDBFImportForm.ShortedADODSsocrnameGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var sample: string;
    tmp: RawbyteString;
    utmp: UnicodeString;
begin
  tmp:=ShortedADODSsocrname.Value;
  utmp:=StringToWideString(tmp, 866);
  Text:=utmp;
end;

end.
