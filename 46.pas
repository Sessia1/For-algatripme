var n: integer;
begin
readln(n);
n := abs(n);
if (n <> 0) and (n and (n - 1) = 0) then writeln('Да') else writeln('Нет')
end.