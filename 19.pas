var  
  s1, s2, s, f : string;
  i, j, max, d: integer;
  begin
    readln(s1);
    readln(s2);
    if length(s1) > length(s2) then
      max := length(s1)
    else
      max := length(s2);
    for i := length(s1) + 1 to max do
      s1 := s1 + ' ';
    for i := length(s2) + 1 to max do
      s2 := s2 + ' ';
      d := 0;
    for i := 1 to max do
      for j := i to max do
        if (pos (copy (s1, i, j - i + 1), s2) > 0) and (j - i + 1 >= d) then
          begin
            d := j - i + 1;
             f := copy(s1, i, j - i + 1);
             if (d > length(s)) then
               s := f
            else
              if f < s then
                 s := f
          end;
  write(s);
  end.