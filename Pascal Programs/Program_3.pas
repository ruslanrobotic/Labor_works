program _3;
var s, n, p : integer;
begin
write ('n=');
readln (n);
s:=0;
p:=1;
for i: integer :=2 to n do
begin
  p:=p*i;
  s:=s+p;
end;
write (s);
end.