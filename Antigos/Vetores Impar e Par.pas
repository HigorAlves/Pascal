program IndiceDeVetor;
uses crt;
var v:array[1..10] of integer;
    i: integer;
begin
   for i:=1 to 10 do
      begin
         if (i mod 2 = 0) then
               v[i]:=0
            else
               v[i]:=1;
       end;
   for i:=1 to 10 do
      writeln(v[i]);
readkey;
end.
