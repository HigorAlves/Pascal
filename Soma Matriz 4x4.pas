//escreva um programa para ler uma matriz 4x4 calcular e escrever as seguintes somas: da linha 3 da coluna 2 de todos os elementos da matriz
program Matriz4x4;
uses crt;
var matriz:array [1..4,1..4] of real;
    soma1,soma2,soma3:real;
    i,j: integer;
begin
   for i:=1 to 4 do
      begin
         for j:=1 to 4 do
            begin
               write('Insira os Numeros da matriz na posicao, [',i,',',j,']');
               readln(matriz[i,j]);
            end;
      end;
   for j:=1 to 4 do
      begin
         i:=3;
         soma1:=matriz[i,j]+soma1; //soma da linha 3
      end;
   for i:=1 to 4 do
      begin
         j:=2;
         soma2:=matriz[i,j]+soma2; //soma da coluna 2
      end;
   for i:=1 to 4 do
      for j:=1 to 4 do
         soma3:=matriz[i,j]+soma3; //soma de toda a matriz
   write('A soma da linha 3 da, ',soma1:0:2,' a soma da coluna 2 da, ',soma2:0:2,' a soma de toda a matriz da, ',soma3:0:2);
   readkey;
end.
