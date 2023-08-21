program _4;
var s, n, p, zn : integer;
begin
write ('n=');
readln (n);
s:=0;
zn:=1;
p:=1;
for i: integer :=1 to n do
begin
  p:=sqr(i+1)*p;
  zn:=zn*i;
  s:=p div zn+s;
end;
write (s);
end.