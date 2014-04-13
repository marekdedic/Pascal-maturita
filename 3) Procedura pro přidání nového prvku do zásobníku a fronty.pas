type fdyn=^frec; 
frec=record
  word: string;
  next: fdyn;
end;
zdyn=^zrec; 
zrec=record
  word: string;
  next: zdyn;
end;

var inp:string;
first:fdyn;
last:zdyn;

procedure fronta(inp:string);
var rec,lrec:fdyn;
begin
  new(rec);
  if (first=nil) then
    first:=rec
  else
  begin
    lrec:=first;
    while (lrec^.next<>nil) do
      lrec:=lrec^.next;
    lrec^.next:=rec;
  end;
  rec^.word:=inp;
end;

procedure print_frontu();
var rec:fdyn;
begin
  rec:=first;
  writeln('Vypis fronty');
  while (rec<>nil) do
  begin
    writeln('   ',rec^.word);
    rec:=rec^.next;
  end;
end;

procedure zasobnik(inp:string);
var rec:zdyn;
begin
  new(rec);
  rec^.word:=inp;
  if (last<>nil) then
    rec^.next:=last;
  last:=rec;
end;

procedure print_zasobnik();
var rec:zdyn;
begin
  rec:=last;
  writeln('Vypis zasobniku');
  while (rec<>nil) do
  begin
    writeln('   ',rec^.word);
    rec:=rec^.next;
  end;
end;

begin
inp:='';
while (inp<>'end') do
begin
  write('Pridat (end=konec): ');
  readln(inp);
  if (inp<>'end') then
  begin
    fronta(inp);
    zasobnik(inp);
  end;
end;
print_frontu();
print_zasobnik();
readln;
end.