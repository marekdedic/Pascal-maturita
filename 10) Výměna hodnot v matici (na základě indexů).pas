type mat=array of array of integer;

var arr:mat;
  n,m,n1,n2,m1,m2:integer;
  
procedure generate(var arr:mat);
var i,i2:integer;
begin
  randomize;
  for i:=0 to (m-1) do
  begin
    for i2:=0 to (n-1) do
      arr[i][i2] := random(49)+11;
  end;
end;

procedure print_r(arr:mat);
var i,i2:integer;
begin
  randomize;
  for i:=0 to (m-1) do
  begin
    for i2:=0 to (n-1) do
      write(arr[i][i2],' ');
    writeln;
  end;
end;

procedure switch(var arr:mat;m1,m2,n1,n2:integer);
var i:integer;
begin
  i:=arr[m1][n1];
  arr[m1][n1]:=arr[m2][n2];
  arr[m2][n2]:=i;
end;
  
begin
write('Pocet radku: ');
readln(m);
write('Pocet sloupcu: ');
readln(n);
setlength(arr,m,n);
generate(arr);
print_r(arr);
writeln('Prohodit');
write('m1=');
readln(m1);
write('n1=');
readln(n1);
writeln('s');
write('m2=');
readln(m2);
write('n2=');
readln(n2);
switch(arr,m1,m2,n1,n2);
print_r(arr);
readln;
end.