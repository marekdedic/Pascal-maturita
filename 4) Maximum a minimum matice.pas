type mat=Array of Array of integer;
var n,m:integer;
  arr:mat;
  
procedure generate;
var i,i2:integer;
begin
  randomize;
  for i:=0 to (m-1) do
  begin
    for i2:=0 to (n-1) do
      arr[i][i2]:=random(49)+11;
  end;
end;

procedure print_r(arr:mat);
var i,i2:integer;
begin
  for i:=0 to (m-1) do
  begin
    for i2:=0 to (n-1) do
      write(arr[i][i2],' ');
    writeln;
  end;
end;

function get(arr:mat;w:string):integer;
var i,i2:integer;
begin
  for i:=0 to (m-1) do
  begin
    for i2:=0 to (n-1) do
    begin
      if (get>arr[i][i2]) AND (w='max') then
        get:=arr[i][i2]
      else if (get<arr[i][i2]) AND (w='min') then
        get:=arr[i][i2];
    end;
  end;
end; 

begin
write('Pocet radku: ');
readln(m);
write('Pocet sloupcu: ');
readln(n);
setlength(arr,m,n);
generate;
print_r(arr);
writeln('Minimalni hodnota je ',get(arr,'min'),'.');
writeln('Maximalni hodnota je ',get(arr,'max'),'.');
readln;
end.