type iarray=Array of integer;

var n: integer;
  nums: iarray;
  prum: real;

procedure generate;
var i:integer;
begin
  randomize;
  for i:=0 to n do
    nums[i]:=random(98)+1;
end;

procedure print_a(arr: iarray);
var i:integer;
begin
  for i:=0 to n do
    write(nums[i],' ');
  writeln;
end;

function prumer(arr: iarray):real;
var i,sum:integer;
begin
  sum:=0;
  for i:=0 to n do
    sum:=sum+arr[i];
  writeln('sum:', sum);
  prumer:=(sum/(n+1));
end;

procedure closest(arr: iarray; prum: real);
var i,i2:integer;
begin
  i2:=0;
  for i:=1 to n do
  begin
    if (abs(prum-arr[i2])>abs(prum-arr[i])) then
      i2:=i;
  end;
  writeln('Nejblizsi hodnota ma index ',i2,' a je to cislo ',arr[i2],'.');
end;

begin
n:=0;
while (n<5) OR (n>20) do
begin
  write('Kolik cisel ma mit maximalne matice (5-20): ');
  readln(n);
end;
setlength(nums,n);
n:=n-1;
generate;
writeln('Vygenerovana matice: ');
print_a(nums);
prum:=prumer(nums);
writeln('Prumerna hodnota: ',prum:0:5);
closest(nums,prum);
readln;
end.
