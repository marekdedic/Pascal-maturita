var f:file of char;
chars:array['A'..'Z'] of integer;
abeceda: set of char;
ch:char;

begin
abeceda:=['A'..'Z'];
assign(f,'./soubor.txt');
reset(f);
while (not eof(f)) do
begin
  read(f,ch);
  if (upcase(ch) in abeceda) then
    chars[upcase(ch)]:=chars[upcase(ch)]+1;
end;
for ch:='A' to 'Z' do
  if (chars[ch]>0) then
    writeln(ch,' - ',chars[ch],'x');
readln;
end.