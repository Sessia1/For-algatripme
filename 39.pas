program podgotovka;
var a, b, a1, b1:integer;
begin
  write('Введите число ');
  read(a);
  a1:=1;
  write('Введите число ');
  read(b);
  b1:=1;
  for var i:=1 to b do
    a1*=a;
  for var i:=1 to a do
    b1*=b;
  if a1>b1 then
    writeln('a в степени b больше чем b в степени a');
  if a1<b1 then
    writeln('a в степени b меньше чем b в степени a');
  if a1=b1 then
    writeln('a в степени b равно b в степени a');
end.