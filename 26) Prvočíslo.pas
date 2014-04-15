var i:integer;

function is_primenum(num:integer):boolean;
var i:integer;
begin
  is_primenum:=true;
  if (num<2) then
  begin
    is_primenum:=false;
    exit;
  end
  else if (num=2) then
    exit;
  for i:=2 to (round(sqrt(num-1))) do
  begin
    if ((num mod i)=0) then
    begin
      is_primenum:=false;
      exit;
    end;
  end;
end;

begin
writeln('Prvnich 100 prvocisel');
for i:=1 to 100 do
begin
  if (is_primenum(i)) then
    writeln(i);
end;
readln;
end.
