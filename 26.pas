// Найдите следующее четное число за заданным. 
var
  s, n : integer;
  begin
    writeln('Введите число');
    readln(n);
    if n mod 2 = 0 then
      n := n + 2
    else
      n := n + 1;
    writeln(n);
    
  end.