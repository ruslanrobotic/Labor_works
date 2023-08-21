program _2341;
var x,a, b : longint;
begin
  readln (x);
  a:=0; b:=1;
  while x>0 do 
    begin
    if x mod 2>0 then
      a:=a + x mod 12
    else
      b:=b * (x mod 12);
    x:=x div 12;
    end;
  //a:=0 mod 2;
  //b:=b div 2;
  writeln (a);
  writeln (b);
end.