program _33;
var mas, mas2 : array [,] of integer;
masstr : array of integer;
k, n, m, l, a, s, index : integer;

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

procedure BinSearch(var A : array of integer; p : integer; var d : integer);
var l, m, c : integer;
begin
l:=0;
m:=length(A)-1;
if (A[0]<>p) then 
begin
while ((m-l)<>1) do
  begin
    c:=l+((m-l) div 2);
    if A[c]<p then
    l:=c
    else m:=c;
  end;
  if A[l+1]=p then
  d:=l+1
  else
  writeln ('ничего не найдено');
end
else d:=0;
writeln (d+1);
end;
 
begin
randomize;
write ('n=');
readln (n);
write ('m=');
readln (m);
write ('s=');
readln (s);
SetLength(mas,n,m);
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
write(masstr);
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
writeln;
BinSearch(masstr, s, index);
writeln;
end.