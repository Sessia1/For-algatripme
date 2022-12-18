//Найдите наибольший общий делитель двух заданных чисел.
var
  n1, n2, s, d: integer;
  begin
    writeln('Введите 2 числа');
    readln(n1,n2);
    for s := 2 to 1000 do
      if (n1 mod s = 0 ) and ( n2 mod s = 0 ) then
        d := s;
      writeln(d);
  end.