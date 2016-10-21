unit AdministrationUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TAdmPanelForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel15: TPanel;
    DBNavigator15: TDBNavigator;
    Splitter1: TSplitter;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    DBNavigator2: TDBNavigator;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdmPanelForm: TAdmPanelForm;

implementation

uses DBConnect;

{$R *.dfm}

procedure TAdmPanelForm.FormShow(Sender: TObject);
begin
  DataConnection.ReloadUsers;
  DataConnection.ReloadRoles;
  DataConnection.ReloadUserRoles;
  DataConnection.ReloadUserActions;
end;

end.
