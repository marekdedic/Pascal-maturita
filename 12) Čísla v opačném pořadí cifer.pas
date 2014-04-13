uses math;

var num:integer;

function figures(num:integer):integer;
var rnum:real;
begin
  figures:=0;
  while num>0 do
  begin
    num:=floor(num/10);
    figures:=figures+1;
  end;
end;

function sf(num:integer):integer;
var i,i2,d,f:integer;
n:real;
begin
  n:=0;
  f:=figures(num);
  for i:=(f-1) downto 0 do
  begin
    d:=1;
    for i2:=i downto 1 do
      d:=d*10;
    n:=n+(1/d)*floor(num/d);
    num:=num-d*floor(num/d);
  end;
  d:=1;
  for i:=(f-1) downto 1 do
    d:=d*10;
  sf:=round(n*d);
end;

begin
write('Zadejte cislo: ');
readln(num);
writeln('Zadane cislo: ',num);
writeln('Prevracene cifry: ',sf(num));
readln;
end.