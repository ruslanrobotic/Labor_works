program _34;
var mas : array [,] of real;
k, n, m, l, a, s, index : integer;
x, y : real;


begin
randomize;
write ('n=');
readln (n);
write ('x=');
readln (x);
write ('y=');
readln (y);
SetLength(mas,n*3,2);
for k:=0 to (n-1) do
begin
  for l:=0 to (m-1) do
  begin
    mas[k,l]:=random(-10,10)*random;
    write (mas[k,l],' ');
  end;
  writeln;
end;
writeln;

for l:=0 to (Length(mas,1)-1) do
begin
  if ((l+1) mod 3=0)  then
  lstr:=l-2
  else lstr:=l+1;  
  mas[l,2]:=sqrt(sqr(mas[lstr,0]-mas[l,0])+
 
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