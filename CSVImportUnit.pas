unit CSVImportUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Menus, ComCtrls, DBCtrls, DBGrids;

type
  TCSVImportForm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Splitter1: TSplitter;
    CSVImportStringGrid: TStringGrid;
    CSVImportMainMenu: TMainMenu;
    CSVOpenDialog: TOpenDialog;
    CSV1: TMenuItem;
    N1: TMenuItem;
    DelimeterLabEdit: TLabeledEdit;
    StartRowLabEdit: TLabeledEdit;
    EndRowLabEdit: TLabeledEdit;
    ImportSGPopupMenu: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    StartRowUpDown: TUpDown;
    EndRowUpDown: TUpDown;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure CSV1Click(Sender: TObject);
    procedure LoadCSVFile (FileName: String; separator: char);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSVImportForm: TCSVImportForm;

implementation

uses DBConnect;

{$R *.dfm}

procedure TCSVImportForm.CSV1Click(Sender: TObject);
var DelimStr: string[255];
begin
  if CSVOpenDialog.Execute then
  begin
    if DelimeterLabEdit.Text<>'' then
    begin
      DelimStr:=DelimeterLabEdit.Text;
      LoadCSVFile(CSVOpenDialog.FileName, Char(DelimStr[0]));
    end
    else
      LoadCSVFile(CSVOpenDialog.FileName, ';');
  end;
end;

procedure TCSVImportForm.FormCreate(Sender: TObject);
begin
  CSVOpenDialog.InitialDir:=GetCurrentDir;
end;

procedure TCSVImportForm.FormShow(Sender: TObject);
var DelimStr: string[255];
begin
  DataConnection.ReloadDictsADODS;
  if CSVOpenDialog.Execute then
  begin
    if DelimeterLabEdit.Text<>'' then
    begin
      DelimStr:=DelimeterLabEdit.Text;
      LoadCSVFile(CSVOpenDialog.FileName, Char(DelimStr[0]));
    end
    else
      LoadCSVFile(CSVOpenDialog.FileName, ';');
  end;
end;

procedure TCSVImportForm.LoadCSVFile (FileName: String; separator: Char);
var f: TextFile;
    s1, s2: string;
    i, j: integer;
begin
 i := 0;
 AssignFile (f, FileName);
 Reset(f);
 while not eof(f) do
  begin
   readln (f, s1);
   i := i + 1;
   j := 0;
   while pos(separator, s1)<>0 do
    begin
     s2 := copy(s1,1,pos(separator, s1)-1);
     j := j + 1;
     delete (s1, 1, pos(separator, S1));
     CSVImportStringGrid.Cells[j-1, i-1] := s2;
    end;
   if pos (separator, s1)=0 then
    begin
     j := j + 1;
     CSVImportStringGrid.Cells[j-1, i-1] := s1;
    end;
   CSVImportStringGrid.ColCount := j;
   CSVImportStringGrid.RowCount := i+1;
  end;
 CloseFile(f);
end;

procedure TCSVImportForm.N1Click(Sender: TObject);
var
  i, j: integer;
  tmp_float: Extended;
  float_str: String;
begin
  for i := StartRowUpDown.Position to EndRowUpDown.Position do
  begin

    try
    if DataConnection.DictsADOT.FieldByName('DICT_ID').AsInteger=1 then
       begin
         //ShowMessage(IntToStr(i));
         //CSVImportStringGrid.
         DataConnection.AddUpdCountryADOSP.Parameters.
            ParamByName('IN_COUNTRY_ID').Value:=NULL;
         DataConnection.AddUpdCountryADOSP.Parameters.
            ParamByName('IN_COUNTRY_CODE').Value:=StrToInt(CSVImportStringGrid.Cells[0,i]);
         DataConnection.AddUpdCountryADOSP.Parameters.
            ParamByName('IN_COUNTRY_NAME').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[1,i]);
         if not DataConnection.AddUpdCountryADOSP.Active then
            DataConnection.AddUpdCountryADOSP.Active:=True
         else
            DataConnection.AddUpdCountryADOSP.ExecProc;
       end
    else if DataConnection.DictsADOT.FieldByName('DICT_ID').AsInteger=2 then
      begin
         DataConnection.AddUpdCountryADOSP.Parameters.
            ParamByName('IN_DOC_TYPE_ID').Value:=NULL;
         DataConnection.AddUpdDocTypeADOSP.Parameters.
            ParamByName('IN_DOC_TYPE_INT_CODE').Value:=
            StrToInt(CSVImportStringGrid.Cells[0,i]);
         DataConnection.AddUpdDocTypeADOSP.Parameters.
            ParamByName('IN_DOC_TYPE_BRANCH_CODE').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[2,i]);
         DataConnection.AddUpdDocTypeADOSP.Parameters.
            ParamByName('IN_DOC_TYPE_NAME').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[1,i]);

         if not DataConnection.AddUpdDocTypeADOSP.Active then
            DataConnection.AddUpdDocTypeADOSP.Active:=True
         else
            DataConnection.AddUpdDocTypeADOSP.ExecProc;

      end
      else if DataConnection.DictsADOT.FieldByName('DICT_ID').AsInteger=3 then
      begin
         DataConnection.AddUpdServiceADOSP.Parameters.
            ParamByName('IN_SERVICE_ID').Value:=NULL;

         DataConnection.AddUpdServiceADOSP.Parameters.
            ParamByName('IN_SERVICE_CODE').Value:=
            StrToIntDef(CSVImportStringGrid.Cells[0,i],0);

         DataConnection.AddUpdServiceADOSP.Parameters.
            ParamByName('IN_SERVICE_NAME').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[1,i]);

         //ShowMessage(CSVImportStringGrid.Cells[2,i]);
         float_str:=StringReplace(CSVImportStringGrid.Cells[2,i],'.',',',[rfReplaceAll]);
         //ShowMessage(float_str);
         if TryStrToFloat(float_str,tmp_float) then
            DataConnection.AddUpdServiceADOSP.Parameters.
              ParamByName('IN_SERVICE_PRICE').Value:=
              StrToFloat(float_str)
         else
            DataConnection.AddUpdServiceADOSP.Parameters.
              ParamByName('IN_SERVICE_PRICE').Value:=0.0;

         if not DataConnection.AddUpdServiceADOSP.Active then
            DataConnection.AddUpdServiceADOSP.Active:=True
         else
            DataConnection.AddUpdServiceADOSP.ExecProc;

      end
      else if DataConnection.DictsADOT.FieldByName('DICT_ID').AsInteger=4 then
      begin
         DataConnection.AddUpdOKVDADOSP.Parameters.
            ParamByName('IN_OKVD_ID').Value:=NULL;
         DataConnection.AddUpdOKVDADOSP.Parameters.
            ParamByName('IN_OKVD_CODE').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[1,i]);
         DataConnection.AddUpdOKVDADOSP.Parameters.
            ParamByName('IN_OKVD_NAME').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[2,i]);
         DataConnection.AddUpdOKVDADOSP.Parameters.
            ParamByName('IN_OKVD_SECTION_NAME').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[3,i]);
         DataConnection.AddUpdOKVDADOSP.Parameters.
            ParamByName('IN_OKVD_INT_CODE').Value:=
            StrToIntDef(CSVImportStringGrid.Cells[0,i],0);

         if not DataConnection.AddUpdOKVDADOSP.Active then
            DataConnection.AddUpdOKVDADOSP.Active:=True
         else
            DataConnection.AddUpdOKVDADOSP.ExecProc;

      end
      else if DataConnection.DictsADOT.FieldByName('DICT_ID').AsInteger=5 then
       begin
         //ShowMessage(IntToStr(i));
         //CSVImportStringGrid.
         DataConnection.AddUpdAReasonsADOSP.Parameters.
            ParamByName('IN_A_REASON_ID').Value:=NULL;
         DataConnection.AddUpdAReasonsADOSP.Parameters.
            ParamByName('IN_A_REASON_CODE').Value:=
            StrToIntDef(CSVImportStringGrid.Cells[0,i],0);
         DataConnection.AddUpdAReasonsADOSP.Parameters.
            ParamByName('IN_A_REASON_NAME').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[1,i]);
         DataConnection.AddUpdAReasonsADOSP.Parameters.
            ParamByName('IN_REASON_TYPE').Value:=1;
         if not DataConnection.AddUpdAReasonsADOSP.Active then
            DataConnection.AddUpdAReasonsADOSP.Active:=True
         else
            DataConnection.AddUpdAReasonsADOSP.ExecProc;
       end
       else if DataConnection.DictsADOT.FieldByName('DICT_ID').AsInteger=6 then
       begin
         DataConnection.AddUpdAReasonsADOSP.Parameters.
            ParamByName('IN_A_REASON_ID').Value:=NULL;
         DataConnection.AddUpdAReasonsADOSP.Parameters.
            ParamByName('IN_A_REASON_CODE').Value:=
            StrToIntDef(CSVImportStringGrid.Cells[0,i],0);
         DataConnection.AddUpdAReasonsADOSP.Parameters.
            ParamByName('IN_A_REASON_NAME').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[1,i]);
         DataConnection.AddUpdAReasonsADOSP.Parameters.
            ParamByName('IN_REASON_TYPE').Value:=2;
         if not DataConnection.AddUpdAReasonsADOSP.Active then
            DataConnection.AddUpdAReasonsADOSP.Active:=True
         else
            DataConnection.AddUpdAReasonsADOSP.ExecProc;
       end
       else if DataConnection.DictsADOT.FieldByName('DICT_ID').AsInteger=7 then
       begin
         DataConnection.AddUpdFMSBrancheADOSP.Parameters.
            ParamByName('IN_BRANCHE_ID').Value:=NULL;
         DataConnection.AddUpdFMSBrancheADOSP.Parameters.
            ParamByName('IN_BRANCHE_NAME').Value:=
            Trim(AnsiToUtf8(CSVImportStringGrid.Cells[2,i]));
         DataConnection.AddUpdFMSBrancheADOSP.Parameters.
            ParamByName('IN_BRANCHE_CODE').Value:=
            Trim(AnsiToUtf8(CSVImportStringGrid.Cells[1,i]));
         DataConnection.AddUpdFMSBrancheADOSP.Parameters.
            ParamByName('IN_OKATO_CODE').Value:=
            Trim(AnsiToUtf8(CSVImportStringGrid.Cells[3,i]));
         DataConnection.AddUpdFMSBrancheADOSP.Parameters.
            ParamByName('IN_STATE_CODE').Value:=
            StrToIntDef(CSVImportStringGrid.Cells[5,i],0);
         DataConnection.AddUpdFMSBrancheADOSP.Parameters.
            ParamByName('IN_BRANCHE_STATUS').Value:=
            StrToIntDef(CSVImportStringGrid.Cells[7,i],0);
         //if not DataConnection.AddUpdFMSBrancheADOSP.Active then
         //   DataConnection.AddUpdFMSBrancheADOSP.Active:=True
         //else
         DataConnection.AddUpdFMSBrancheADOSP.ExecProc;
       end
       else if DataConnection.DictsADOT.FieldByName('DICT_ID').AsInteger=8 then
       begin
         //ShowMessage(IntToStr(i));
         //CSVImportStringGrid.
         DataConnection.AddUpdRegionADOSP.Parameters.
            ParamByName('IN_REGION_ID').Value:=NULL;
         DataConnection.AddUpdRegionADOSP.Parameters.
            ParamByName('IN_REGION_INT_CODE').Value:=
            StrToIntDef(CSVImportStringGrid.Cells[0,i],0);
         DataConnection.AddUpdRegionADOSP.Parameters.
            ParamByName('IN_REGION_NAME').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[1,i]);
         DataConnection.AddUpdRegionADOSP.Parameters.
            ParamByName('IN_IS_BTHREGION').Value:=1;

         DataConnection.AddUpdRegionADOSP.Parameters.
            ParamByName('IN_IS_RCENTER').Value:=0;
         if Pos('Да',AnsiToUtf8(CSVImportStringGrid.Cells[2,i]))<>0 then
            DataConnection.AddUpdRegionADOSP.Parameters.
            ParamByName('IN_IS_RCENTER').Value:=1;

         if not DataConnection.AddUpdRegionADOSP.Active then
            DataConnection.AddUpdRegionADOSP.Active:=True
         else
            DataConnection.AddUpdRegionADOSP.ExecProc;
       end
       else if DataConnection.DictsADOT.FieldByName('DICT_ID').AsInteger=10 then
       begin
         //ShowMessage(IntToStr(i));
         //CSVImportStringGrid.
         DataConnection.AddUpdDistrictADOSP.Parameters.
            ParamByName('IN_DISTRICT_ID').Value:=NULL;
         DataConnection.AddUpdDistrictADOSP.Parameters.
            ParamByName('IN_DISTRICT_CODE').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[0,i]);
         DataConnection.AddUpdDistrictADOSP.Parameters.
            ParamByName('IN_DISTRICT_NAME').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[1,i]);
         DataConnection.AddUpdDistrictADOSP.Parameters.
            ParamByName('IN_DISTRICT_SETTLEM_ID').Value:=NULL;
         DataConnection.AddUpdDistrictADOSP.Parameters.
            ParamByName('IN_DISTRICT_STATE_ID').Value:=NULL;

         if not DataConnection.AddUpdDistrictADOSP.Active then
            DataConnection.AddUpdDistrictADOSP.Active:=True
         else
            DataConnection.AddUpdDistrictADOSP.ExecProc;
       end
       else if DataConnection.DictsADOT.FieldByName('DICT_ID').AsInteger=11 then
       begin
         //ShowMessage(IntToStr(i));
         //CSVImportStringGrid.
         DataConnection.AddUpdShortedADOSP.Parameters.
            ParamByName('IN_SHORT_ID').Value:=NULL;
         DataConnection.AddUpdShortedADOSP.Parameters.
            ParamByName('IN_SHORT_INT_CODE').Value:=
            StrToIntDef(CSVImportStringGrid.Cells[0,i],0);
         DataConnection.AddUpdShortedADOSP.Parameters.
            ParamByName('IN_SHORT_TEXT').Value:=
            AnsiToUtf8(CSVImportStringGrid.Cells[1,i]);
         DataConnection.AddUpdShortedADOSP.Parameters.
            ParamByName('IN_SHORT_TYPE_ID').Value:=
            StrToIntDef(CSVImportStringGrid.Cells[2,i],0);

         if not DataConnection.AddUpdShortedADOSP.Active then
            DataConnection.AddUpdShortedADOSP.Active:=True
         else
            DataConnection.AddUpdShortedADOSP.ExecProc;
       end
    else
      begin

      end;
    except on E:Exception do
      begin
          ShowMessage('Ошибка импорта позиции из CSV, описание: '+E.Message);
          Exit;
      end;
    end;

  end;
  ShowMessage('Загрузка успешно завершена!');
end;

procedure TCSVImportForm.N2Click(Sender: TObject);
begin
  if CSVImportStringGrid.RowCount>0 then
  begin
    StartRowUpDown.Position:=CSVImportStringGrid.Selection.Top;
  end;
end;

procedure TCSVImportForm.N3Click(Sender: TObject);
begin
  if CSVImportStringGrid.RowCount>0 then
  begin
    EndRowUpDown.Position:=CSVImportStringGrid.Selection.Top;
  end;
end;

end.
