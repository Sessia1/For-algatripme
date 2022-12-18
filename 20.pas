// Найдите наименьшее общее кратное двух заданных чисел.
var
  n1, n2, s, d, f: integer;
  a : real;
  begin
    writeln('Введите 2 числа');
    readln(n1, n2);
    for s := 2 to 1000 do
      if (n1 mod s = 0 ) and ( n2 mod s = 0 ) then
        d := s;
     f := n1 * n2;         // Тут используеться теория нахождения НОК и НОД
     a := f/d;
     writeln(a);


  end.