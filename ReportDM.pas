unit ReportDM;

interface

uses
  SysUtils, Classes, frxClass, frxDBSet, frxRich, frxDesgn,
  frxVariables, frxADOComponents, Dialogs, frxDCtrl, Controls, frxExportRTF;

type

  TReportActionType = (ratPreview, ratPrint);

  TReportGenDM = class(TDataModule)
    ResidingRegStatWithTermfrxRepF6: TfrxReport;
    PersonDataConsentfrxRep: TfrxReport;
    LocationRegStatementfrxRepF1: TfrxReport;
    PersonsfrxDBDS: TfrxDBDataset;
    RFResidingRegDatafrxRepRFL1: TfrxReport;
    PassportComeStatementfrxRepF1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxADOComponents: TfrxADOComponents;
    frxDialogControls: TfrxDialogControls;
    IncomeAdrPaperRepF2forF1P: TfrxReport;
    OutcomeAdrPaperRepF7forF1P: TfrxReport;
    IncomeStatAccountPaperRepF12P: TfrxReport;
    OutcomeStatAccountPaperRepF12V: TfrxReport;
    CurrOperationfrxDBDS: TfrxDBDataset;
    CurrOpIncomeRegGroundfrxDBDS: TfrxDBDataset;
    CurrOpIncomeRegOwnerPersfrxDBDS: TfrxDBDataset;
    CurrOpLocationRegAdrfrxDBDS: TfrxDBDataset;
    CurrOpIncomeRegIdentDocfrxDBDS: TfrxDBDataset;
    CurrOpIncomeOwnerIdentDocfrxDBDS: TfrxDBDataset;
    ResideRegStatfrxRepF6: TfrxReport;
    RegistrationCardfrxRepF9: TfrxReport;
    ApartmentCardfrxRepF10: TfrxReport;
    TempIdentityDocfrxRepF2P: TfrxReport;
    InterPassComeAnnfrxRep: TfrxReport;
    ChildIntPassComeAnnfrxRep: TfrxReport;
    IntPassAnnApplicationfrxRep: TfrxReport;
    ResidingRegTermfrxRepF6: TfrxReport;
    frxRTFExport1: TfrxRTFExport;
    procedure moveSysParamsToReport(Report: TfrxReport);
    procedure ResidingRegStatWithTermfrxRepF6LoadTemplate(Report: TfrxReport;
      const TemplateName: string);
    procedure customReportPrepare(Report: TfrxReport; ReportCode: Integer);
    procedure LocationRegStatementfrxRepF1Preview(Sender: TObject);
    procedure LocationRegStatementfrxRepF1PrintReport(Sender: TObject);
    procedure ResidingRegStatWithTermfrxRepF6Preview(Sender: TObject);
    procedure ResidingRegStatWithTermfrxRepF6PrintReport(Sender: TObject);
    procedure RFResidingRegDatafrxRepRFL1Preview(Sender: TObject);
    procedure RFResidingRegDatafrxRepRFL1PrintReport(Sender: TObject);
    procedure PassportComeStatementfrxRepF1Preview(Sender: TObject);
    procedure PassportComeStatementfrxRepF1PrintReport(Sender: TObject);
    procedure IncomeAdrPaperRepF2forF1PPreview(Sender: TObject);
    procedure IncomeAdrPaperRepF2forF1PPrintReport(Sender: TObject);
    procedure OutcomeAdrPaperRepF7forF1PPreview(Sender: TObject);
    procedure OutcomeAdrPaperRepF7forF1PPrintReport(Sender: TObject);
    procedure IncomeStatAccountPaperRepF12PPreview(Sender: TObject);
    procedure IncomeStatAccountPaperRepF12PPrintReport(Sender: TObject);
    procedure OutcomeStatAccountPaperRepF12VPreview(Sender: TObject);
    procedure OutcomeStatAccountPaperRepF12VPrintReport(Sender: TObject);
    procedure ResideRegStatfrxRepF6Preview(Sender: TObject);
    procedure ResideRegStatfrxRepF6PrintReport(Sender: TObject);
    procedure RegistrationCardfrxRepF9Preview(Sender: TObject);
    procedure RegistrationCardfrxRepF9PrintReport(Sender: TObject);
    procedure ApartmentCardfrxRepF10Preview(Sender: TObject);
    procedure ApartmentCardfrxRepF10PrintReport(Sender: TObject);
    procedure TempIdentityDocfrxRepF2PPreview(Sender: TObject);
    procedure TempIdentityDocfrxRepF2PPrintReport(Sender: TObject);
    function ReportActionOnCode(ReportActionType: TReportActionType;
      ReportCode: Integer): Boolean;
    procedure ResidingRegTermfrxRepF6Preview(Sender: TObject);
    procedure ResidingRegTermfrxRepF6PrintReport(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportGenDM: TReportGenDM;

const
  LocationRegStatementReportCode=1;
  ResidingRegStatementReportCode=2;
  ResidingRegStatementWithTermReportCode=3;
  RFResidingRegDataRFL1ReportCode=4;
  PassportComeStatementReportF1PCode=5;
  IncomeAdrPaperRepF2forF1PCode=7;
  OutcomeAdrPaperRepF7forF1PCode=8;
  IncomeStatAccountPaperRepF12PCode=10;
  OutcomeStatAccountPaperRepF12VCode=11;
  RegistrationCardRepF9VCode=9;
  ApartmentsCardRepF10Code=13;
  TempIdentityDocRepF2PCode=12;
  ResidingRegTermReportCode=31;

implementation

uses DBConnect;

{$R *.dfm}

function TReportGenDM.ReportActionOnCode(ReportActionType: TReportActionType;
      ReportCode: Integer): Boolean;
var res: Boolean;
    ActionReport: TfrxReport;
begin
  res:=False;
  ActionReport:=nil;
  //ShowMessage(IntToStr(ReportCode));
  try
    case ReportCode of
    LocationRegStatementReportCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        moveSysParamsToReport(LocationRegStatementfrxRepF1);
        LocationRegStatementfrxRepF1.ShowReport();
      end;
    end;
    ResidingRegStatementReportCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        moveSysParamsToReport(ResideRegStatfrxRepF6);
        ResideRegStatfrxRepF6.ShowReport();
      end;
    end;
    ResidingRegStatementWithTermReportCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        moveSysParamsToReport(ResidingRegStatWithTermfrxRepF6);
        ResidingRegStatWithTermfrxRepF6.ShowReport();
      end;
    end;
    RFResidingRegDataRFL1ReportCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        moveSysParamsToReport(RFResidingRegDatafrxRepRFL1);
        RFResidingRegDatafrxRepRFL1.ShowReport();
      end;
    end;
    PassportComeStatementReportF1PCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        moveSysParamsToReport(PassportComeStatementfrxRepF1);
        PassportComeStatementfrxRepF1.ShowReport();
      end;
    end;
    IncomeAdrPaperRepF2forF1PCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        moveSysParamsToReport(IncomeAdrPaperRepF2forF1P);
        IncomeAdrPaperRepF2forF1P.ShowReport();
      end;
    end;
    OutcomeAdrPaperRepF7forF1PCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        moveSysParamsToReport(OutcomeAdrPaperRepF7forF1P);
        OutcomeAdrPaperRepF7forF1P.ShowReport();
      end;
    end;
    RegistrationCardRepF9VCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        moveSysParamsToReport(RegistrationCardfrxRepF9);
        RegistrationCardfrxRepF9.ShowReport();
      end;
    end;
    IncomeStatAccountPaperRepF12PCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        moveSysParamsToReport(IncomeStatAccountPaperRepF12P);
        IncomeStatAccountPaperRepF12P.ShowReport();
      end;
    end;
    OutcomeStatAccountPaperRepF12VCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        moveSysParamsToReport(OutcomeStatAccountPaperRepF12V);
        OutcomeStatAccountPaperRepF12V.ShowReport();
      end;
    end;
    TempIdentityDocRepF2PCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        moveSysParamsToReport(TempIdentityDocfrxRepF2P);
        TempIdentityDocfrxRepF2P.ShowReport();
      end;
    end;
    ResidingRegTermReportCode:
    begin
      //ActionReport:=LocationRegStatementfrxRepF1;
      if ReportActionType=ratPreview then
      begin
        //ShowMessage('dddd');
        moveSysParamsToReport(ResidingRegTermfrxRepF6);
        ResidingRegTermfrxRepF6.ShowReport();
      end;
    end;
    else
    begin
      ShowMessage('Неизвестный код при осуществлении вызова действия для отчета!');
      Result:=False;
      Exit;
    end;
    end;

    //if ActionReport<>nil then
    // begin
    //   if ReportActionType=ratPreview then
    //   begin
    //     moveSysParamsToReport(ActionReport);
    //     ActionReport.ShowReport();
    //   end;

    res:=True;
    //end;

  except on E:Exception do
    ShowMessage('Ошибка вызова действия для отчета! Сообщение: '+E.Message);
  end;
  Result:=res;
end;

procedure TReportGenDM.ApartmentCardfrxRepF10Preview(Sender: TObject);
begin
  DataConnection.InsertReportPreviewAction(ApartmentsCardRepF10Code);
end;

procedure TReportGenDM.ApartmentCardfrxRepF10PrintReport(Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(ApartmentsCardRepF10Code);
end;

procedure TReportGenDM.customReportPrepare(Report: TfrxReport; ReportCode: Integer);
var CustomParamsCategory: TfrxVariable;
begin

  case ReportCode of
    LocationRegStatementReportCode:
    begin
      DataConnection.ReloadCurrOpPrevResideAdr;
      DataConnection.ReloadCurrOpIncomeRegGround;
      DataConnection.ReloadCurrOpIncomeRegOwnerPers;
      DataConnection.ReloadCurrOpLocationRegAdr;
      DataConnection.ReloadCurrOpIncomeRegIdentDoc;
      DataConnection.ReloadCurrOpIncomeOwnerIdentDoc;
      Report.Variables.DeleteCategory('CUSTOM_PARAMS');
      CustomParamsCategory:=Report.Variables.Add;
      CustomParamsCategory.Name := ' CUSTOM_PARAMS';
      if DataConnection.CurrOpPrevResideAdrADODS.RecordCount>1 then
        ShowMessage('Более одной записи для параметра отчета '+
        DataConnection.CurrOpPrevResideAdrADODS.FieldByName('PARAM_NAME').AsString);

      if DataConnection.CurrOpPrevResideAdrADODS.RecordCount>=1 then
      begin
      Report.Variables.AddVariable('CUSTOM_PARAMS','PREV_RESIDE_ADR_FULL_NAME',
        QuotedStr(DataConnection.CurrOpPrevResideAdrADODS.
        FieldByName('ADR_FULL_NAME').AsString));
      Report.Variables.AddVariable('CUSTOM_PARAMS','PREV_RESIDE_ADR_FULL_PART1',
        QuotedStr(DataConnection.CurrOpPrevResideAdrADODS.
        FieldByName('ADR_FULL_PART1').AsString));
      Report.Variables.AddVariable('CUSTOM_PARAMS','PREV_RESIDE_ADR_FULL_PART2',
        QuotedStr(DataConnection.CurrOpPrevResideAdrADODS.
        FieldByName('ADR_FULL_PART2').AsString));
      end
      else
      begin
      Report.Variables.AddVariable('CUSTOM_PARAMS','PREV_RESIDE_ADR_FULL_NAME',
        QuotedStr(''));
      Report.Variables.AddVariable('CUSTOM_PARAMS','PREV_RESIDE_ADR_FULL_PART1',
        QuotedStr(''));
      Report.Variables.AddVariable('CUSTOM_PARAMS','PREV_RESIDE_ADR_FULL_PART2',
        QuotedStr(''));
      end;


      if DataConnection.CurrOpIncomeRegGroundADODS.RecordCount>=1 then
      begin
      //ShowMessage(DataConnection.CurrOpIncomeRegGroundADODS.
      //    FieldByName('DOC_FULL_NAME').AsString);
      Report.Variables.AddVariable('CUSTOM_PARAMS','INCOME_REG_DOC_FULL_NAME',
        QuotedStr(DataConnection.CurrOpIncomeRegGroundADODS.
          FieldByName('DOC_FULL_NAME').AsString));
      end
      else
      begin
      Report.Variables.AddVariable('CUSTOM_PARAMS','INCOME_REG_DOC_FULL_NAME',
        QuotedStr(''));
      end;

    end;
  end;
end;

procedure TReportGenDM.IncomeAdrPaperRepF2forF1PPreview(Sender: TObject);
begin

  {if MessageDlg('Печать для матричного принтера?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    if not IncomeAdrPaperRepF2forF1P.DotMatrixReport then
      IncomeAdrPaperRepF2forF1P.DotMatrixReport:=True;
  end
  else
  begin
    if IncomeAdrPaperRepF2forF1P.DotMatrixReport then
      IncomeAdrPaperRepF2forF1P.DotMatrixReport:=False;
  end;  }

  DataConnection.InsertReportPreviewAction(IncomeAdrPaperRepF2forF1PCode);
end;

procedure TReportGenDM.IncomeAdrPaperRepF2forF1PPrintReport(Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(IncomeAdrPaperRepF2forF1PCode);
end;

procedure TReportGenDM.IncomeStatAccountPaperRepF12PPreview(Sender: TObject);
begin

  {if MessageDlg('Печать для матричного принтера?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    if not IncomeStatAccountPaperRepF12P.DotMatrixReport then
      IncomeStatAccountPaperRepF12P.DotMatrixReport:=True;
  end
  else
  begin
    if IncomeStatAccountPaperRepF12P.DotMatrixReport then
      IncomeStatAccountPaperRepF12P.DotMatrixReport:=False;
  end; }

  DataConnection.InsertReportPreviewAction(IncomeStatAccountPaperRepF12PCode);
end;

procedure TReportGenDM.IncomeStatAccountPaperRepF12PPrintReport(
  Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(IncomeStatAccountPaperRepF12PCode);
end;

procedure TReportGenDM.LocationRegStatementfrxRepF1Preview(Sender: TObject);
begin
  DataConnection.InsertReportPreviewAction(LocationRegStatementReportCode);
end;

procedure TReportGenDM.LocationRegStatementfrxRepF1PrintReport(Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(LocationRegStatementReportCode);
end;

procedure TReportGenDM.moveSysParamsToReport(Report: TfrxReport);
var SystemDefaultCategory, CurrentParamsCategory: TfrxVariable;
    TmpfrxVar: TfrxVariable;
    currentBirthPlace: string;
begin
  //Report.Variables.Clear;
  Report.Variables.DeleteCategory('SYSTEM_DEFAULTS');
  SystemDefaultCategory:=Report.Variables.Add;
  SystemDefaultCategory.Name := ' SYSTEM_DEFAULTS';
  Report.Variables.AddVariable('SYSTEM_DEFAULTS','FMS_BRANCH_NAME_DEFAULT',
    QuotedStr(DataConnection.getConfParamByName('FMS_BRANCH_NAME_DEFAULT')));
  Report.Variables.AddVariable('SYSTEM_DEFAULTS','FMS_BRANCH_CODE_DEFAULT',
    QuotedStr(DataConnection.getConfParamByName('FMS_BRANCH_CODE_DEFAULT')));
  Report.Variables.AddVariable('SYSTEM_DEFAULTS','STATE_NAME_DEFAULT',
    QuotedStr(DataConnection.getConfParamByName('STATE_NAME_DEFAULT')));
  Report.Variables.AddVariable('SYSTEM_DEFAULTS','FMS_BRANCH_NAME_DEFAULT_STR2',
    QuotedStr(DataConnection.getConfParamByName('FMS_BRANCH_NAME_DEFAULT_STR2')));
  Report.Variables.AddVariable('SYSTEM_DEFAULTS','RDIR_FIO_DEFAULT',
    QuotedStr(DataConnection.getConfParamByName('RDIR_FIO_DEFAULT')));
  Report.Variables.AddVariable('SYSTEM_DEFAULTS','RDIR_FIO_DEFAULT_STR2',
    QuotedStr(DataConnection.getConfParamByName('RDIR_FIO_DEFAULT_STR2')));
  Report.Variables.AddVariable('SYSTEM_DEFAULTS','RRANK_DEFAULT',
    QuotedStr(DataConnection.getConfParamByName('RRANK_DEFAULT')));
  Report.Variables.AddVariable('SYSTEM_DEFAULTS','RRANK_DEFAULT_STR2',
    QuotedStr(DataConnection.getConfParamByName('RRANK_DEFAULT_STR2')));
  if DataConnection.PersonsADODS.RecordCount>0 then
  begin
    currentBirthPlace:=DataConnection.PersonsADODS.FieldByName('BIRTHPLACE').AsString;
    currentBirthPlace:=Trim(currentBirthPlace);
    currentBirthPlace:=StringReplace(currentBirthPlace, '    ',' ', [rfReplaceAll, rfIgnoreCase]);
  end
  else
    ShowMessage('Ошибка формирования параметров, отсутствует лицо!');
end;

procedure TReportGenDM.OutcomeAdrPaperRepF7forF1PPreview(Sender: TObject);
begin

  {if MessageDlg('Печать для матричного принтера?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    if not OutcomeAdrPaperRepF7forF1P.DotMatrixReport then
      OutcomeAdrPaperRepF7forF1P.DotMatrixReport:=True;
  end
  else
  begin
    if OutcomeAdrPaperRepF7forF1P.DotMatrixReport then
      OutcomeAdrPaperRepF7forF1P.DotMatrixReport:=False;
  end;  }

  DataConnection.InsertReportPreviewAction(OutcomeAdrPaperRepF7forF1PCode);
end;

procedure TReportGenDM.OutcomeAdrPaperRepF7forF1PPrintReport(Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(OutcomeAdrPaperRepF7forF1PCode);
end;

procedure TReportGenDM.OutcomeStatAccountPaperRepF12VPreview(Sender: TObject);
begin

  {if MessageDlg('Печать для матричного принтера?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    if not OutcomeStatAccountPaperRepF12V.DotMatrixReport then
      OutcomeStatAccountPaperRepF12V.DotMatrixReport:=True;
  end
  else
  begin
    if OutcomeStatAccountPaperRepF12V.DotMatrixReport then
      OutcomeStatAccountPaperRepF12V.DotMatrixReport:=False;
  end; }

  DataConnection.InsertReportPreviewAction(OutcomeStatAccountPaperRepF12VCode);
end;

procedure TReportGenDM.OutcomeStatAccountPaperRepF12VPrintReport(
  Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(OutcomeStatAccountPaperRepF12VCode);
end;

procedure TReportGenDM.PassportComeStatementfrxRepF1Preview(Sender: TObject);
begin
  DataConnection.InsertReportPreviewAction(PassportComeStatementReportF1PCode);
end;

procedure TReportGenDM.PassportComeStatementfrxRepF1PrintReport(
  Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(PassportComeStatementReportF1PCode);
end;

procedure TReportGenDM.RegistrationCardfrxRepF9Preview(Sender: TObject);
begin
  DataConnection.InsertReportPreviewAction(RegistrationCardRepF9VCode);
end;

procedure TReportGenDM.RegistrationCardfrxRepF9PrintReport(Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(RegistrationCardRepF9VCode);
end;

procedure TReportGenDM.ResideRegStatfrxRepF6Preview(Sender: TObject);
begin
  DataConnection.InsertReportPreviewAction(ResidingRegStatementReportCode);
end;

procedure TReportGenDM.ResideRegStatfrxRepF6PrintReport(Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(ResidingRegStatementReportCode);
end;

procedure TReportGenDM.ResidingRegStatWithTermfrxRepF6LoadTemplate(
  Report: TfrxReport; const TemplateName: string);
begin
  //ShowMessage('sss');
end;

procedure TReportGenDM.ResidingRegStatWithTermfrxRepF6Preview(Sender: TObject);
begin
  DataConnection.InsertReportPreviewAction(ResidingRegStatementWithTermReportCode);
end;

procedure TReportGenDM.ResidingRegStatWithTermfrxRepF6PrintReport(
  Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(ResidingRegStatementWithTermReportCode);
end;

procedure TReportGenDM.ResidingRegTermfrxRepF6Preview(Sender: TObject);
begin
  DataConnection.InsertReportPreviewAction(ResidingRegTermReportCode);
end;

procedure TReportGenDM.ResidingRegTermfrxRepF6PrintReport(Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(ResidingRegTermReportCode);
end;

procedure TReportGenDM.RFResidingRegDatafrxRepRFL1Preview(Sender: TObject);
begin
  DataConnection.InsertReportPreviewAction(RFResidingRegDataRFL1ReportCode);
end;

procedure TReportGenDM.RFResidingRegDatafrxRepRFL1PrintReport(Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(RFResidingRegDataRFL1ReportCode);
end;

procedure TReportGenDM.TempIdentityDocfrxRepF2PPreview(Sender: TObject);
begin
  DataConnection.InsertReportPreviewAction(TempIdentityDocRepF2PCode);
end;

procedure TReportGenDM.TempIdentityDocfrxRepF2PPrintReport(Sender: TObject);
begin
  DataConnection.InsertReportPrintAction(TempIdentityDocRepF2PCode);
end;

end.
