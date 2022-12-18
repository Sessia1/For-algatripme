var
sdd,smm,syy:integer;
edd,emm,eyy:integer;
day:integer;
i:integer;
begin
writeln('Начальная дата: ');
write('День: ');readln(sdd);
write('Месяц: ');readln(smm);
write('Год: ');readln(syy);
writeln('----------------');
writeln('Конечная дата: ');
write('День: ');readln(edd);
write('Месяц: ');readln(emm);
write('Год: ');readln(eyy);
writeln('----------------');
sdd:=sdd+(syy*365);
smm:=smm-1;
edd:=edd+(eyy*365);
emm:=emm-1;
for i:=1 to smm do
begin
case (i)of
1,3,5,7,8,10,12:sdd:=sdd+31;
2:sdd:=sdd+28;
4,6,9,11:sdd:=sdd+30;
end;
end;
for i:=1 to emm do
begin
case (i)of
1,3,5,7,8,10,12:edd:=edd+31;
2:edd:=edd+28;
4,6,9,11:edd:=edd+30;
end;
end;
writeln('Прошло дней: ',(edd-sdd));

end.
50.
s = '1232'

for i in range(len(s)):
t = s[:i] + s[::-1]
if t == t[::-1]:
print(i, t)
break