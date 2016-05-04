{Ler um vetor de 10 elementos inteiros. Em seguida, trocar todos os valores negativos por 0. Escreva o vetor modificado.}
Program Vetorde10elementos;
uses crt;
var vetor:array[0..9] of integer;
    i: integer;
begin
   for i:=0 to 9 do
      begin
         write('Insira um valor Inteiro: ');
         read(vetor[i]);
      end;
   for i:=0 to 9 do
      begin
         if (vetor[i]<0) then
            vetor[i]:=0
      end;
   for i:=0 to 9 do
      begin
         writeln('Vetor: ',i,': ',vetor[i]);
      end;
readkey;
end.
