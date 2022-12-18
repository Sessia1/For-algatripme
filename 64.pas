Var i,j,n,m,imin:byte;
    A:array[1..20,1..20] of real;
    s:real;
Begin
    write('Введите кол-во строк: ');readln(n);
    write('Введите кол-во столбцов: ');readln(m);
    For i:=1 to n do
    Begin
      For j:=1 to m do
      Begin
        A[i,j]:=random*10;
        write(A[i,j]:5:2);
      End;
      writeln;
    End;
    For j:=1 to m do
    Begin
      imin:=1;
      For i:=2 to n do 
       if A[i,j]<A[imin,j] then imin:=i;
      writeln('Min в ',j,'-ом столбце = ',A[imin,j]:0:2);
      s:=s+A[imin,j];
    End;
    writeln('Сумма = ',s:0:2);
    readln;
End.