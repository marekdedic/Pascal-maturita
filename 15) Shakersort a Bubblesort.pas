type arr=array of integer;
var n:integer;
nums,bsort,ssort:arr;

procedure generate(var nums:arr);
var i:integer;
begin
  randomize;
  for i:=(n-1) downto 0 do
    nums[i]:=random(49)+11;
end;

procedure print_r(nums:arr);
var i:integer;
begin
  for i:=0 to (n-1) do
    write(nums[i],' ');
end;

function bubble_sort(nums:arr):arr;
var i,i2,c:integer;
s:boolean;
begin
  bubble_sort:=nums;
  i2:=(n-1);
  s:=true;
  while (s=true) do
  begin
    s:=false;
    for i:=0 to i2 do
    begin
      if ((i+1)<=i2) AND (bubble_sort[i]>bubble_sort[i+1]) then
      begin
        s:=true;
        c:=bubble_sort[i];
        bubble_sort[i]:=bubble_sort[i+1];
        bubble_sort[i+1]:=c;
      end;
    end;
  end;
end;

function shaker_sort(nums:arr):arr;
var i,i2,c:integer;
s:boolean;
begin
  shaker_sort:=nums;
  i2:=(n-1);
  i:=0;
  s:=true;
  while (s=true) do
  begin
    s:=false;
    for i:=i to i2 do
    begin
      if ((i+1)<=i2) AND (shaker_sort[i]>shaker_sort[i+1]) then
      begin
        c:=shaker_sort[i];
        shaker_sort[i]:=shaker_sort[i+1];
        shaker_sort[i+1]:=c;
        s:=true;
      end;
    end;
    i2:=i2-1;
    for i2:=i2 downto i do
    begin
      if ((i2-1)>=i) AND (shaker_sort[i2]<shaker_sort[i2+1]) then
      begin
        c:=shaker_sort[i2];
        shaker_sort[i2]:=shaker_sort[i2+1];
        shaker_sort[i2+1]:=c;
        s:=true;
      end;
    end;
    i:=i+1;
  end;
end;

begin
write('Pocet cisel: ');
readln(n);
setlength(nums,n);
generate(nums);
writeln('Vygenerovana cisla:');
print_r(nums);
writeln;
writeln;
bsort:=bubble_sort(nums);
writeln('Bubble sort:');
print_r(bsort);
writeln;
writeln;
ssort:=shaker_sort(nums);
writeln('Shaker sort:');
print_r(ssort);
readln;
end.