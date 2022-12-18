const n = 10;
var i,j,diff:integer;
replay:boolean;
a:array[1..n] of integer;
begin
  print('Введите элементы массива:');
  for i:=1 to n do
  begin
    read(a[i])
  end;
  for i := 1 to 10 do
  begin
    replay := False;
    for j := 1 to 10 do
    begin
      if (i <> j) and (a[ i] = a[ j]) then
      begin
        replay := True;
        Break;
      end;
    end;
    if (replay=false) then diff+=1
    end;
  print('Количество различных чисел:',diff)
end.