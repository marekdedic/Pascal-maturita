var f,f2:file of char;
i:char;

begin
assign(f,'./soubor.txt');
rewrite(f);
assign(f2,'./soubor1.txt');
reset(f2);
while (not eof(f2)) do
begin
  read(f2,i);
  write(f,i);
end;
assign(f2,'./soubor2.txt');
reset(f2);
while (not eof(f2)) do
begin
  read(f2,i);
  write(f,i);
end;
assign(f2,'./soubor3.txt');
reset(f2);
while (not eof(f2)) do
begin
  read(f2,i);
  write(f,i);
end;
readln;
end.
