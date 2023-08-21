Program _1;
Var a, b, n, c : integer;
Begin
write ('n=');
readln (n);
write ('b=');
readln (b);
for c:=n to b do
begin
  for a:=c to b do
  begin
    write (a);
  end;
  writeln ();
end;
End.