var x2,x,n: integer;

procedure kvakor(x2,x,n:integer);
var d:integer;
i1,i2:real;
begin
  d:=(x*x)-(4*x2*n);
  if (d<0) then
    writeln('Kvadraticka rovnice nema reseni!')
  else
  begin
    if (d=0) then
    begin
      i1:=(-x+sqrt(d))/2*x2;
      writeln('Resenim je: x1=',i1:0:5);
    end
    else
    begin
      i1:=(-x+sqrt(d))/(2*x2);
      i2:=(-x-sqrt(d))/(2*x2);
      writeln('Resenim jsou x1=',i1:0:5,' a x2=',i2:0:5);
    end;
  end;
end;

begin
writeln('Kvadraticka rovnice:');
write('x^2: ');
readln(x2);
write('x: ');
readln(x);
write('cislo: ');
readln(n);
kvakor(x2,x,n);
readln;
end.