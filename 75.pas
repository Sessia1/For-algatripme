var a, b: string;
i: integer;
begin
    readln(a);
    b := '';
    i:=length(a);
    while(i>=1) do
      begin
        b := b + a[i];
    i:=i-1;
    end;
    writeln(b); 
end. 