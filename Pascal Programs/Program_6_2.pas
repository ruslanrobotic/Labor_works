program _6_2;
var a, b : integer;
begin
write ('a=');
readln (a);
write ('b=');
readln (b);
for i:integer:=a to b do
begin
  writeln ('делители числа', i,':');
  for j:integer:=2 to i-1 do
  if i mod j=0 then
  writeln (j);
end;
end.

