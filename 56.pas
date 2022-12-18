var b: boolean;
    s1, s2: string;
begin
  readln(s1);
  readln(s2);
  b:= (pos(s1, s2) > 0) or (pos(s2, s1) > 0);
  if b = True then
    writeln('подстрока содержит строку',' ', s2); 
  if b = False then
    writeln('подстрока не содержит строку',' ', s2); 
end.