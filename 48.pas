﻿var x1, y1, x2, y2, x3, y3, x4, y4: integer;
begin
  writeln('Координаты левого верхнего угла первого прямоугольника');
  read(x1, y1);
  writeln('Координаты правого нижнего угла первого прямоугольника');
  read(x2, y2);
   writeln('Координаты левого верхнего угла второго прямоугольника');
  read(x3, y3);
  writeln('Координаты правого нижнего угла второго прямоугольника');
  read(x4, y4);
  if (x3 >= x1) and (x4 <= x2) and (y3 <= y1) and (y4 >= y2) then
    writeln('Второй прямоугольник внутри первого');
end.