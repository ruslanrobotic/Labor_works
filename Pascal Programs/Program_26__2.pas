� { ����������� ��������� ������� ���������� }
� procedure RecoursiveQuick( var A : mas; l, r : Integer );
� � var
� � � m : Integer;
� � begin
� � � if l < r then
� � � � begin
� � � � � { � �������� ���������� �������� ���������� �������
� � � � � � ������� ������� }
� � � � � m := Partition(A, l, r, A[(l + r) div 2]);
� � � � � RecoursiveQuick(A, l, m);
� � � � � RecoursiveQuick(A, m + 1, r);
� � � � end;
� � end;
�
� { ������� ���������� }
� procedure QuickSort( var A : mas );
� � begin
� � � RecoursiveQuick(A, 1, max);
� � � 
� � � 
� � � 
� � � 
� � � 
{ ��������� ��������� ������� ��� ������� ���������� }
� function Partition( var A : mas; l, r : Integer; x : Longint ) : Integer;
� { ������������ �������� ������� ���, ����� ����� �� ��������,
� � ������� x, ���� ������ �������� ������� ��� ������ x,
� � � ������ - ��������, ������� ��� ������ x }
� � var
� � � i, j : Integer;
� � � t : Longint;
� � begin
� � � i := l - 1;
� � � j := r + 1;
� � � repeat
�
� � � � { ���� �������� ������ ������ �������� }
� � � � repeat
� � � � � j := j - 1;
� � � � until x >= A[j];
�
� � � � { ���� �������� ����� ������ �������� }
� � � � repeat
� � � � � i := i + 1;
� � � � until A[i] >= x;
�
� � � � { ������ ����� � ������ �������� � ���������� ������ }
� � � � if i < j then
� � � � � begin
� � � � � � t := A[i];
� � � � � � A[i] := A[j];
� � � � � � A[j] := t;
� � � � � end;
� � � � { ����� - ����� � ������ ����������� -
� � � � � ��������� ������� ��������� }
�
� � � until i >= j;
� � � Partition := j;
� � end;
