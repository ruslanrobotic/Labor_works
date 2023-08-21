program _28;
var mas, mas2 : array [,] of integer;
masstr : array of integer;
k, n, m, l, a : integer;

{procedure BubbleSort(var A : array [,] of integer);
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

procedure BubbleSort_2(var A : array [,] of integer);
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
end;}

{ Сортировка вставками }
procedure PasteSort( var A : array of integer );
var i, k, x : Integer;
begin
{ Вставляем в уже отсортированную часть элементы со 2 по max }
for i := 1 to (Length(A)-1) do
begin
  k := i;
  x := A[i];
  { Передвигаем на 1 позицию направо элементы,
  большие вставляемого элемента (он записан в x) }
  { Условие k > 1 гарантирует, что мы не выйдем за
  границу массива, если вставляется элемент,
  меньший всех предыдущих }
  while (k > 0) and (A[k - 1] > x) do
    begin
      A[k] := A[k - 1];
      k := k - 1;
    end;
  { Вставляем элемент в нужную позицию }
  A[k] := x;
  end;
end;

begin
randomize;
write ('n=');
readln (n);
write ('m=');
readln (m);
SetLength(mas,n,m);
{SetLength(masstr,n,m);
Length(mas,0);}
SetLength(masstr,Length(mas));
SetLength(mas2,n,m);
a:=0;
for k:=0 to (n-1) do
begin
  for l:=0 to (m-1) do
  begin
    mas[k,l]:=random(10);
    write (mas[k,l],' ');
    masstr[a]:=mas[k,l];
    a:=a+1;
  end;
writeln;
end;
writeln;
for l:=0 to (Length(masstr)-1) do
  write (masstr[l],' ');
writeln;

PasteSort(masstr);
writeln;
a:=0;
for k:=0 to (n-1) do
begin
  for l:=0 to (m-1) do
  begin
    mas2[k,l]:=masstr[a];
    write (mas2[k,l],' ');
    a:=a+1;
  end;
writeln;
end;

{mas2 := mas;
mas3:=mas;
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
BubbleSort_2(mas3);
for k:=0 to (n-1) do
begin
  for l:=0 to (m-1) do
  write (mas2[k,l],' ');
  writeln;
end;}
end.