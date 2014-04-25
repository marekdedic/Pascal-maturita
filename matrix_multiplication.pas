program matrix_multiplication;

type matrix = Array of Array of real;
var mat1 : matrix;
    mat2 : matrix;
    mat3 : matrix;
    n : integer;

procedure generate_matrix(mat : matrix);
var i1, i2 : integer;
begin
  for i1 := 0 to (n-1) do
  begin
    for i2 := 0 to (n-1) do
    begin
      mat[i1][i2] := random(98) +1;
    end;
  end;
end;

procedure print_matrix(mat : matrix);
var i1, i2 : integer;
begin
  writeln;
  for i1 := 0 to (n-1) do
  begin
    for i2 := 0 to (n-1) do
    begin
      write(mat[i1][i2]:7:0);
    end;
    writeln;
  end;
end;

function multiply(mat1, mat2 : matrix) : matrix;
var i1, i2, i :integer;
    sum : real;
begin
  setlength(multiply, n, n);
  for i1 := 0 to (n-1) do
  begin
    for i2 := 0 to (n-1) do
    begin
      sum := 0;
      for i := 0 to (n-1) do
      begin
        sum += mat1[i1][i] * mat2[i][i2];
      end;
      multiply[i1][i2] := sum;
    end;
  end;
end;

begin
  randomize;
  write('Zadejte rozmer matic (n):');
  readln(n);
  setlength(mat1, n, n);
  generate_matrix(mat1);
  setlength(mat2, n, n);
  generate_matrix(mat2);
  setlength(mat3, n, n);
  writeln;
  writeln('Nasobene matice:');
  print_matrix(mat1);
  writeln;
  print_matrix(mat2);
  mat3 := multiply(mat1, mat2);
  writeln;
  writeln('Vysledek:');
  print_matrix(mat3);
  readln;
end.

