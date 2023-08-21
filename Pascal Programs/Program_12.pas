program _12;
var N, i, a, b, k, c : integer;
begin
write ('N=');
readln (N);
for i:=1 to (N-1) do
begin
  c:=0;
  for a:=1 to (i-1) do
    if (i mod a)=0 then
    c:=c+a;
  if c=i then
  writeln (i);
end;
end.
