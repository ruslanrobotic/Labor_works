program _15;
var n : array of integer;
    a, b, i, c : integer;
begin
write ('a=');
readln (a);
write ('b=');
readln (b);
c:=0;
SetLength (n, (b-a));
for i:=a to b do
  begin
    if i mod 2=0 then
    begin
      n[c]:=i;
      c:=c+1;
    end;
  end;
  write (n);
end.