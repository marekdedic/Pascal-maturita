program morse;

var f : file of char;
    tab : array['A'..'Z']  of string[4] = (
'.-','-...','-.-.','-..','.','..-.','--.','....',
'..','.---','-.-','.-..','--','-.','---','.--.','--.-',
'.-.','...','-','..-','...-','.--','-..-','-.--','--..');
    morse_char : string[4];
    ch : char;
    i : char;
    result : string;

begin
   assign(f, './morse.txt');
   reset(f);
   while (not eof(f)) do
   begin
     read(f, ch);
     if (ch = '/') then
     begin
       if (length(morse_char) = 0) then
       begin
         if (result[length(result)] = ' ') then
         begin
           delete (result, length(result), 1);
           result += '. ';
         end
         else
         begin
         result += ' ';
         end;
       end
       else
       begin
         for i:= 'A' to 'Z' do
         begin
           if (morse_char = tab[i]) then
           begin
             result += i;
             delete(morse_char, 1, 4);
           end;
         end;
       end;
     end
     else
     begin
       morse_char += ch;
     end;
   end;
   writeln(result);
   readln;
end.

