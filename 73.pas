var i,num,sum:integer;
begin
sum:=0;
readln(num);
for i:=1 to num-1 do
if num mod i = 0 then sum:=sum+i;
if num = sum then write('Совершенное') else write ('Не совершенное');
end.