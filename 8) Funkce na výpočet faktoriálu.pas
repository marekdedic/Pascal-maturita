var num,i: integer;
res: longint;


begin
res:=1;
write('Zadejte cislo: ');
readln(num);
for i:=num downto 1 do
  res:=res*i;
writeln('Vysledek je: ',res);
readln;
end.