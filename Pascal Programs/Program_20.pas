program _15;
var a, b, c : array [,] of integer;
    n, m, i, j : integer;
    
procedure Summ(k, l : integer; var s : integer);
begin
s:=k+l;
end;

begin
write ('n=');
readln (n);
write ('m=');
readln (m);
RANDOMIZE;
SetLength(a,n,m);
SetLength(b,n,m);
SetLength(c,n,m);
for i:=0 to (n-1) do
  for j:=0 to (m-1) do
  begin
    a[i,j]:=random(10);
    b[i,j]:=random(10);
    Summ(a[i,j], b[i,j], c[i,j]);
  end;
for i:=0 to (n-1) do
begin
  for j:=0 to (m-1) do
    write (a[i,j],' ');
  writeln;
end;
writeln;
for i:=0 to (n-1) do
begin
  for j:=0 to (m-1) do
    write (b[i,j],' ');
  writeln;
end;
writeln;
for i:=0 to (n-1) do
begin
  for j:=0 to (m-1) do
    write (c[i,j],' ');
  writeln;
end;
writeln(High(a));
writeln(High(b));
writeln(High(c));
writeln(Length(c));
end.

