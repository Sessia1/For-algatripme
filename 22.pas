// Найдите первые N совершенных чисел.
var 
  s, d, f, N : integer;                     // Совершенное число - это число равное сумме своих делителей. П: 6 = 3+2+1; 28 = 2+4+7+14.
  begin  
    write('Введите N ');
    readln(N);
    for s := 2 to N do
       begin
         d := 1;
         f := 2;
         while sqr(f) < s do
           begin
             if s mod f = 0 then           
               d := d + f + s div f;
               inc(f);
           end;
         if s = d then
           writeln(s)
       end;
  end.