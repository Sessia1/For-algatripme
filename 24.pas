// Найдите произведение цифр заданного числа.
var
  n, proz : integer;
  begin
    writeln('Введите число');
    readln(n);
    proz := 1;
    while n > 0 do
      begin
      proz := proz * (n mod 10);
      n := n div 10;
      end;
     writeln('Произведение = ', proz); 
  end.