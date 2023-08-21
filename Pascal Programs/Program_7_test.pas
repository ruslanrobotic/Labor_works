program _7_test;
var n, s, i : integer;
begin
  write ('введите n=');
  readln (n);
  s:=0;
  for i :=2 to n do
  begin
    if n mod i =0 then s:=s+1;
  end;
  if s>0 then writeln('число не является простым')
  else writeln('число является простым');
end.