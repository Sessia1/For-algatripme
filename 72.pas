var n,x:integer;
begin
  readln(x);
  n:=2;
  while(x mod n<>0) do
  begin
    n+=1
  end;
  if (x = n) then
    print('Простое число')
  else print('Не простое число')
end.