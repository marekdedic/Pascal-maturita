var x,y,w: integer;
r,f:real;

procedure kar_to_pol(x,y:integer;var r,f:real);
begin
  r:=sqrt(x*x+y*y);
  f:=arctan(y/x);
end;

procedure pol_to_kar(r,f:real;var x,y:integer);
begin
  x:=round(r*cos(f));
  y:=round(r*sin(f));
end;

begin
w:=3;
while (w<>0) do
begin
  while (w<0) OR (w>2) do
  begin
    write('Kartezkou na polarni (1) nebo polarni na kartezkou (2) nebo ukoncit (0): ');
    readln(w);
  end;
  if (w=1) then
  begin
    write('x=');
    readln(x);
    write('y=');
    readln(y);
    kar_to_pol(x,y,r,f);
    writeln('r=',r);
    writeln('fi=',f);
    w:=3;
  end
  else if (w=2) then
  begin
    write('r=');
    readln(r);
    write('fi=');
    readln(f);
    pol_to_kar(r,f,x,y);
    writeln('x=',x);
    writeln('y=',y);
    w:=3;
  end;
end;
end.