//escreva um programa para ler uma matriz 5x5, calcular e escrever o produto dos elementos da diagonal principal e a soma dos elementeos da diagonal secundaria
program Matriz5x5;
uses crt;
var matriz:array [1..5,1..5] of real;
    produto,soma: real;
    i,j: integer;
begin
   produto:=1;
   for i:=1 to 5 do
      for j:=1 to 5 do
         begin
            write('Insira um numero na matriz na posicao: [',i,',',j,']');
            readln(matriz[i,j]);
            if (i=j) then
               produto:=matriz[i,j]*produto;
            if (i+j=6) then
               soma:=matriz[i,j]+soma;
         end;
   write('O produto da diagonal principal e ',produto:0:2,' a soma da diagonal secundaria e ',soma:0:2);
   readkey;
end.
