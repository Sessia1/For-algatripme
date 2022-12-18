//Найдите среднее геометрическое массива, образованного из минимальных элементов 
//параллельных побочной диагоналей заданной квадратной матрицы. 
const
m = 20;
var
   n, len, i, j, min, proz: integer;
   sred : real;
    z : array[1..m,1..m] of integer;
  begin
  writeln('Введите размер матрицы');
  readln(n);
    for i := 1 to n do
      begin
        for j := 1 to n do
         begin
           z[i,j] := random(30);
           write(z[i,j]:4);
         end;
      writeln;
      end;
      proz := 1;
  for len := 1 to 2*n-1 do
    begin
      if len <= n then          // Также если не нужна главная диогонал, то ставим строгий знак неравества
        begin
          min := z[len,1];
          for i := 1 to n do
            for j := 1 to len do
              if (j = len-i+1)and(z[i,j] < min) then
                 min := z[i,j];
        proz := proz * min;
        end
      else
        if len > n then
          begin
            min := z[len-n+1,n];
              for i := len-n+1 to n do
                for j := len-n+1 to n do
                  if (j = len-i+1) and (z[i,j] < min) then
                     min := z[i,j];
                  proz := proz * min;
          end;
          
    writeln('Минимальное число ', len,' = ',min); // Вывел, чтобы проверить
    
    end;
    sred := exp(ln(proz)*1/len);    // Сред. геом. = произведение всех чисел, в степени  1/(количество цифр). https://www.geeksforgeeks.org/geometric-mean-two-methods/
    writeln('Произведение ', proz);
    writeln('Среднее геометрическое ', sred:0:3);
  end.