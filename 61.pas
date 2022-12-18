const k=10;
var i,n,m: integer;
a: array[1..k] of integer;
begin
n:=0;
m:=0;
for i:=1 to k do
a[i]:=random(21);
for i:=1 to k do
write(a[i],' ');
writeln();
for i:=1 to k do
begin
if ((a[i] mod 2 =0) and (a[i]<>0)) then n:=n+1;
if (a[i] mod 2 <> 0) then m:=m+1;
end;
writeln('Четных : ',n,' Нечетных : ',m);
end.