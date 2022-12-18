uses crt;
const nmax=20;
var a:array[1..nmax,1..nmax] of integer;
m,n,i,j,k,p:byte;
f:boolean;
begin
clrscr;
repeat
write('Количество строк до ',nmax,' n=');
readln(n);
until n in [1..nmax];
repeat
write('Количество столбцов до ',nmax,' m=');
readln(m);
until m in [1..nmax];
writeln('Введите построчно элеметы матрицы:');
for i:=1 to n do
for j:=1 to m do
begin
write('a[',i,',',j,']=');
readln(a[i,j]);
end;
clrscr;
writeln('Исходная матрица:');
for i:=1 to n do
begin
for j:=1 to m do
write(a[i,j]:4);
writeln;
end;
writeln;
f:=false;