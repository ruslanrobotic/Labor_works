program _9;
var i : byte;
    n : integer;
begin
RANDOMIZE;
{
write ('n=');
readln (n);
}
var a : array [1..10] of integer;
for i:=1 to 10 do
begin
  a[i]:=random(10);
  writeln (a[i]);
end;
end.