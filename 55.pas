const n = 3;
var i, c, d, b: integer;
    f:boolean;
begin
  f:= True;
    readln(c, d, b);
  for i:= 1 to n do
  if (c = d) and (c = b) and (d = c) and (d = b) and (b = c) and (b = d) then
  continue
  else
  begin
    f:= False;
    break;
  end;
  if f = True then
    write('Числа монотонны');
  if f = False then
    write('Числа не монотонны');
 
end.