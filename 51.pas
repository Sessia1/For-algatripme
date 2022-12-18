var year: integer; 
begin 
  writeln('Введите год');
  read(year);
  if (year mod 4 = 0) and (year mod 100 <> 0) or (year mod 100 = 0) or (year mod 400 = 0) then 
    writeln('год високосный')
  else
    writeln('год не високосный');
end.