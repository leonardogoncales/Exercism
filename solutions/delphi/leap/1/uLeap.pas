unit uLeap;

interface

function IsLeapYear(Year: Integer): Boolean;

implementation

function IsLeapYear(Year: Integer): Boolean;
begin
  if (Year mod 400 = 0) then
    Result := True
  else if (Year mod 100 = 0) then
    Result := False
  else if (Year mod 4 = 0) then
    Result := True
  else
    Result := False;
end;
end.
