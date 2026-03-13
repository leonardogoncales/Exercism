unit uGigasecond;

interface

uses
  SysUtils, DateUtils;

type
  TGigasecond = class
    class function Add(arg: string): string;
  end;


implementation
  class function TGigasecond.Add(arg: string): string;
  var
    i: Integer;
    d, t: TDateTime;
    settings: TFormatSettings;
  begin
    settings := TFormatSettings.Create;
    settings.DateSeparator := '-';
    settings.ShortDateFormat := 'yyyy-mm-dd';

    try
      i := Pos('T', arg);

      if i > 0 then
        begin
          d := StrToDate(Copy(arg, 1, i - 1));
          t := StrToTime(Copy(arg, i + 1, Length(arg) - 1));
          d := d + t;
        end
      else
      begin
        d := StrToDate(arg);

        Result := DateTimeToStr(DateUtils.IncSecond(d, 1000000000));
      end;
    except on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
    end;
  end;
end.
