var
f,f1:text;
s:string;
b:boolean;
i,k,l,d:integer;
begin
assign(f,'111.txt');
reset(f);
assign(f1,'222.txt');
rewrite(f1);
while not eof(f) do //пока не конец файла
      begin
      readln(f,s);//читаем строки
      b:=true;//считаем что палиндром
      d:=length(s); //длина строки
      l:=d div 2;//середина строки
           for i:=1 to l do //смотрим символы первой половины
               if s[i]<>s[d+1-i] then b:=false;//если не совпадают с символом
                                               //симметричным от конца, меняем флаг
               if b=true then//если все совпадают
               begin
                    writeln (s,' palindrom'); //выводим да на экран
                    writeln(f1,s,' palindrom'); //и в файл
               end
               else //если нет, выводим нет
               begin
                    writeln(f1,s,' ne palindrom');
                    writeln(s,' ne palindrom');
               end;
      end;
close(f);
close(f1);
writeln;
readln;
end.