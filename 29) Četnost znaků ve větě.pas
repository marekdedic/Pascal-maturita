var chars : array['A'..'Z'] of integer;
abeceda : set of char;
ch : char;
i : integer;
veta : string;

begin
     abeceda:=['A'..'Z'];
     Writeln('Napis vetu:');
     Readln(veta);
for i:= 0 to length(veta) do
begin
  if (upcase(veta[i]) in abeceda) then
    chars[upcase(veta[i])]:=chars[upcase(veta[i])]+1;
end;
for ch:='A' to 'Z' do
  if (chars[ch]>0) then
    writeln(ch,' - ',chars[ch],'x');
readln;
end.
