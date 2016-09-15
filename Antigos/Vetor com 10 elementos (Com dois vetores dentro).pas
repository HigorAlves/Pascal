{Ler um vetor X de 10 Elementos inteiros e positivos. Criar um vetor Y, onde os elementos de Y com indice par recebem os respectivos elementos de x dividido por 2 e os elementos de indice impar recebem os respectivos elementos de X multiplicados por 3. Ao final, escreva os vetores X e Y.}
Program Untitled;
uses crt;
var vetor1:array[0..9] of integer;
    vetor2:array[0..9] of real;
    i,testepositivo: integer;
begin
   for i:=0 to 9 do
      begin
         write('Insira um numero inteiro e positivo: ');
         read(testepositivo);
         if (testepositivo>=0) then
            begin
               vetor1[i]:=testepositivo;
            end
               else
                  i:=i-1;
      end;
   for i:=0 to 9 do
      begin
         if (i mod 2 = 0) then
            begin
               vetor2[i]:=vetor1[i] / 2;
            end
               else
                  vetor2[i]:=vetor1[i]*3;
      end;
    for i:= 0 to 9 do
      begin
         writeln('O vetor X tem valor de: ',vetor1[i]:0:2, ' e o vetor Y tem valor de: ',vetor2[i]:0:2);
      end;
readkey;
end.
