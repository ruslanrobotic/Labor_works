program _32;
var n, a, b, t : integer;
    mas_1 : array of integer;
    
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
l:=1;
m:=length (A)+1;
while m-l<>1 do
  begin
    c:=l+((m-l) div 2);
    if A[c]<=p then
    l:=c
    else m:=c;
  end;
  if A[l-1]=p then
  d:=l-1
  else
  write ('ничего не найдено');
end; 

begin
randomize;
write ('n=');
readln (n);
SetLength(mas_1, n);
for t:=0 to (n-1) do
begin
 mas_1[t]:=random(10);
 write (mas_1[t], ' ');
end;
writeln;
PasteSort(mas_1);
b:=0;
writeln (mas_1);
write('a=');
readln (a);
BinSearch(mas_1, a, b);
writeln (b);
writeln (mas_1[b]);
writeln (mas_1[b-1]);
writeln (mas_1[b-2]);
writeln (mas_1[b+1]);
writeln (mas_1[b+2]);
end.

 
 
 




