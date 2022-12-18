//  Найдите первые N простых чисел. 
var
  n, s, d, f, c: integer;                         // Простое число - это число, которое делиться только на 1 и на себя. П: 2,3,5,7,11,13,17
  begin
    writeln('Введите n');
    readln(n);
    d := 1;
    c := 0;
      while c < n do
        begin
        f := 0;
          for s := 1 to d do 
            begin
              if d mod s = 0 then
                inc(f)
            end;
      if f = 2 then 
        begin
          write(d, ' ');
          inc(c)
        end;
    inc(d)
        end
  end.