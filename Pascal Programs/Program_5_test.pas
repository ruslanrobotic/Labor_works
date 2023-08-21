program _5_test;
var n, p, zn : integer;
           S : real;
begin
write ('n=');
readln (n);
s:=0;
for i: integer :=1 to n do
begin  
  zn:=1;
  p:=1;
  for j: integer :=1 to 2*i do
  begin
    p:=3*i*p;
    zn:=j*zn;
  end;
  S:=cos(p)/3/i/zn + S;
end;
writeln (s);
writeln (cos(3*3)/3/2);
writeln (cos(6*6*6*6)/3/2/2/3/4+cos(3*3)/3/2);
end.