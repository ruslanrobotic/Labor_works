program _26;
var mas, mas2 : array [,] of integer;
k, n, m, l : integer;

procedure BubbleSort(var A : array [,] of integer);
var i, j, x, str, stl, t : integer;
begin
str:=Length(A,0);
stl:=Length(A,1);
for t:=0 to str-1 do
begin
for i := stl downto 2 do
  for j :=1 to i-1 do
  if A[t,j]<A[t,j-1] then
  begin
    x:= A[t,j];
    A[t,j]:=A[t,j-1];
    A[t,j-1]:=x;
  end;
end;
end;

procedure BubbleSort_1(var A : array [,] of integer);
var i, j, x, str, stl, t : integer;
begin
str:=Length(A,0);
stl:=Length(A,1);
stl:=Length(A);
for t:=0 to stl-1 do
begin
for i :=str downto 2 do
  for j :=1 to i-1 do
  if A[j,t]<A[j-1,t] then
  begin
    x:= A[j,t];
    A[j,t]:=A[j-1,t];
    A[j-1,t]:=x;
  end;
end;
end;

begin
randomize;
write ('n=');
readln (n);
write ('m=');
readln (m);
SetLength(mas,n,m);
SetLength(mas2,n,m);
for k:=0 to (n-1) do
begin
  for l:=0 to (m-1) do
  begin
    mas[k,l]:=random(10);
    mas2[k,l]:=mas[k,l];
    write (mas[k,l],' ');
  end;
writeln;
end;
{mas2 := mas;}
BubbleSort(mas);
writeln();
for k:=0 to (n-1) do
begin
  for l:=0 to (m-1) do
  write (mas[k,l],' ');
  writeln;
end;
writeln();
BubbleSort_1(mas2);
for k:=0 to (n-1) do
begin
  for l:=0 to (m-1) do
  write (mas2[k,l],' ');
  writeln;
end;
end.