program _25;
var mas : array of integer;
k, n : integer;

procedure BubbleSort(var A : array of integer);
var i, j, x, max : integer;
begin
max:=Length(A);
for i := max downto 2 do
  for j := 1 to i-1 do
  if A[j]<A[j-1] then
  begin
    x:= A[j];
    A[j]:=A[j-1];
    A[j-1]:=x;
  end;
end;

begin
write ('razmernost massiva n=');
readln (n);
RANDOMIZE;
SetLength(mas,n);
randomize;
for k:=0 to n-1 do
begin
  mas[k]:=random(100);
  write (mas[k], ' ');
end;
BubbleSort(mas);
writeln();
for k:=0 to n-1 do
  write (mas[k], ' ');
end.