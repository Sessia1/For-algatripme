program podgotovka;
type 
  StringSet = set of string;
var a, b:string;
maks, tekush:integer;
podstr: StringSet:=[];
begin
  maks:=0;
  tekush:=0;
  writeln('Введите строку ');
  read(a);
  for var i:=1 to Length(a)-2 do
    podstr+=[a[i]+a[i+1]+a[i+2]];
  foreach var s in podstr do
    begin
    for var i:=1 to Length(a)-2 do
      if s=a[i]+a[i+1]+a[i+2] then
        tekush+=1;
    if tekush>maks then
      begin
      b:=s;
      maks:=tekush;
      end;
      tekush:=0;
      end;
      writeln('Самая часто встречающаяся подстрока: ', b);
end.