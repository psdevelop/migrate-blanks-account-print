unit EnterStringFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TEnterStringForm = class(TForm)
    StringEdit: TEdit;
    procedure StringEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EnterStringFormModal(FormCaption: string; EditText: string=''): string;
  end;

var
  EnterStringForm: TEnterStringForm;

implementation

{$R *.dfm}

function TEnterStringForm.EnterStringFormModal(FormCaption: string; EditText: string=''): string;
var res: string;
begin
  Self.Caption:=FormCaption;
  StringEdit.Text:=EditText;
  Self.ShowModal;
  Result:=StringEdit.Text;
end;

procedure TEnterStringForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=13) then
  begin
    Close;
  end
end;

procedure TEnterStringForm.FormShow(Sender: TObject);
begin
  StringEdit.SetFocus;
end;

procedure TEnterStringForm.StringEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Integer(Key)=13) then
  begin
    Close;
  end
end;

end.
