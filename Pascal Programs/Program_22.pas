program _22;
var mas : array [1..10] of real;
max, min, k : real;
max_i, min_i, i : integer;
begin
randomize;
for i:=1 to 10 do
begin
  mas[i]:=random;
  write (mas[i], ' ');
end;
max:=mas[1];
min:=mas[1];
max_i:=1;
min_i:=1;
for i:=2 to 10 do
begin
  if mas[i]<=min then
  begin
    min:=mas[i];
    min_i:=i;
  end;
  if mas[i]>=max then
  begin
    max:=mas[i];
    max_i:=i;
  end;
end;
k:=mas[max_i];
mas[max_i]:=mas[min_i];
mas[min_i]:=k;
for i:=1 to 10 do
  write (mas[i], ' ');
end.
  
  
  
  
  
  
  
  