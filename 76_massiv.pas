const n=10;
var i,j,sum,number,k:integer;
a:array[1..n] of integer;
b:array[1..n] of integer;
begin
  print('Введите элеметы массива:');
  for i:=1 to n do
  begin
    read(a[i])
  end;
  println();
  print('Элементы массива:');
  for i:=1 to n do
  begin
    print(a[i])
  end;
  
  for i:=1 to n do
  begin
    sum:=0;
    number:=i;
    for j:=1 to number+1 do
      begin
      sum:=sum+a[number] mod 10;
    a[number]:=a[number] div 10;
    for var r:=1 to number do
    begin
      b[number]:=sum;
    end;
  end;
  end;
  println;
  for i:=1 to n-1 do begin
    for j:=1 to n-i do begin
      if b[j]>b[j+1] then begin
      k:=b[j];
      b[j]:=b[j+1];
      b[j+1]:=k;
    end;
  end;
  end;
  print('Элементы массива по возрастанию:');
  for var r:=1 to n do
  begin
    print(b[r])
  end;
end.