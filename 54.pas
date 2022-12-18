const n = 8;
var mas: array [1..n] of integer;
    i: integer;
    b:boolean;
begin
  for i:= 1 to n do
    readln(mas[i]);
  b:= True;
  for i:= 2 to n - 1 do
    if (mas[i - 1] < mas[i]) and (mas[i] < mas[i + 1]) then
      continue
    else 
      if (mas[i - 1] > mas[i]) and (mas[i] > mas[i + 1]) then 
        continue
     else
     begin
       b:= False;
       break;
     end;
  if b = True then
    write('Массив упорядочен'); 
  if b = False then
    write('Массив не упорядочен');
end.