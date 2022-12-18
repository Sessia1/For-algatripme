var a, b, c, d, x1, x2: real; 
begin
  readln(a, b, c);
  d:= sqr(b) - 4*a*c;
  writeln('дискреминант',' ', d);
  if d < 0 then
    begin
    writeln('корней нет');
  exit;
  end;
  if d > 0 then
    begin
   d:= sqrt(d);
   x1:= (-b + d)/2*a;
    x2:= (-b - d)/2*a;
    writeln(x1,' ', x2);
    end;
  if d = 0 then
    begin
    x1:= (-b)/2*a;
  writeln(x1);
  end;
end.