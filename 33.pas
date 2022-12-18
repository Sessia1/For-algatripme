program podgotovka;

var
  a, b, c: array [0..9, 0..9] of integer;
  l, m, n: integer;

begin
  writeln('Задайте две прямоугольные матрицы A и B размерности l × m и m × n соответственно.');
  writeln('Введите l (от 1 до 10)');
  read(l);
  writeln('Введите m (от 1 до 10)');
  read(m);
  writeln('Введите n (от 1 до 10)');
  read(n);
  writeln('Введите прямоугольную матрицу A (', l, '×', m, ')');
  for var i := 0 to l - 1 do
    for var j := 0 to m - 1 do
    begin
      write('A (', i + 1, '×', j + 1, ') = ');
      read(a[i, j]);
    
    end;
  for var i := 0 to m - 1 do
    for var j := 0 to n - 1 do
    begin
      write('B (', i + 1, '×', j + 1, ') = ');
      read(b[i, j]);
    
    end;
  for var l1 := 0 to l - 1 do
    for var n1 := 0 to n - 1 do
      for var m1 := 0 to m - 1 do
        c[l1, n1]+=a[l1, m1]*b[m1, n1];
writeln('Матрица A:');
for var i := 0 to l - 1 do
    begin;
    for var j := 0 to m - 1 do
      write(a[i, j], '     ');
      writeln();     
end;
writeln('Матрица B:');
for var i:= 0 to m-1 do
  begin;
  for var j:=0 to n-1 do
    write(b[i, j], '     ');
    writeln();
    end;
writeln('Матрица C:');
for var i:= 0 to l-1 do
  begin;
  for var j:=0 to n-1 do
    write(c[i, j], '     ');
    writeln();
    end;
end.