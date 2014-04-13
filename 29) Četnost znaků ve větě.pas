type pnext = ^chars;
chars = record
  ch: char;
  count: integer;
  next: pnext;
end;

var str: string;
first: pnext;

procedure append(ch:char);
var c,n,l:pnext;
found:boolean;
begin
  c:=first;
  found:=false;
  while (c<>nil) AND (found=false) do
  begin
    if (c^.ch=ch) then
    begin
      found:=true;
      c^.count:=c^.count+1;
    end;
    l:=c;
    c:=c^.next;
  end;
  if (found=false) then
  begin
    if (first=nil) then
    begin
      new(first);
      first^.ch:=ch;
      first^.count:=1;
    end
    else
    begin
      new(n);
      n^.ch:=ch;
      n^.count:=1;
      l^.next:=n;
    end;
  end;
end;

procedure foreach(s:string);
var i:integer;
begin
for i:=1 to length(s) do
  append(s[i]);
end;

procedure print_count();
var c:pnext;
begin
  c:=first;
  while (c<>nil) do
  begin
    writeln('Pismenko ',c^.ch,' - ',c^.count,'x');
    c:=c^.next;
  end;
end;

begin
writeln('Napiste vetu');
readln(str);
foreach(str);
print_count();
readln;
end.