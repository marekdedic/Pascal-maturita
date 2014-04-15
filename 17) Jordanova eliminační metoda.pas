type matrix = Array of Array of real;
var mat : matrix;
    m : integer;

procedure generate(mat : matrix);
var i1, i2 : integer;
begin
  randomize;
  for i1 := 0 to (m-1) do
  begin
       for i2 := 0 to m do
       begin
            mat[i1][i2] := random(65536);
       end;
  end;
end;

procedure print_mat(mat : matrix);
var i1, i2 : integer;
begin
  for i1 := 0 to (m-1) do
  begin
       for i2 := 0 to (m-1) do
       begin
            write(mat[i1][i2]:14:5);
       end;
       write(' | ', mat[i1][m]:13:5);
       writeln;
  end;
  writeln;
end;

procedure eliminate (mat : matrix);
var i, i1, i2 : integer;
    coef : real;
begin
  for i := 0 to (m-1) do
  begin
       coef := (1 / mat[i][i]);
       for i2 := i to m do
       begin
            mat[i][i2] *= coef;
       end;
       for i1 := 0 to (m-1) do
       begin
            if i1 = i then
               continue;
            coef:= (mat[i1][i] / mat[i][i]);
            for i2 := i to (m) do
            begin
                 mat[i1][i2] -= (coef * mat[i][i2]);
            end;
            print_mat(mat);
       end;
  end;
end;

begin
  write('Pocet neznamych:');
  readln(m);
  setlength(mat, m, (m+1));
  generate(mat);
  print_mat(mat);
  writeln('Eliminace:');
  writeln;
  eliminate(mat);
  readln;
end.
