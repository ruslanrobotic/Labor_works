program _31;
var n, k : longint;
    mas_1 : array of longint;
    
function Sum (A : array of longint; m:longint) : longint;
begin
if m=-1 then Sum:=0
else Sum:=A[m]+Sum(A,m-1);
end;  

begin
write ('n=');
readln (n);
SetLength(mas_1,n);
randomize;
for k:=0 to (n-1) do
begin
    mas_1[k]:=random(1000);
    write (mas_1[k], ' ');
end;
writeln;
writeln(Sum(mas_1,n-1));
end.