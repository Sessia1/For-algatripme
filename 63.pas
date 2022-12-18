Var i,j,n,m,imax:byte;
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
      imax:=1;
      For i:=2 to n do 
       if A[i,j]>A[imax,j] then imax:=i;
      writeln('Max в ',j,'-ом столбце = ',A[imax,j]:0:2);
      s:=s+A[imax,j];
    End;
    writeln('Сумма = ',s:0:2);
    readln;
End.