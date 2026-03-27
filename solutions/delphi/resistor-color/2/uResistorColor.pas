unit uResistorColor;

interface

type
	TResistor = class
    class function Colors: TArray<string>;
    class function ColorCode(const cor: string): Integer;
	end;

implementation
  uses
	SysUtils,
  Winapi.Windows;

const
  COLOR_NAMES: array[0..9] of string = (
    'black', 'brown', 'red', 'orange', 'yellow',
    'green', 'blue', 'violet', 'grey', 'white'
  );


class function TResistor.Colors: TArray<string>;
var
  I: Integer;
begin
  SetLength(Result, Length(COLOR_NAMES));
  for I := Low(COLOR_NAMES) to High(COLOR_NAMES) do
    Result[I] := COLOR_NAMES[I];
end;

class function TResistor.ColorCode(const cor: string): Integer;
var
  I: Integer;
begin
  for I := Low(COLOR_NAMES) to High(COLOR_NAMES) do
    if SameText(COLOR_NAMES[I], cor) then
      Exit(I);

  Result := -1;
  end;
end.