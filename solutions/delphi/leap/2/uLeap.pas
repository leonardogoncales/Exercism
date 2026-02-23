unit uLeap;

interface
type
  TYear = class
  public
    class function IsLeap(AYear: Integer): Boolean; static;
  end;

implementation
class function TYear.IsLeap(AYear: Integer): Boolean;
begin
  if AYear mod 400 = 0 then
    Result := True
  else if AYear mod 100 = 0 then
    Result := False
  else if AYear mod 4 = 0 then
    Result := True
  else
    Result := False;
end;
end.
