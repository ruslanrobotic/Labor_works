program _29;
var m, n, k, l, a : longint;
    mas_1, mas_2, mas_3 : array [,] of longint;
    masstr_1, masstr_2 : array of longint;

procedure PasteSort( var A : array of longint );
var i, k, x : longint;
begin
for i := 1 to (Length(A)-1) do
begin
  k := i;
  x := A[i];
  while (k > 0) and (A[k - 1] > x) do
    begin
      A[k] := A[k - 1];
      k := k - 1;
    end;
  A[k] := x;
  end;
end;

procedure BubbleSort(var A : array  of longint);
var i, j, x, stl : longint;
begin
stl:=Length(A,0);
for i := stl-1 downto 1 do
  for j :=1 to i do
  if A[j]<A[j-1] then
  begin
    x:= A[j];
    A[j]:=A[j-1];
    A[j-1]:=x;
  end;
end;


begin
write ('n=');
readln (n);
write ('m=');
readln (m);
SetLength(mas_1,n,m);
SetLength(mas_2,n,m);
SetLength(mas_3,n,m);
SetLength(masstr_1,Length(mas_1));
SetLength(masstr_2,Length(mas_1));
randomize;
a:=0;
for k:=0 to (n-1) do
begin
  for l:=0 to (m-1) do
  begin
    mas_1[k,l]:=random(1000);
    write (mas_1[k,l], ' ');
    masstr_1[a]:=mas_1[k,l];
    masstr_2[a]:=mas_1[k,l];
    a:=a+1;
  end;
  writeln;
end;
writeln();
writeln ('сортировка пузырьком');
BubbleSort(masstr_1);
write ('массив отсортирован');
writeln();
writeln ('сортировка вставками');
PasteSort(masstr_2);
write ('массив отсортирован');
writeln();
a:=0;
for k:=0 to (n-1) do
begin
  for l:=0 to (m-1) do
  begin
    mas_2[k,l]:=masstr_1[a];
    write (mas_2[k,l],' ');
    a:=a+1;
  end;
writeln;
end;
writeln;
a:=0;
for k:=0 to (n-1) do
begin
  for l:=0 to (m-1) do
  begin
    mas_3[k,l]:=masstr_2[a];
    write (mas_3[k,l],' ');
    a:=a+1;
  end;
writeln;
end;
end.