program podgotovka;
var a:array[0..999] of integer;
var K, S, kolelem, sumel:integer;
begin
  write('Введите количество чисел в наборе ');
  read(kolelem);
  sumel:=0;
  K:=-1;
  for var i:=0 to kolelem-1 do
    readln(a[i]);
  write('Введите S ');
  read(S);
  while (sumel<S) and (K<kolelem) do
  begin
    K+=1;
    sumel+=a[K];
    end;
    if sumel<S then
      K:=-1;
    if K<>-1 then writeln('K=', K+1)
    else
      writeln('K не существует');
end.