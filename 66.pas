﻿uses crt;
const n=2;
var a:array[1..n,1..n] of integer; i,j,s:integer;
begin
randomize;
for i:=1 to n do
begin
for j:=1 to n do
begin
a[i,j]:=random(10);
write(a[i,j]:2);
end;
writeln;
end;
 
for i:=1 to n do
s:=s+a[i,i]+a[i,n-i+1];
writeln(s)
end.