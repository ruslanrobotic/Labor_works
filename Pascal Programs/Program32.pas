program _32;
var n, a, b, t : integer;
    mas_1 : array of integer;
    
procedure PasteSort( var A : array of integer );
var i, k, x : Integer;
begin
{ ��������� � ��� ��������������� ����� �������� �� 2 �� max }
for i := 1 to (Length(A)-1) do
begin
  k := i;
  x := A[i];
  { ����������� �� 1 ������� ������� ��������,
  ������� ������������ �������� (�� ������� � x) }
  { ������� k > 1 �����������, ��� �� �� ������ ��
  ������� �������, ���� ����������� �������,
  ������� ���� ���������� }
  while (k > 0) and (A[k - 1] > x) do
    begin
      A[k] := A[k - 1];
      k := k - 1;
    end;
  { ��������� ������� � ������ ������� }
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
  write ('������ �� �������');
end
else d:=0
end; 

begin
randomize;
write ('n=');
readln (n);
SetLength(mas_1, n);
for t:=0 to (n-1) do
begin
 mas_1[t]:=random(3);
 write (mas_1[t], ' ');
end;
writeln;
PasteSort(mas_1);
write('a=');
readln (a);
b:=0;
writeln (mas_1);
BinSearch(mas_1, a, b);
writeln (b+1);
end.

 
 
 




