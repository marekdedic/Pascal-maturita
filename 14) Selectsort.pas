type parr=array [1..20] of integer;
var arr:parr;

procedure gen(var arr: parr);
var i:integer;
begin
randomize;
for i:=1 to 20 do
  arr[i]:=random(49)+11;
end;

procedure print_r(arr: parr);
var i:integer;
begin
for i:=1 to 20 do
  write(arr[i],' ');
writeln;
end;

procedure selectsort(var arr:parr);
var i,i2,c:integer;
begin
for i:=1 to 20 do
begin
  c:=i;
  for i2:=(i+1) to 20 do
  begin
    if (arr[c]>arr[i2]) then
      c:=i2;
  end;
  i2:=arr[i];
  arr[i]:=arr[c];
  arr[c]:=i2;
end;
end;

begin
gen(arr);
writeln('Puvodne:');
print_r(arr);
writeln('Serazeno:');
selectsort(arr);
print_r(arr);
readln;
end.