program podgotovka;
var R, V:real;
begin
  write('Введите радиус шара ');
  read(R);
  V:=(1)*(1/3)*pi*power(R,3);
  write('Объем шара =', V);
end.