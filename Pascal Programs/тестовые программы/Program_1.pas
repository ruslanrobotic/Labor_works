Program Tabl_umnozheniya_2;
Var i, j, REZ: integer;
Begin
For i:=1 to 10 do
  Begin
  For j:=1 to 10 do
  Begin
    Rez:=i*j;
    write(i:2,'*',j:2,'=',i*j:3);
    {delay(1000);}
    Sleep(1000);
    End;
  writeln;
  End;
End.
