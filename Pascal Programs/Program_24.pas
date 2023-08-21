program _24;
var mas : array [1..10,1..10] of integer;
    j, i, s, k, incr : integer;
    m : real;

procedure arifm (a, b : integer; var c : real);
begin
c:=a/b;
end;

procedure ari (o: integer; var p : integer);
begin
p:=o+p;
end;

procedure arif(var w: integer; r : integer);
begin
w:=r+w;
end;
      

begin
RANDOMIZE;
for i:=1 to 10 do
begin
  for j:=1 to 10 do
  begin
    mas[i,j]:=RANDOM(10);
    write (mas[i,j], ' ');
  end;
  writeln;
end;
incr:=1;
writeln;
for j:=1 to 10 do
begin
  s:=0;
  k:=0;
  for i:=1 to 10 do
  begin
    s:=mas[i,j]+s;
    k:=incr+k;
    {ari(mas[i,j], s);
    arif (k, incr);}
  end;
  arifm (s, k, m);
  write (m,' ');
end;
end.