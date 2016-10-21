unit AdrSelInsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    AddNewAdresTabSheet: TTabSheet;
    SelectExistAdresTabSheet: TTabSheet;
    AddNewDocTabSheet: TTabSheet;
    SelectExistDocTabSheet: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
