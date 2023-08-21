program _15;
var a, b, c : array of integer;
    n, i: integer;
    
procedure Summ(k, l : integer; var s : integer);
begin
s:=k+l;
end;

begin
write ('n=');
readln (n);
RANDOMIZE;
SetLength(a,n);
SetLength(b,n);
SetLength(c,n);
for i:=0 to (n-1) do
  begin
  a[i]:=random(10);
  b[i]:=random(10);
  Summ(a[i], b[i], c[i]);
  end;
writeln (a);
writeln (b);
writeln (c);
end.

