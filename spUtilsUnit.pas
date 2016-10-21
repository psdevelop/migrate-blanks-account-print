{ **** UBPFD *********** by delphibase.endimus.com ****
>> Разбивка строки на отдельные слова

function StringToWords(const DelimitedText: string; ResultList: TStrings;
Delimiters: TDelimiter = []): boolean - разбивает отдельную строку на
состовляющие ее слова и результат помещает в TStringList

function StringsToWords(const DelimitedStrings: TStrings; ResultList: TStrings;
Delimiters: TDelimiter = []): boolean - разбивает любое количество строк на
состовляющие их слова и все помещяет в один TStringList

Delimiters - список символов являющихся разделителями слов,
например такие как пробел, !, ? и т.д.

Зависимости: Classes
Автор:       Separator, separator@mail.kz, Алматы
Copyright:   Separator
Дата:        13 ноября 2002 г.
***************************************************** }

unit spUtilsUnit;

interface

uses Classes;

type
  TDelimiter = set of #0..'я' ;

const
  StandartDelimiters: TDelimiter = [' ', '!', '@', '(', ')', '-', '|', '\', ';',
    ':', '"', '/', '?', '.', '>', ',', '<'];

  //Преобразование в набор слов
function StringToWords(const DelimitedText: string; ResultList: TStrings;
  Delimiters: TDelimiter = []; ListClear: boolean = true): boolean;

function StringsToWords(const DelimitedStrings: TStrings; ResultList: TStrings;
  Delimiters: TDelimiter = []; ListClear: boolean = true): boolean;

implementation

function StringToWords(const DelimitedText: string; ResultList: TStrings;
  Delimiters: TDelimiter = []; ListClear: boolean = true): boolean;
var
  i, Len, Prev: word;
  TempList: TStringList;

begin
  Result := false;
  if (ResultList <> nil) and (DelimitedText <> '') then
  try
    TempList := TStringList.Create;
    if Delimiters = [] then
      Delimiters := StandartDelimiters;
    Len := 1;
    Prev := 0;
    for i := 1 to Length(DelimitedText) do
    begin
      if Prev <> 0 then
      begin
        if DelimitedText[i] in Delimiters then
        begin
          if Len = 0 then
            Prev := i + 1
          else
          begin
            TempList.Add(copy(DelimitedText, Prev, Len));
            Len := 0;
            Prev := i + 1
          end
        end
        else
          Inc(Len)
      end
      else if not (DelimitedText[i] in Delimiters) then
        Prev := i
    end;
    if Len > 0 then
      TempList.Add(copy(DelimitedText, Prev, Len));
    if TempList.Count > 0 then
    begin
      if ListClear then
        ResultList.Assign(TempList)
      else
        ResultList.AddStrings(TempList);
      Result := true
    end;
  finally
    TempList.Free
  end
end;

function StringsToWords(const DelimitedStrings: TStrings; ResultList: TStrings;
  Delimiters: TDelimiter = []; ListClear: boolean = true): boolean;
begin
  if Delimiters = [] then
    Delimiters := StandartDelimiters + [#13, #10]
  else
    Delimiters := Delimiters + [#13, #10];
  Result := StringToWords(DelimitedStrings.Text, ResultList, Delimiters,
    ListClear)
end;

end.



