program  _30;

procedure rever (n: integer);
begin
  write (n mod 10);
  if (n div 10) <> 0 then
  rever (n div 10);
  end;
 
begin
rever (15234);
end.