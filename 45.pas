program podgotovka;
var a:string;
b:integer;
begin
  b:=0;
  writeln('Введите строку ');
  read(a);
  if Length(a)<3 then
    writeln('Строка слишком коротка ')
  else
  begin
  for var i:=1 to Length(a)-2 do
    if (a[i]=a[i+1]) and (a[i+1]=a[i+2]) then
    begin
      writeln('В строке есть подстрока из трех одинаковых букв (', a[i], ', ', i, '-', i+2, ')' );
      b+=1;
    end;
    writeln('Количество подстрок из трех одинаковых букв: ', b);
end;
end.