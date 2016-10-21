program FMSReportGenerator;

uses
  Forms,
  FMSMain in 'FMSMain.pas' {MainForm},
  CSVImportUnit in 'CSVImportUnit.pas' {CSVImportForm},
  DBConnect in 'DBConnect.pas' {DataConnection: TDataModule},
  AdministrationUnit in 'AdministrationUnit.pas' {AdmPanelForm},
  DBFImportUnit in 'DBFImportUnit.pas' {DBFImportForm},
  EntitySelInsUnit in 'EntitySelInsUnit.pas' {EntSelInsertForm},
  InterfaceUnit in 'InterfaceUnit.pas' {InterfaceDM: TDataModule},
  PersonDesktopUnit in 'PersonDesktopUnit.pas' {PersonDesktopForm},
  ReportDM in 'ReportDM.pas' {ReportGenDM: TDataModule},
  SettingsFormUnit in 'SettingsFormUnit.pas' {SYSSettingsForm},
  StaticDictionariesUnit in 'StaticDictionariesUnit.pas' {StaticDictsForm},
  SystemDictsUnit in 'SystemDictsUnit.pas' {SystemDictsForm},
  ConstantsUnit in 'ConstantsUnit.pas',
  spUtilsUnit in 'spUtilsUnit.pas',
  EnterStringFormUnit in 'EnterStringFormUnit.pas' {EnterStringForm},
  OpCompositionFormUnit in 'OpCompositionFormUnit.pas' {OpCompositionForm},
  CustomOperFormUnit in 'CustomOperFormUnit.pas' {CustomOperForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TCSVImportForm, CSVImportForm);
  Application.CreateForm(TDataConnection, DataConnection);
  Application.CreateForm(TAdmPanelForm, AdmPanelForm);
  Application.CreateForm(TDBFImportForm, DBFImportForm);
  Application.CreateForm(TEntSelInsertForm, EntSelInsertForm);
  Application.CreateForm(TInterfaceDM, InterfaceDM);
  Application.CreateForm(TPersonDesktopForm, PersonDesktopForm);
  Application.CreateForm(TReportGenDM, ReportGenDM);
  Application.CreateForm(TSYSSettingsForm, SYSSettingsForm);
  Application.CreateForm(TStaticDictsForm, StaticDictsForm);
  Application.CreateForm(TSystemDictsForm, SystemDictsForm);
  Application.CreateForm(TEnterStringForm, EnterStringForm);
  Application.CreateForm(TOpCompositionForm, OpCompositionForm);
  Application.CreateForm(TCustomOperForm, CustomOperForm);
  Application.Run;
end.
