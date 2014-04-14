var num,exp:integer;

function expf(num,exp:integer):real;
var i:integer;
begin
  if (exp=0) then
    expf:=1
  else
  begin
    expf:=num;
    for i:=abs(exp) downto 2 do
      expf:=expf*num;
  end;
  if (exp<0) then
    expf:=(1/expf);
end;

begin
write('Cislo: ');
readln(num);
write('Mocnina: ');
readln(exp);
writeln('Vysledek ',num,'^',exp,' je ',expf(num,exp):0:5,'.');
readln;
end.