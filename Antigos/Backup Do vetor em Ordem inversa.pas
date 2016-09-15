Program Untitled;
uses crt;
var vetor:array[0..14] of real;
    i,x: integer;
    soma: real;
    vetorbackup:array[0..14] of real;
begin
   x:=0;
   for i:=0 to 14 do
      begin
         write('Informe os valores a serem armazenados: ');
         read(vetor[i]);
      end;
   for i:=14 downto 0 do
      begin
         vetorbackup[i]:=vetor[x];
         x:=x+1;
         if (vetorbackup[i]>=7) then
               soma:=vetorbackup[i]+soma;
      end;
   for i:=0 to 14 do
      begin
         if(i mod 2 = 0) then
            writeln('Os pares são: ',vetor[i]:0:2);
      end;
   write('A soma foi: ', soma:0:2);
readkey
end.
