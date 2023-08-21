program _10;
var i : integer;
    n : integer;
    a: array of integer;
begin
RANDOMIZE;
write ('n=');
readln (n);
SetLength(a,n);
for i:=0 to n-1 do
begin
  a[i]:=random(10);
  writeln (a[i]);
end;
end.