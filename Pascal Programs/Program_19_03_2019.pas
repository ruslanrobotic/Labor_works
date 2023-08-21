program _1;
var b, c, d, i, j, p,  N : integer;
    a : array [1..5] of integer;
begin
readln (N);
c:=0;
p:=0;
d:=0;
for i:=1 to 5 do
  readln (a[i]);
if N>=6 then
  for i:=6 to N do
  begin
    readln(b);
    inc(d);
    {if a[1] mod 113=0 then
      inc(c);}
    if b mod 113=0 then
      c:=c+d;
    if (b mod 113<>0) and (a[1] mod 113=0) then
      c:=c+p+1;
    if a[1] mod 113=0 then
      inc (p);
    if (b mod 113<>0) and (a[1] mod 113<>0) then
      c:=c+p;
    for j:=1 to 5 do
    begin
      if j<>5 then
        a[j]:=a[j+1];
      if i=5 then
        a[5]:=b;
    end;
  end;
writeln (c);
end.