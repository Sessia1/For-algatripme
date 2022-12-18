program podgotovka;
var a:integer;
b:integer;
begin
  write('Введите число ');
  read(a);
  b:=a div 10;
    if (a>=10) or (a<=-10) then 
      writeln('Десятков в числе: ', b)
    else
      if (0>a) or (a<=9) or (0<a) or (a>=-9) then
        write('В этом числе нету десятков');
end.