unit FMSMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ExtCtrls;

type
  TMainForm = class(TForm)
    Panel1: TPanel;
    MainHeaderControl: THeaderControl;
    MainProgramMenu: TMainMenu;
    N1: TMenuItem;
    N28: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N27: TMenuItem;
    N7: TMenuItem;
    N6: TMenuItem;
    N11: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N31: TMenuItem;
    N211: TMenuItem;
    N711: TMenuItem;
    N91: TMenuItem;
    N121: TMenuItem;
    N122: TMenuItem;
    N21: TMenuItem;
    N101: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N32: TMenuItem;
    N71: TMenuItem;
    N17: TMenuItem;
    N22: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N63: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N18: TMenuItem;
    N41: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N25: TMenuItem;
    N42: TMenuItem;
    N10: TMenuItem;
    CSV1: TMenuItem;
    DBF1: TMenuItem;
    N26: TMenuItem;
    N4: TMenuItem;
    AdmPanelMenuItem: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N35: TMenuItem;
    N5: TMenuItem;
    N12: TMenuItem;
    MainStatusBar: TStatusBar;
    N36: TMenuItem;
    N37: TMenuItem;
    procedure CSV1Click(Sender: TObject);
    procedure DBF1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MainHeaderControlSectionClick(HeaderControl: THeaderControl;
      Section: THeaderSection);
    procedure N11Click(Sender: TObject);
    procedure N121Click(Sender: TObject);
    procedure N122Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N211Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N711Click(Sender: TObject);
    procedure AdmPanelMenuItemClick(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

//uses CSVImportUnit;
uses CSVImportUnit, StaticDictionariesUnit, SettingsFormUnit,
  AdministrationUnit, SystemDictsUnit, DBFImportUnit, ReportDM,
  DBConnect, EntitySelInsUnit, ConstantsUnit, PersonDesktopUnit;

{$R *.dfm}

procedure TMainForm.AdmPanelMenuItemClick(Sender: TObject);
begin
  AdmPanelForm.ShowModal;
end;

procedure TMainForm.CSV1Click(Sender: TObject);
begin
  CSVImportForm.ShowModal;
end;

procedure TMainForm.DBF1Click(Sender: TObject);
begin
  DBFImportForm.ShowModal;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataConnection.FMSStorageADOC.Connected:=False;
end;

procedure TMainForm.MainHeaderControlSectionClick(HeaderControl: THeaderControl;
  Section: THeaderSection);
begin
  if (Section.Index=0) then
  begin
    DataConnection.FMSStorageADOC.Connected :=
      not DataConnection.FMSStorageADOC.Connected;
  end
  else  if (Section.Index=1) then
  begin
    PersonDesktopForm.insertPersonForm;
  end
  else  if (Section.Index=2) then
  begin
    PersonDesktopForm.selectPersonList;
  end
  else  if (Section.Index=3) then
  begin
    PersonDesktopForm.insertCurrentPersonOperationAction;
  end
  else  if (Section.Index=4) then
  begin
    Close;
  end;
end;

procedure TMainForm.N101Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.ApartmentCardfrxRepF10);
  ReportGenDM.ApartmentCardfrxRepF10.ShowReport();
end;

procedure TMainForm.N11Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.LocationRegStatementfrxRepF1);
  ReportGenDM.customReportPrepare(
    ReportGenDM.LocationRegStatementfrxRepF1,
    LocationRegStatementReportCode);
  ReportGenDM.LocationRegStatementfrxRepF1.ShowReport();
end;

procedure TMainForm.N121Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.IncomeStatAccountPaperRepF12P);
  ReportGenDM.IncomeStatAccountPaperRepF12P.ShowReport();
end;

procedure TMainForm.N122Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.OutcomeStatAccountPaperRepF12V);
  ReportGenDM.OutcomeStatAccountPaperRepF12V.ShowReport();
end;

procedure TMainForm.N13Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.RFResidingRegDatafrxRepRFL1);
  ReportGenDM.RFResidingRegDatafrxRepRFL1.ShowReport();
end;

procedure TMainForm.N14Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.PassportComeStatementfrxRepF1);
  ReportGenDM.PassportComeStatementfrxRepF1.ShowReport();
end;

procedure TMainForm.N211Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.IncomeAdrPaperRepF2forF1P);
  ReportGenDM.IncomeAdrPaperRepF2forF1P.ShowReport();
end;

procedure TMainForm.N21Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.TempIdentityDocfrxRepF2P);
  ReportGenDM.TempIdentityDocfrxRepF2P.ShowReport();
end;

procedure TMainForm.N27Click(Sender: TObject);
begin
  StaticDictsForm.ShowModal;
end;

procedure TMainForm.N28Click(Sender: TObject);
begin
  PersonDesktopForm.insertPersonForm;
end;

procedure TMainForm.N36Click(Sender: TObject);
begin
  PersonDesktopForm.selectPersonList;
end;

procedure TMainForm.N37Click(Sender: TObject);
begin
  PersonDesktopForm.insertCurrentPersonOperationAction;
end;

procedure TMainForm.N61Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.ResideRegStatfrxRepF6);
  ReportGenDM.ResideRegStatfrxRepF6.ShowReport();
end;

procedure TMainForm.N62Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.ResidingRegStatWithTermfrxRepF6);
  ReportGenDM.ResidingRegStatWithTermfrxRepF6.ShowReport();
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
  DataConnection.ApplyCurrentReportAccess(N6);
end;

procedure TMainForm.N711Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.OutcomeAdrPaperRepF7forF1P);
  ReportGenDM.OutcomeAdrPaperRepF7forF1P.ShowReport();
end;

procedure TMainForm.N7Click(Sender: TObject);
begin
  SystemDictsForm.ShowModal;
end;

procedure TMainForm.N91Click(Sender: TObject);
begin
  ReportGenDM.moveSysParamsToReport(
    ReportGenDM.RegistrationCardfrxRepF9);
  ReportGenDM.RegistrationCardfrxRepF9.ShowReport();
end;

procedure TMainForm.N9Click(Sender: TObject);
begin
  SYSSettingsForm.ShowModal;
end;

end.
