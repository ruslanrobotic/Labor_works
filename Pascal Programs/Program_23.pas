program _23;
var mas : array [1..20] of integer;
i_max, max, i, b, k : integer;

begin
randomize;
for i:=1 to 20 do
begin
  mas[i]:=random(17-(-16)+1)-16;
  write (mas[i], ' ');
end;
writeln;
max:=mas[1];
for i:=2 to 20 do
  if mas[i]>max then
  begin
    max:=mas[i];
    i_max:=i;
  end;
write (max);
writeln;
b:=0;
for i:=1 to 20 do
  if mas[i]=max then
  begin
    b:=b+1;
    write (i, ' ');
  end;
writeln;
write (b);
k:=mas[1];
mas[1]:=mas[i_max];
mas[i_max]:=k;
writeln;
for i:=1 to 20 do
write (mas[i], ' ');
end.

