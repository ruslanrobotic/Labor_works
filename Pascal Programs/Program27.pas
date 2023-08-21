program _200;
var mas : array [1..20] of integer;
i_max, max, i, b : integer;
begin
randomize;
for i:=1 to 20 do
begin
mas[i]:=random(3-(-2)+1)-2;
write (mas[i], ' ');
end;
max:=mas[1];
for i:=2 to 20 do
if mas[i]>max then
begin
max:=mas[i];
i_max:=max;
end;
writeln;
b:=0;
for i:=1 to 20 do
if mas[i]=max then
begin
b:=b+1;
write (i, ' ');
end;
write (b);
end.

