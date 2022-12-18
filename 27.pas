//Найдите среднее арифметическое массива, образованного из максимальных элементов 
//параллельных основной диагоналей заданной квадратной матрицы. 
const
m = 20;
var
   n, len, i, j, max, sum: integer;
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
  for len := 1 to 2*n-1 do
    begin
      if len <= n then // Я не понял нужна ли сама главная диоганаль, но если нет, то нужно поставить строгий знак неравенства, то есть <
        begin
          max := z[n-len+1,1];
          for i := n-len+1 to n do
            for j := 1 to len do
              if (j = i-n+len) and (z[i,j] > max) then
                 max := z[i,j];
        sum := sum + max;
        end
      else
        if len > n then
          begin
            max := z[1,len-n+1];
              for i := 1 to 2*n-len do
                for j := len-n+1 to n do
                  if (j = i+len-n) and (z[i,j] > max) then
                     max := z[i,j];
                  sum := sum + max;
          end;
          
    writeln('Максимальное число ', len,' = ',max); // Вывел, чтобы проверить
    
    end;
    sred := sum/len;
    writeln('Сумма ', sum);
    writeln('Среднее арифметическое ', sred:0:3);
  end.