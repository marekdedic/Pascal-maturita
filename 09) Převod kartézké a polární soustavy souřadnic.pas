var x,y,w: real;
r,f:real;

procedure kar_to_pol(x,y:real;var r,f:real);
begin
  r:=sqrt(x*x+y*y);
  f:=(arctan(y/x)*(180.0 / Pi));
end;

procedure pol_to_kar(r,f:real;var x,y:real);
begin
  x:=r*cos(f/180*Pi);
  y:=r*sin(f/180*Pi);
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
    writeln('r=',r:3:4);
    writeln('fi=',f:3:4);
    w:=3;
  end
  else if (w=2) then
  begin
    write('r=');
    readln(r);
    write('fi=');
    readln(f);
    pol_to_kar(r,f,x,y);
    writeln('x=',x:3:4);
    writeln('y=',y:3:4);
    w:=3;
  end;
end;
end.
