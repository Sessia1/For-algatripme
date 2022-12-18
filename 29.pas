//  Найдите сумму цифр заданного числа. 
var
  sum, n : integer;
  begin
    writeln('Введите число');
    readln(n);
    while n > 0 do
    begin
      sum := sum + (n mod 10);
      n := n div 10;
    end;
    writeln('Сумма цифр = ', sum);
    
  end.
  