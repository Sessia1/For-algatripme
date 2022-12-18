uses crt;
const n=5;
var a: array[1..n,1..n] of integer;
      i,j: byte; sum: longint;
begin
 randomize;
 clrscr;
 writeln('исходный массив: ');
 for i:=1 to n do
  begin
   for j:=1 to n do
    begin
     a[i,j]:=random(19)-9;
     write(a[i,j]:3);
    end;
   writeln;
  end;
 for i:=1 to n-1 do
  for j:=i+1 to n do
   sum:=sum+a[i,j];
 writeln('сумма элементов, расположенных выше главной диагонали = ',sum);
end.