Program Tabl_umnozheniya_1;
Var i, j, REZ: integer;
Begin
For i:=1 to 10 do
  Begin
  For j:=1 to 10 do
  Begin
    Rez:=i*j;
    writeln(i,'*',j,'=',REZ);
    {delay(1000);}
    Sleep(1000);
    End;
  End;
End.
