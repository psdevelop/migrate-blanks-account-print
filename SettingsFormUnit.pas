unit SettingsFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, Menus,
  ComCtrls;

type
  TSYSSettingsForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBNavigator2: TDBNavigator;
    DBEdit1: TDBEdit;
    DBNavigator3: TDBNavigator;
    DBEdit3: TDBEdit;
    DBNavigator5: TDBNavigator;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBNavigator6: TDBNavigator;
    DBNavigator7: TDBNavigator;
    DBNavigator4: TDBNavigator;
    DBNavigator8: TDBNavigator;
    DBText8: TDBText;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBNavigator9: TDBNavigator;
    DBText9: TDBText;
    DBLookupComboBox5: TDBLookupComboBox;
    DBNavigator10: TDBNavigator;
    DBText10: TDBText;
    DBLookupComboBox6: TDBLookupComboBox;
    DBNavigator11: TDBNavigator;
    DBText11: TDBText;
    DBLookupComboBox7: TDBLookupComboBox;
    DBText12: TDBText;
    DBNavigator12: TDBNavigator;
    DBLookupComboBox8: TDBLookupComboBox;
    DBText13: TDBText;
    DBNavigator13: TDBNavigator;
    DBNavigator14: TDBNavigator;
    DBText14: TDBText;
    DBLookupComboBox9: TDBLookupComboBox;
    DBNavigator15: TDBNavigator;
    DBLookupComboBox10: TDBLookupComboBox;
    DBText15: TDBText;
    DBNavigator16: TDBNavigator;
    DBLookupComboBox11: TDBLookupComboBox;
    DBText16: TDBText;
    DBLookupComboBox12: TDBLookupComboBox;
    DBNavigator17: TDBNavigator;
    DBText17: TDBText;
    DBLookupComboBox13: TDBLookupComboBox;
    DBNavigator18: TDBNavigator;
    DBText18: TDBText;
    DBLookupComboBox14: TDBLookupComboBox;
    DBNavigator19: TDBNavigator;
    DBText19: TDBText;
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SYSSettingsForm: TSYSSettingsForm;

implementation

uses DBConnect;

{$R *.dfm}

procedure TSYSSettingsForm.N2Click(Sender: TObject);
begin
  DataConnection.GenLangCASES;
end;

end.
