uses math,sysutils;
var num: integer;

function dectobin(num:integer):ansistring;
var i:integer;
s:ansistring;
begin
  s:='';
  while (num>1) do
  begin
    if ((num mod 2)=0) then
      i:=0
    else
      i:=1;
    num:=floor(num/2);
    appendstr(s,inttostr(i));
  end;
  appendstr(s,inttostr(num));
  for i:=length(s) downto 0 do
    appendstr(dectobin,s[i]);
end;

begin
write('Cislo: ');
readln(num);
writeln(dectobin(num));
readln;
end.