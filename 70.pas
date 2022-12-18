uses
CRT;
Var
   z,b,s : string;
function CntRecurrences(substr, str: string): integer;
var
  cnt,n: byte;
begin
  cnt := 0;
  While pos(substr,str) > 0  do
        Begin
             Inc(cnt);
             n := pos(substr,str);
             Delete(str,n,Length(substr)-1);
        end;
  CntRecurrences := cnt;
end;
BEGIN
     ClrScr;
     Writeln('Введите строку...');
     readln(s);
     Writeln('Введите искомую подстроку...');
     readln(b);
     Writeln(CntRecurrences(b,s));
END.