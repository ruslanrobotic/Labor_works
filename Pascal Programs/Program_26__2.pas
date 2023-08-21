  { Ðוךףנסטגםאÿ ןנמצוהףנא בûסענמי סמנעטנמגךט }
  procedure RecoursiveQuick( var A : mas; l, r : Integer );
    var
      m : Integer;
    begin
      if l < r then
        begin
          { Â ךאקוסעגו דנאםטקםמדמ ‎כולוםעא גûבטנאועסÿ סנוהםטי
            ‎כולוםע לאססטגא }
          m := Partition(A, l, r, A[(l + r) div 2]);
          RecoursiveQuick(A, l, m);
          RecoursiveQuick(A, m + 1, r);
        end;
    end;
 
  { Áûסענאÿ סמנעטנמגךא }
  procedure QuickSort( var A : mas );
    begin
      RecoursiveQuick(A, 1, max);
      
      
      
      
      
{ Ïנמצוהףנא נאחבטוםטÿ לאססטגא הכÿ בûסענמי סמנעטנמגךט }
  function Partition( var A : mas; l, r : Integer; x : Longint ) : Integer;
  { Ïונוסעאגכÿול ‎כולוםעû לאססטגא עאך, קעמבû סכוגא מע ‎כולוםעא,
    נאגםמדמ x, בûכט עמכüךמ ‎כולוםעû לוםüרטו טכט נאגםûו x,
    א סןנאגא - ‎כולוםעû, במכüרטו טכט נאגםûו x }
    var
      i, j : Integer;
      t : Longint;
    begin
      i := l - 1;
      j := r + 1;
      repeat
 
        { Ïמךא ‎כולוםעû סןנאגא במכüרו סנוהםודמ }
        repeat
          j := j - 1;
        until x >= A[j];
 
        { Ïמךא ‎כולוםעû סכוגא לוםüרו סנוהםודמ }
        repeat
          i := i + 1;
        until A[i] >= x;
 
        { Ìוםÿול כוגûי ט ןנאגûי ‎כולוםעû ט ןנמהמכזאול האכüרו }
        if i < j then
          begin
            t := A[i];
            A[i] := A[j];
            A[j] := t;
          end;
        { Èםאקו - כוגûי ט ןנאגûי גסענועטכטסü -
          נאחבטוםטו לאססטגא חאגונרוםמ }
 
      until i >= j;
      Partition := j;
    end;
