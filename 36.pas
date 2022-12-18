program podgotovka;
var S, b, h:real;
begin
  write('Введите высоту ');
  read(h);
  write('Введите основание треугольника ');
  read(b);
  S:=1/2*(b*h);
  write('Площадь треугольника =', S);
end.