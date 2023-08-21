program _35;

var
  s: string;
  x: integer;

function palindrom(s: string): boolean;
var
  i: integer;
begin
  for i := 1 to (length(s) div 2) do
    if s[i] = s[length(s) - i + 1] then
      palindrom := true
    else palindrom := false;
end;

function prost(x: integer): boolean;
var
  i, l: integer;
begin
  l := 0;
  if (x <> 1) and (x <> 2) then
    for i := 2 to (x - 1) do
    begin
      if x mod i = 0 then
        {prost := true;}
        l := l + 1;
      if (l = 0) then
        prost := true
      else prost := false;
    end
  else if x = 2 then
    prost := true
  else prost := false;
end;

begin
  write('введите строку ');
  readln(s);
  {palindrom(s);}
  writeln(palindrom(s));
  write('введите число ');
  readln(x);
  write(prost(x));
end.