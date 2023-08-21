program _36;
var n, a, i, count : integer;
mas : array[1..9] of integer;

function schet(var m : integer) : integer;
begin
if m<37 then
  schet:=(m-1) div 4+1
else
  schet:=(8-(m-37) div 2)+1;
end;

begin
count:=0;
write('введите количество свободных мест ');
readln(n);
for i:=1 to n do
begin
  writeln('введите номер места ', i);
  readln(a);
  mas[schet(a)]:=mas[schet(a)]+1;
end;
for i:=1 to 9 do
  if mas[i]=6 then
    count:=count+1;
writeln(count);
end.
