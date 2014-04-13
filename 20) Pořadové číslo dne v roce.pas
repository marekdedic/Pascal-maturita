var d,m,y:integer;

function day_in_month(d,m,y:integer):integer;
var i:integer;
begin
  day_in_month:=0;
  for i:=1 to (m-1) do
  begin
    if (i=2) AND ((y mod 4)=0) then
      day_in_month:=day_in_month+29
    else if (i=2) then
      day_in_month:=day_in_month+28
    else if ((i mod 2)=0) then
      day_in_month:=day_in_month+30
    else
      day_in_month:=day_in_month+31;
  end;
end;

function day_in_year(d,m,y:integer):integer;
begin
  day_in_year:=0;
  day_in_year:=day_in_year+day_in_month(d,m,y);
  day_in_year:=day_in_year+d;
end;

begin
write('Den: ');
readln(d);
write('Mesic: ');
readln(m);
write('Rok: ');
readln(y);
writeln;
writeln('Vase datum ',d,'.',m,'.',y,' je ',day_in_year(d,m,y),'-ty den v roce.');
readln;
end.