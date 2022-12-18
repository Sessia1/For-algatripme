//Найдите такие индексы i и j, что произведение соответствующих элементов массива 
//минимально. Не используйте вложенные циклы. 
const
    n = 15; 
var
    z : array[1..n] of integer;
    s, i, j, f : integer;
begin
    for s := 1 to n do
      begin
        z[s] := random(100);
        write(z[s], ' ');        
      end;
    writeln;
    if z[1] < z[2] then
      begin
        i := 1;         // i - первое минимальное число 
        j := 2;         // j - второе минимальное число
      end
    else
      begin
        i := 2;         
        j := 1;
      end;    
    for s := 1 to n do
      if z[s] < z[i] then
        begin
          f := i;       // f - проверка
          i := s;       // 1 индекс элемента массива
          if z[f] < z[j] then
            j := f;
        end
      else
          if z[s] < z[j] then
            j := s;     // 2 индекс элемента массива
    writeln('Индексы этих элементов ', i,' ', j);
end.