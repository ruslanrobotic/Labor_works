Program _2;
Var a, b, n, c : integer;
Begin
write ('b=');
readln (b);
write ('n=');
readln (n);

{проверка кратности 2-м}
repeat
begin
if b mod 2<>0 then 
  begin
    write('введите b кратное 2');
    Readln(b);
  end;
end;
until b mod 2=0;

{цикл вывода на экран}
c := b;
repeat
begin
  for a:=c downto n do
  begin
    write (a,' ');
  end;
  writeln();
  c:=c div 2;
end;
until c = 0;
End.