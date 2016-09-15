//escreva um programa para ler uma matriz 5x5 de numeros inteiros, multiplicar os elementos da diagonal principal por um numero inteiro tambem lido e escrever a matriz resultante
program Matriz5x5;
uses crt;
var   matriz:array [1..5,1..5] of integer;
      i,j,multi:integer;
begin
   for i:=1 to 5 do
      for j:=1 to 5 do
         begin
            write('Insira um numero na matriz na posicao: [',i,',',j,']');
            readln(matriz[i,j]);
         end;
   writeln('');
   write('Insira o numero que deseja multiplicar na diagonal da matriz: ');
   readln(multi);
   for i:=1 to 5 do
      for j:=1 to 5 do
         begin
            if (i=j) then
               matriz[i,j]:=matriz[i,j]*multi;
         end;
   for i:=1 to 5 do
      begin
         writeln(matriz[i,1],'  ',matriz[i,2],'  ',matriz[i,3],'  ',matriz[i,4],'  ',matriz[i,5]);
      end;
   readkey;
end.
