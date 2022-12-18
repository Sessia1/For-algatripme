//Найдите определитель матрицы 4×4.
const
n=4;
type
 z = array [1..n,1..n] of integer;
var s, d : z;
    i, j, k : integer;
procedure p1(m : z; n : integer);
var
  i, j : integer;
  begin
  for i := 1 to n do
    begin
    for j := 1 to n do
      write(m[i,j]:4);
      writeln;
    end;
  end;
procedure p2(s:z; var d:z; m, i, j : integer);
var
  ki, kj, di, dj : integer;
  begin
  di := 0;
  for ki := 1 to m-1 do
    begin
    if (ki = i) then di := 1;
    dj := 0;
    for kj := 1 to m-1 do
      begin
      if (kj = j) then dj := 1;
      d[ki,kj] := s[ki + di, kj + dj];
      end;
    end;
  end;
function f(s : z; n : integer) : integer;
var
   i, j, b, k : integer;
    d : z;
  begin
  b:=0; k:=1;

  if (n = 1)
    then
      b := s[1,1]
  else
    if (n = 2)
    then
      b := s[1,1]*s[2,2]-s[2,1]*s[1,2]
  else 
    for i := 1 to n do
      begin
        p2(s,d,n,i,1);
        b := b + k * s[i,1] * f(d,n-1);
        k := -k;
      end;
  f := b;
  end;
begin
for i := 1 to n do
  for j := 1 to n do
    s[i,j] := random(10);
    p1(s,n);
    k := f(s,n);
writeln('Определитель ',k);
end.