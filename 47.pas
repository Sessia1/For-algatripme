const s=100;
var

a:array[1..s] of integer;
i,n,m:integer;
begin
n:=20;
m:=1;
begin
for i:=1 to n do
a[i]:=random(120)-52;
writeln('elementi mas: ');
for i:= 1 to n do
write(a[i],' ');
if a[i]<0 then
writeln('Присутствует отрицательное число');
end;
end.