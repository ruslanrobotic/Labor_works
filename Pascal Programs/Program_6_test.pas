program _6_test;
var n, b : integer;
begin
write ('n=');
readln (n);
if n<=1 then
  write('n<=1');
writeln (1);
for i: integer :=2 to sqrt(n) do
begin  
  if n mod i=0 then
    writeln (i);
end;
end.