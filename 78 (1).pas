var a,b,c:integer;
begin
  println('Введите 3 числа:');
  readln(a,b,c);
  if a>b then
   begin
    a:=a+b;
    b:=a-b;
    a:=a-b;
   end;
  if b>c then
   begin
    b:=b+c;
    c:=b-c;
    b:=b-c;
   end;
  if a>b then
   begin
    a:=a+b;
    b:=a-b;
    a:=a-b;
   end;
  print('Числа по возрастанию:',a,b,c);
end.