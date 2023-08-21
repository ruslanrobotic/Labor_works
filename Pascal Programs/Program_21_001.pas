program _15;
var a, b, c : array of integer;
    n, i: integer;
    
procedure Summ(k, l : integer; var s : integer);
begin
s:=k+l;
end;

function sort_mas (x : array of integer) : array of integer;
var min, k, l, m : integer
begin
for l:=0 to Length(x) do
begin
  WRITE (x[l]);
  min:=l;
  
  for m:=l+1 to Length(x) do
  x[l] x[m]
end;
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
writeln (sort_mas (a));
writeln (sort_mas (b));
writeln (sort_mas (c));
end.