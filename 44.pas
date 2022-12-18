var 
  a,b,c:integer;
  begin
    write('длины сторон - ');
    readln(a,b,c);
    
    if (a < b+c) and (b < a+c) and (c < a+b) then
      writeln (' треугольник существует' )
    else 
      writeln (' треугольник не существует' );
  end.