program _10;
CONST 
  n = 5;
type
    mas = array[1..n] of integer;
var a : mas;
    i : integer;
begin
RANDOMIZE;
for i:=1 to n do
begin
  a[i]:=random(10);
  writeln (a[i]);
end;
end.