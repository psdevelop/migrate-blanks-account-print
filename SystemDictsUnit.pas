unit SystemDictsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TSystemDictsForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    Panel8: TPanel;
    DBNavigator8: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SystemDictsForm: TSystemDictsForm;

implementation

uses DBConnect;

{$R *.dfm}

end.
