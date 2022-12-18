var s: string;
i: integer;
t: boolean;
begin
  print('Введите строку:');
  readln(s);
  i := 1;
  t := true;
  while(i <= length(s) div 2) and t do
    if s[i] <> s[length(s) + 1 - i] then 
      t := false
    else i := i + 1;
  if t then
    print('Палиндром') 
  else print('Не палиндром');
end.