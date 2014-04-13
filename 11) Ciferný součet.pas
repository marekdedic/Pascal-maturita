Uses math;
var num:longint;

function digits(num:longint):longint;
begin
  digits:=0;
  while round(num/10)>0 do
  begin
    num:=round(num/10);
    digits:=digits+1;
  end;
end;

function soucet_cifer(num:longint):longint;
var digs,sum,i,e:longint;
begin
  digs:=digits(num);
  soucet_cifer:=0;
  e:=1;
  for i:=0 to (digs-1) do
    e:=e*10;
  for i:=digs downto 0 do
  begin
    soucet_cifer:=soucet_cifer+floor(num/e);
    num:=num-(floor(num/e)*e);
    e:=round(e/10);
  end;
end;

begin
write('Cislo: ');
readln(num);
writeln('Ciferny soucet je ',soucet_cifer(num),'.');
readln;
end.