var a, b, c: integer;
begin
  print('Введите набор чисел');
  readln(a, b, c);
  a := (a div 10) * (a mod 10);
  b := (b div 10) * (b mod 10);
  c := (c div 10) * (c mod 10);
  if a < b then
  begin
    a := a + b;
    b := a - b;
    a := a - b;
  end;
  if b < c then
  begin
    b := b + c;
    c := b - c;
    b := b - c;
  end;
  if a < b then
  begin
    a := a + b;
    b := a - b;
    a := a - b;
  end;
  print('Набор чисел по убыванию:', a, b, c)
end.