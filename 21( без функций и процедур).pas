//Найдите определитель матрицы 4×4.
var
  a11, a12, a13, a14, a21, a22, a23, a24, a31, a32, a33, a34, a41, a42, a43, a44, x: real;
begin
  writeln(' Введите матрицу');
  write('a11=');
  read(a11);
  write('a12=');
  read(a12);
  write('a13=');
  read(a13);
  write('a14=');
  read(a14);
  write('a21=');
  read(a21);
  write('a22=');
  read(a22);
  write('a23=');
  read(a23);
  write('a24=');
  read(a24);
  write('a31=');
  read(a31);
  write('a32=');
  read(a32);
  write('a33=');
  read(a33);
  write('a34=');
  read(a34);
  write('a41=');
  read(a41);
  write('a42=');
  read(a42);
  write('a43=');
  read(a43);
  write('a44=');
  read(a44);
  x := ((a11 * ((a22 * a33 * a44) + (a23 * a34 * a42) + (a32 * a43 * a24) -
    (a42 * a33 * a24) - (a43 * a34 * a22) - (a23 * a32 * a44))) -
    (a12 * ((a21 * a33 * a44) + (a23 * a34 * a41) + (a31 * a43 * a24) -
    (a41 * a33 * a24) - (a43 * a34 * a21) - (a31 * a23 * a44))) +
    (a13 * ((a21 * a32 * a44) + (a22 * a34 * a41) + (a31 * a42 * a24) -
    (a41 * a32 * a24) - (a42 * a34 * a21) - (a31 * a22 * a44))) -
    (a14 * ((a21 * a32 * a43) + (a22 * a33 * a41) + (a31 * a42 * a23) -
    (a41 * a32 * a23) - (a42 * a33 * a21) - (a31 * a22 * a43)))); 
  writeln('Определитель', x:8:6);
  readln;
 
end.