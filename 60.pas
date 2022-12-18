var mass: array [1..8, 1..8] of integer;
    mas: array [1..8] of integer;
    cnt, i, j, s, k: integer;
begin
  for i:= 1 to 8 do
    for j:= 1 to 8 do
      mass[i, j]:= random(15)-10;
   for i:= 1 to 8 do begin
     for j:= 1 to 8 do
       write(mass[i, j]:4);
     writeln();
   end;
   for i:= 1 to 8 do begin
     mas[i]:= 0;
   end;
   for i:= 1 to 8 do begin
     for j:= 1 to 8 do
      if mass[i, j] = 0 then 
        mas[i]:= 1;
      end;
     writeln(mas); 
    for i:= 1 to 8 do begin
      cnt:= cnt + mas[i];
    end;
    writeln(cnt);
end.