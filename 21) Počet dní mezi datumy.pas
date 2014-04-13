var day1,day2,month1,month2,year1,year2:integer;

function dbm(m1,m2:integer):integer;
var i,i2:integer;
begin
  dbm:=0;
  if (m1>m2) then
  begin
    i:=m2;
    i2:=m1;
  end
  else
  begin
    i:=m1;
    i2:=m2;
  end;
  if (i<>i2) then
  begin
    for i:=i to (i2-1) do
    begin
      if (i=2) then
        dbm:=dbm+28
      else if ((i mod 2)=0) then
        dbm:=dbm+30
      else
        dbm:=dbm+31;
    end;
  end;
end;

function dbd(d1,d2,m1,m2,y1,y2:integer):integer;
begin
  dbd:=0;
  dbd:=abs(y1-y2)*365;
  dbd:=dbd+abs(d1-d2);
  dbd:=dbd+dbm(m1,m2);
end;

begin
writeln('Prvni datum');
write('Den: ');
readln(day1);
write('Mesic: ');
readln(month1);
write('Rok: ');
readln(year1);
writeln('Druhe datum');
write('Den: ');
readln(day2);
write('Mesic: ');
readln(month2);
write('Rok: ');
readln(year2);
writeln('Dnu mezi daty: ',dbd(day1,day2,month1,month2,year1,year2));
readln;
end.