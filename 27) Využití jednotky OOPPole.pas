uses OOPPole;

type cislo=^cl;
cl=Object (TPrvek)
  c:integer;
  constructor Init(i:integer);
  procedure Akce; virtual;
end;

constructor cl.Init(i:integer);
begin
  c:=i;
  writeln(i);
end;

procedure cl.Akce;
begin
  write(c,' ');
end;

var pole:PPole;
cc:integer;

begin
pole:=new(PPole,Init);
repeat
	write('Zadej cislo: '); read(cc);
	if cc<>0 then pole^.PridejPrvek(new(cislo,Init(cc)));
until cc=0;
pole^.ProjdiPole(1);
readln;
repeat
	write('Index k vymazani: ');
  read(cc);
	if cc<>0 then pole^.VymazPrvek(cc);
until cc=0;
pole^.ProjdiPole(1);
readln;
readln;
end.