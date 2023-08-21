program _17;
var a, b, c : integer;

function Sum(x, y: integer):integer;
begin
//Sum:=x+y;
Result:=x+y;
end;

begin
write ('a=');
readln (a);
write ('b=');
readln (b);
writeln (Sum(a, b));
end.