type mat=Array of Array of integer;
var arr,tarr:mat;
  m,n:integer;

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

procedure print_r(arr:mat;m,n:integer);
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

procedure transpozice(arr:mat);
var i,i2:integer;
begin
  for i:=0 to (n-1) do
  begin
    for i2:=0 to (m-1) do
        //tarr[i][i2]:=arr[n-1-i][m-1-i2]; // podle  vedlejší
        tarr[i2][i]:=arr[i][i2];
  end;
end;

begin
  write('Pocet radku matice: ');
  readln(m);
  write('Pocet sloupcu matice: ');
  readln(n);
  setlength(arr,m,n);
  setlength(tarr,n,m);
  generate;
  print_r(arr,m,n);
  writeln('Transpozice:');
  transpozice(arr);
  print_r(tarr,n,m);
  readln;
end.
