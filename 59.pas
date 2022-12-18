var i, a, cnt: integer;
begin
  readln(a);
  cnt:= 0;
  for i:= 1 to a do
    if a mod i = 0 then
    begin
      cnt:= cnt + 1;
    end;
writeln(cnt);
end.