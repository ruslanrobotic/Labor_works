program _8;
var n, i, a, b, k, c : integer;
begin
write ('a=');
readln (a);
write ('b=');
readln (b);
for i:=a to b do
begin
  c:=0;
  for n:=2 to (i-1) do
  if (i mod n)=0 then
  c:=c+1;   
  if c=0 then
  writeln (i);
end;
end.

  