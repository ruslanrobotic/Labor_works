program _16;
var a, b, c : integer;

procedure Sum(x, y: integer; var z: integer);
begin
z:=x+y;
end;

begin
write ('a=');
readln (a);
write ('b=');
readln (b);
Sum(a, b, c);
writeln (c);
end.