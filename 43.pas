type
  arr = array[1..12] of integer;
 
const
  t: arr = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
 
var
  d, m, y: integer;
  c: arr;
 
begin
  for m := 1 to 12 do c[m] := t[m];
  write('Введите число ');
  readln(d);
  write('Введите месяц ');
  readln(m);
  write('Введите год ');
  readln(y);
  if (y mod 4 = 0) and (y mod 100 <> 0) or (y mod 400 = 0) then c[2] := 29;
  inc(d, 2);
  if d > c[m] then
    begin
      dec(d, c[m]);
      inc(m)
    end;
  if m > 12 then
    begin
      m := 1;
      inc(y)
    end;
  write(d, ' число ', m, ' месяц ', y ,' год')
end.