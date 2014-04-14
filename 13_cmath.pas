unit 13_cmath;

interface
function csqrt(i:integer):real;
function cmod(i:integer):integer;

implementation
function csqrt(i:integer):real;
begin
  csqrt:=sqrt(i);
end;

function cmod(i:integer):integer;
begin
  cmod:=i*i;
end;

end.
