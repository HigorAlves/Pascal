Program NumerosPerfeitos;
uses crt;
var num:array[0..9] of integer;
    positivo,i,perfeito,x,teste,teste1: integer;
begin
   textcolor(lightgreen);
   writeln('Insira 10 numeros que queira testar como perfeitos.');
   textcolor(7); //cor zinza padrao
   for i:=0 to 9 do
      begin
         write('Insira um numero: ');
         readln(positivo);
         while (positivo < 0) do    //Caso o numero inserido (positivo) seja negativo (<0) entao ele fica repetindo ate ter um numero positivo.
            begin
               write('Insira um numero POSITIVO: ');
               readln(positivo);
            end;
               num[i]:=positivo;
      end;
   for i:=0 to 9 do
      begin
         teste1:=0;
         for x:=1 to (num[i]-1) do //menos um pois não é pra testar o proprio numero
               begin
                  teste:=num[i] mod x;
                  if teste=0 then   //se der mod 0 entao ira somar o valor do x e refazer para ver o proxcimo numero
                  teste1:=teste1+x;
               end;
            if teste1=num[i] then //se a soma dos divisores de teste der igual ao vetor entao é perfeito
               begin
                  textcolor(lightgreen);
                  writeln(num[i],' e um  numero perfeito');
               end;
      end;
readkey;
end.

